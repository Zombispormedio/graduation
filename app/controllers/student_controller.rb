class StudentController < ApplicationController

  def create
    @student=Student.new(params[:student].permit(:name, :surname, :email))
    @student.save
    redirect_to root_path
  end

end
