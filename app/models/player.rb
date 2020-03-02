class Player < ApplicationRecord
    has_and_belongs_to_many :game_sessions
    has_many :games, through: :game_sessions
    has_many :game_tables, through: :game_sessions
    has_many :stores, through: :game_tables

end
