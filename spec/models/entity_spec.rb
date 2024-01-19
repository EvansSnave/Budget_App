# spec/models/entity_spec.rb
require 'rails_helper'

RSpec.describe Entity, type: :model do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:amount) }
  it { should validate_numericality_of(:amount) }
  it { should belong_to(:author).class_name('User') }
  it { should belong_to(:group) }
end
