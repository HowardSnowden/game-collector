module UsersHelper
    
    def number_of_games(user)
        @game_count = 0 
        if user.system_games
            @game_count = user.system_games.count
        else
            @game_count = " "
        end 
        
        
       @game_count 
    end 
end
