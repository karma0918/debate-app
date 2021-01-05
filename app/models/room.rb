class Room < ApplicationRecord

  with_options presence: true do
    validates :name
    validates :explanation
    validates :category_id, numericality: { other_than: 1 }
  end
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category

  has_many :room_users
  has_many :users, through: :room_users
  has_many :messages
end
