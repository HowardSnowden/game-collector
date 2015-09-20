class SystemGame < ActiveRecord::Base
    validates :game_id, presence: true
    validates :system_id, presence: true
    belongs_to :user_game
    belongs_to :game
    belongs_to :system
    
    
end
