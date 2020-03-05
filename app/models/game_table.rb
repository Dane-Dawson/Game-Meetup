class GameTable < ApplicationRecord
    belongs_to :store
    has_many :game_sessions
    has_many :players, through: :game_sessions

    def name_and_store
        "#{self.table_name} at #{self.store.name}"
    end

end
