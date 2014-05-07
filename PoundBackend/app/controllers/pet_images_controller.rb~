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
 
  def new
    @image = PetImage.new
  end
 
  def create
    @image = PetImage.new(params[:image])
    if @image.save
      redirect_to @image
    else
      redirect_to pet_images_path
    end
  end
 
  def edit
    @image = PetImage.find(params[:id])
  end
 
  def update
    @image = PetImage.find(params[:id])
    if @image.update_attributes(params[:image])
      redirect_to @image
    end
  end
end
