class StudentController < ApplicationController

  def create
    @student=Student.new(params[:student].permit(:name, :surname, :email))
    @student.save
    redirect_to completed_index_path
  end

end
