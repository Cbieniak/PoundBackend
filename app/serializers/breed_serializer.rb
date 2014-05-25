class BreedSerializer < ActiveModel::Serializer
  embed :ids, :include => true
  attributes :id, :name, :species_id


end
