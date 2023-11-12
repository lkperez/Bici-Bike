class StationsController < ApplicationController
  
  # def index
  #   @stations = Station.all.order(identifier: :asc)
  # end

  def index
    if logged_in?
      @user = current_user
    else
      redirect_to login_path, alert: 'Please log in!'
    end
  end
  
end
