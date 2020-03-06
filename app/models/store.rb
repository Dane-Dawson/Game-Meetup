class Store < ApplicationRecord
    has_many :games
    has_many :game_tables
    has_many :game_sessions, through: :game_tables
    has_many :players, through: :game_sessions

    def self.game_session_total
        Store.all.each do |store|
            store.game_sessions.count
        end
    end

    def self.most_sessions
        Store.all.sort_by{ |store| store.game_sessions.count}.reverse.first
    end
end
