Config = {}

--======================================================================================
-- _      _____      _____                       
--| |    / ____|    |  __ \                      
--| |   | |   ______| |  | |_ __ _   _  __ _ ___ 
--| |   | |  |______| |  | | '__| | | |/ _` / __|
--| |___| |____     | |__| | |  | |_| | (_| \__ \
--|______\_____|    |_____/|_|   \__,_|\__, |___/
--										__/ |    
--                                     |___/          																				   
--======================================================================================
-- Thank you for your purchase. Please make sure to join the discord to recieve support.
-- https://discord.gg/VbArb64C56

Config.Debug = false

--======================================================================================
-- If you want users to require specific blueprints to make drugs.
-- You will need to add blueprints to your server and a way for users to get them.
Config.RequireBlueprints = false
-- If false then you do not need to add in the mysql command
-- ALTER TABLE `players` ADD `lsd` INT NOT NULL DEFAULT '0' AFTER `last_updated`, ADD `meth` INT NOT NULL DEFAULT '0' AFTER `lsd`, ADD `heroin` INT NOT NULL DEFAULT '0' AFTER `meth`, ADD `cocaine` INT NOT NULL DEFAULT '0' AFTER `heroin`;

--=======================================================================================================
--										 _       _____ _____  
--										| |     / ____|  __ \ 
--										| |    | (___ | |  | |
--										| |     \___ \| |  | |
--										| |____ ____) | |__| |
--										|______|_____/|_____/ 

--=======================================================================================================			  


--Buyable:
	--lcd-morning_glory_seeds
	--lcd-lsd_phos
	--lcd-lsd_dieth
	--lcd-lsd_blotter


-- Enable The Drug
Config.LSD = false

-- Produce LSA
Config.LSALocations = {
	[1] = { coords = vector3(2863.34, 4453.88, 47.81), x = 1, y = 1, h = 111.13},
}

Config.LSAIngredients = {
	["lcd-lsa"] = { --<-- Do Not Change
		reward = "lcd-lsa", --<-- Do Not Change
		ingredients = {
			["lcd-morning_glory_seeds"] = 1,
		},
	}, 
}

Config.LYSLocations = {
	[1] = { coords = vector3(2854.54, 4448.5, 48.48), x = 1, y = 1, h = 111.13},

}

Config.LYSIngredients = {
	["lcd-lsd_la"] = { --<-- Do Not Change
		reward = "lcd-lsd_la", --<-- Do Not Change
		ingredients = {
			["lcd-lsa"] = 1,
			["lcd-lsd_phos"] = 1,
		},
	}, 
}


Config.LSDLocations = {
	[1] = { coords = vector3(2860.37, 4452.18, 48.48), x = 1, y = 1, h = 111.13},

}

Config.LSDIngredients = {
	["lcd-lsdsheet"] = { --<-- Do Not Change
		reward = "lcd-lsdsheet", --<-- Do Not Change
		ingredients = {
			["lcd-lsd_la"] = 1,
			["lcd-lsd_dieth"] = 1,
			["lcd-lsd_blotter"] = 1,
		},
	}, 
}

Config.LSDCutLocations = {
	[1] = { coords = vector3(2858.13, 4456.94, 48.48), x = 1, y = 1, h = 111.13},
}

Config.LSDCutIngredients = {
	["lcd-lsd"] = { --<-- Do Not Change
		reward = "lcd-lsd", --<-- Do Not Change
		amount = 10,
		ingredients = {
			["lcd-lsdsheet"] = 1,
		},
	},
}





--=======================================================================================================
--										 __  __      _   _     
--										|  \/  |    | | | |    
--										| \  / | ___| |_| |__  
--										| |\/| |/ _ \ __| '_ \ 
--										| |  | |  __/ |_| | | |
--										|_|  |_|\___|\__|_| |_|
					   
--=======================================================================================================	

--Buyable:
	--lcd-pseudoephedrine
	--lcd-antifreeze
	--lcd-batteries
	--lcd-draincleaner


-- Enable The Drug
Config.Meth = false

Config.MethLocations = {
	[1] = { coords = vector3(1422.24, 6336.09, 24.6), x = 1, y = 1, h = 111.13},
	[2] = { coords = vector3(1422.84, 6334.64, 24.6), x = 1, y = 1, h = 111.13},
	[3] = { coords = vector3(1422.9, 6333.64, 24.42), x = 1, y = 1, h = 111.13},
}

Config.MethIngredients = {
	["lcd-unpuredmeth"] = { --<-- Do Not Change
		reward = "lcd-unpuredmeth", --<-- Do Not Change
		amount = 1,
		ingredients = {
			["lcd-pseudoephedrine"] = 1,
			["lcd-antifreeze"] = 1,
			["lcd-batteries"] = 1,
			["lcd-draincleaner"] = 1,
		},
	}, 
}

Config.MethPurifyLocations = {
	[1] = { coords = vector3(1418.36, 6330.65, 23.7), x = 1, y = 1, h = 111.13},
}

Config.MethPurifyIngredients = {
	["lcd-meth"] = { --<-- Do Not Change
		reward = "lcd-meth", --<-- Do Not Change
		amount = 1,
		ingredients = {
			["lcd-unpuredmeth"] = 1,
			["empty_weed_bag"] = 1,
		},
	}, 
}



--=======================================================================================================
--                             		 	 _    _                _       
--										| |  | |              (_)      
--										| |__| | ___ _ __ ___  _ _ __  
--										|  __  |/ _ \ '__/ _ \| | '_ \ 
--										| |  | |  __/ | | (_) | | | | |
--										|_|  |_|\___|_|  \___/|_|_| |_|  		
--				   	  
--=======================================================================================================
--Buyable:
	--lcd-aceticanhydride
	--lcd-chloroform
	--lcd-sodiumcarbonate
	--lcd-hcl

Config.Heroin = false

Config.HeroinLocations = {
	[1] = { coords = vector3(4951.99, -5095.95, 3.24), x = 1, y = 2, h = 67.3},
	[2] = { coords = vector3(4955.73, -5096.13, 4.19), x = 1, y = 2, h = 340.56},
	[3] = { coords = vector3(5148.81, -5119.82, 3.36), x = 1, y = 2, h = 272.63},
	[4] = { coords = vector3(5147.66, -5116.54, 2.41), x = 1, y = 2, h = 2.89},
}


Config.HeroinIngredients = {
	["lcd-heroin"] = { --<-- Do Not Change
		reward = "lcd-heroin", --<-- Do Not Change
		amount = 1,
		ingredients = {
			["lcd-aceticanhydride"] = 1,
			["lcd-chloroform"] = 1,
			["lcd-sodiumcarbonate"] = 1,
			["lcd-hcl"] = 1,
			["water_bottle"] = 1,
		},
	}, 
}


--=======================================================================================================
--									  _____                _            
--									 / ____|              (_)           
--									| |     ___   ___ __ _ _ _ __   ___ 
--									| |    / _ \ / __/ _` | | '_ \ / _ \
--									| |___| (_) | (_| (_| | | | | |  __/
--									 \_____\___/ \___\__,_|_|_| |_|\___|
								   			   
--=======================================================================================================

--Buyable:
--	lcd-petrol
--	lcd-draincleaner
--	lcd-cementpowder
--	lcd-sulfuricacid
--	lcd-pottasiumsalt
--	lcd-sodiumhydroxide
--	water_bottle

Config.Coke = false

-- GTA Native Coca Plant - h4_prop_bush_cocaplant_01
-- Recommended - bzzz_plant_coca_c - https://forum.cfx.re/t/addon-props-coca-plants/4978753
Config.CokeProp = "bzzz_plant_coca_c"

Config.LeafAmountMin = 1
Config.LeafAmountMax = 3

Config.CokeField = {
	coords = vector3(-91.95, 2900.28, 51.48),
	radius = 50,
	maxplants = 30,
}



Config.CokeLocations = {
	[1] = { coords = vector3(-332.94, -2447.35, 8.16), x = 1, y = 2, h = 236.41},
	[2] = { coords = vector3(-331.32, -2445.26, 8.16), x = 1, y = 2, h = 236.41},
	[3] = { coords = vector3(-329.8, -2443.45, 8.16), x = 1, y = 2, h = 236.41},
}


Config.CokeIngredients = {
	["lcd-coke_brick"] = { --<-- Do Not Change
		reward = "lcd-coke_brick", --<-- Do Not Change
		amount = 1,
		ingredients = {
			["lcd-coca_leaf"] = 3,
			["lcd-petrol"] = 1,
			["lcd-draincleaner"] = 1,
			["lcd-cementpowder"] = 1,
			["lcd-sulfuricacid"] = 1,
			["lcd-pottasiumsalt"] = 1,
			["lcd-sodiumhydroxide"] = 1,
			["water_bottle"] = 1,
		},
	}, 
}

Config.CokeCuttingLocations = {
	[1] = { coords = vector3(-327.63, -2436.77, 8.16), x = 1, y = 2, h = 54.81},
}

Config.CokeCuttingIngredients = {
	["lcd-coke_small_brick"] = { --<-- Do Not Change
		reward = "lcd-coke_small_brick", --<-- Do Not Change
		amount = 2,
		ingredients = {
			["lcd-coke_brick"] = 1,
		},
	}, 
}


Config.CokeBaggingLocations = {
	[1] = { coords = vector3(-323.53, -2441.59, 8.1), x = 1, y = 2, h = 238.9},
}

Config.CokeBaggingIngredients = {
	["lcd-cokebaggy"] = { --<-- Do Not Change
		reward = "lcd-cokebaggy", --<-- Do Not Change
		amount = 2,
		ingredients = {
			["lcd-coke_small_brick"] = 1,
			["empty_weed_bag"] = 2,
		},
	}, 
}
--=======================================================================================================
--						_____                     ______  __  __          _       
--						|  __ \                   |  ____|/ _|/ _|        | |      
--						| |  | |_ __ _   _  __ _  | |__  | |_| |_ ___  ___| |_ ___ 
--						| |  | | '__| | | |/ _` | |  __| |  _|  _/ _ \/ __| __/ __|
--						| |__| | |  | |_| | (_| | | |____| | | ||  __/ (__| |_\__ \
--						|_____/|_|   \__,_|\__, | |______|_| |_| \___|\___|\__|___/
--											__/ |                                  
--										   |___/                                   			   	  
--======================================================================================================




-- Effects:
	-- strength -- Punch Strength Only
	-- thirstbuff
	-- foodbuff
	-- healthbuff
	-- stambuff
	-- runspeed
	-- camshake
	-- whiteouteffect
	-- hdfocus
	-- drunk
	-- intenseeffect
	-- confusion
	-- outofbody

-- Anims:
	-- sniff
	-- swallowpill

-- You can now add in drug effects for any item from any other drug script :)

Config.DrugEffects = {
	['lcd-lsd'] = { -- <-- Do Not Change
		Anim = 'swallowpill',
		Time = 10, -- In Seconds, Minimum Recommended = 10 Seconds
		Effects = { 
			'outofbody',
			'confusion',
			'intenseeffect',
		}
	},
	['meth'] = { -- <-- Do Not Change
		Anim = 'sniff',
		Time = 10, -- In Seconds, Minimum Recommended = 10 Seconds
		Effects = { 
			'hdfocus',
			'stambuff',
		}
	},
	['joint'] = { -- <-- Do Not Change
		Anim = 'smoke',
		Time = 30, -- In Seconds, Minimum Recommended = 10 Seconds
		Effects = { 
			'hdfocus',
			'healthbuff',
		}
	},
	['cokebaggy'] = { -- <-- Do Not Change
		Anim = 'sniff',
		Time = 10, -- In Seconds, Minimum Recommended = 10 Seconds
		Effects = { 
			'hdfocus',
			'healthbuff',
			'stambuff',
		}
	},
}


--======================================================================================