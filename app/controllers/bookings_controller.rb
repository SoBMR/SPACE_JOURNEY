class BookingsController < ApplicationController

  # def new
  #   @flight = Flight.find(params[:flight_id])
  #   @booking = Booking.new
  # end

  def create
    @booking = Booking.new
    @booking.flight = Flight.find(params[:flight_id])
    @booking.user = current_user
    @booking.save
    redirect_to(bookings_path)
  end

  def index
    @bookings = current_user.bookings.order(created_at: :desc)
    @previous_bookings = @bookings.select do |booking|
      booking.flight.departure_date < DateTime.now
    end
  end

end
