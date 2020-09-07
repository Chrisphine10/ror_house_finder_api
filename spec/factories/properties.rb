FactoryBot.define do
  factory :property do
    sequence(:title) { |n| "My awesome article #{n}" }
    sequence(:property_type) { |n| "Apartment #{n}" }
    sequence(:description) { |n| "my-awesome-article-#{n}" }
    sequence(:rating) { 3 }
    sequence(:price) { 234.05 }
    sequence(:duration) { 2 }
    association :user
    association :favorite
  end
end
