class AddPetIdToPetImage < ActiveRecord::Migration
  def change
    add_column :pet_images, :petId, :integer
  end
end
