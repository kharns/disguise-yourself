class Owner::BookingsController < ApplicationController

  # ACCEPTER BOOKING
  def accept
    @booking = Booking.find(params[:id])
    @booking.status = "accepted"
    @booking.save
    redirect_to costume_path(@booking.costume)
  end

  # REFUSER BOOKING
  def decline
    @booking = Booking.find(params[:id])
    @booking.status = "declined"
    @booking.save
    redirect_to costume_path(@booking.costume)
  end
end
