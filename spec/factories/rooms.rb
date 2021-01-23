FactoryBot.define do
  factory :room do
    name {Faker::Name.last_name}
    explanation { "testtesttest"}
    category_id { 2 }
  end
end
