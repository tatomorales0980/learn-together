class MessagesController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @users = User.near([current_user.latitude, current_user.longitude], 100)
    @messages = Message.all
  end
  
  def new
    @message = Message.new
  end

  def create
    if Message.between(current_user.id, params[:recipient_id]).present?
      @message = Message.between(current_user.id, params[:recipient_id]).first
    else
      @message = Message.new(message_params)
      @message.save
      flash[:notice] = "Start A New Message"
    end
    
    redirect_to message_contents_path(@message)
  end
  
  def destroy
    message = Message.find(params[:id])
    message.destroy
    redirect_to messages_path
  end
  
  
private
  def message_params
    params.permit(:sender_id, :recipient_id)
  end
end
