Config = {
	-- **** IMPORTANT ****
	-- UseTarget should only be set to true when using qb-target
	UseTarget = GetConvar('UseTarget', 'false') == 'true',

	OutsideLocation 	= vector4(32.21, 6304.56, 30.49, 10.77),
	InsideLocation 		= vector4(34.46, 6301.57, 30.5, 26.66),
	DutyLocation 		= vector4(30.51, 6299.43, 30.5, 36.94),
	DropLocation 		= vector4(62.65, 6315.51, 30.49, 208.47),

	DrawPackageLocationBlip = true,

	PickupActionDuration 	= math.random(4000, 6000),
	DeliveryActionDuration 	= 5000,

	MaxItemsReceived 	= 8,
	MinItemReceivedQty 	= 3,
	MaxItemReceivedQty 	= 9,
	ChanceItem 			= "thermite",
	LuckyItem 			= "rubber",
	
	PickupLocations = {
		[1] 	= vector4(53.54, 6320.22, 31.49, 25.52),
		[2] 	= vector4(50.74, 6318.82, 31.49, 30.84),
		[3] 	= vector4(48.95, 6317.79, 31.49, 30.28),
		[4] 	= vector4(37.87, 6312.22, 31.49, 36.25),
		[5] 	= vector4(29.25, 6308.32, 31.49, 116.66),
		[6] 	= vector4(26.52, 6306.0, 31.49, 113.85),
		[7] 	= vector4(24.86, 6308.91, 31.49, 111.17),
		
		[8] 	= vector4(23.33, 6311.49, 31.49, 117.73),
		[9] 	= vector4(22.58, 6312.59, 31.49, 114.55),
		[10]	= vector4(24.83, 6312.07, 31.49, 305.93),
		[11] 	= vector4(22.91, 6315.59, 31.49, 32.76),
		[12] 	= vector4(25.68, 6317.19, 31.49, 27.0),
		[13] 	= vector4(27.32, 6318.14, 31.49, 17.9),
		[14] 	= vector4(33.47, 6321.71, 31.49, 33.61),
		
		[15] 	= vector4(34.92, 6322.55, 31.49, 22.06),
		[16] 	= vector4(36.4, 6323.72, 31.49, 25.08),
		[17] 	= vector4(44.18, 6327.87, 31.49, 20.56)	,
		[18]	= vector4(45.5, 6328.62, 31.49, 13.11),
		[19]	= vector4(47.32, 6329.68, 31.49, 29.35),
		[20] 	= vector4(49.16, 6330.68, 31.49, 35.52),
		[21]	= vector4(50.5, 6332.33, 31.49, 29.39),
	},
	WarehouseObjects = {
		[1] = "prop_boxpile_05a",
		[2] = "prop_boxpile_04a",
		[3] = "prop_boxpile_06b",
		[4] = "prop_boxpile_02c",
		[5] = "prop_boxpile_02b",
		[6] = "prop_boxpile_01a",
		[7] = "prop_boxpile_08a",
	},
	PickupBoxModel = "prop_cs_cardbox_01",
	ItemTable = {
		[1] = "metalscrap",
		[2] = "plastic",
		[3] = "copper",
		[4] = "iron",
		[5] = "aluminum",
		[6] = "steel",
		[7] = "glass",
		[8] = "cloth",
		[9] = "rubber",
	}
}
