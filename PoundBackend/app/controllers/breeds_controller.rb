class BreedsController < ApplicationController
  def index
      @q = Breed.search(params[:q])
      @breeds = @q.result(distinct: true)
      render json: @breeds
      #http://0.0.0.0:3000/breeds.json?q[species_id_eq]=2
  end
end
