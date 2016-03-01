class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  def current_user
  	User.find(session[:user_id]) if session[:user_id]
  end

  def logout_user
    session.clear
  end

  helper_method :current_user, :logout_user
  
  def require_login
  	redirect_to '/login' if session[:user_id] == nil
  end

  def require_correct_user
  	user = User.find(params[:id])
  	redirect_to '/login' if current_user != user
  end

end
