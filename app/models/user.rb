class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :messages, :foreign_key => :sender_id
 
  
  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode
end
