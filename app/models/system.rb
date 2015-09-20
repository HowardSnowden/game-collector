class System < ActiveRecord::Base
    has_many :system_games
    has_many :games, through: :system_games
end
