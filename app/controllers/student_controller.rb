require 'unirest'

class StudentController < ApplicationController

  def index
    @new_student=Student.new
    @students_count=Student.count
  end

  def create

    @new_student=Student.new(params[:new_student].permit(:name, :surname, :email))
    if @new_student.save
      append_to_sheet(@new_student.name+" "+@new_student.surname, @new_student.email)
      flash[:redirect] ="by_student_created"
      redirect_to completed_path
    else
      render action: 'index'
    end

  end

  private
  def append_to_sheet(name, email)
    response = Unirest.post ENV["GRADUATION_MAKER"],
                            headers:{ "Accept" => "application/json" },
                            parameters:{ :value1=>name, :value2=>email }

  end



end
