FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    password { 'password' }
    password_confirmation { 'password' }
  end

  factory :group do
    name { Faker::Lorem.word }
    icon { ['fas fa-car', 'fas fa-home'].sample }
    user
  end

  factory :entity do
    name { Faker::Lorem.word }
    amount { Faker::Number.decimal(l_digits: 2) }
    author { association(:user) }
    group
  end
end
