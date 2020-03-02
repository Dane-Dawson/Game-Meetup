class Store < ApplicationRecord
    has_many :games
    has_many :game_tables
    has_many :game_sessions, through: :game_tables
    has_many :players, through: :game_sessions
end
