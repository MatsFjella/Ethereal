Config = {}

--------------------------------------------------------
--						Target/Inv					  --
--------------------------------------------------------
Config.Core = 'qb-core' -- easy way to change name of core
Config.Target = 'qb-target' -- easy way to change name of target
Config.Inventory = 'qb-inventory' -- easy way to change name of inventory
Config.Debug = false -- easy way to change debug mode

Config.PrintLocation = {
    coords = vector3(-916.91, -2951.91, 19.87),
    label = 'Ta ut lisens'
}

--------------------------------------------------------
--						QB-Input					  --
--------------------------------------------------------
Config.Input = 'qb-input' -- easy way to change name of input

--------------------------------------------------------
--						Job Setup					  --
--------------------------------------------------------
Config.JobName = 'styrt' -- name of the job that is set up in qb-core/shared/jobs.lua
Config.RenewedBanking = false
Config.Licenses = {
    ["airplane"]    = { item = "airplane", type = "airplane", priceToBuy = 0},
    ["helicopter"]  = { item = "helicopter", type = "helicopter", priceToBuy = 0},
    ["trainee"]     = { item = "trainee", type = "trainee", priceToBuy = 0},
}
-------------------------------------------------------------------------------------------------------------