class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.integer :store_id
      t.string :name
      t.string :description
      t.integer :min_players
      t.integer :max_players
      t.integer :min_playtime
      t.integer :max_playtime
      t.string :link_url
      t.string :photo_url

      t.timestamps
    end
  end
end
