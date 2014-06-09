class PetsController < ApplicationController
protect_from_forgery :except => :create
skip_before_action :verify_authenticity_token
wrap_parameters :pet, format: [:json]
def index
	@pets = Pet.order(:created_at)
	render json: @pets, root: false
	
end

def show
	@pet = Pet.find(params[:id])
	render json: @pet, root: false
end
def create

 @pet = Pet.create!(pet_params)
 @pet.pet_location = PetLocation.create(pet_location_params)
 @pet.color_ids = params[:color_ids]
  if @pet.save!
    render json: @pet.id, root: false
  end	
end

def destroy
	@user = User.where(:authentication_token => params[:auth_token]).first
	puts @user.name 
	if(@user)
		@pet = Pet.find(params[:id])
		if(@pet.creator == @user.id)
			if @pet.delete!
        		render :json => '{worked: "YEAH"}'
        	else
        		render :json => '{error: "Deletion Failed"}'
        	end
		else
			puts "NOT OWNER DOE"
        	render :json => '{error: "You are not the owner"}'
		end
	else
		puts "USER DOE"
		render :json => '{error: "Not Signed in"}' 
	end
end

def pet_params
	#params.require(:pet).permit!
	params.require(:pet).permit(:image_url, :thumb_url, :species_id, :breed_id, :reward, :notes, :contact_name, :contact_detail, :contact_type, :name, :lost, :color_ids, :colors, :pet_location, :creator)
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
