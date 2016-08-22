class PersonFieldsController < ApplicationController

  def index
    @selected_fields = current_user.fields
    @field = PersonField.new
  end

  def create
    @field = current_user.person_fields.new(field_params)
    if @field.save
      flash[:success] = I18n.t(:success)
    else
      flash[:error] = @field.errors.full_messages.join(' ,')
    end
    redirect_to person_fields_path
  end

  private

  def field_params
    params.require(:person_field).permit(:field_id)
  end
end
