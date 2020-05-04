class GamewordsController < ApplicationController

    def index
      gamewords = Gameword.all
      render json: gamewords
    end

    def show
        gameword = Gameword.find_by(game_id: params[:id])
        render json: gameword
    end
    
    end 