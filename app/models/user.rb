class User < ApplicationRecord
  authenticates_with_sorcery!
  validates_confirmation_of :password, message: "should match confirmation", if: :password
  validates :username, :email, presence: true
  has_many :created_games, foreign_key: :creator, class_name: Game

  has_many :libraries
  has_many :games, through: :libraries

  has_many :comments
  has_many :votes

  has_many :active_followships, class_name:  "Followship",
                                  foreign_key: "follower_id",
                                  dependent:   :destroy

  has_many :passive_relationships, class_name:  "Followship",
                                 foreign_key: "followed_id",
                                 dependent:   :destroy

  has_many :following, through: :active_followships, source: :followed
  has_many :followers, through: :passive_followships



  #Only authorized user can edit, update, or delete a comment

  def follow(other_user)
    following << other_user
  end

  def unfollow(other_user)
    following.delete(other_user)
  end

  def following?(other_user)
    following.include?(other_user)
  end

  def game_votes
    votes.where(voteable_type: "Game")
  end

  def comment_votes
    votes.where(voteable_type: "Comment")
  end

end
