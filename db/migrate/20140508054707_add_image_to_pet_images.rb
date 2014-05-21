class AddImageToPetImages < ActiveRecord::Migration
  def change
    add_column :pet_images, :image, :bytea
  end
end
