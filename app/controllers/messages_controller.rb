class MessagesController < ApplicationController

  def new
    # @message = Message.new
    # @messages = Message.where(message_room_id: message_room_id)
  end

  def create
    message = Message.create(message_params)
      if student_signed_in?
        redirect_to controller: :message_rooms, action: :show, id: "#{message.message_room.worker_id}"
      elsif worker_signed_in?
        redirect_to controller: :message_rooms, action: :show, id: "#{message.message_room.student_id}"
      end
  end

private
def message_params
  params.require(:message).permit(:text, :message_room_id, :messagable_id, :messagable_type, :user_type)
end

end
