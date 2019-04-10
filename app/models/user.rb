class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  belongs_to :nativelanguage, class_name: "Language"
  belongs_to :learnlanguage, class_name: "Language"
  belongs_to :speaklanguage, class_name: "Language"
  
  #Active Storage
  has_one_attached :picture
  
  def address
    [street_address, city, state, country].compact.join(', ')
  end
  
  geocoded_by :address
  after_validation :geocode
  
end
