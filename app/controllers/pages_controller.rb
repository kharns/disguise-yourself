class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @costumes = Costume.all
    # @costume = Costume.find(params[:id])
    @costume1 = @costumes.sample
    @costume2 = @costumes.sample
    @costume2 = @costumes.sample until @costume2 != @costume1
  end
end
