local nano_plate = table.deepcopy(data.raw["recipe"]["iron-plate"])
--[[
    {
    type = "recipe",
    name = "iron-plate",
    category = "smelting",
    energy_required = 3.2,
    ingredients = {{"iron-ore", 1}},
    result = "iron-plate"
    },
]]
nano_plate.name = "nano-plate"
nano_plate.ingredients = {{"nano-ore",1}}
nano_plate.result = "nano-plate"

data:extend{nano_plate}