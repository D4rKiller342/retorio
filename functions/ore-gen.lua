function rog.returnore(ore)
    local rog_stages = {
      sheet = {
        filename = ore.ore_graphic,
        priority = 'extra-high',
        tint = ore.tint or nil,
        width = 64,
        height = 64,
        frame_count = 8,
        variation_count = 8,
        hr_version = {
          filename = ore.ore_graphic_hr,
          priority = 'extra-high',
          tint = ore.tint or nil,
          width = 128,
          height = 128,
          frame_count = 8,
          variation_count = 8,
          scale = 0.5
        }
      }
    }
  
    local resource_autoplace = require('resource-autoplace')
  
    return {
      autoplace = resource_autoplace.resource_autoplace_settings {
        name = ore.name,
        order = ore.order or 'c',
        base_density = ore.base_density or 2,--2
        base_spots_per_km2 = ore.base_spots_per_km2 or 2.5,
        random_spot_size_minimum = 2, --2
        random_spot_size_maximum = 2, --4
        regular_rq_factor_multiplier = ore.regular_rq_factor_multiplier or 2,
        starting_rq_factor_multiplier = ore.starting_rq_factor_multiplier or 1,
        has_starting_area_placement = ore.has_starting_area_placement or false
      },
      collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
      flags = {'placeable-neutral'},
      icon = ore.icon,
      icon_size = 32,
      map_color = ore.map_ore_tint,
      minable = {
        fluid_amount = ore.fluid_amount or nil,
        required_fluid = ore.fluid_type or nil,
        mining_time = ore.mining_time or 2.5,
        result = ore.result,
        count = ore.count or 1
      },
      mining_category = ore.mining_category or 'rog-basic',
      name = ore.name,
      order = 'a-b-a',
      selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
      stage_counts = {2000, 1600, 1400, 1200, 800, 400, 200, 10},
      stages = rog_stages,
      type = 'resource'
    }
  end
  