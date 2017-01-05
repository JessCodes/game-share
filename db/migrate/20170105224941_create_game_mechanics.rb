class CreateGameMechanics < ActiveRecord::Migration[5.0]
  def change
    create_table :game_mechanics do |t|
      t.integer :game_id
      t.integer :mechanic_id

      t.timestamps
    end
  end
end
