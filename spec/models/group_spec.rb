require 'rails_helper'

RSpec.describe Group, type: :model do
  let(:user) { create(:user) } # Creating a user instance

  subject { build(:group, user: user) } # Ensuring the group instance has an associated user

  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name) }
  it { should validate_presence_of(:icon) }
  it { should belong_to(:user) }
  it { should have_many(:entities) }
end
