local entityType = "artillery-wagon"

local artilleryTurret = table.deepcopy(data.raw[entityType][entityType])
artilleryTurret.name = "disabled-" .. artilleryTurret.name
artilleryTurret.disable_automatic_firing = true
artilleryTurret.minable = 
{
	mining_time = 0.5,
	result = artilleryTurret.name
}

local item = table.deepcopy(data.raw["item-with-entity-data"][entityType])
item.name = artilleryTurret.name
item.place_result = artilleryTurret.name
item.icon = "__Dumb-Artillery__/graphics/icons/" .. artilleryTurret.name .. ".png"

local recipe = table.deepcopy(data.raw["recipe"][entityType])
recipe.enabled = false
recipe.name = artilleryTurret.name
recipe.icon = "__Dumb-Artillery__/graphics/icons/disabled-" .. entityType .. ".png"
recipe.icon_size = 64
recipe.icon_mipmaps = 4
recipe.ingredients = {
	{ entityType, 1 }
}
recipe.result = artilleryTurret.name
recipe.energy_required = 0.1

local recipeBack = table.deepcopy(data.raw["recipe"][entityType])
recipeBack.enabled = false
recipeBack.name = "enabled-" .. entityType
recipeBack.icon = "__Dumb-Artillery__/graphics/icons/enabled-" .. entityType .. ".png"
recipeBack.icon_size = 64
recipeBack.icon_mipmaps = 4
recipeBack.ingredients = {
	{ artilleryTurret.name, 1 }
}
recipeBack.result = entityType
recipeBack.energy_required = 0.1

data:extend{artilleryTurret, item, recipe, recipeBack}