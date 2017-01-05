class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :name,         null: false
      t.string :picture,      null: false
      t.string :creator_id

      t.timestamps            null: false
    end
  end
end
