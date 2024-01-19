# spec/factories/group.rb

FactoryBot.define do
  factory :group do
    name { 'Test Group' }
    icon { 'some_icon_value' }
    user
  end
end
