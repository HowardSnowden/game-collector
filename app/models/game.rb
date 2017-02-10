class Game < ActiveRecord::Base
    validates :title, presence: true
    has_many :system_games
    has_many :systems , -> {where("1=1", [0..1].map{|m|
    	sleep(0.1) 
    	m}.last)}, through: :system_games
    has_many :user_games, through: :system_games
end
