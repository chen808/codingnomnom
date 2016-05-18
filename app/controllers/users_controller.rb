class UsersController < ApplicationController

	def login
	end

	def show
		#grabbing all the recipes from current user
		@current_user_recipes = Content.where(user_id:session[:user_id])
		#@current_user_recipes = Content.where(language:Language.find(params[:id]))
		# @test_lang_all = Language.all
	end

	def index
		
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

	def edit
		@user = User.find(session[:user_id])
	end

	def update
		user = User.find(current_user.id)
		user.update_attributes(user_params)
		redirect_to '/profile'
	end

	def destroy
		User.find(params[:id]).destroy
		session.clear
		redirect_to '/login'
	end
	

	private
	def user_params
		params.require(:user).permit(:name, :alias, :email, :password, :password_confirmation)
	end

end

