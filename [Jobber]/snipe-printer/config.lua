Config = {}

-- ███████ ██████   █████  ███    ███ ███████ ██     ██  ██████  ██████  ██   ██ 
-- ██      ██   ██ ██   ██ ████  ████ ██      ██     ██ ██    ██ ██   ██ ██  ██  
-- █████   ██████  ███████ ██ ████ ██ █████   ██  █  ██ ██    ██ ██████  █████   
-- ██      ██   ██ ██   ██ ██  ██  ██ ██      ██ ███ ██ ██    ██ ██   ██ ██  ██  
-- ██      ██   ██ ██   ██ ██      ██ ███████  ███ ███   ██████  ██   ██ ██   ██

Config.Core = "QBCore" -- ESX or QBCore
Config.CoreFolderName = "qb-core"  -- es_extended || qb-core

Config.PlayerLoadedEvent = " QBCore:Client:OnPlayerLoaded" -- esx:playerLoaded || QBCore:Client:OnPlayerLoaded
Config.PlayerUnloadEvent = "QBCore:Client:OnPlayerUnload" -- esx:onPlayerLogout || QBCore:Client:OnPlayerUnload     


Config.Inventory = "qb" -- ox || qb || qsv2 || qs

Config.ShowHelpNotification = false
Config.DrawText = true

-- Target supports only qb-target / qtarget or ox-target
Config.TargetPrinters = true -- Set to true if you want to see the printers in the world (this wont take the paper count and people can print unlimited documents without refilling)
Config.MaxDocumentsToPrint = 10 -- Maximum number of documents that can be printed at a time

Config.Debug = false

Config.Printer = {
    [1] = {coords = vector3(-2819.01, -62.92, 19.41), heading = 320.32, model = "v_ret_gc_print", z_offset = -1.0, count = 20, capacity = 100, radius = 1.0, show3dText = false}, -- sykehus
    [2] = {coords = vector3(-486.19, -1003.45, 34.49), heading = 180.32, model = "v_ret_gc_print", z_offset = -1.0, count = 20, capacity = 100, radius = 1.0, show3dText = false}, -- politi
    [3] = {coords = vector3(100.36, -1298.16, 36.38), heading = 90.32, model = "v_ret_gc_print", z_offset = -1.0, count = 20, capacity = 100, radius = 1.0, show3dText = false}, -- vanilla
    [4] = {coords = vector3(83.37, -1739.05, 31.11), heading = 20.32, model = "v_ret_gc_print", z_offset = -1.0, count = 20, capacity = 100, radius = 1.0, show3dText = false}, -- supermarked
    [5] = {coords = vector3(-1044.1, -1491.54, 6.2), heading = 60.32, model = "v_ret_gc_print", z_offset = -1.0, count = 20, capacity = 100, radius = 1.0, show3dText = false}, -- koi
    [6] = {coords = vector3(-349.99, -129.55, 44.02), heading = 250.32, model = "v_ret_gc_print", z_offset = -1.0, count = 20, capacity = 100, radius = 1.0, show3dText = false}, -- teknotuning
    [7] = {coords = vector3(175.15, -241.33, 55.04), heading = 180.32, model = "v_ret_gc_print", z_offset = -1.0, count = 20, capacity = 100, radius = 1.0, show3dText = false}, -- kaffehjornet
    [8] = {coords = vector3(60.9, -135.07, 56.38), heading = 180.32, model = "v_ret_gc_print", z_offset = -1.0, count = 20, capacity = 100, radius = 1.0, show3dText = false}, -- treys
    [9] = {coords = vector3(-912.02, -2967.17, 20.69), heading = 80.32, model = "v_ret_gc_print", z_offset = -1.0, count = 20, capacity = 100, radius = 1.0, show3dText = false}, -- styrt
    [10] = {coords = vector3(-936.33, -2034.55, 10.33), heading = 220.32, model = "v_ret_gc_print", z_offset = -1.0, count = 20, capacity = 100, radius = 1.0, show3dText = false}, -- Grotti
    [11] = {coords = vector3(-1048.11, -232.53, 50.75), heading = 220.32, model = "v_ret_gc_print", z_offset = -1.0, count = 20, capacity = 100, radius = 1.0, show3dText = false}, -- kripos
    [12] = {coords = vector3(-716.71, 260.7, 85.04), heading = 60.32, model = "v_ret_gc_print", z_offset = -1.0, count = 20, capacity = 100, radius = 1.0, show3dText = false}, -- Eiendomsmegler
    [13] = {coords = vector3(-575.98, 285.65, 80.10), heading = 150.32, model = "v_ret_gc_print", z_offset = -1.0, count = 20, capacity = 100, radius = 1.0, show3dText = false}, -- Tequilala
    [14] = {coords = vector3(-1198.81, -897.75, 14.6), heading = 150.32, model = "v_ret_gc_print", z_offset = -1.0, count = 20, capacity = 100, radius = 1.0, show3dText = false}, -- Burgershot
    [15] = {coords = vector3(-211.73, -773.04, 34.89), heading = 70.32, model = "v_ret_gc_print", z_offset = -1.0, count = 20, capacity = 100, radius = 1.0, show3dText = false}, -- Burgershot
    [16] = {coords = vector3(244.70, -3150.88, 4.10), heading = 260.32, model = "v_ret_gc_print", z_offset = -1.0, count = 20, capacity = 100, radius = 1.0, show3dText = false}, -- club77
    [17] = {coords = vector3(-2199.26, -387.87, 14.19), heading = 160.32, model = "v_ret_gc_print", z_offset = -1.0, count = 20, capacity = 100, radius = 1.0, show3dText = false}, -- Oslo sikkerhet
}
-- Add new coord and heading 
-- model (spawn machine prop name, should be nil if you dont want to spawn the prop)
-- some props name that you can use - "prop_printer_01", "prop_printer_02", "v_res_printer", "v_ret_gc_print"
-- capacity (Maximum number of A4 sheets machine can carry)
-- count (Initial count of A4 sheets in printer, when resource start)
-- z_offset to align prop vertically (perfect placement to ground), else set z_offset = 0.0

--[[
    * Notify Config
    * Set only one to true 
    * Config.QBCoreNotify - Uses default QBCore notify system
    * Config.okokNotify - Uses OkOkNotify system
    * Config.pNotify - Uses pNotify system

    * Config.pNotifyLayout - set layout of where the notification will show. Check the layouts below. 
    * Layouts:
                top
                topLeft
                topCenter
                topRight
                center
                centerLeft
                centerRight
                bottom
                bottomLeft
                bottomCenter
                bottomRight
    
    * Config.OkOkNotifyTitle - Title to show on okokNotify
]]--

Config.okokNotify = true -- Set to true if you are using base OKOK notify system
Config.pNotify = false -- Set to true if you are using base  pNotify system
Config.mythicNotify = true -- Set to true if you are using mythic notify system

Config.pNotifyLayout = "centerRight" --more options can be found in pNotify Readme. Make sure you put the right layout name.
Config.OkOkNotifyTitle = "Printer" --Title that displays on okoknotify


--Format of Config.Locale
--[[
    * name = label
    * Do not alter the name (for eg. ["invalid_url"] -> do not change this)
    * change the label (for eg. "Invalid URL!" can be changed to whatever you want.)
]]--

Config.Locale = {
    ["invalid_url"] = "Ugyldig URL!",
    ["file_url_required"] = "Fil URL påkrevd",
    ["file_name"] = "Fil navn påkrevd",
    ["not_enough_sheets"] = "Ikke nok plass til mer papir",
    ["no_sheets"] = "Du har ikke papir!",
    ["refilling"] = "Fyller på papir",
    ["printing"] = "Printer dokumenter",
    ["paper_count"] = "Papir antall",
    ["refill"] = "~r~K~w~ - Fyll på",
    ["use"] = '~g~E~w~ - Bruk',
    ["wrong_image"] = "Bildet er ikke til stede i riktig discord-kanal",
    ["not_enough_papers"] = "Skriveren har ikke nok papirer",
    ["max_documents"] = "Du kan kun skrive ut maks "..Config.MaxDocumentsToPrint.." om gangen"
}

Config.RestrictMode = false --set to to true if you want to restrict people from using any images and use only the images from Allowed Channels

Config.AllowedChannels = { --Allowed Discord channels for PNG upload
    "https://cdn.discordapp.com/attachments/909905066671108136",  -- the number after "attachments/" is the channel id, to get that, just right click on the channel and copy id (for now this is the teasers channel on my discord)
}