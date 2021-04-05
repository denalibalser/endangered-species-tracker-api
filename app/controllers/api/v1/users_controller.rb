class Api::V1::UsersController < ApplicationController

    def create 
        @user = User.new(user_params)
        if @user.save
            session[:id] = @user.id
            render json: { status: 201, user: @user, logged_in: true } 
        else 
            render json: { status: 500, message: "There was an error in creating your account."}
        end 
    end 
    
    def show 
        @user = User.find_by_id(params[:id])
        # if @user.id === session[:id]
            render json: @user
        # else 
    end 

    private 

    def user_params
        params.require(:user).permit(:username, :first_name, :last_name, :password, :password_confirmation)
    end

end
