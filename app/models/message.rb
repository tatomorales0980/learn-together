class Message < ApplicationRecord
  belongs_to :sender, :foreign_key => :sender_id, class_name: 'User'
  belongs_to :recipient, :foreign_key => :recipient_id, class_name: 'User'
  
  has_many :contents, dependent: :destroy
  
  validates_uniqueness_of :sender_id, :scope => :recipient_id
  
  scope :between, -> (sender_id, recipient_id) do
    where("(messages.sender_id = ? AND messages.recipient_id =?) OR (messages.sender_id = ? AND messages.recipient_id =?)", sender_id, recipient_id, recipient_id, sender_id)
  end
  
  def unread_content_count(current_user)
    self.contents.where("user_id != ? AND read = ?", current_user.id, false).count
  end
end
