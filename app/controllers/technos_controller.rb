class TechnosController < ApplicationController

  def index
    @technos = Techno.all
  end

  def show
  end

end
