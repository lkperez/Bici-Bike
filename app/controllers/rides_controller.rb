class RidesController < ApplicationController
  def index
    @rides = Ride.all.order(id: :asc)
  end

  def show
    @ride = Ride.find(params[:id])
  end

  def new
    @count = Ride.count + 1
    @ride = Ride.new(id:@count)
  end

  def create
    @ride = Ride.new(params.require(:ride).permit(:member_id, :bike_id, :length, :id))
    if @ride.save
      @ride.bike.current_station_id = nil
      @ride.bike.save
      redirect_to rides_path
    else
      redirect_to new_ride_path
    end
  end

  def edit
  end
end
