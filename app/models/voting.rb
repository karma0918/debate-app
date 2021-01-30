class Voting < ActiveHash::Base
  self.data = [
    { id: 1, name:'__' },
    { id: 2, name: '○'},
    { id: 3, name: '☓'}
  ]
  include ActiveHash::Associations
  has_many :referees
end
