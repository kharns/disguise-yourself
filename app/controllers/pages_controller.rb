class PagesController < ApplicationController
  def home
    @costumes = Costume.all
    # @costume = Costume.find(params[:id])
    @costume1 = @costumes.sample
    @costume2 = @costumes.sample
  end

  def dashboard
    @user = current_user
    @user_bookings = @user.bookings
    @owner_bookings = Booking.joins(:costume).where(costumes: { owner_id: current_user.id })
  end
end
