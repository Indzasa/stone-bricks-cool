if not settings.startup["sbc-more-air"].value then return end

-- recipes that makes hot air
local hot_air_recipes =
{
  "warm-air-1",
  "warmer-air-2",
  "hot-air-3",
}

-- modify all of them to make amount of pressured-air match amount of hot-air 
for _, recipe_name in ipairs(hot_air_recipes) do
	local recipe = data.raw.recipe[recipe_name]
	for i,result in pairs(recipe.results) do
		if result.name == "hot-air" then
			for j,ingredient in pairs(recipe.ingredients) do
				if ingredient.name == "pressured-air" then
					recipe.ingredients[j].amount = recipe.results[i].amount
				end
			end
		end
	end
end