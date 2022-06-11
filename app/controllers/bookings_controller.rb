class BookingsController < ApplicationController

  def create
    @booking = Booking.new(booking_params)
    @booking.flight = Flight.find(params[:flight_id])
    @booking.user = current_user
    @booking.save
    redirect_to(user_bookings_path)
  end

  def user_bookings
    @bookings = current_user.bookings
    @previous_bookings = current_user.bookings.select do |booking|
      booking.departure_date < DateTime.now
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date)
  end

end
