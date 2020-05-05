class GameWordsController < ApplicationController
    def index
        gamewords = GameWord.all
        render json: gamewords
      end
  
      def show
          gameword = GameWord.find_by(game_id: params[:id])
          render json: gameword
      end
end
