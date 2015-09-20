class UsersController < ApplicationController
    
    def index
      if params[:title]
        
        games  = Game.where("\"title\" = ?", params[:title]).ids
        sys = SystemGame.where(game_id: games).ids
        usg = UserGame.where(system_game_id: sys).all.collect(&:user_id)
        @users = User.where(id: usg)
        
      else
        @users = User.all 
      end 
    end 
    
    def show
        @user =  User.find(params[:id])
    end 
    
    
        
        
   def user_params
    params.require(:user).permit(:name, :password, :email)
   end 

end
