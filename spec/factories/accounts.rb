FactoryBot.define do
  factory :account do
    name { Faker::Name.name }
    email { Faker::Internet.email(domain: "example") }
  end
end
