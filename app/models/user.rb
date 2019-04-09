class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  belongs_to :nativelanguage, class_name: "Language"
  belongs_to :learnlanguage, class_name: "Language"
  belongs_to :speaklanguage, class_name: "Language"
end
