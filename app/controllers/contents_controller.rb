class ContentsController < ApplicationController
  before_action :authenticate_user!
  
  before_action do
    @message = Message.find(params[:message_id])
  end
  
  def index
    @contents = @message.contents.all
    
    @content = @message.contents.new
  end
  
  def new
    @content = @message.contents.new
  end
  
  def create
    @content = @message.contents.new(content_params)
    if @content.save
      redirect_to message_contents_path(@message)
    end
  end
  
  private
  def content_params
    params.require(:content).permit(:body, :user_id)
  end
end
