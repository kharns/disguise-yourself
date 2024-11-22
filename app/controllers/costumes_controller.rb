class CostumesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @costumes = Costume.all
    if params[:query].present?
      sql_subquery = "title ILIKE :query OR description ILIKE :query"
      @costumes = @costumes.where(sql_subquery, query: "%#{params[:query]}%")
    end
  end

  def show
    @costume = Costume.find(params[:id])
    @booking = Booking.new
    @user_bookings = @costume.bookings.where(user: current_user).sort_by(&:start_date)
  end
end
