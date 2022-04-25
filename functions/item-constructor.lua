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
        type = item.type or "item",
        name = item.name,
        icon = item.icon,
        icon_size = item.icon_size or 64, 
        icon_mipmaps = item.icon_mipmaps or 4,
        subgroup = item.subgroup,
        order = item.order or "a",
        stack_size = item.stack_size or 100,
    }

    if item.pictures then
        baseItem.pictures = item.pictures
    end

    if item.durability then
        baseItem.localised_description = item.localised_description
        baseItem.durability = item.durability or 1
        baseItem.durability_description_key = item.durability_description_key
        baseItem.durability_description_value = item.durability_description_value
    end

    if item.place_result then
        baseItem.place_result = item.place_result
    end

    if item.fuel_category then
        baseItem.fuel_category = item.fuel_category
        baseItem.fuel_value = item.fuel_value or "12MJ"

        if item.fuel_acceleration_multiplier then
            baseItem.fuel_acceleration_multiplier = item.fuel_acceleration_multiplier
            baseItem.fuel_top_speed_multiplier = item.fuel_top_speed_multiplier or 1.05   --same solid fuel
        end
    end
    return baseItem    
end
