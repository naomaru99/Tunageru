class MessageRoomsController < ApplicationController

  # before_action :create_message_room, only: [:show]

  def index
    if student_signed_in?
      @message_rooms = MessageRoom.where(student_id: current_student.id)
    elsif worker_signed_in?
      @message_rooms = MessageRoom.where(worker_id: current_worker.id)
    end
      
  end


  def show
    if student_signed_in?
      @worker = Worker.find(params[:id])
      @message_room = MessageRoom.where(student_id: current_student.id, worker_id: params[:id] ).first_or_create
    elsif worker_signed_in?
      @student = Student.find(params[:id])
      @message_room = MessageRoom.where(student_id: params[:id], worker_id: current_worker.id ).first_or_create
    end
     @messages = Message.where(message_room_id: @message_room.id)


     @current_user_type =  if student_signed_in?
      "student"
    elsif worker_signed_in?
      "worker"
    else
      "guest"
    end
  end

    
    


  # private
  # def create_message_room
  #   if student_signed_in?
  #     @message_room = Message_room.where(student_id: current_student.id, worker_id: params[:id] ).first_or_create
  #   elsif worker_signed_in?
  #     @message_room = Message_room.where(student_id: params[:id], worker_id: current_worker.id ).first_or_create
  #   end
  # end
  


end
