class AnimalCardSerializer < ActiveModel::Serializer
  attributes :id, :common_name, :scientific_name, :endangered_level, :url, :user_id

  belongs_to :user
end
