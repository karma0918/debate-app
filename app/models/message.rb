class Message < ApplicationRecord

  with_options presence: true do
    validates :content
  end

  belongs_to :room
  belongs_to :user
end
