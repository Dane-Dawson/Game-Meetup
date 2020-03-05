class Game < ApplicationRecord
    belongs_to :store
    has_many :game_sessions
    has_many :players, through: :game_sessions

    def self.longest_game
        Game.all.sort_by(&:max_playtime).reverse.first
    end

    def self.most_sessions
        Game.all.sort_by{ |game| game.game_sessions.count}.reverse.first
    end

    def self.total_players(game)
        total_players = 0
        game.game_sessions.each do |session|
            total_players += session.players.count
        end
        total_players
    end

    def self.most_sessions
        Game.all.sort_by { |game| total_players(game) }.reverse.first
    end

end
