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
    @ride.member_id = current_member.id
    @ride.timeStart = DateTime.now
    @ride.timeEnd = @ride.timeStart + @ride.length.minutes
    if @ride.save
      @ride.bike.current_station_id = nil
      @ride.bike.save
      redirect_to member_path(current_member.id)
    else
      flash.now[:alert] = 'Length required'
      render('new')
    end
  end

  def edit
  end
end
