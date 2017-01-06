class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :name,         null: false
      t.string :picture,      null: false
      t.text :description
      t.integer :creator_id

      t.timestamps
    end
  end
end
