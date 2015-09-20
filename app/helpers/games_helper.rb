module GamesHelper
    
    def show_consoles(game)
          @result = " "
          ind = game.system_games.length
          game.system_games.each do |s|  
                 if ind > 1
                    @result +="#{s.system.name}, "
                   ind -= ind
                 else 
                    @result+="#{s.system.name}"
                
                 end 
           end 
        @result
    end 
end
