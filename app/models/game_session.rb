class GameSession < ApplicationRecord
    belongs_to :game_table
    belongs_to :game 
    has_and_belongs_to_many :players
    has_one :store, through: :game_table

    validates :session_name, presence: true
    validates :game_id, presence: true
    validates :game_table_id, presence: true


    def game_sessions_in_date(date)
        GameSession.all.detect{|session| session.date = date}
    end

    def game_session_on_table(table)
        GameSession.all.detect{|session| session.game_table = table}
    end

    def self.game_session_dates
        GameSession.all.collect.uniq(&:date)
    end

end
