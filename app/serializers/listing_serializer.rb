class ListingSerializer < ActiveModel::Serializer
  attributes :id, :brand, :model, :year, :description, :image_url, :location
  belongs_to :owner


  def owner
    return object.user
  end
end
