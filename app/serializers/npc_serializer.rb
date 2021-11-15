class NpcSerializer < ActiveModel::Serializer
  attributes :id,
    :name,
    :species,
    :alignment,
    :appearance,
    :strong_ability,
    :weak_ability,
    :behavior,
    :plot_key

  belongs_to :occupation
end
