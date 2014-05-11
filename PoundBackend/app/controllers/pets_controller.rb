class PetsController < ApplicationController
protect_from_forgery :except => :create 
wrap_parameters :pet, format: [:json]
def index
	@pets = Pet.all
	render json: @pets, root: false
end
def create

 @pet = Pet.create!(pet_params)
 @pet.pet_location = PetLocation.create(pet_location_params)
 @pet.color_ids = params[:color_ids]
  if @pet.save!
    render json: @pet.id, root: false
  end	
end

def pet_params
	#params.require(:pet).permit!
	params.require(:pet).permit(:image_url, :thumb_url, :species_id, :breed_id, :reward, :notes, :contact_name, :contact_detail, :contact_type, :name, :lost, :color_ids, :colors, :pet_location)
end

def pet_location_params
	#params.require(:pet).permit!
	params.require(:pet_location).permit(:suburb, :latitude, :longitude)
end

def color_params
	#params.require(:pet).permit!
	params.require(:colors).permit(:value, :name, :id)
end


end
