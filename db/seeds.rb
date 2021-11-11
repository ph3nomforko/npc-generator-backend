occupation = Occupation.create(name:"City Guard Captain")

npc_one = Npc.create(
  name:"Immaril",
  species:"Human",
  alignment:"Lawful Neutral",
  appearance:"Lanky",
  strong_ability:"Dexterity",
  weak_ability:"Strength",
  behavior:"Speaks very quietly",
  plot_key:"Last to see the victim",
  occupation_id:occupation.id
)
