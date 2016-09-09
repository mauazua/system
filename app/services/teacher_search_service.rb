class TeacherSearchService

  def initialize(user)
    @user = user
  end

  def result
    teacher_fields.group_by(&:field).map do |field, t_fields|
      { field.name => t_fields.sort_by(&:score).reverse.map{ |f| f.fieldable.full_name } }
    end
  end

  private

  def fields
    @fields ||= @user.fields
  end

  def teacher_fields
    PersonField.includes(:field).where(field_id: fields_ids, fieldable: teachers)
  end

  def teachers
    @teachers ||= Teacher.joins(:fields).where(fields: {id: fields_ids})
  end

  def fields_ids
    @fids ||= fields.pluck(:id)
  end
end
