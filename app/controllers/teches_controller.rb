class TechesController < ApplicationController

  def index
    @teches = Tech.all
  end

  def show
  end

end
