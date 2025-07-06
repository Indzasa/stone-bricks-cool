data:extend({
  {
		type = "int-setting",
		name = "sbc-warm-minutes",
		setting_type = "startup",
		default_value = 200,
		minimum_value = 1,
        maximum_value = 10000,
		order = "a",
		localised_name = {"setting-name.sbc-warm-minutes"},
        localised_description = {"setting-description.sbc-warm-minutes"}
	},
  {
		type = "int-setting",
		name = "sbc-warmer-minutes",
		setting_type = "startup",
		default_value = 50,
		minimum_value = 1,
        maximum_value = 10000,
		order = "b",
		localised_name = {"setting-name.sbc-warmer-minutes"},
        localised_description = {"setting-description.sbc-warmer-minutes"}
	},
  {
		type = "int-setting",
		name = "sbc-hot-minutes",
		setting_type = "startup",
		default_value = 30,
		minimum_value = 1,
        maximum_value = 10000,
		order = "c",
		localised_name = {"setting-name.sbc-hot-minutes"},
        localised_description = {"setting-description.sbc-hot-minutes"}		
	},
  {
		type = "bool-setting",
		name = "sbc-more-air",
		setting_type = "startup",
		default_value = false,
		order = "d",
		localised_name = {"setting-name.sbc-more-air"},
        localised_description = {"setting-description.sbc-more-air"}	
	},
})