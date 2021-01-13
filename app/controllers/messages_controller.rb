class MessagesController < ApplicationController
  def index
    unless user_signed_in?
      redirect_to new_user_registration_path
    end
    @message = Message.new
    @room = Room.find(params[:room_id])
    @rooms = Room.all
    @messages = @room.messages.includes(:user).order(id: "DESC")
  end
  def create
    @room = Room.find(params[:room_id])
    @message = @room.messages.new(message_params)
    if @message.save
      redirect_to room_messages_path(@room)
    else
      @messages = @room.messages.includes(:user).order(id: "DESC")
      render :index
    end
  end

  private
  def message_params
    params.require(:message).permit(:content).merge(user_id: current_user.id)
  end
end
