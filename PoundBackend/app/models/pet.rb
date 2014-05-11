class Pet < ActiveRecord::Base
	mount_uploader :image, PetImageUploader
	has_and_belongs_to_many :colors
	has_many :breeds
	belongs_to :pet_location
	belongs_to :pet_image
	belongs_to :species
	accepts_nested_attributes_for :pet_location, :allow_destroy => true
	accepts_nested_attributes_for :colors, :allow_destroy => true
	
	
end
