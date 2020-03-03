class Player < ApplicationRecord
    has_and_belongs_to_many :game_sessions
    has_many :games, through: :game_sessions
    has_many :game_tables, through: :game_sessions
    has_many :stores, through: :game_tables

    has_secure_password
    
    validates :name, presence: true, uniqueness: true
    validates :age, numericality: { greater_than_or_equal_to: 12, less_than_or_equal_to: 110}
    validates :password, presence: true
    

end
