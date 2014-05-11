class AddPetLocationIdToPet < ActiveRecord::Migration
  def change
    add_column :pets, :pet_location_id, :integer
  end
end
