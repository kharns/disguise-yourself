class Owner::CostumesController < ApplicationController
  def new
    @costume = Costume.new
  end

  def create
    @costume = Costume.new(costume_params)
    @costume.owner = current_user
    if @costume.save
      redirect_to costume_path(@costume), notice: "Costume successfully added"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @costume = Costume.find(params[:id])
  end

  def update
    @costume = Costume.find(params[:id])
    @costume.update(costume_params)
    if @costume.save
      redirect_to dashboard_path, notice: "Costume successfully edited"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @costume = Costume.find(params[:id])
    if @costume.bookings.empty?
      @costume.destroy
      redirect_to dashboard_path, notice: "Costume deleted", status: :see_other
    else
      # A METTRE EN ALERTE (ROUGE)
      redirect_to dashboard_path, alert: "Costume cannot be deleted, you have booking on it!"
    end
  end

  private

  def costume_params
    params.require(:costume).permit(:title, :description, :price, :photo)
  end
end
