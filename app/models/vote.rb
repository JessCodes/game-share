class Vote < ApplicationRecord
  #Votes are polymorphic - games and comments can be voted on
  belongs_to :voteable, polymorphic: true
end
