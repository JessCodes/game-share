class Mechanic < ApplicationRecord
  has_many :game_mechanics
  has_many :games, through: :game_mechanics
end
