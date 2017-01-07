class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|

      t.integer :voteable_id #id of the comment or game voted on
      t.string :voteable_type #"Comment" or "Game"
      t.integer :value # upvote(1), downvote(-1)
      t.integer :user_id

      t.timestamps
    end
  end

end
