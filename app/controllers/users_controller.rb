class UsersController < ApplicationController

    def index
        render json: User.all
    end

    def show
        user = find_user
        render json: user, status: :ok
    end

    def create
        user = User.create!(create_user_params)
        render json: user, status: :created
    end

    def update
        user = find_user
        bird.update(update_user_params)
        render json: user
    end

    def destroy
        user = find_user
        user.destroy
        head :no_content
    end

    private

    def find_user
        User.find(params[:id])
    end

    def create_user_params
        params.permit(:username, :password, :email)
    end

    def update_user_params
        params.permit(:username, :password, :email, :image)
    end

end 
