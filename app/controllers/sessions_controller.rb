class SessionsController < ApplicationController
  
  def index
  end

	def create
  		@user = User.find_by(email: params[:email])

  		if @user && @user.authenticate(params[:password])
      		session[:user_id] = @user.id
  			redirect_to '/profile' 
  		else
  			flash[:loginmistakes] = ["Invalid Login"]
  			redirect_to '/login' 
  		end
  	end
  	
  	def destroy
    	logout_user
    	redirect_to '/login'
    end
end

