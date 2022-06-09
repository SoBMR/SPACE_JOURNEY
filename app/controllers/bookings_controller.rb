class BookingsController < ApplicationController

  def create
    @booking = Booking.new(booking_params)
    @booking.flight = Flight.find(params[:flight_id])
    @booking.user = current_user
    @booking.save
  end

  def user_bookings
    @bookings = current_user.bookings
    # something I forgot
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date)
  end

end
