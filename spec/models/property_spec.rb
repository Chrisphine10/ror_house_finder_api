require 'rails_helper'

RSpec.describe Property, type: :model do
  it { should have_many(:favorites) }
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:property_type) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:rating) }
  it { should validate_presence_of(:price) }
  it { should validate_presence_of(:duration) }
end
