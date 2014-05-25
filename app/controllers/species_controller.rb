class SpeciesController < ApplicationController
  def index
      @species = Species.all
      render json: @species, root: false
  end
  def create
    @species = Species.create!(species_params)
    @species.save
  end


def species_params
  params.require(:species).permit!
end
end
