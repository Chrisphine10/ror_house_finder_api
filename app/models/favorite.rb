class Favorite < ApplicationRecord
  belongs_to :property
  belongs_to :user

  counter_culture :book
end
