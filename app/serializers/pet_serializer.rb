class PetSerializer < ActiveModel::Serializer
  embed :ids, :include => true
  attributes :id, :name, :image_url, :thumb_url, :species_id, :species, :breed_id, :breed, :reward, :notes, :contact_name, :contact_detail, :contact_type, :lost, :colors, :color_ids, :pet_location, :creator
end
