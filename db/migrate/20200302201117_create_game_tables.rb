class CreateGameTables < ActiveRecord::Migration[6.0]
  def change
    create_table :game_tables do |t|
      t.integer :store_id
      t.string :table_name
      t.integer :seats_available

      t.timestamps
    end
  end
end
