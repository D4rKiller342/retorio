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
--[[ ---- Fuel ----
    fuel_category = "chemical",
    fuel_value = "12MJ",
    fuel_acceleration_multiplier = 1.2,
    fuel_top_speed_multiplier = 1.05,
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

    if item.place_result then
        local place_result_var = {place_result = item.place_result}
        table.insert(baseItem, place_result_var) 
    end

    return baseItem    
end
