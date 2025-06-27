data:extend{
    {
      type = "recipe",
      subgroup = "fluid-recipes",
      name = "asteroid-melting-recipe",
      enabled = false,
      allow_productivity = true,
      category = "metallurgy",
      energy_required = 25,
      icons = {
        {icon = "__space-age__/graphics/icons/fluid/lava.png", icon_size = 64, scale = 0.8},
        {icon = "__space-age__/graphics/icons/metallic-asteroid-chunk.png", icon_size = 64, scale = 0.5, shift = {0, -16}}
               },        
      ingredients = {{type = "item", name = "metallic-asteroid-chunk",amount = 1}},
      results = {{type = "fluid", name = "lava", amount = 300}}
    },
	{
      type = "recipe",
      subgroup = "fluid-recipes",
      name = "calcite-forming-recipe",
      enabled = false,
      allow_productivity = true,
      category = "chemistry",
      energy_required = 40,
      icons = {
        {icon = "__space-age__/graphics/icons/calcite-1.png", icon_size = 64, scale = 1},
        {icon = "__base__/graphics/icons/fluid/steam.png", icon_size = 64, scale = 0.5, shift = {0, -14}}
               },        
      ingredients =
      {
        {type = "fluid", name = "steam", amount = 200},
        {type = "fluid", name = "water", amount = 50000}
      },
      results = {{type = "item", name = "calcite", amount = 5}}
    },
	{
        effects = {
            {
            recipe = "asteroid-melting-recipe",
            type = "unlock-recipe"
            },
			{
            recipe = "calcite-forming-recipe",
            type = "unlock-recipe"
            }
        },
        icons = {
        {icon = "__space-age__/graphics/icons/fluid/lava.png", icon_size = 64, scale = 1},
        {icon = "__space-age__/graphics/icons/metallic-asteroid-chunk.png", icon_size = 64, scale = 0.5, shift = {0, -18}}
               }, 
        name = "asteroid-melting",
        
        prerequisites = {"metallurgic-science-pack", "space-science-pack"},
        type = "technology",
        unit = {
            count = 500,
            ingredients = {
                {
                    "space-science-pack",
                    1
                  },
                  {
                    "logistic-science-pack",
                    1
                  },
				  {
                    "automation-science-pack",
                    1
                  },
                  {
                    "metallurgic-science-pack",
                    1
                  }
            },
            time = 30
       },
    }
}