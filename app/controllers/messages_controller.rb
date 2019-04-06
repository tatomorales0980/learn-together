class MessagesController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @users = User.near([current_user.latitude, current_user.longitude], 3000)
    @messages = Message.all
    @contents = Content.all
  end
  
  def create
    if Message.between(params[:sender_id], params[:recipient_id]).present?
      @message = Message.between(params[:sender_id], params[:recipient_id]).first
    else
      @message = Message.create(message_params)
    end
    redirect_to messages_path(@message)
  end
  
  def destroy
    message = Message.find(params[:message_id])
    message.destroy
    redirect_to messages_path(message)
  end
  
private
  def message_params
    params.permit(:sender_id, :recipient_id)
  end
end
