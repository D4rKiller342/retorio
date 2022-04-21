rog.ore = {
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