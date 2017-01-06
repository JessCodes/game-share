class Game < ApplicationRecord
  belongs_to :creator, class_name: :User

  has_many :libraries
  has_many :users, through: :libraries

  #Game has many game mechanics
  has_many :game_mechanics
  has_many :mechanics, through: :game_mechanics

  #Can upvote and downvote games
  has_many :votes, as: :voteable
end
