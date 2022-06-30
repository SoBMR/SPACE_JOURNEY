class FlightsController < ApplicationController

  # def new
  #   @flight = Flight.new
  # end

  # def create
  #   @bookings = Booking.new(bookings_params)
  #   authorize @bookings
  #   @flight = Flight.find(params[:flight_id])
  #   @booking.flight = @flight

  #   if @flight.save
  #     redirect_to my_flights_path(@flight)
  #   else
  #     render :new
  #   end

  # end

  def index
    @flights = Flight.all
  end

  def show
    @flight = Flight.find(params[:id])
  end

end

# private

#   def set_flight
#     @flight = Flight.find(params[:id])
#   end

#   def flight_params
#     # techno id, planet id, etc.
#     params.require(:flight).permit(:travel_distance, :price_per_person, :departure_date,
#   :departure_planet_id, :arrival_planet_id, :flight_duration)
#     params.require(:planet).permit(:name, :description)
#     params.require(:techno).permit(:name, :description)
#   end
