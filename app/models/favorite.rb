class Favorite < ApplicationRecord
  validates :property_id, presence: true
  validates :user_id, presence: true

  belongs_to :property
  belongs_to :user

  counter_culture :property
end
