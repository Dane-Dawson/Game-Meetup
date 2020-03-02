class GameTable < ApplicationRecord
    belongs_to :store
    has_many :game_sessions
    has_many :players, through: :game_sessions

end
