  class PetImagesController < ApplicationController
  	  protect_from_forgery with: :null_session
  	  skip_before_filter  :verify_authenticity_token
  	
  	def index
        @images = PetImage.all
  	 render json: @images, root: false
    end
   
    def show
      @image = PetImage.find(params[:id])
    end
   
    def create
      #create a new tempfile named fileupload
      tempfile = Tempfile.new("fileupload")
      tempfile.binmode
      #get the file and decode it with base64 then write it to the tempfile
      tempfile.write(Base64.decode64(pet_image_params[:image])) 
    	  
      @image = PetImage.new(pet_image_params)
      #@image.image_file_name = uploaded_file
      if @image.save
      	@pet = Pet.find(pet_image_params[:pet_id])
      	@pet.image = File.open(tempfile.path)
      	@pet.save
        render json: @pet, root: false
      end
    end
    
    def pet_image_params
  	params.require(:pet_image).permit(:pet_id, :image, :pet_image)
    end
  end
