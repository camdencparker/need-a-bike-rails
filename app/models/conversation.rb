class Conversation < ApplicationRecord
  has_many :messages, dependent: :destroy 
  belongs_to :leaser, class_name: "User" 
  belongs_to :renter, class_name: "User"
  
  
  #prevents multiple conversations between two users
  validates :renter_id, uniqueness: {scope: :leaser_id}
end
