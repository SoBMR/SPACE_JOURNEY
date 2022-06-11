class TechnosController < ApplicationController

  def index
    @technos = Techno.all
  end

  def show
    @techno = Techno.find(params[:id])
  end

end
