class GamesController < ApplicationController
    
    def index
       
        if params[:system]
          
          system = System.find(params[:system])
          @games = system.games
          
        else
          @games = Game.all
        
        end
    end 
end
