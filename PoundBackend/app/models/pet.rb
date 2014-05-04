class Pet < ActiveRecord::Base
	has_many :colors
	has_one :pet_location
	has_one :pet_image	
end
