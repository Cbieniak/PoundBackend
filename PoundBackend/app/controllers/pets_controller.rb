class PetsController < ApplicationController
protect_from_forgery :except => :create 
wrap_parameters :pet, format: [:json]
def index
	@pets = Pet.all
	render json: @pets
end
def create
 @pet = Pet.create!(pet_params)
  if @pet.save
    render json: @pet
  end	
end

def pet_params
	params.require(:pet).permit!
end

end
