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

  def new
  end

  def create
  end

  def edit
    @station = Station.find(params[:id])
  end

  def update
    @station = Station.find(params[:id])
    if @station.update(params.require(:station).permit(:total_docks, :address, :name))
      redirect_to station_path(@station.id)
    end
  end


end
