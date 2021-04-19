class Api::V1::UsersController < ApplicationController

    def create 
        @user = User.new(user_params)
        if @user.save
            session[:id] = @user.id
            render json: { status: 201, user: @user, logged_in: true } 
        else 
            @existing_user = User.find_by(username: params[:user][:username])
            if @existing_user 
                render json: { status: 500, error: "*Username already exists", logged_in: false }
            else
                render json: { status: 500, error: "There was an error in creating your account.", logged_in: false }
            end
        end 
    end 
    
    def show 
        @user = User.find_by_id(params[:id])
        render json: { user: @user, species_cards: @user.animal_cards }
    end 

    private 

    def user_params
        params.require(:user).permit(:username, :first_name, :last_name, :password, :password_confirmation)
    end
end
