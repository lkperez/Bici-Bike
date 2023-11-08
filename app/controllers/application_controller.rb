class ApplicationController < ActionController::Base

  # def log_in(user)
  #   session[:user_id] = user.id
  # end 

  # def log_out
  #   session.delete(:user_id)
  #   @current_user = nil
  # end 

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def require_user
    redirect_to login_path, warning: "you must be logged in to get access"
  end

  helper_method :current_user
  
end
