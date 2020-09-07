class PropertySerializer < ActiveModel::Serializer
  attributes :id, :title, :property_type, :description, :rating, :price, :duration, :image

  has_many :favorites
end
