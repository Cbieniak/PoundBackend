class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :image_url
      t.string :thumb_url
      t.integer :species_id
      t.integer :breed_id
      t.integer :reward
      t.text :notes
      t.string :contact_name
      t.string :contact_detail
      t.integer :contact_type
      t.boolean :lost

      t.timestamps
    end
  end
end
