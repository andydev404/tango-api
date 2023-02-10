FactoryBot.define do
  factory :shop do
    account
    name { Faker::Company.name }
    slug { Faker::Internet.slug(glue: "-") }
    address { Faker::Address.full_address }
    description { Faker::Lorem.paragraph }
    instagram { "@tango" }
    facebook { "tango" }
    currency { Faker::Currency.code }
    whatsapp { "000000000" }
    status { 0 }
  end
end
