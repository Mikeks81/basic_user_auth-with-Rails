class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		flash[:notice] = "Welcome to the site!"
  		redirecte_to '/'
  	else
  		flash[:notice] = "Something went wrong... Dummy."
  		redirect_to :back
  end

  def user_params
  	params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
