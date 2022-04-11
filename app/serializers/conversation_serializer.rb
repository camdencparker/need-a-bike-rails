class ConversationSerializer < ActiveModel::Serializer
  attributes :id, :renter_id, :leaser_id 
  has_many :messages
  belongs_to :partner
  

  def partner
    if object.renter == current_user
      return object.leaser
    else
      return object.renter
    end
  end
end
