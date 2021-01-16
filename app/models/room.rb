class Room < ApplicationRecord

  with_options presence: true do
    validates :name
    validates :explanation, length: { maximum: 256 }
    validates :category_id, numericality: { other_than: 1 }
    validates :image
  end
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category

  has_many :room_users
  has_many :users, through: :room_users
  has_many :messages
  has_one_attached :image

end
