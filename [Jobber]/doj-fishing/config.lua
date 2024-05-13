Config = {}

Config.Fish24hours = true                                       -- [true = fish anytime] [false = fishing only available moring to night (6am to 11pm in-game time)]
Config.FishingWaitTime = {minTime = 21000, maxTime = 45000}     -- How long a player will be waiting to fish, during or after casting fishingrod
Config.RentalBoat = "dinghy"                                    -- Fishing boat of Choice
Config.StopFishing =  73                                        -- Stop Fishing Key [X] (https://docs.fivem.net/docs/game-references/controls/)
Config.BoatPrice = 100                                          -- Price of the boat rental, price is divided when boat is returned
Config.TestFish = false											-- Test Fish with commands /startfish or /spawnfish
Config.Skillbar = "qb-skillbar"                             	-- Must choose one of the avalible skillbars ["reload-skillbar","np-skillbar","qb-skillbar"]
Config.targetExport = "qb-target"                               -- The name of the Target export you are using ["qb-target", "qtarget", "bt-target"]

Config.PearlsSellsBlip = vector3(-1816.406, -1193.334, 13.305)  -- Blip to sell fish you have caught

-- Config.BoatSpawnLocation = {
--     LaPuerta	= vector4(-825.0, -1415.85, -0.40, 110.00),     -- Sentrum
-- 	PaletoCove 	= vector4(-1599.932, 5259.831, 1.578, 20.6317), -- 1024       
-- 	ElGordo 	= vector4(3372.705, 5188.673, 0.121, 272.03),   -- Bunnen av havet
-- 	ActDam 		= vector4(1701.506, 43.897, 161.767, 188.579),  -- Maridalsvannet
-- 	AlamoSea 	= vector4(-317.37, 6582.23, -0.40, 36.62),      -- Tromsø
-- }
-- Config.PlayerReturnLocation = {
--     LaPuerta 	= vector4(-830.58, -1411.38, 0.61, 108.53),     -- Sentrum
-- 	PaletoCove 	= vector4(-1605.342, 5258.052, 2.083, 292.725), -- 1024     
-- 	ElGordo 	= vector4(3371.141, 5183.996, 1.46, 99.634),    -- Bunnen av havet
-- 	ActDam 		= vector4(1695.805, 43.456, 161.767, 103.579),  -- Maridalsvannet
-- 	AlamoSea 	= vector4(-304.59, 6574.64, 1.86, 55.33),       -- Tromsø
-- }

-- Gear
Config.fishingRodPrice  = 5000                                   -- Price of a fishing rod
Config.fishingBaitPrice = 50                                     -- Price of fishing bait
Config.BoatAnchorPrice  = 2000                                   -- Price of a Boat Anchor
Config.FishingBoxPrice  = 1500                                   -- Price of a Fishing Ice Box

-- Regular Fish
Config.mackerelPrice     = 425                                    -- Price of Mackerel 325
Config.codfishPrice      = 425                                   -- Price of Cod 325 
Config.bassPrice         = 325                                   -- Price of Normal Fish 350 
Config.flounderPrice     = 400                                   -- Price of Flounder375 
Config.stingrayPrice     = 400                                   -- Price of Stingrays350

-- Exotic Fish
Config.dolphinPrice      = 800                                  -- Price of Dolphins
Config.sharktigerPrice   = 1500                                  -- Price of Tigersharks
Config.sharkhammerPrice  = 1600                                  -- Price of Hammerhead Sharks
Config.killerwhalePrice  = 4900                                  -- Price of Killer whales

-- Rewards
Config.smallLootboxCash = 500                                 	-- Price of the cash reward for the "Metal Box"
Config.smallLootboxReward = 'diamond_ring'                      -- Item reward besides the "Corroded Key"

Config.largeLootboxRewards = {                                  -- Rewards found in the treasure chest (keep price = 0)
[1] = { name = "goldchain", price = 0, amount = 1, info = {}, type = "item", slot = 1, },
[2] = { name = "saltvannsperle", price = 0, amount = 1, info = {}, type = "item", slot = 2, },
[3] = { name = "handcuffs", price = 0, amount = 1, info = {}, type = "item", slot = 3, },
[4] = { name = "toothpaste", price = 0, amount = 1, info = {}, type = "item", slot = 4, },
[5] = { name = "plastic", price = 0, amount = 5, info = {}, type = "item", slot = 5, },

}

-- [SOURCE: https://github.com/sjpfeiffer/ped_spawner]
Config.PedList = {                                              -- Peds that will be spawned in (if you change a ped model here you need to also change the ped model in client/addons.lua qb-target exports)
	{
		model = "s_m_y_ammucity_01",                            -- Boat/Gear Menu
		coords = vector3(1322.86, 7196.69, -52.12),               
		heading = 100.00,
		gender = "male",              
        scenario = "WORLD_HUMAN_STAND_FISHING"
	},
	{
		model = "u_m_m_filmdirector",                            -- Boat/Gear Menu
		coords = vector3(2029.39, 7185.84, -174.36),               
		heading = 291.202,
		gender = "male",
        scenario = "WORLD_HUMAN_STAND_FISHING"
	},
	{
		model = "s_m_o_busker_01",                            -- Boat/Gear Menu
		coords = vector3(2502.29, 7072.03, -77.64),               
		heading = 266.111,
		gender = "male",
        scenario = "WORLD_HUMAN_STAND_FISHING"
	},
	{
		model = "ig_cletus",                            -- Boat/Gear Menu
		coords = vector3(3345.71, 6658.51, -58.17),               
		heading = 191.786,
		gender = "male",
        scenario = "WORLD_HUMAN_STAND_FISHING"
	},
	{
		model = "a_m_m_hillbilly_01",                            -- Boat/Gear Menu/Tromsø
		coords = vector3(3795.87, 5936.97, -127.84),               
		heading = 50.49,
		gender = "male",
        scenario = "WORLD_HUMAN_STAND_FISHING"
	},
    {
		model = "s_m_y_busboy_01",
		coords = vector3(-1816.31, -1193.12, 13.30),         -- Regular/Exotic Fish Sells
		heading = 331.23,
		gender = "male",
        scenario = "WORLD_HUMAN_CLIPBOARD"
	},
}
