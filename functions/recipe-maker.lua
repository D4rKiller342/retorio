function rog.recipereturn(recipe)
    --add more complex recipie posibility
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