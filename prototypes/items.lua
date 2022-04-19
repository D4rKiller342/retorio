local nano_ore = table.deepcopy(data.raw["item"]["iron-ore"])
local nano_plate = table.deepcopy(data.raw["item"]["iron-plate"])
--[[
--ore
{
    type = "item",
    name = "iron-ore",
    icon = "__base__/graphics/icons/iron-ore.png",
    icon_size = 64,
    icon_mipmaps = 4,
    pictures =
    {
        { size = 64, filename = "__base__/graphics/icons/iron-ore.png",   scale = 0.25, mipmap_count = 4 },
        { size = 64, filename = "__base__/graphics/icons/iron-ore-1.png", scale = 0.25, mipmap_count = 4 },
        { size = 64, filename = "__base__/graphics/icons/iron-ore-2.png", scale = 0.25, mipmap_count = 4 },
        { size = 64, filename = "__base__/graphics/icons/iron-ore-3.png", scale = 0.25, mipmap_count = 4 }
    },
    subgroup = "raw-resource",
    order = "e[iron-ore]",
    stack_size = 50
},
--plate
{
    type = "item",
    name = "iron-plate",
    icon = "__base__/graphics/icons/iron-plate.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "raw-material",
    order = "b[iron-plate]",
    stack_size = 100
},
]]--
--nano_ore
nano_ore.name = "nano-ore"
nano_ore.icon = "__retorio__/graphics/icons/ores/nano-ore.png"
nano_ore.pictures = 
{
    { size = 64, filename = "__retorio__/graphics/icons/ores/nano-ore.png",   scale = 0.25, mipmap_count = 4 },
    { size = 64, filename = "__retorio__/graphics/icons/ores/nano-ore-1.png", scale = 0.25, mipmap_count = 4 },
    { size = 64, filename = "__retorio__/graphics/icons/ores/nano-ore-2.png", scale = 0.25, mipmap_count = 4 },
    { size = 64, filename = "__retorio__/graphics/icons/ores/nano-ore-3.png", scale = 0.25, mipmap_count = 4 }
}
nano_ore.order = "e[nano-ore]"
--nano_plate
nano_plate.name = "nano-plate"
nano_plate.icon = "__retorio__/graphics/icons/items/nano-plate.png"
nano_plate.order = "b[nano-plate]"

data:extend{nano_ore,nano_plate}