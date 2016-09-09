class ChoicesController < ApplicationController
  before_action :set_teacher, only: :create

  def create
    choice = current_user.build_choice(teacher: @teacher)

    if choice.save
      flash[:success] = "yay!"
    else
      flash[:error] = "Something went wrong"
    end
    redirect_to teacher_searches_path
  end

  private

  def set_teacher
    @teacher = Teacher.find_by(separated_names)
  end

  def separated_names
    names = params[:name].split(' ')
    { first_name: names.first, last_name: names.last }
  end
end
