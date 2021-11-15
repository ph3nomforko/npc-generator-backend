class OccupationSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :npcs
end
