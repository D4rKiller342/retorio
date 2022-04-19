rog.ore = {
    --[[
        Model:
        ["Ore-name"] = {
        name = 'name',
        result = 'result',
        icon = 'icon file',
        tint = nil, --only add if there's a tint to the sprite to add
        map_ore_tint = {r = 0, g = 0, b = 1},
        ore_graphic = 'non hr grapic',
        ore_graphic_hr = 'hr grapic',
        has_starting_area_placement = true,
        --regular_rq_factor_multiplier = 1, --can be remouve default value is 1
        --fluid_type = 'water', --only add if there's a liquid req
        --fluid_amount = 50,  --only add if there's a liquid req
        mining_time = 1, --default is 2.5 if not present this line can be remouved
        --count = 1, --default is 1 this line can be remouved
        order = 'c'
    ]]
    ["nano-ore"] = {
        name = 'nano-ore',
        result = 'nano-ore',
        icon = '__retorio__/graphics/icons/ores/nano-ore.png',
        tint = {r = 0, g = 1, b = 1},
        map_ore_tint = {r = 0, g = 0, b = 1},
        ore_graphic = '__base__/graphics/entity/iron-ore/iron-ore.png',
        ore_graphic_hr = '__base__/graphics/entity/iron-ore/hr-iron-ore.png',
        has_starting_area_placement = true,
        base_density = 10,
        starting_rq_factor_multiplier = 1.5, -- like iron
        regular_rq_factor_multiplier = 1.10, -- like iron
        mining_time = 1, --default is 2.5 if not present this line can be remouved
        order = 'b'
    }
}