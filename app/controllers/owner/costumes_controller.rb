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
      redirect_to costume_path(@costume), notice: "Costume successfully edited"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def costume_params
    params.require(:costume).permit(:title, :description, :price, :photo)
  end
end
