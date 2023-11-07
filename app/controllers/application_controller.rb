class ApplicationController < ActionController::Base
include ActionController::helper_method
  protect_from_forgery with :exception

  def log_in(user)
    session[:user_id] = user.id
  end 

  def log_out
    session.delete(:user_id)
    @current_user = nil
  end 

  def current_user
    @current_user ||= user.find_by(id: session[:user_id]) if session[:user_id]
  end
  
  helper_method :current_user
end
