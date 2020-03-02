class GameSession < ApplicationRecord
    belongs_to :game_table
    belongs_to :game 
    has_and_belongs_to_many :players
    has_one :store, through: :game_table
end
