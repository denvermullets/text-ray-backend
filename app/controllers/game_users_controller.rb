class GameUsersController < ApplicationController
    def index
        gameusers = GameUser.all
        render json: gameusers
      end
      
      def show
          gameuser = GameUser.find(params[:id])
          render json: gameuser
      end
end
