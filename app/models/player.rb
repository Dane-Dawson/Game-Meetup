class Player < ApplicationRecord
    has_and_belongs_to_many :game_sessions
    has_many :games, through: :game_sessions
    has_many :game_tables, through: :game_sessions
    has_many :stores, through: :game_tables

    has_secure_password
    
    validates :name, presence: true, uniqueness: true
    validates :age, numericality: { greater_than_or_equal_to: 12, less_than_or_equal_to: 110}
    validates :password, presence: true
    
    def self.oldest_player
        Player.all.sort_by(&:age).reverse.first
    end

    def self.youngest_player
        Player.all.sort_by(&:age).first
    end

    def self.most_sessions
        Player.all.sort_by{ |player| player.game_sessions.count}.reverse.first
    end

    def self.first_to_join
        Player.all.sort_by(&:created_at).first 
    end

    

end
