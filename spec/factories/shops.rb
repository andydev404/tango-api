FactoryBot.define do
  factory :shop do
    account
    name { Faker::Company.name }
    slug { parameterize(Faker::Company.name) }
    address { Faker::Address.full_address }
    instagram { "@tango" }
    facebook { "tango" }
    currency { Faker::Currency.code }
    whatsapp { "000000000" }
    status { 0 }
  end
end
