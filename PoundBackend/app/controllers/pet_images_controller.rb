class PetImagesController < ApplicationController
	
	def index
    @images = PetImage.all
	respond_to do |format|
	format.json { render :json => @images.to_json  }
end
  end
 
  def show
    @image = PetImage.find(params[:id])
  end
 
  def create

    #create a new tempfile named fileupload
    tempfile = Tempfile.new("fileupload")
    tempfile.binmode
    #get the file and decode it with base64 then write it to the tempfile
    tempfile.write(Base64.decode64(picture_image_params[:image]))  	  
  	  
    @image = PetImage.new(params[pet_image_params])
    @image.image_file_name = tempfile
    if @image.save
      render json: @image
    end
  end
  
  def pet_image_params
	params.require(:pet_image).permit!
  end
end
