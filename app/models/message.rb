class Message < ApplicationRecord
  belongs_to :sender, class_name: 'User'
  belongs_to :recipient, class_name: 'User'
  
  has_many :contents, dependent: :destroy
  
  validates_uniqueness_of :sender_id, :scope => :recipient_id
  
  scope :between, -> (user_one, user_two) do
    where("(messages.sender_id = ? AND messages.recipient_id =?) OR (messages.sender_id = ? AND messages.recipient_id =?)", user_one, user_two, user_two, user_one)
  end
  


end
