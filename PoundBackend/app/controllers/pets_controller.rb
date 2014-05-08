class PetsController < ApplicationController
protect_from_forgery :except => :create 
wrap_parameters :pet, format: [:json]
def index
	@pets = Pet.all
	render json: @pets, root: false
end
def create
 @pet = Pet.create!(pet_params)
  if @pet.save
    render json: @pet
  end	
end

def pet_params
	params.require(:pet).permit(:image_url, :thumb_url, :species_id, :breed_ids, :reward, :notes, :contact_name, :contact_detail, :contact_type, :name)
end


end
