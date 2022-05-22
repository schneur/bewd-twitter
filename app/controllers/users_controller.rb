class UsersController < ApplicationController
  def create
    @user = User.new{username: params[:username], email: params[:email], password: params[:password]}

    if @user.save
      render json: {
        user: {
          username: @user.username
          email: @user.email
        }
      }
    else
      render json: {
        success: false
      }
    end
  end

  private

    def user_params
      params.require(:user).permit(:password, :username)
    end
end
