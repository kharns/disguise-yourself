class CostumesController < ApplicationController
  def show
    # @costume = Costume.find(params[:id])
  end

  def index
    @costumes = Costume.all
  end
end
