class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone, :location, :profile_pic
  has_many :listings
end
