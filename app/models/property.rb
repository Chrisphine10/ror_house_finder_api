class Property < ApplicationRecord
  validates :title, presence: true
  validates :property_type, presence: true
  validates :description, presence: true
  validates :rating, presence: true
  validates :price, presence: true
  validates :duration, presence: true

  belongs_to :user
  has_many :favorites
end
