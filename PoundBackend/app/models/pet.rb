class Pet < ActiveRecord::Base
	has_many :colors, :breeds
	has_one :pet_location, :pet_image, :species
end
