class GameMechanic < ApplicationRecord
  belongs_to :game
  belongs_to :mechanic
end
