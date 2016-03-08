class SessionsController < ApplicationController
  
  def index
  end

	def create
  		@user = User.find_by(email: params[:email])

  		if @user && @user.authenticate(params[:password])
      		session[:user_id] = @user.id
  			redirect_to '/profile' 
  		else
        if User.find_by(email: params[:email]) == nil
  			   flash[:loginmistakes] = ["Invalid email"]
           redirect_to '/login' 
        else
          flash[:loginmistakes] = ["Invalid password"]
  			 redirect_to '/login' 
        end
  		end
  	end
  	
  	def destroy
    	logout_user
    	redirect_to '/login'
    end
end

