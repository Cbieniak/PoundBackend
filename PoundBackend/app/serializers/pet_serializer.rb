class PetSerializer < ActiveModel::Serializer
  embed :ids, :include => true
  attributes :id, :name, :image_url, :thumb_url, :species_id, :breed_id, :reward, :notes, :contact_name, :contact_detail, :contact_type, :lost, :colors, :pet_location
end
