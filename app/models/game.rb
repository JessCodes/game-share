class Game < ApplicationRecord
  belongs_to :creator, class_name: :User
  has_many :libraries
  has_many :users, through: :libraries
end
