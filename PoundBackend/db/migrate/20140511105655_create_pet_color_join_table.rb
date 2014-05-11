class CreatePetColorJoinTable < ActiveRecord::Migration
  def change
  	  create_table :colors_pets, id: false do |t|
      t.belongs_to :pets
      t.belongs_to :colors
    end
  end
end
