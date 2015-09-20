class UserGamesController < ApplicationController
   before_action :set_user_game, only: [:destroy] 
   
    def destroy
        
        @user_game.destroy
        respond_to do |format|
        format.html { redirect_to current_user }
        end
    end 
    
   def new
       @user_game = UserGame.new
       @systems = System.all
       respond_to do |format|
           format.html
           format.js{render 'new.js.erb'}
       end 

    end
   def create
       system = System.find(params[:system])
       user = User.find(params[:user_id])
       game = Game.find_by(title: params[:title]) ? Game.find_by(title: params[:title]) : Game.new(title:params[:title])
       sys_game = system.system_games.find_by(game_id: game)
       if sys_game
             @user_game = user.user_games.new(system_game: sys_game)
           if @user_game.save
             redirect_to current_user
           else 
               @systems = System.all
               render 'new'
         
           end
       else 
        respond_to do |format|
         if game.valid?
                game.save
                sys_game = system.system_games.create(game: game)
                @user_game = user.user_games.new(system_game: sys_game)

                if  @user_game.save
                       format.html {redirect_to current_user}


                else 
                   @systems = System.all

                   format.html {render :new}
                end 
          
         else
            @user_game = UserGame.new
            @systems = System.all
            @game = game
            format.html {render :new}
         end 
       end
           
     end
  end  
    

    private
        def set_user_game
           @user_game = UserGame.where(system_game_id: params[:id]).first
        end
  
end
