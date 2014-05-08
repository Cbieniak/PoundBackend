class AddImageToPetImages < ActiveRecord::Migration
  def change
    add_column :pet_images, :image, :File
  end
end
