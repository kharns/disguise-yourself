class PagesController < ApplicationController
  def home
    @costumes = Costume.all
  end

  def show
    @costume = Costume.find(params[:id])
  end
end
