module GamesHelper
    
    def show_consoles(game)
          result = " "
          result = game.systems.pluck(:name).join(', ') 
         result
    end 
end
