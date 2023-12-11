class RoutesController < ApplicationController
  def index
  end

  def show
    @route = Route.find(params[:id])
  end

  def new
  end

  def edit
  end
end
