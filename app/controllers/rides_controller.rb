class RidesController < ApplicationController
  def index
    @rides = Ride.all.order(id: :asc)
  end

  def show
    @ride = Ride.find(params[:id])
  end

  def new
    @ride = Ride.new(params[:ride])
    if @ride.save
      puts "no error"
    else
      puts "error"
    end
  end

  def edit
  end
end
