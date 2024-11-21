class CostumesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @costumes = Costume.all
  end

  def show
    @costume = Costume.find(params[:id])
    @booking = Booking.new
    @user_bookings = @costume.bookings.where(user: current_user).sort_by(&:start_date)
  end
end
