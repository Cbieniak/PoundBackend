class PetLocationsController < ApplicationController
def index
	@pet_locations = Pet.all
	render json: @pet_locations, root: false
end	
	def create
		raise params.inspect
		@pet_location = PetLocation.create!(params)
		if @pet_location.save!
		 #render json: @pet.id, root: false
		end	
end

def params
	params.require(:pet_location).permit!
	#params.require(:pet).permit(:image_url, :thumb_url, :species_id, :breed_id, :reward, :notes, :contact_name, :contact_detail, :contact_type, :name, :lost, :color_ids, :colors, :pet_location => [:suburb, :longitude, :latitude])
end
	
end
