class UsersController < ApplicationController
    def index
        users = User.all
        render json: users
      end
  
      def show
        found_user = User.find_by(name: params[:id])
        render json: found_user
      end 

      def create 
        user = User.create(user_params)

        render json: user
      end

      def user_by_id
        user = User.find(params[:id])
        render json: user
      end

      def check_user
        user = User.where(name: params[:id]).exists?
        if (user)
          found_user = User.find_by(name: params[:id])
          render json: found_user
        else 
          user = User.create(name: params[:name])
          render json: user
        end 
      end

      private

      def user_params
        params.require(:user).permit(:name)
      end
end
