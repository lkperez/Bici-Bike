class RidesController < ApplicationController
  def index
    @rides = Ride.all.order(id: :asc)
  end

  def show
    @ride = Ride.find(params[:id])
  end

  def new
    @ride = Ride.new(bike_id: params[:bike_id])
  end

  def create
    @ride = Ride.new(params.require(:ride).permit(:member_id, :bike_id, :length, :timeStart))
    @ride.update(member_id: current_member.id)
    if @ride.save
      @ride.update(timeStart: DateTime.now)
      @ride.update(timeEnd: @ride.timeStart + @ride.length.minutes)
      @ride.bike.current_station_id = nil
      @ride.bike.save
      redirect_to member_path(current_member.id)
    else
      flash.now[:alert] = 'Length required'
      render('new')
    end
  end

  def edit
    @ride = Ride.find(params[:id])
  end

  def update
    @ride = Ride.find(params[:id])
    if @ride.update(params.require(:ride).permit(:member_id, :bike_id, :length, :timeStart, :timeEnd))
      redirect_to member_path(current_member.id)
    else
      flash.now[:alert] = 'There was an error'
      render('new')
    end
  end
end
