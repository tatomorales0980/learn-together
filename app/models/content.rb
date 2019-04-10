class Content < ApplicationRecord
  belongs_to :message
  belongs_to :user
  
  validates_presence_of :body, :message_id, :user_id
  
  def content_time
    created_at.strftime("%m/%d/%y at %l:%M %p")
  end
  
end
