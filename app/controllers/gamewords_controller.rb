class GamewordsController < ApplicationController

    def index
      gamewords = Gameword.all
      render json: gamewords
    end

    def show
        gameword = Gameword.find(params[:id])
        render json: gameword
    end
    
    end 