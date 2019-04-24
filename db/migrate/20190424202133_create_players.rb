class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.string :team
      t.string :position
      t.decimal :price

      t.timestamps
    end
  end
end
