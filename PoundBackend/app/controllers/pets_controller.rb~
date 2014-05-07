class PetsController < ApplicationController
protect_from_forgery :except => :create 
wrap_parameters :pet, format: [:json]
def index
	@pets = Pet.all
	respond_to do |format|
	format.json { render :json => @pets.to_json  }
end
end
def create
 @pet = Pet.create!(pet_params)
  if @pet.save
    respond_to do |format|
      format.json{render :json => @pet, :status => :created }
    end
  end	
end

def pet_params
	params.require(:pet).permit!
end

end
