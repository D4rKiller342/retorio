--check if should add [https://github.com/wube/factorio-data/blob/master/base/prototypes/item.lua#L462]
--[[ ---- Science pack ----
    {
    all the normal stuff before
    type = "tool",
    localised_description = {"item-description.science-pack"},
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value"
  },
]]
function rog.returnItem(item)
    local baseItem = {
        type = "item",
        name = item.name,
        icon = item.icon,
        icon_size = item.icon_size or 64, 
        icon_mipmaps = item.icon_mipmaps or 4,
        subgroup = item.subgroup,
        order = item.order or a,
        stack_size = item.stack_size or 100,
    }

    if item.pictures then
        local pictures_var = {pictures = item.pictures}
        table.insert(baseItem, pictures_var) 
    end

    if item.durability then
        local dura_var = {
            localised_description = item.localised_description,
            durability = item.durability or 1,
            durability_description_key = item.durability_description_key,
            durability_description_value = item.durability_description_value
        }
        table.insert(baseItem, dura_var) 
    end

    if item.place_result then
        local place_result_var = {place_result = item.place_result}
        table.insert(baseItem, place_result_var) 
    end

    if item.fuel_category then
        local fuel_var = {
            fuel_category = item.fuel_category or "chemical", --default to "chemical"
            fuel_value = item.fuel_value or "12MJ", --default to same has coal
        }
        
        if item.fuel_acceleration_multiplier then
            local acc_var = {
                fuel_acceleration_multiplier = item.fuel_acceleration_multiplier or 1.2, --same solid fuel
                fuel_top_speed_multiplier = item.fuel_top_speed_multiplier or 1.05,   --same solid fuel
                table.insert(fuel_var, acc_var)
            }
        end
        table.insert(baseItem, fuel_var)
    end
    return baseItem    
end
