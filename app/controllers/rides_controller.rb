class RidesController < ApplicationController
  def index
    @rides = Ride.all.order(id: :asc)
  end

  def show
    @ride = Ride.find(params[:id])
  end

  def new
    @count = Ride.count
    @ride = Ride.new(id: @count + 1)
  end

  def create
    @ride = Ride.new(params[:rides])
    if @ride.save
      redirect_to rides_path
    else
      redirect_to new_ride_path
    end
  end

  def edit
  end
end
