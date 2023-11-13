class RidesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @count = Ride.count
    @ride = Ride.new(id: @count + 1)
  end

  def edit
  end
end
