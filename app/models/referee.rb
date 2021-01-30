class Referee < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :voting

  validates :voting_id, numericality: { other_than: 1 }
end
