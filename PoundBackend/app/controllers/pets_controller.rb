class PetsController < ApplicationController
def index
	@pets = Pet.all
	respond_to do |format|
	format.json { render :json => @pets.to_json  }
end
end	
	
end
