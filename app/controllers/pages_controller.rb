class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @costumes = Costume.all
    # @costume = Costume.find(params[:id])
    @costume1 = @costumes.sample
    @costume2 = @costumes.sample
    @costume2 = @costumes.sample until @costume2 != @costume1
  end

  def dashboard
    @user = current_user
    @user_bookings = @user.bookings
    @owner_bookings = Booking.joins(:costume).where(costumes: { owner_id: current_user.id })
    @owner_costumes = Costume.where(owner_id: current_user.id)
  end
end
