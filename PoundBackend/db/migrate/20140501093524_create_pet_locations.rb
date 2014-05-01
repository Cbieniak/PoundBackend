class CreatePetLocations < ActiveRecord::Migration
  def change
    create_table :pet_locations do |t|
      t.string :suburb
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
