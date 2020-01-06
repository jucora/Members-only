class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by(email: params[:session][:email])
  	if(user &.authenticate(params[:session][:password]))
      flash.now[:success] = "Welcome"
      redirect_to posts_path
  		sign_in(user)
  		
  		
  	else
  		flash.now[:success] = "Invalid email or password"
      render "new"
  	end
  end

  def delete
    sign_out
  end
end
