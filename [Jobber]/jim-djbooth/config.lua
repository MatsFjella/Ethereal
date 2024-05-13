print("^2Jim^7-^2DJBooth ^7v^41^7.^43^7.^42 ^2by ^1Jimathy^7")

Config = {
	Lan = "en",
	Debug = false, -- Set to true to show target locations

	Core = "qb-core",
	Menu = "qb",
	Notify = "qb",

	Locations = {
		{ -- Vanilla Unicorn DJ Booth
		job = "club77", -- Set this to required job role
		enableBooth = true, -- option to disable rather than deleting code
		DefaultVolume = 0.1, -- 0.01 is lowest, 1.0 is max
		radius = 30, -- The radius of the sound from the booth
		coords = vector3(247.22, -3187.57, 0.5), -- Where the booth is located
	},

		{ -- uwu
			job = "public", -- "public" makes it so anyone can add music.
			enableBooth = true,
			DefaultVolume = 0.15,
			radius = 200,
			coords = vector3(-590.39, -1061.0, 22.34),
			soundLoc = vector3(-585.54, -1057.17, 22.34), -- Add sound origin location if you don't want the music to play from the dj booth
		},
		{ -- Henhouse (smokeys MLO coords)
			job = "henhouse",
			enableBooth = true,
			DefaultVolume = 0.1,
			radius = 30,
			coords = vec3(-311.35, 6265.18, 32.06),
		},
		{ -- Tequilala bar (ingame mlo)
			job = "tequilala",
			enableBooth = true,
			DefaultVolume = 0.1,
			radius = 30,
			coords = vector3(-550.71, 284.24, 83.0),
		},
		{ -- GabzTuners Radio Prop
			job = "mechanic",
			enableBooth = true,
			DefaultVolume = 0.1,
			radius = 30,
			coords = vec3(127.04, -3030.65, 6.80),
			prop = `prop_radio_01`	-- Prop to spawn at location, if the location doesn't have one already
									-- (can be changed to any prop, coords determine wether its placed correctly)
		},
		{ -- Gabz Popsdiner Radio Prop
			job = "public",
			enableBooth = true,
			DefaultVolume = 0.1,
			radius = 30,
			coords = vec3(1595.53, 6453.02, 26.165),
			prop = `prop_boombox_01`
		},

		{ -- hellhounds
		job = "vanilla",
		enableBooth = true,
		DefaultVolume = 0.1,
		radius = 60,
		coords = vector3(119.24, -1300.13, 29.22),
		prop = `prop_boombox_01`
	},

	
		{ -- Gabz bahamas
		job = "bahamas",
		enableBooth = true,
		DefaultVolume = 0.1,
		radius = 60,
		coords = vector3(-1376.3, -608.32, 31.32),
		prop = `prop_boombox_01`
	},

	{ -- Tequilala
	job = "tequilala",
	enableBooth = true,
	DefaultVolume = 0.1,
	radius = 60,
	coords = vector3(-550.74, 283.9, 82.98),
	prop = `prop_boombox_01`
},

{ -- cardealer
	job = "cardealer",
	enableBooth = true,
	DefaultVolume = 0.1,
	radius = 60,
	coords = vector3(-933.01, -2043.57, 9.51),
	prop = `prop_boombox_01`
},

{ -- koi
	job = "koi",
	enableBooth = true,
	DefaultVolume = 0.1,
	radius = 256.01,
	coords = vector3(-1078.38, -1446.03, -1.42),
	prop = `prop_boombox_01`
},






		
		{ -- LostMC compound next to Casino
			gang = "lostmc",
			enableBooth = true,
			DefaultVolume = 0.1,
			radius = 20,
			coords = vec3(983.14, -133.17, 79.59),
			soundLoc = vec3(988.79, -131.62, 78.89), -- Add sound origin location if you don't want the music to play from the dj booth
		},

		{ -- seezo & snowie
		gang = "lostmc",
		enableBooth = true,
		DefaultVolume = 0.1,
		radius = 20,
		coords = vec3(1545.05, 2235.73, 77.24),
		soundLoc = vec3(1545.05, 2235.73, 77.24), -- Add sound origin location if you don't want the music to play from the dj booth
	},
	},
}

Loc = {}