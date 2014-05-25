class BreedsController < ApplicationController
  def index
      @q = Breed.search(params[:q])
      @breeds = @q.result(distinct: true).order(:name)
      render json: @breeds, root: false
      #http://0.0.0.0:3000/breeds.json?q[species_id_eq]=2
  end
end
