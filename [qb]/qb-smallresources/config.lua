Config = {}
Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)

-- To make this simple. Everything you need is in the config, except for discord, weapon drops, vehicle classes for cruise, hands up disabled keys, and recoil

Config.AFK = {
    ignoredGroups = {
        ['mod'] = true,
        ['admin'] = true,
        ['god'] = true
    },
    secondsUntilKick = 10000 -- AFK Kick Time Limit (in seconds)
}

Config.Binoculars = {
    fov_max = 70.0,
    fov_min = 5.0, -- max zoom level (smaller fov is more zoom)
    zoomspeed = 10.0, -- camera zoom speed
    speed_lr = 8.0, -- speed by which the camera pans left-right
    speed_ud = 8.0, -- speed by which the camera pans up-down
    storeBinoclarKey = 177
}

-- Whether to enable or disable dispatch services
Config.DispatchServices = {
    [1] = true, -- Police Vehicles
    [2] = true, -- Police Helicopters
    [3] = true, -- Fire Department Vehicles
    [4] = true, -- Swat Vehicles
    [5] = true, -- Ambulance Vehicles
    [6] = true, -- Police Motorcycles
    [7] = true, -- Police Backup
    [8] = false, -- Police Roadblocks
    [9] = false, -- PoliceAutomobileWaitPulledOver
    [10] = false, -- PoliceAutomobileWaitCruising
    [11] = false, -- Gang Members
    [12] = true, -- Swat Helicopters
    [13] = false, -- Police Boats
    [14] = true, -- Army Vehicles
    [15] = false, -- Biker Backup
}

-- Enable or disable the wanted level
Config.EnableWantedLevel = false

-- To Set This Up visit https://forum.cfx.re/t/how-to-updated-discord-rich-presence-custom-image/157686
Config.Discord = {
    ["IsEnabled"] = true, -- If set to true, then discord rich presence will be enabled
    ["ApplicationId"] = '1186714984676339874', -- The discord application id
    ["IconLarge"] = 'ethereal', -- The name of the large icon
    ["IconLargeHoverText"] = 'Ethereal RP', -- The hover text of the large icon
    ["IconSmall"] = 'ethereal', -- The name of the small icon
    ["IconSmallHoverText"] = 'EtherealRP', -- The hover text of the small icon
    ["UpdateRate"] = 60000, -- How often the player count should be updated
    ["ShowPlayerCount"] = true, -- If set to true the player count will be displayed in the rich presence
    ["MaxPlayers"] = 128, -- Maximum amount of players
    ["Buttons"] = {
        {
            text = 'Discord!',
            url = 'https://discord.gg/mpGKrP4uYV'
        },
        {
            text = 'Nettside!',
            url = 'https://etherealrp.xyz'
        }
    }
}

Config.Density = {
    ['parked'] = 0.3,
    ['vehicle'] = 0.4,
    ['multiplier'] = 0.4,
    ['peds'] = 0.4,
    ['scenario'] = 0.2,
}

Config.Stun = {
    active = false,
    min = 4000,
    max = 7000
}

Config.Cruise = 'km/t'
Config.IdleCamera = false
Config.disableHandsupControls = {24, 25, 47, 58, 59, 63, 64, 71, 72, 75, 140, 141, 142, 143, 257, 263, 264}
Config.DisableAmbience = true -- Disabled distance sirens, distance car alarms, etc
Config.HarnessUses = 20
Config.DamageNeeded = 100.0 -- vehiclepush 0-1000
Config.EnableProne = false -- prone isnt recomended at this time
Config.MapText = "Ethereal RP" -- This is the name / text shown above the map

Config.Disable = {
    disableHudComponents = {1, 2, 3, 4, 7, 9, 13, 19, 20, 21, 22}, -- Hud Components: https://docs.fivem.net/natives/?_0x6806C51AD12B83B8
    disableControls = {37}, -- Controls: https://docs.fivem.net/docs/game-references/controls/
    displayAmmo = true -- false disables ammo display
}

Config.ConsumablesEat = {

    ["sandwich"] = math.random(15, 25),
    ["tosti"] = math.random(15, 25),
    ["twerks_candy"] = math.random(15, 25),
    ["snikkel_candy"] = math.random(15, 25),
    ["miso"] = math.random(80, 95),
    ["cake"] = math.random(80, 95),
    ["bento"] = math.random(80, 95),
    ["riceball"] = math.random(80, 95),
    ["nekocookie"] = math.random(80, 95),
    ["nekodonut"] = math.random(80, 95),
    ["bmochi"] = math.random(80, 95),
    ["pmochi"] = math.random(80, 95),
    ["gmochi"] = math.random(80, 95),
    ["omochi"] = math.random(80, 95),
    ["mocha"] = math.random(80, 95),
    ["cakepop"] = math.random(80, 91),
    ["pancake"] = math.random(80, 95),
    ["pizza"] = math.random(80, 95),
    ["purrito"] = math.random(80, 95),
    ["noodlebowl"] = math.random(80, 95),
    ["noodles"] = math.random(80, 95),
    ["ramen"] = math.random(80, 95),

    ["burgershot_bigking"] = math.random(90, 98),
    ["burgershot_bleeder"] = math.random(90, 98),
    ["burgershot_goatwrap"] = math.random(50, 98),
    ["burgershot_macaroon"] = math.random(50, 60),
    ["burgershot_patatob"] = math.random(50, 70),
    ["burgershot_patatos"] = math.random(40, 60),
    ["burgershot_shotnuggets"] = math.random(40, 60),
    ["burgershot_shotrings"] = math.random(40, 60),
    ["burgershot_thesmurfsicecream"] = math.random(10, 15),
    ["burgershot_smurfetteicecream"] = math.random(10, 15),
    ["burgershot_matchaicecream"] = math.random(10, 15),
    ["burgershot_ubeicecream"] = math.random(10, 15),
    ["burgershot_unicornicecream"] = math.random(10, 15),
    ["burgershot_vanillaicecream"] = math.random(10, 15),
    ["burgershot_chocolateicecream"] = math.random(10, 15),
    ["burgershot_strawberryicecream"] = math.random(10, 15),

    -- kaffehjornet
    ["baguettostogskinke"] = math.random(80, 95),
    ["kyllingbaguette"] = math.random(80, 95),
    ["tacobaguette"] = math.random(80, 95),
    ["musli"] = math.random(80, 95),
    ["pastasalat"] = math.random(80, 95),
    ["sjokoladekake"] = math.random(80, 95),
    ["eplekake"] = math.random(80, 95),
    ["skillingsbolle"] = math.random(80, 95),
    ["kanelsnurr"] = math.random(80, 95),
    ["skolebolle"] = math.random(80, 95),
    ["fruktblanding"] = math.random(80, 95),

    -- treys baker
    ["baconlover"] = math.random(80, 95),
    ["cheesyheaven"] = math.random(80, 95),
    ["caramelprince"] = math.random(80, 95),
    ["princessofsweets"] = math.random(80, 95),
    ["dukeofapples"] = math.random(80, 95),
    ["queenofdelicious"] = math.random(80, 95),

    --koi
    ["buddharolls"] = math.random(80, 95),
    ["genkirolls"] = math.random(80, 95),
    ["californiarolls"] = math.random(80, 95),
    ["futospicytempuramaki"] = math.random(80, 95),
    ["nigiribrett"] = math.random(80, 95),
    ["sashimi"] = math.random(80, 95),



    -- rcore_casino
    ["casino_burger"] = math.random(25, 40),
    ["casino_psqs"] = math.random(25, 40),
    ["casino_ego_chaser"] = math.random(25, 40),
    ["casino_sandwitch"] = math.random(25, 40),
    ["casino_donut"] = math.random(25, 40),

    -- tequilala
    ["porkchop"] = math.random(20, 40),
		["hamburger"] = math.random(20, 40),
		["cheeseburger"] = math.random(20, 40),
		["steak"] = math.random(20, 40),
		["kiwi"] = math.random(20, 40),
		["banana"] = math.random(20, 40),
		["strawberry"] = math.random(20, 40),
		["coconut"] = math.random(20, 40),
		["orange"] = math.random(20, 40),
		["daquiri"] = math.random(20, 40),
}

Config.ConsumablesDrink = {
    ["water_bottle"] = math.random(15, 25),
    ["kurkakola"] = math.random(15, 25),
    ["coffee"] = math.random(15, 55),
    ["bobatea"] = math.random(80, 95),
    ["bbobatea"] = math.random(80, 95),
    ["gbobatea"] = math.random(80, 95),
    ["pbobatea"] = math.random(80, 95),
    ["obobatea"] = math.random(80, 95),
    ["nekolatte"] = math.random(80, 95),
    ["mocha"] = math.random(80, 95),
    ["appledrink"] = math.random(20, 40),
    ["bananadrink"] = math.random(20, 40),
    ["orangedrink"] = math.random(20, 40),


    --kafehjornet
    ["kakao"] = math.random(90, 98),
    ["kaffe"] = math.random(90, 98),
    ["kaffelatte"] = math.random(90, 98),
    ["iste"] = math.random(90, 98),
    ["te"] = math.random(90, 98),
    ["smoothie"] = math.random(90, 98),

    -- treys baker
    ["hotcaramellfall"] = math.random(90, 98),
    ["hothearty"] = math.random(90, 98),
    ["berryblizzard"] = math.random(90, 98),
    ["mangoblizzard"] = math.random(90, 98),
    
    ["burgershot_colab"] = math.random(90, 98),
["burgershot_colas"] = math.random(90, 98),
["burgershot_coffee"] = math.random(90, 98),

    --bahamas
    ["caremel_frappucino"] = math.random(20, 20),
    ["chocolate_frappuccino"] = math.random(30, 30),
    ["coffee_frappuccino"] = math.random(40, 40),
    ["cold_brew_coffee"] = math.random(50, 50),
    ["cold_brew_latte"] = math.random(20, 40),
    ["double_choc_frappuccino"] = math.random(20, 40),
    ["green_tea_lemonade"] = math.random(20, 40),
    ["iced_caffe"] = math.random(20, 40),

    --rcore_casino
    ["casino_beer"] = math.random(25, 40),
    ["casino_coke"] = math.random(25, 40),
    ["casino_sprite"] = math.random(25, 40),
    ["casino_luckypotion"] = math.random(25, 40),
    ["casino_coffee"] = math.random(25, 40)
}

Config.ConsumablesAlcohol = {
    ["whiskey"] = math.random(60, 80),
    ["beer"] = math.random(10, 20),
    ["vodka"] = math.random(60, 80),
    ["dvrcocktail"] = math.random(20, 20),
    ["kamikaze"] = math.random(30, 30),
    ["jbcocktail"] = math.random(40, 40),
    ["marvelcocktail"] = math.random(50, 50),
    ["vitodaiquiri"] = math.random(60, 60),
    ["yoshishooter"] = math.random(20, 40),
    ["iflag"] = math.random(20, 40),
    ["hulkcocktail"] = math.random(20, 40),
    ["voodoo"] = math.random(20, 40),
    ["cappucc"] = math.random(20, 40),
    ["beer"] = math.random(20, 40),
    ["milkdragon"] = math.random(20, 40),
    ["bkamikaze"] = math.random(20, 40),
    ["scarcolada"] = math.random(20, 40),
    ["cookies_frappuccino"] = math.random(20, 40),
    ["pink_coconut"] = math.random(20, 40),
    ["strawberry_juice"] = math.random(20, 40),
    ["brussian"] = math.random(20, 40),
    ["brandy"] = math.random(20, 30),
	["vodka"] = math.random(30, 40),
	["whiterum"] = math.random(20, 40),
	["tequila"] = math.random(20, 40),
	["wine_red"] = math.random(20, 40),
	["wine_rose"] = math.random(20, 40),
	["wine_white"] = math.random(20, 40),
	["whiskey_mount"] = math.random(20, 40),
	["whiskey_macbeth"] = math.random(20, 40),
	["whiskey_richards"] = math.random(20, 40),
	["shots"] = math.random(20, 40),
    ["cocktail"] = math.random(20, 40),
    ["drinks"] = math.random(20, 40),
    ["slush"] = math.random(20, 40),
      


}

-- Custom Consumables hand bones
-- 18905 left hand
-- 57005 right hand
Config.ConsumablesCustom = {
    -- ['newitem'] = {
    --     ['progress'] = {
    --         label = 'Using Item...',
    --         time = 5000
    --     },
    --     ['animation'] = {
    --         animDict = "amb@prop_human_bbq@male@base",
    --         anim = "base",
    --         flags = 8,
    --     },
    --     ['prop'] = {
    --         model = false,
    --         bone = false,
    --         coords = false, -- vector 3 format
    --         rotation = false, -- vector 3 format
    --     },
    --     ['replenish'] = {
    --         type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
    --         replenish = math.random(20, 40),
    --         isAlcohol = false, -- if you want it to add alcohol count
    --         event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
    --         server = false -- if the event above is a server event
    --     }
    -- }
}

ConsumablesFireworks = {
    "firework1",
    "firework2",
    "firework3",
    "firework4"
}

Config.FireworkTime = 5 -- seconds before it goes off

Config.BlacklistedScenarios = {
    ['TYPES'] = {
        "WORLD_VEHICLE_MILITARY_PLANES_SMALL",
        "WORLD_VEHICLE_MILITARY_PLANES_BIG",
        "WORLD_VEHICLE_AMBULANCE",
        "WORLD_VEHICLE_POLICE_NEXT_TO_CAR",
        "WORLD_VEHICLE_POLICE_CAR",
        "WORLD_VEHICLE_POLICE_BIKE",
    },
    ['GROUPS'] = {
        2017590552,
        2141866469,
        1409640232,
        `ng_planes`,
    }
}

Config.BlacklistedVehs = {
    [`SHAMAL`] = true,
    [`LUXOR`] = true,
    [`LUXOR2`] = true,
    [`JET`] = true,
    [`LAZER`] = true,
    [`BUZZARD`] = true,
    [`BUZZARD2`] = true,
    [`ANNIHILATOR`] = true,
    [`SAVAGE`] = true,
    [`TITAN`] = true,
    [`RHINO`] = true,
    [`FIRETRUK`] = false,
    [`MULE`] = false,
    [`MAVERICK`] = true,
    [`BLIMP`] = true,
    [`AIRTUG`] = true,
    [`CAMPER`] = true,
    [`HYDRA`] = true,
    [`OPPRESSOR`] = true,
    [`technical3`] = true,
    [`insurgent3`] = true,
    [`apc`] = true,
    [`tampa3`] = true,
    [`trailersmall2`] = true,
    [`halftrack`] = true,
    [`hunter`] = true,
    [`vigilante`] = true,
    [`akula`] = true,
    [`barrage`] = true,
    [`khanjali`] = true,
    [`caracara`] = true,
    [`blimp3`] = true,
    [`menacer`] = true,
    [`oppressor2`] = true,
    [`scramjet`] = true,
    [`strikeforce`] = true,
    [`cerberus`] = true,
    [`cerberus2`] = true,
    [`cerberus3`] = true,
    [`scarab`] = true,
    [`scarab2`] = true,
    [`scarab3`] = true,
    [`rrocket`] = true,
    [`ruiner2`] = true,
    [`deluxo`] = true,
    [`cargoplane2`] = true,
    [`voltic2`] = true,
    [`policeb`] = true,
    [`ambulance`] = true,
    [`firetruk`] = true,
}

Config.BlacklistedWeapons = {
    [`WEAPON_RAILGUN`] = true,
}

Config.BlacklistedPeds = {
    [`s_m_y_ranger_01`] = true,
    [`s_m_y_sheriff_01`] = true,
    [`s_m_y_cop_01`] = true,
    [`s_f_y_sheriff_01`] = true,
    [`s_f_y_cop_01`] = true,
    [`s_m_y_hwaycop_01`] = true,
    [`ig_jimmyboston`] = false,
    [`g_m_y_azteca_01`] = false,
}

Config.HolsterVariant = {130,122,3,6,8}
Config.HolsterableWeapons = {
    --'WEAPON_STUNGUN',
    'WEAPON_PISTOL',
    'WEAPON_PISTOL_MK2',
    'WEAPON_COMBATPISTOL',
    'WEAPON_APPISTOL',
    'WEAPON_PISTOL50',
    'WEAPON_REVOLVER',
    'WEAPON_SNSPISTOL',
    'WEAPON_HEAVYPISTOL',
    'WEAPON_VINTAGEPISTOL',
    -- GGC Custom Weapons -- Hand Guns
	'WEAPON_GLOCK17',
	'WEAPON_GLOCK18C',
	'WEAPON_GLOCK22',
	'WEAPON_DEAGLE',
	'WEAPON_FNX45',
	'WEAPON_M1911',
    'WEAPON_GLOCK20',
    'WEAPON_GLOCK19GEN4',
    'weapon_dildoknife',
}

Config.Objects = { -- for object removal
    {coords = vector3(266.09,-349.35,44.74), heading = 0, length = 200, width = 200, model = "prop_sec_barier_02b"},
    {coords = vector3(285.28,-355.78,45.13), heading = 0, length = 200, width = 200, model = "prop_sec_barier_02a"},
}

-- You may add more than 2 selections and it will bring up a menu for the player to select which floor be sure to label each section though
Config.Teleports = {
    --Elevator @ labs
    [1] = {
        [1] = { -- up label
            ['poly'] = {
                coords = vector3(3540.74, 3675.59, 20.99),
                heading = 167.5,
                length = 2,
                width = 2
            },
            ["AllowVehicle"] = false,
            label = false -- set this to a string for a custom label or leave it false to keep the default

        },
        [2] = { -- down label
            ['poly'] = {
                coords = vector3(3540.74, 3675.59, 28.11),
                heading = 172.5,
                length = 2,
                width = 2
            },
            ["AllowVehicle"] = false,
            label = false
        },
        -- [3] = {
        --     ['poly'] = {
        --         coords = vector3(0.0, 0.0, 0.0),
        --         heading = 0.0,
        --         length = 0,
        --         width = 0
        --     },
        --     ["AllowVehicle"] = false,
        --     label = 'be sure to label all sections if more than 2'
        -- },
    },
    --Coke Processing Enter/Exit
    [2] = {
        [1] = {
            ['poly'] = {
                coords = vector3(5227.18, -2332.83, -4.77),
                heading = 92.24,
                length = 2,
                width = 2
            },
            ["AllowVehicle"] = false,
            label = '[E] Enter Coke Processing'
        },
        [2] = {
            ['poly'] = {
                coords = vector3(1088.81, -3187.57, -38.99),
                heading = 181.7,
                length = 2,
                width = 2
            },
            ["AllowVehicle"] = false,
            label = '[E] Leave'
        }
    }
}

Config.DefaultPrice = 20 -- Default price for the carwash
Config.DirtLevel = 0.1 -- Threshold for the dirt level to be counted as dirty
Config.CarWash = { -- carwash
    [1] = {
        ["label"] = "Bilvask",
        ["poly"] = {
            coords = vector3(174.81, -1736.77, 28.87),
            length = 7.0,
            width = 8.8,
            heading = 359
        }
    },
    [2] = {
        ["label"] = "Bilvask",
        ["poly"] = {
            coords = vector3(25.2, -1391.98, 28.91),
            length = 6.6,
            width = 8.2,
            heading = 0
        }
    },
    [3] = {
        ["label"] = "Bilvask",
        ["poly"] = {
            coords = vector3(-74.27, 6427.72, 31.02),
            length = 9.4,
            width = 8,
            heading = 315
        }
    },
    [4] = {
        ["label"] = "Bilvask",
        ["poly"] = {
            coords = vector3(1362.69, 3591.81, 34.5),
            length = 6.4,
            width = 8,
            heading = 21
        }
    },
    [5] = {
        ["label"] = "Bilvask",
        ["poly"] = {
            coords = vector3(-699.84, -932.68, 18.59),
            length = 11.8,
            width = 5.2,
            heading = 0
        }
    }
}
