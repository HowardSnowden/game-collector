class Game < ActiveRecord::Base
    validates :title, presence: true
    validates_uniqueness_of :title
    has_many :system_games
    has_many :systems, through: :system_games
    has_many :user_games, through: :system_games
end
