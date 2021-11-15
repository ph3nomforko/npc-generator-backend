class NpcSerializer < ActiveModel::Serializer
  attributes :name,
    :id,
    :species,
    :alignment,
    :appearance,
    :strong_ability,
    :weak_ability,
    :behavior,
    :plot_key,
    :occupation

  belongs_to :occupation
end
