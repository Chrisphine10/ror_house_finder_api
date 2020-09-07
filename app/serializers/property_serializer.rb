class PropertySerializer < ActiveModel::Serializer
  attributes :id, :title, :property_type, :description, :rating, :price, :duration, :image,
             :total_favorites

  has_many :favorites

  def total_favorites
    object.favorites_count
  end
end
