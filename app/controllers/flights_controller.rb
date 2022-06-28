class FlightsController < ApplicationController

  def new
    @new_flight = Flight.new
  end

  def create
    @flights = Flight.new(flights_params)
    authorize @flights
    @user = current_user
    @flights.user = @user

    if @flight.save
      redirect_to my_flights_path
    else
      render :new
    end

  end

  def index
    @flights = Flight.all
  end

  def show
    @flight = Flight.find(params[:id])
  end

end
