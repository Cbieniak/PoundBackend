class PetImage < ActiveRecord::Base
	mount_uploader :image_file_name, PetImageUploader
	
end
