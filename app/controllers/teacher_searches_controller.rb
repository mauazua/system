class TeacherSearchesController < ApplicationController

  def index
    @result = TeacherSearchService.new(current_user).result
  end
end
