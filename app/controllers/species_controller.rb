class SpeciesController < ApplicationController
  def index
      @species = Species.all
      render json: @species, root: false
  end
end
