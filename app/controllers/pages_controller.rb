class PagesController < ApplicationController
  def home
    @costumes = Costume.all
    # @costume = Costume.find(params[:id])
    @costume1 = @costumes.sample
    @costume2 = @costumes.sample
  end
end
