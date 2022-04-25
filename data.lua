--Credit: [EnigmaticAussie - Rubber Ducky] for the ore gen part of the mod

if not rog then
  rog = {}
end

--require("prototypes.items")
--require("prototypes.recipe")

require("functions.item-constructor")
require("functions.recipe-maker")
require("functions.technology-constructor")
require("functions.ore-gen")

--require("__roglib__.functions.ore-gen")
require("configs.items-configs")
require("configs.recipe-configs")
require("configs.technology-configs")
require("configs.place-ore-configs");

for _, item in pairs(rog.item) do
  local item_to_add = rog.returnItem(item)
  log ( serpent.block (item_to_add) )
  data:extend({item_to_add})
  
end 

for _, ore in pairs(rog.ore) do
    local ore_to_place = rog.returnore(ore)
    data:extend(
      {
        {
          type = 'autoplace-control',
          name = ore.name,
          localised_name = {'', '[entity=' .. ore.name .. '] ', {'autoplace-control-names.' .. ore.name}},
          richness = true,
          order = ore.order,
          category = 'resource'
        },
        ore_to_place
      }
    )
end  


for _, recipe in pairs(rog.recipe) do
  local recipie_to_add = rog.recipereturn(recipe)
  data:extend({recipie_to_add})
end 
