class ApplicationController < ActionController::Base
	def sign_in(user)
		cookies.permanent[:remember_token] = user.remember_token
	end

	def current_user=(user)
		@current_user = user
	end

	def current_user
		remember_token = User.encrypt(cookies[:remember_token])
		@current_user ||= User.find_by_remember_token!(cookies[:remember_token]) if cookies[:remember_token]
	end 
end
