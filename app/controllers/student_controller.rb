require 'google/apis/sheets_v4'
require 'googleauth'
require 'googleauth/stores/redis_token_store'

class StudentController < ApplicationController

  def index
    @new_student=Student.new
  end

  def create
    @new_student=Student.new(params[:new_student].permit(:name, :surname, :email))
    if @new_student.save
      flash[:redirect] ="by_student_created"
      redirect_to completed_path
    else
      render action: 'index'
    end

  end

  private
  def append_to_sheet(name, email)



  end



end
