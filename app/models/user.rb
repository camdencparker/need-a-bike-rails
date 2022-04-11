class User < ApplicationRecord
  has_many :listings, dependent: :destroy
  # has_many :renter_converstations, class_name: "Conversation", foreign_key: "leaser_id"
  # has_many :leaser_converstations, class_name: "Conversation", foreign_key: "renter_id"
  # has_many :leasers, through: :leaser_converstations, source: :renter
  # has_many :renters, through: :renter_converstations, source: :leaser
  # DONT ACTUALLY NEED THIS DATA YET
  has_many :messages, dependent: :destroy
  has_secure_password
  validates :email, presence: true, uniqueness: true
  
  def conversations
    Conversation.where("renter_id = ? OR leaser_id = ?", id, id)
  end
end
