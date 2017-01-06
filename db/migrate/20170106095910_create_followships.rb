class CreateFollowships < ActiveRecord::Migration[5.0]
  def change
    create_table :followships do |t|
      t.integer :follower_id
      t.integer :followed_id

      t.timestamps null: false
    end
    add_index :followships, :follower_id
    add_index :followships, :followed_id
    add_index :followships, [:follower_id, :followed_id], unique: true
  end
end
