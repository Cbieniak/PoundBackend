class RemovePetIdFromPetImages < ActiveRecord::Migration
  def change
    remove_column :pet_images, :petId, :String
  end
end
