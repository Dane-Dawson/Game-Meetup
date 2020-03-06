class GameSession < ApplicationRecord
    belongs_to :game_table
    belongs_to :game 
    has_and_belongs_to_many :players
    has_one :store, through: :game_table

    validates :session_name, presence: true
    validates :game_id, presence: true
    validates :game_table_id, presence: true

    def game_session_collision(date, game_table_id)
        GameSession.where(date: date, game_table_id: game_table_id).count > 0
    end

    def self.game_sessions_in_date(game_date)
        date_array = GameSession.all.collect{|session| session.date}
        date_array.include?("game_date")
    end

    def self.game_session_on_table(session_table)
        table_array = GameSession.all.collect{|session| session.game_table_id}
        table_array.include?(session_table)
    end

    def self.game_session_dates
        GameSession.all.collect.uniq(&:date)
    end

end
