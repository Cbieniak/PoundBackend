class CreateContactDetails < ActiveRecord::Migration
  def change
    create_table :contact_details do |t|
      t.integer :type
      t.string :detail
      t.integer :pet_id

      t.timestamps
    end
  end
end
