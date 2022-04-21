function rog.recipereturn(recipe)
    --[[local recipevar = {
        {
            --Maybe add normal and expensive
            type = "recipe",
            name = recipe.name,
            enable = recipe.isEnabled or false,
            energy_required = recipe.energy_requirement or 1,
            ingredients = recipe.ingredients,
            result = recipe.result,
        }
    }]]
    return 
    {
        type = "recipe",
        name = recipe.name,
        category = recipe.category or "crafting",
        enable = recipe.isEnabled or false,
        energy_required = recipe.energy_requirement or 1,
        ingredients = recipe.ingredients,
        result = recipe.result,
    }
end