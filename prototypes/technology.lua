data:extend({
	{
		type = "technology",
		name = "disabled-artillery",
		icon_size = 256, icon_mipmaps = 4,
		icon = "__base__/graphics/technology/artillery.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "disabled-artillery-turret"
			},
			{
				type = "unlock-recipe",
				recipe = "disabled-artillery-wagon"
			},
			{
				type = "unlock-recipe",
				recipe = "enabled-artillery-turret"
			},
			{
				type = "unlock-recipe",
				recipe = "enabled-artillery-wagon"
			}
		},
		prerequisites = { "artillery" },
		unit =
		{
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"military-science-pack", 1},
				{"utility-science-pack", 1}
			},
			time = 30,
			count = 10
		}
	}
})