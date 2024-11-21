class Owner::CostumesController < ApplicationController
  def new
    @costume = Costume.new
  end

  def create
    @costume = Costume.new(costume_params)
    @costume.owner = current_user
    if @costume.save
      redirect_to costume_path(@costume), notice: "Costume successfully added."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def costume_params
    params.require(:costume).permit(:title, :description, :price, :photo)
  end
end
