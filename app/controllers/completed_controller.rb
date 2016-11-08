class CompletedController < ApplicationController
  def index
=begin
    if flash[:redirect] != "by_student_created"
      redirect_to root_path
    end
=end
  end
end
