class Comment < ApplicationRecord
  belongs_to :game
  belongs_to :user

  validates :title, :body, presence: true

  #Can upvote and downvote comments
  has_many :votes, as: :voteable
end
