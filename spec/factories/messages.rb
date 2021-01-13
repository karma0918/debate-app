FactoryBot.define do
  factory :message do
    content {"test"}
    user_id {1}
    room_id {1}
    association :user
    association :room
  end
end
