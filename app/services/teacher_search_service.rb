class TeacherSearchService

  def initialize(user)
    @user = user
  end

  def result
    teacher_fields.group_by(&:field).map do |field, t_fields|
      { field.name => t_fields.map{|f| f.fieldable.full_name}.join(', ') }
    end
  end

  private

  def fields
    @fields ||= @user.fields
  end

  def teacher_fields
    PersonField.includes(:field).where(field_id: fields_ids, fieldable_id: teachers.pluck(:id))
  end

  def teachers
    @teachers ||= Teacher.joins(:fields).where(fields: {id: fields_ids})
  end

  def fields_ids
    @fids ||= fields.pluck(:id)
  end
end
