class CreateMechanics < ActiveRecord::Migration[5.0]
  def change
    create_table :mechanics do |t|
      t.string :name

      t.timestamps
    end
  end
end
