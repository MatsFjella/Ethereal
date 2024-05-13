-----------------For support, scripts, and more----------------
--------------- https://discord.gg/VGYkkAYVv2  -------------
---------------------------------------------------------------

Config = {}

Config.Core = "QBCore" -- ESX or QBCore
Config.PlayerLoadedEvent = "QBCore:Client:OnPlayerLoaded" -- esx:playerLoaded || QBCore:Client:OnPlayerLoaded

Config.ShowBlip = true -- show blip on map

Config.Chances = {
    ["common"] = 100, -- 100%
    ["rare"] = 15, -- 15%
    ["epic"] = 5, -- 5%
}
Config.ShowDrawMaker = true -- show draw marker on in game while prospecting
Config.DetectorItem = "detector"

Config.Zones = {
    [1] = {coords = vector3(1429.933, 1222.926, 110.88), data = "loc1", zoneSize = 100, zoneLocations = 200},
    [2] = {coords = vector3(-1457.28, -1226.23, 3.24), data = "loc2", zoneSize = 100, zoneLocations = 100},
}

Config.DefaultItems = {
    [1] = {name = "steel", min = 1, max = 2} 
} -- will be selected if you dont put the common, rare and epic items in the config

Config.Items = {
    ["loc1"] = {
        ["common"] = {
            [1] = {name = "steel", min = 1, max = 5},
            [2] = {name = "metalscrap", min = 1, max = 5},
            [3] = {name = "copper", min = 1, max = 5},
            [4] = {name = "aluminum", min = 1, max = 5},
            [5] = {name = "iron", min = 1, max = 5},
            [6] = {name = "steel", min = 1, max = 5},
            [7] = {name = "rubber", min = 1, max = 8},
            [8] = {name = "glass", min = 1, max = 5},
            [8] = {name = "cloth", min = 1, max = 5},
        },
        ["rare"] = {
            [1] = {name = "phone", min = 1, max = 1},
            [2] = {name = "lockpick", min = 1, max = 1},
            [3] = {name = "advancedlockpick", min = 1, max = 1},
            [4] = {name = "electronickit", min = 1, max = 1},
            [5] = {name = "trojan_usb", min = 1, max = 1},
            [6] = {name = "screwdriverset", min = 1, max = 1},
            [7] = {name = "repairkit", min = 1, max = 1},
            [8] = {name = "repairkit", min = 1, max = 1},
        },
        ["epic"] = {
            [1] = {name = "rolex", min = 1, max = 2},
            [2] = {name = "diamond_ring", min = 1, max = 2},
            [3] = {name = "diamond", min = 1, max = 2},
            [4] = {name = "goldchain", min = 1, max = 2},
            [5] = {name = "10kgoldchain", min = 1, max = 2},


        }
    },
    ["loc2"] = {
        ["common"] = {
            [1] = {name = "steel", min = 1, max = 5},
            [2] = {name = "metalscrap", min = 1, max = 5},
            [3] = {name = "copper", min = 1, max = 5},
            [4] = {name = "aluminum", min = 1, max = 5},
            [5] = {name = "iron", min = 1, max = 5},
            [6] = {name = "steel", min = 1, max = 5},
            [7] = {name = "rubber", min = 1, max = 8},
            [8] = {name = "glass", min = 1, max = 5},
            [8] = {name = "cloth", min = 1, max = 5},
        },
        ["rare"] = {
            [1] = {name = "phone", min = 1, max = 1},
            [2] = {name = "lockpick", min = 1, max = 1},
            [3] = {name = "advancedlockpick", min = 1, max = 1},
            [4] = {name = "electronickit", min = 1, max = 1},
            [5] = {name = "trojan_usb", min = 1, max = 1},
            [6] = {name = "screwdriverset", min = 1, max = 1},
            [7] = {name = "repairkit", min = 1, max = 1},
            [8] = {name = "repairkit", min = 1, max = 1},
        },
        ["epic"] = {
            [1] = {name = "rolex", min = 1, max = 2},
            [2] = {name = "diamond_ring", min = 1, max = 2},
            [3] = {name = "diamond", min = 1, max = 2},
            [4] = {name = "goldchain", min = 1, max = 2},
            [5] = {name = "10kgoldchain", min = 1, max = 2},


        }
    },
}
