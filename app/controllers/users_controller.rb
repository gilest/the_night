# class UsersController < ApplicationController

#   def create
#     @user = User.find_or_create_by(user_params)
#     session[:user] = @user.name
#     redirect_to index_path
#   end

#   private

#   def user_params
#     params.require(:user).permit(:name)
#   end

# end