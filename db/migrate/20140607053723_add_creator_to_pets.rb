class AddCreatorToPets < ActiveRecord::Migration
  def change
    add_column :pets, :creator, :string
  end
end
