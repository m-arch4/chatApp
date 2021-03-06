class UsersController < ApplicationController

    def new
      @user = User.new
    end

    def create
      @user = User.new(user_params)
      if @user.save
        session[:user_id] = @user.id
        flash[:success] = "Welcome to the test blog #{@username}"
        redirect_to root_path
      else
        flash.now[:error] = "Please enter a username that isn't already taken"
        render 'new'

      end
    end

    private
    def user_params
      params.require(:user).permit(:username, :password)
    end

end
