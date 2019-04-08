class MessagesController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @users = User.near([current_user.latitude, current_user.longitude], 2000)
    @messages = Message.all
  end
  
  def create
    if Message.includes(current_user.id)
      @message = Message.between(params[:sender_id], params[:recipient_id]).first
      redirect_to message_contents_path(@message)
    else
      @message = Message.create(message_params)
      redirect_to message_contents_path(@message)
    end
  end
  
  def destroy
    message = Message.find(params[:message_id])
    message.destroy
    redirect_to message_path(message)
  end
  
private
  def message_params
    params.permit(:sender_id, :recipient_id)
  end
end
