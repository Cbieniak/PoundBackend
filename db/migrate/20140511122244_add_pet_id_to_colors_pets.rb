class AddPetIdToColorsPets < ActiveRecord::Migration
  def change
    add_column :colors_pets, :pet_id, :integer
  end
end
