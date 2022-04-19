rog.ore = {
    --[[
        Model:
        ["Ore-name"] = {
        name = 'name',
        result = 'result',
        icon = 'ico file',
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
    ]]--
    ["nano-ore"] = {
        name = 'nano-ore',
        result = 'iron-gear-wheel', --add nano ore here
        icon = '__rogue-custom-ores__/graphics/icons/ic-ore.png',
        tint = nil,
        map_ore_tint = {r = 0, g = 0, b = 1},
        ore_graphic = '__rogue-custom-ores__/graphics/entity/ores/ic-ore.png',
        ore_graphic_hr = '__rogue-custom-ores__/graphics/entity/ores/ic-ore-hr.png',
        has_starting_area_placement = true,
        base_density = 10,
        starting_rq_factor_multiplier = 1.5, -- like iron
        regular_rq_factor_multiplier = 1.10, -- like iron
        mining_time = 1, --default is 2.5 if not present this line can be remouved
        order = 'b'
    }
}