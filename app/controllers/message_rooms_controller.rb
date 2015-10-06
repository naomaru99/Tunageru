class MessageRoomsController < ApplicationController

  def show
    if student_signed_in?
      @worker = Worker.find(params[:id])
    elsif worker_signed_in?
      @student = Student.find(params[:id])
    end

  end
  
end
