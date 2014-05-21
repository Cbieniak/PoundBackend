class AddPetIdToPetImages < ActiveRecord::Migration
  def change
    add_column :pet_images, :pet_id, :string
  end
end
