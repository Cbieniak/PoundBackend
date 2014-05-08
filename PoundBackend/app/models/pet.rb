class Pet < ActiveRecord::Base
	mount_uploader :image, PetImageUploader
	has_many :colors
	has_many :breeds
	belongs_to :pet_location
	belongs_to :pet_image
	belongs_to :species
       serialize :breed_ids
	
end
