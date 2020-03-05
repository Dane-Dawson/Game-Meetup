class CreateGameSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :game_sessions do |t|
      t.integer :game_table_id
      t.integer :game_id
      t.string :session_name
      t.integer :player_counter
      t.date :date
      t.time :time

      t.timestamps
    end

    create_table :game_sessions_players, id: false do |t|
      t.belongs_to :game_session
      t.belongs_to :player
    end
  end
end
