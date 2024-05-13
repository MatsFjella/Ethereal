Config = {}
Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add setr UseTarget true)
Config.MinimalDoctors = 10                                    -- How many players with the ambulance job to prevent the hospital check-in system from being used
Config.DocCooldown = 1                                       -- Cooldown between doctor calls allowed, in minutes
Config.WipeInventoryOnRespawn = false                         -- Enable or disable removing all the players items when they respawn at the hospital
Config.Helicopter = 'EC145MED', 'as332'                                 -- Helicopter model that players with the ambulance job can use
Config.BillCost = 2000                                       -- Price that players are charged for using the hospital check-in system
Config.DeathTime = 600                                       -- How long the timer is for players to bleed out completely and respawn at the hospital
Config.ReviveInterval = 600                                  -- How long the timer is for players to revive a player in laststand
Config.MinimumRevive = 600                                   -- How long the timer is for players to revive a player in laststand
Config.PainkillerInterval = 60                               -- Set the length of time painkillers last (per one)
Config.HealthDamage = 5                                      -- Minumum damage done to health before checking for injuries
Config.ArmorDamage = 5                                       -- Minumum damage done to armor before checking for injuries
Config.ForceInjury = 35                                      -- Maximum amount of damage a player can take before limb damage & effects are forced to occur
Config.AlwaysBleedChance = 70                                -- Set the chance out of 100 that if a player is hit with a weapon, that also has a random chance, it will cause bleeding
Config.MessageTimer = 12                                     -- How long it will take to display limb/bleed message
Config.AIHealTimer = 60                                      -- How long it will take to be healed after checking in, in seconds
Config.BleedTickRate = 30                                    -- How much time, in seconds, between bleed ticks
Config.BleedMovementTick = 10                                -- How many seconds is taken away from the bleed tick rate if the player is walking, jogging, or sprinting
Config.BleedMovementAdvance = 3                              -- How much time moving while bleeding adds
Config.BleedTickDamage = 8                                   -- The base damage that is multiplied by bleed level everytime a bleed tick occurs
Config.FadeOutTimer = 400                                      -- How many bleed ticks occur before fadeout happens
Config.BlackoutTimer = 400                                    -- How many bleed ticks occur before blacking out
Config.AdvanceBleedTimer = 10                                -- How many bleed ticks occur before bleed level increases
Config.HeadInjuryTimer = 30                                  -- How much time, in seconds, do head injury effects chance occur
Config.ArmInjuryTimer = 30                                   -- How much time, in seconds, do arm injury effects chance occur
Config.LegInjuryTimer = 15                                   -- How much time, in seconds, do leg injury effects chance occur
Config.HeadInjuryChance = 25                                 -- The chance, in percent, that head injury side-effects get applied
Config.LegInjuryChance = {                                   -- The chance, in percent, that leg injury side-effects get applied
    Running = 50,
    Walking = 15
}
Config.MajorArmoredBleedChance = 45 -- The chance, in percent, that a player will get a bleed effect when taking heavy damage while wearing armor
Config.MaxInjuryChanceMulti = 3     -- How many times the HealthDamage value above can divide into damage taken before damage is forced to be applied
Config.DamageMinorToMajor = 35      -- How much damage would have to be applied for a minor weapon to be considered a major damage event. Put this at 100 if you want to disable it
Config.AlertShowInfo = 2            -- How many injuries a player must have before being alerted about them

Config.Locations = {                -- Edit the various interaction points for players or create new ones
['checking'] = {
    [1] = vector3(348.50, -1402.61, 32.42),
    [2] = vector3(1832.98, 3671.92, 34.16), -- paleto
},
['duty'] = {
    [1] = vector3(-2784.86, -78.71, 18.61),
    [2] = vector3(1767.15, 3642.85, 32.85), -- paleto
},
['vehicle'] = {
    [1] = vector4(-453.58, -1029.64, 38.4, 93.56),
    [2] = vector4(-475.43, 5988.353, 31.716, 31.34), -- paleto
},
['helicopter'] = {
    [1] = vector3(-4160.92, -935.59, 100.01),  
    [2] = vector3(-4160.92, -935.59, 100.01), -- paleto
},
['armory'] = {
    [1] = vector4(379.34, -1411.37, 32.94, 28.16),
    [2] = vector4(1836.82, 3692.61, 34.16, 28.16),
},
['roof'] = {
    [1] = vector4(316.02, -581.42, 90.61, 322.16),
},
['main'] = {
    [1] = vector3(314.3, -581.01, 90.62),
},
['stash'] = {
    [1] = vector3(377.78, -1411.61, 32.94), 
    [2] = vector3(1837.03, 3690.58, 34.16), 
},
['beds'] = {
    { coords = vector4(322.17, -1414.17, 33.13, 49.36),    taken = false, model = -421052012 },
    { coords = vector4(323.58, -1412.17, 33.15, 48.04),  taken = false, model = -421052012 },
    { coords = vector4(325.09, -1410.36, 33.15, 51.50),   taken = false, model = -421052012 },
    { coords = vector4(326.83, -1408.58, 33.15, 53.12),    taken = false, model = -421052012 },
    { coords = vector4(333.60, -1405.22, 33.13, 132.74),   taken = false, model = -421052012 },
    { coords = vector4(331.47, -1403.71, 33.15, 143.94),  taken = false, model = -421052012 },
    { coords = vector4(329.51, -1402.17, 33.13, 145.63),  taken = false, model = -421052012 },
    { coords = vector4(327.85, -1400.39, 33.15, 140.69),  taken = false, model = -421052012 },
    { coords = vector4(325.85, -1398.77, 33.15, 150.21),  taken = false, model = -421052012 },
     --- paleto
 
     { coords = vector4(1832.81, 3681.71, 34.88, 28.71), taken = false, model = 2117668672 },
     { coords = vector4(1830.17, 3680.18, 34.88, 32.60),  taken = false, model = 2117668672 },
     { coords = vector4(1827.63, 3678.83, 34.88, 29.28),   taken = false, model = 2117668672 },
     { coords = vector4(1824.90, 3677.05, 34.88, 30.87),  taken = false, model = 2117668672 },
     { coords = vector4(1821.76, 3681.47, 34.89, 207.60),  taken = false, model = 2117668672 },
     { coords = vector4(1822.99, 3682.05, 34.89, 208.75),  taken = false, model = 2117668672 },

},
['jailbeds'] = {
    { coords = vector4(1741.20, 3624.66, 35.69, 302.37), taken = false, model = 2117668672 },
    { coords = vector4(1739.96, 3626.83, 35.69, 303.38),  taken = false, model = 2117668672 },
    { coords = vector4(1738.47, 3629.41, 35.69, 300.67),   taken = false, model = 2117668672 },
    { coords = vector4(1736.86, 3632.28, 35.69, 302.48),  taken = false, model = 2117668672 },
    { coords = vector4(1735.23, 3634.88, 35.69, 299.44),  taken = false, model = 2117668672 },
    { coords = vector4(1733.70, 3637.51, 35.69, 302.68),  taken = false, model = 2117668672 },
},
['stations'] = {
    { label = Lang:t('info.pb_hospital'), coords = vector3(-2782.38, -66.77, 18.61) },
    { label = Lang:t('info.pb_hospital1'), coords = vector3(1733.70, 3637.51, 35.51) }
}
}

Config.AuthorizedVehicles = { -- Grade is key, don't add same vehicle in multiple grades. Higher rank can see lower
    [0] = {
        ['ambulance'] = 'Ambulance'
    }
}

Config.Items = { -- Grade is key, don't add same item in multiple grades. Higher rank can see lower
    [0] = {
        { name = 'radio',                   price = 0, amount = 50, info = {}, type = 'item' },
        { name = 'bandage',                 price = 0, amount = 50, info = {}, type = 'item' },
        { name = 'painkillers',             price = 0, amount = 50, info = {}, type = 'item' },
        { name = 'firstaid',                price = 0, amount = 50, info = {}, type = 'item' },
        { name = 'weapon_flashlight',       price = 0, amount = 50, info = {}, type = 'item' },
        { name = 'weapon_fireextinguisher', price = 0, amount = 50, info = {}, type = 'item' },
        { name = 'backpack4', price = 0, amount = 50, info = {}, type = 'item' },
        { name = 'kq_outfitbag', price = 0, amount = 50, info = {}, type = 'item' },
        { name = 'crutch', price = 0, amount = 50, info = {}, type = 'item' },
        { name = 'wheelchair', price = 0, amount = 50, info = {}, type = 'item' },
        { name = 'lindringskrem', price = 0, amount = 50, info = {}, type = 'item' },
        { name = 'glidemiddel', price = 0, amount = 50, info = {}, type = 'item' },
        { name = 'hostesaft_med_kosylan', price = 0, amount = 50, info = {}, type = 'item' },
        { name = 'blue_pill', price = 0, amount = 50, info = {}, type = 'item' },
        { name = 'white_pill', price = 0, amount = 50, info = {}, type = 'item' },
        { name = 'diving_gear', price = 0, amount = 50, info = {}, type = 'item' },
        { name = 'diving_fill', price = 0, amount = 50, info = {}, type = 'item' },
        -- { name = 'gauze', price = 0, amount = 50, info = {}, type = 'item' },
        -- { name = 'syringe', price = 0, amount = 50, info = {}, type = 'item' },
        -- { name = 'forceps', price = 0, amount = 50, info = {}, type = 'item' },
        -- { name = 'pill', price = 0, amount = 50, info = {}, type = 'item' },
        -- { name = 'surgical_gloves', price = 0, amount = 50, info = {}, type = 'item' },
        -- { name = 'surgical_staple', price = 0, amount = 50, info = {}, type = 'item' },
        -- { name = 'surgical_tray', price = 0, amount = 50, info = {}, type = 'item' },
        -- { name = 'tape', price = 0, amount = 50, info = {}, type = 'item' },
        -- { name = 'iodine', price = 0, amount = 50, info = {}, type = 'item' },
    }
}

Config.WeaponClasses = { -- Define gta weapon classe numbers
    ['SMALL_CALIBER'] = 1,
    ['MEDIUM_CALIBER'] = 2,
    ['HIGH_CALIBER'] = 3,
    ['SHOTGUN'] = 4,
    ['CUTTING'] = 5,
    ['LIGHT_IMPACT'] = 6,
    ['HEAVY_IMPACT'] = 7,
    ['EXPLOSIVE'] = 8,
    ['FIRE'] = 9,
    ['SUFFOCATING'] = 10,
    ['OTHER'] = 11,
    ['WILDLIFE'] = 12,
    ['NOTHING'] = 13
}

Config.MinorInjurWeapons = { -- Define which weapons cause small injuries
    [Config.WeaponClasses['SMALL_CALIBER']] = true,
    [Config.WeaponClasses['MEDIUM_CALIBER']] = true,
    [Config.WeaponClasses['CUTTING']] = true,
    [Config.WeaponClasses['WILDLIFE']] = true,
    [Config.WeaponClasses['OTHER']] = true,
    [Config.WeaponClasses['LIGHT_IMPACT']] = true,
}

Config.MajorInjurWeapons = { -- Define which weapons cause large injuries
    [Config.WeaponClasses['HIGH_CALIBER']] = true,
    [Config.WeaponClasses['HEAVY_IMPACT']] = true,
    [Config.WeaponClasses['SHOTGUN']] = true,
    [Config.WeaponClasses['EXPLOSIVE']] = true,
}

Config.AlwaysBleedChanceWeapons = { -- Define which weapons will always cause bleedign
    [Config.WeaponClasses['SMALL_CALIBER']] = true,
    [Config.WeaponClasses['MEDIUM_CALIBER']] = true,
    [Config.WeaponClasses['CUTTING']] = true,
    [Config.WeaponClasses['WILDLIFE']] = false,
}

Config.ForceInjuryWeapons = { -- Define which weapons will always cause injuries
    [Config.WeaponClasses['HIGH_CALIBER']] = true,
    [Config.WeaponClasses['HEAVY_IMPACT']] = true,
    [Config.WeaponClasses['EXPLOSIVE']] = true,
}

Config.CriticalAreas = { -- Define body areas that will always cause bleeding if wearing armor or not
    ['UPPER_BODY'] = { armored = false },
    ['LOWER_BODY'] = { armored = true },
    ['SPINE'] = { armored = true },
}

Config.StaggerAreas = { -- Define body areas that will always cause staggering if wearing armor or not
    ['SPINE'] = { armored = true, major = 60, minor = 30 },
    ['UPPER_BODY'] = { armored = false, major = 60, minor = 30 },
    ['LLEG'] = { armored = true, major = 100, minor = 85 },
    ['RLEG'] = { armored = true, major = 100, minor = 85 },
    ['LFOOT'] = { armored = true, major = 100, minor = 100 },
    ['RFOOT'] = { armored = true, major = 100, minor = 100 },
}

Config.WoundStates = { -- Translate wound alerts
    Lang:t('states.irritated'),
    Lang:t('states.quite_painful'),
    Lang:t('states.painful'),
    Lang:t('states.really_painful'),
}

Config.BleedingStates = { -- Translate bleeding alerts
    [1] = { label = Lang:t('states.little_bleed') },
    [2] = { label = Lang:t('states.bleed') },
    [3] = { label = Lang:t('states.lot_bleed') },
    [4] = { label = Lang:t('states.big_bleed') },
}

Config.MovementRate = { -- Set the player movement rate based on the level of damage they have
    0.98,
    0.96,
    0.94,
    0.92,
}

Config.Bones = { -- Correspond bone hash numbers to their label
    [0]     = 'NONE',
    [31085] = 'HEAD',
    [31086] = 'HEAD',
    [39317] = 'NECK',
    [57597] = 'SPINE',
    [23553] = 'SPINE',
    [24816] = 'SPINE',
    [24817] = 'SPINE',
    [24818] = 'SPINE',
    [10706] = 'UPPER_BODY',
    [64729] = 'UPPER_BODY',
    [11816] = 'LOWER_BODY',
    [45509] = 'LARM',
    [61163] = 'LARM',
    [18905] = 'LHAND',
    [4089]  = 'LFINGER',
    [4090]  = 'LFINGER',
    [4137]  = 'LFINGER',
    [4138]  = 'LFINGER',
    [4153]  = 'LFINGER',
    [4154]  = 'LFINGER',
    [4169]  = 'LFINGER',
    [4170]  = 'LFINGER',
    [4185]  = 'LFINGER',
    [4186]  = 'LFINGER',
    [26610] = 'LFINGER',
    [26611] = 'LFINGER',
    [26612] = 'LFINGER',
    [26613] = 'LFINGER',
    [26614] = 'LFINGER',
    [58271] = 'LLEG',
    [63931] = 'LLEG',
    [2108]  = 'LFOOT',
    [14201] = 'LFOOT',
    [40269] = 'RARM',
    [28252] = 'RARM',
    [57005] = 'RHAND',
    [58866] = 'RFINGER',
    [58867] = 'RFINGER',
    [58868] = 'RFINGER',
    [58869] = 'RFINGER',
    [58870] = 'RFINGER',
    [64016] = 'RFINGER',
    [64017] = 'RFINGER',
    [64064] = 'RFINGER',
    [64065] = 'RFINGER',
    [64080] = 'RFINGER',
    [64081] = 'RFINGER',
    [64096] = 'RFINGER',
    [64097] = 'RFINGER',
    [64112] = 'RFINGER',
    [64113] = 'RFINGER',
    [36864] = 'RLEG',
    [51826] = 'RLEG',
    [20781] = 'RFOOT',
    [52301] = 'RFOOT',
}

Config.BoneIndexes = { -- Correspond bone labels to their hash number
    ['NONE'] = 0,
    -- ['HEAD'] = 31085,
    ['HEAD'] = 31086,
    ['NECK'] = 39317,
    -- ['SPINE'] = 57597,
    -- ['SPINE'] = 23553,
    -- ['SPINE'] = 24816,
    -- ['SPINE'] = 24817,
    ['SPINE'] = 24818,
    -- ['UPPER_BODY'] = 10706,
    ['UPPER_BODY'] = 64729,
    ['LOWER_BODY'] = 11816,
    -- ['LARM'] = 45509,
    ['LARM'] = 61163,
    ['LHAND'] = 18905,
    -- ['LFINGER'] = 4089,
    -- ['LFINGER'] = 4090,
    -- ['LFINGER'] = 4137,
    -- ['LFINGER'] = 4138,
    -- ['LFINGER'] = 4153,
    -- ['LFINGER'] = 4154,
    -- ['LFINGER'] = 4169,
    -- ['LFINGER'] = 4170,
    -- ['LFINGER'] = 4185,
    -- ['LFINGER'] = 4186,
    -- ['LFINGER'] = 26610,
    -- ['LFINGER'] = 26611,
    -- ['LFINGER'] = 26612,
    -- ['LFINGER'] = 26613,
    ['LFINGER'] = 26614,
    -- ['LLEG'] = 58271,
    ['LLEG'] = 63931,
    -- ['LFOOT'] = 2108,
    ['LFOOT'] = 14201,
    -- ['RARM'] = 40269,
    ['RARM'] = 28252,
    ['RHAND'] = 57005,
    -- ['RFINGER'] = 58866,
    -- ['RFINGER'] = 58867,
    -- ['RFINGER'] = 58868,
    -- ['RFINGER'] = 58869,
    -- ['RFINGER'] = 58870,
    -- ['RFINGER'] = 64016,
    -- ['RFINGER'] = 64017,
    -- ['RFINGER'] = 64064,
    -- ['RFINGER'] = 64065,
    -- ['RFINGER'] = 64080,
    -- ['RFINGER'] = 64081,
    -- ['RFINGER'] = 64096,
    -- ['RFINGER'] = 64097,
    -- ['RFINGER'] = 64112,
    ['RFINGER'] = 64113,
    -- ['RLEG'] = 36864,
    ['RLEG'] = 51826,
    -- ['RFOOT'] = 20781,
    ['RFOOT'] = 52301,
}

Config.Weapons = { -- Correspond weapon names to their class number
    [`WEAPON_STUNGUN`] = Config.WeaponClasses['NONE'],
    [`WEAPON_STUNGUN_MP`] = Config.WeaponClasses['NONE'],
    --[[ Small Caliber ]] --
    [`WEAPON_PISTOL`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_COMBATPISTOL`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_APPISTOL`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_COMBATPDW`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_MACHINEPISTOL`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_MICROSMG`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_MINISMG`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_PISTOL_MK2`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_SNSPISTOL`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_SNSPISTOL_MK2`] = Config.WeaponClasses['SMALL_CALIBER'],
    [`WEAPON_VINTAGEPISTOL`] = Config.WeaponClasses['SMALL_CALIBER'],

    --[[ Medium Caliber ]] --
    [`WEAPON_ADVANCEDRIFLE`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_ASSAULTSMG`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_BULLPUPRIFLE`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_BULLPUPRIFLE_MK2`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_CARBINERIFLE`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_CARBINERIFLE_MK2`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_COMPACTRIFLE`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_DOUBLEACTION`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_GUSENBERG`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_HEAVYPISTOL`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_MARKSMANPISTOL`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_PISTOL50`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_REVOLVER`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_REVOLVER_MK2`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_SMG`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_SMG_MK2`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_SPECIALCARBINE`] = Config.WeaponClasses['MEDIUM_CALIBER'],
    [`WEAPON_SPECIALCARBINE_MK2`] = Config.WeaponClasses['MEDIUM_CALIBER'],

    --[[ High Caliber ]] --
    [`WEAPON_ASSAULTRIFLE`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_ASSAULTRIFLE_MK2`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_COMBATMG`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_COMBATMG_MK2`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_HEAVYSNIPER`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_HEAVYSNIPER_MK2`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_MARKSMANRIFLE`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_MARKSMANRIFLE_MK2`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_MG`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_MINIGUN`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_MUSKET`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_RAILGUN`] = Config.WeaponClasses['HIGH_CALIBER'],
    [`WEAPON_HEAVYRIFLE`] = Config.WeaponClasses['HIGH_CALIBER'],

    --[[ Shotguns ]] --
    [`WEAPON_ASSAULTSHOTGUN`] = Config.WeaponClasses['SHOTGUN'],
    [`WEAPON_BULLUPSHOTGUN`] = Config.WeaponClasses['SHOTGUN'],
    [`WEAPON_DBSHOTGUN`] = Config.WeaponClasses['SHOTGUN'],
    [`WEAPON_HEAVYSHOTGUN`] = Config.WeaponClasses['SHOTGUN'],
    [`WEAPON_PUMPSHOTGUN`] = Config.WeaponClasses['SHOTGUN'],
    [`WEAPON_PUMPSHOTGUN_MK2`] = Config.WeaponClasses['SHOTGUN'],
    [`WEAPON_SAWNOFFSHOTGUN`] = Config.WeaponClasses['SHOTGUN'],
    [`WEAPON_SWEEPERSHOTGUN`] = Config.WeaponClasses['SHOTGUN'],

    --[[ Animals ]]                                            --
    [`WEAPON_ANIMAL`] = Config.WeaponClasses['WILDLIFE'],      -- Animal
    [`WEAPON_COUGAR`] = Config.WeaponClasses['WILDLIFE'],      -- Cougar
    [`WEAPON_BARBED_WIRE`] = Config.WeaponClasses['WILDLIFE'], -- Barbed Wire

    --[[ Cutting Weapons ]]                                    --
    [`WEAPON_BATTLEAXE`] = Config.WeaponClasses['CUTTING'],
    [`WEAPON_BOTTLE`] = Config.WeaponClasses['CUTTING'],
    [`WEAPON_DAGGER`] = Config.WeaponClasses['CUTTING'],
    [`WEAPON_HATCHET`] = Config.WeaponClasses['CUTTING'],
    [`WEAPON_KNIFE`] = Config.WeaponClasses['CUTTING'],
    [`WEAPON_MACHETE`] = Config.WeaponClasses['CUTTING'],
    [`WEAPON_SWITCHBLADE`] = Config.WeaponClasses['CUTTING'],

    --[[ Light Impact ]] --
    [`WEAPON_KNUCKLE`] = Config.WeaponClasses['LIGHT_IMPACT'],

    --[[ Heavy Impact ]] --
    [`WEAPON_BAT`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_CROWBAR`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_FIREEXTINGUISHER`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_FIRWORK`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_GOLFLCUB`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_HAMMER`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_PETROLCAN`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_POOLCUE`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_WRENCH`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_RAMMED_BY_CAR`] = Config.WeaponClasses['HEAVY_IMPACT'],
    [`WEAPON_RUN_OVER_BY_CAR`] = Config.WeaponClasses['HEAVY_IMPACT'],

    --[[ Explosives ]] --
    [`WEAPON_EXPLOSION`] = Config.WeaponClasses['EXPLOSIVE'],
    [`WEAPON_GRENADE`] = Config.WeaponClasses['EXPLOSIVE'],
    [`WEAPON_COMPACTLAUNCHER`] = Config.WeaponClasses['EXPLOSIVE'],
    [`WEAPON_HOMINGLAUNCHER`] = Config.WeaponClasses['EXPLOSIVE'],
    [`WEAPON_PIPEBOMB`] = Config.WeaponClasses['EXPLOSIVE'],
    [`WEAPON_PROXMINE`] = Config.WeaponClasses['EXPLOSIVE'],
    [`WEAPON_RPG`] = Config.WeaponClasses['EXPLOSIVE'],
    [`WEAPON_STICKYBOMB`] = Config.WeaponClasses['EXPLOSIVE'],
    [`WEAPON_HELI_CRASH`] = Config.WeaponClasses['EXPLOSIVE'],
    [`WEAPON_EMPLAUNCHER`] = Config.WeaponClasses['EXPLOSIVE'],

    --[[ Other ]]                                                   --
    [`WEAPON_FALL`] = Config.WeaponClasses['OTHER'],                -- Fall
    [`WEAPON_HIT_BY_WATER_CANNON`] = Config.WeaponClasses['OTHER'], -- Water Cannon

    --[[ Fire ]]                                                    --
    [`WEAPON_ELECTRIC_FENCE`] = Config.WeaponClasses['FIRE'],
    [`WEAPON_FIRE`] = Config.WeaponClasses['FIRE'],
    [`WEAPON_MOLOTOV`] = Config.WeaponClasses['FIRE'],
    [`WEAPON_FLARE`] = Config.WeaponClasses['FIRE'],
    [`WEAPON_FLAREGUN`] = Config.WeaponClasses['FIRE'],

    --[[ Suffocate ]]                                                     --
    [`WEAPON_DROWNING`] = Config.WeaponClasses['SUFFOCATING'],            -- Drowning
    [`WEAPON_DROWNING_IN_VEHICLE`] = Config.WeaponClasses['SUFFOCATING'], -- Drowning Veh
    [`WEAPON_EXHAUSTION`] = Config.WeaponClasses['SUFFOCATING'],          -- Exhaust
    [`WEAPON_BZGAS`] = Config.WeaponClasses['SUFFOCATING'],
    [`WEAPON_SMOKEGRENADE`] = Config.WeaponClasses['SUFFOCATING'],
}

Config.VehicleSettings = { -- Enable or disable vehicle extras when pulling them from the ambulance job vehicle spawner
    ['car1'] = {           -- Model name
        ['extras'] = {
            ['1'] = false, -- on/off
            ['2'] = true,
            ['3'] = true,
            ['4'] = true,
            ['5'] = true,
            ['6'] = true,
            ['7'] = true,
            ['8'] = true,
            ['9'] = true,
            ['10'] = true,
            ['11'] = true,
            ['12'] = true,
        }
    },
    ['car2'] = {
        ['extras'] = {
            ['1'] = false,
            ['2'] = true,
            ['3'] = true,
            ['4'] = true,
            ['5'] = true,
            ['6'] = true,
            ['7'] = true,
            ['8'] = true,
            ['9'] = true,
            ['10'] = true,
            ['11'] = true,
            ['12'] = true,
        }
    }
}