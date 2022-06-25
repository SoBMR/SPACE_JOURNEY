class FlightsController < ApplicationController

  def new
  end

  def create
  end

  def index
    @flights = Flight.all
  end

  def show
    @flight = Flight.find(params[:id])
  end

end
