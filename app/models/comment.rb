class Comment < ApplicationRecord
  belongs_to :game
  belongs_to :user

  validates :title, :body, presence: true
end
