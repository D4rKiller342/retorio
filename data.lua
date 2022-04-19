--Credit: [EnigmaticAussie - Rubber Ducky] for the ore gen part of the mod

if not rog then
  rog = {}
end

require("prototypes.items")
require("prototypes.recipe")
require("functions.ore-gen")
require("configs.place-ore-configs");

for _, ore in pairs(rog.ore) do
    local ore_to_place = rog.returnore(ore)
    data:extend(
      {
        {
          type = 'autoplace-control',
          name = ore.name,
          richness = true,
          order = ore.order,
          category = 'resource'
        },
        ore_to_place
      }
    )
end    