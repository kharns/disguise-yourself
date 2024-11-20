class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @costume = Costume.find(params[:costume_id])
    @booking.costume = @costume
    @booking.user_id = current_user.id
    if @booking.start_date < @booking.end_date
      @booking.total_price = (@booking.end_date - @booking.start_date).to_i * @booking.costume.price
    end
    @booking.status = "pending"

    if @booking.save

      redirect_to costume_path(@booking.costume), notice: "Booking successfully created!"
    else
      render 'costumes/show', status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
