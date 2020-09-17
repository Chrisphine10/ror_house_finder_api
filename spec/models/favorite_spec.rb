require 'rails_helper'

RSpec.describe Favorite, type: :model do
  it { should validate_presence_of(:property_id) }
  it { should validate_presence_of(:user_id) }
end
