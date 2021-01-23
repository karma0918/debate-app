FactoryBot.define do
  factory :room do
    name {Faker::Name.last_name}
    explanation { "testtesttest"}
    category_id { 2 }
    image { Rack::Test::UploadedFile.new(File.join(Rails.root, 'app/assets/images/war.jpg')) }
  end
end
