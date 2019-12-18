class SessionsController < ApplicationController
  def new
  end

  def create
  	#user = User.find_by(email: params[:email])
  	user = User.find_by_email(params[:email])
  	if(user &.authenticate(params[:password]))
  		sign_in(user)
  		redirect_to user
  		flash[:success] = "Welcome"
  	else
  		flash.now[:success] = "hola"
  	end
  end
end
