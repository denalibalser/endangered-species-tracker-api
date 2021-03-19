class Api::V1::UsersController < ApplicationController
    #add before_action's for authorization 

    # def home 
    #     render json: { status: 200 }
    # end 

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
        render json: @user
    end 

    private 

    def user_params
        params.require(:user).permit(:username, :first_name, :last_name, :password, :password_confirmation)
    end

end
