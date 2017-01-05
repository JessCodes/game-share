class CreateGameMechanics < ActiveRecord::Migration[5.0]
  def change
    create_table :game_mechanics do |t|
      t.string :game_id
      t.string :mechanic_id

      t.timestamps
    end
  end
end
