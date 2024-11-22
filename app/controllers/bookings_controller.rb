class BookingsController < ApplicationController
  # CREATION DE NOUVEAU BOOKING
  def create
    @booking = Booking.new(booking_params)
    @costume = Costume.find(params[:costume_id])
    # On récupère la liste des bookings de cet user pour ce costume
    @user_bookings = @costume.bookings.where(user: current_user).sort_by(&:start_date)
    # On attribue le nouveau booking et à un costume et à un user
    @booking.costume = @costume
    @booking.user_id = current_user.id
    # Pour calculer le prix total, on vérifie la validité des dates rentrées
    if !@booking.start_date.nil? && !@booking.end_date.nil? && @booking.start_date < @booking.end_date
      @booking.total_price = (@booking.end_date - @booking.start_date).to_i * @booking.costume.price
    end
    # Par défaut, un booking créé a un statut Pending
    @booking.status = "pending"

    # Vérification d'enregistrement du booking pour redirection et message au User
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
