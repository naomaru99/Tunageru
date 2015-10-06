class MessagesController < ApplicationController

  def create
    @message = Message.where(messagable_id: "current_user(id)"
    @message.save
  end

end
