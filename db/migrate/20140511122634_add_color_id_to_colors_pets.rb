class AddColorIdToColorsPets < ActiveRecord::Migration
  def change
    add_column :colors_pets, :color_id, :integer
  end
end
