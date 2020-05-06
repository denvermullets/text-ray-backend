class GameWordsController < ApplicationController
    def index
        gamewords = GameWord.all
        render json: gamewords
      end
  
      def show
        words = GameWord.all
        gamewords = []
        words.each do |word| 
            if word.game_id == (params[:id]).to_i
                gamewords << word
            end 
        end 
        render json: gamewords
      end
end
