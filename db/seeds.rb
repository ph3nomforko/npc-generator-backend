occupation_one = Occupation.create(name:"City Guard Captain")
occupation_two = Occupation.create(name:"Village Elder")

npc_one = Npc.create(
  name:"Immaril",
  species:"Human",
  alignment:"Lawful Neutral",
  appearance:"Lanky",
  strong_ability:"Dexterity",
  weak_ability:"Strength",
  behavior:"Speaks very quietly",
  plot_key:"Last to see the victim",
  occupation_id:occupation_one.id
)
npc_two = Npc.create(
  name:"Eriator",
  species:"Half-elf",
  alignment:"Lawful Good",
  appearance:"Very tanned",
  strong_ability:"Constitution",
  weak_ability:"Dexterity",
  behavior:"Paces when talks",
  plot_key:"Knows PC's hidden backstory",
  occupation_id:occupation_one.id
)
npc_three = Npc.create(
  name:"Jeoth",
  species:"Human",
  alignment:"Chaotic Good",
  appearance:"Ancient",
  strong_ability:"Wisdom",
  weak_ability:"Constitution",
  behavior:"Distrustful of the PCs",
  plot_key:"Knows the location of the entrance to the hidden tomb",
  occupation_id:occupation_two.id
)
