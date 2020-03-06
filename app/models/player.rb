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

    def self.count_vowels(name)
        vowels = ["a", "e", "i", "o", "u"] #the same as %w[ a e i o u ]
        counter = 0
        name.split("").each do |char| 
          vowels.each do |vowel|
            if char == vowel
              counter += 1
            end
          end
        end
        counter
    end

    def self.most_vowels
        Player.all.sort_by{ |player| count_vowels(player.name)}.reverse.first
    end

end
