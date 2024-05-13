Config = {}
Config.ServiceExtensionOnEscape	= 5

Config.ServiceLocation = vector3(2091.38, 4954.55, 40.36)

Config.ServiceLocations = {
	{ type = "cleaning", coords = vector3(2085.16, 4951.92, 40.84) },
	{ type = "cleaning", coords = vector3(2082.62, 4949.40, 41.65) },
	{ type = "cleaning", coords = vector3(2077.39, 4944.25, 42.44) },
	{ type = "cleaning", coords = vector3(2073.31, 4940.21, 42.33) },
	{ type = "cleaning", coords = vector3(2066.54, 4931.20, 41.21) },
	{ type = "cleaning", coords = vector3(2073.36, 4933.24, 41.59) },
	{ type = "cleaning", coords = vector3(2079.18, 4938.92, 42.48) },
	{ type = "cleaning", coords = vector3(2086.30, 4946.52, 41.54) },
	{ type = "gardening", coords = vector3(2082.67, 4971.08, 40.78) },
	{ type = "gardening", coords = vector3(2082.45, 4960.26, 40.03) },
	{ type = "gardening", coords = vector3(2105.38, 4949.97, 40.87) },
	{ type = "gardening", coords = vector3(2102.36, 4956.76, 40.78) },
	{ type = "gardening", coords = vector3(2091.72, 4964.85, 40.63) }
}

Config.Outfits = { -- Set their community service outfits when they go to community service
    enabled = false, -- If false, outfits wont change
    male = {
        mask = { item = 0, texture = 0 },
        arms = { item = 4, texture = 0 },
        shirt = { item = 15, texture = 0 },
        jacket = { item = 139, texture = 0 },
        pants = { item = 125, texture = 3 },
        shoes = { item = 18, texture = 0 },
        accessories = { item = 0, texture = 0 },
    },
    female = {
        mask = { item = 0, texture = 0 },
        arms = { item = 4, texture = 0 },
        shirt = { item = 2, texture = 0 },
        jacket = { item = 229, texture = 0 },
        pants = { item = 3, texture = 15 },
        shoes = { item = 72, texture = 0 },
        accessories = { item = 0, texture = 0 },
    },
}
