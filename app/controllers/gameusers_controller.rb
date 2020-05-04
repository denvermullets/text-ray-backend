class GameusersController < ApplicationController

    def index
      gameusers = Gameuser.all
      render json: gameusers
    end
    
    def show
        gameuser = Gameuser.find(params[:id])
        render json: gameuser
    end
    
end 