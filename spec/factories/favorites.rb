FactoryBot.define do
  factory :favorite do
    association :property
    association :user
  end
end
