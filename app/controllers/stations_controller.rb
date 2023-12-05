class StationsController < ApplicationController

  def index
    if logged_in?
      @member = current_member
      @stations = Station.all.order(identifier: :asc)
    else
      redirect_to login_path, alert: 'Please log in!'
    end
  end

  def show
    @station = Station.find(params[:id])
  end

end
