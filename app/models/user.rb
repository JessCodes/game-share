class User < ApplicationRecord
  authenticates_with_sorcery!
  validates_confirmation_of :password, message: "should match confirmation", if: :password
  # has_many :games, foreign_key: :creator
  has_many :created_games, foreign_key: :creator, class_name: Game

  has_many :libraries
  has_many :games, through: :libraries
end
