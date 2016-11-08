class CompletedController < ApplicationController
  def index
    if flash[:redirect] != "by_student_created"
      redirect_to root_path
    end
  end
end
