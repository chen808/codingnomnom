class UsersController < ApplicationController

	def login
	end

	def create
		user = User.new(user_params)
		if user.valid? == true
			user.save
			session[:user_id] = user.id
			 
			redirect_to '/profile' 
		else
			flash[:mistakes] = user.errors.full_messages
			redirect_to '/login'
		end 
	end

	

	private
	def user_params
		params.require(:user).permit(:name, :alias, :email, :password, :password_confirmation)
	end

end

