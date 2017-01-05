class CreateLibraries < ActiveRecord::Migration[5.0]
  def change
    create_table :libraries do |t|
      t.string :user_id
      t.string :game_id

      t.timestamps
    end
  end
end
