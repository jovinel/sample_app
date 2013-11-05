class UsersController < ApplicationController
  
  def show
  	@user = User.find(params[:id])
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(params[:user]) # the tutorial would like to change params[:user] to user_params
  	if @user.save
      sign_in @user
  		flash[:success] = "Welcome to the Sample App!"
  		redirect_to @user
  	else
  		render 'new'
  	end
  end

  # The code below does not work properly unlike the sample tutorial.
  #private

  	#def user_params
  		#params.require(:user).permit(:name, :email, :password, :password_confirmation)
  	#end

end
