---------- [Locals] ----------

------------------------------

---------- [Functions] ----------
function PugFindPlayersByItentifier(identifier, bool)
    local players = GetPlayers()
    for _, v in ipairs(players) do
        local playerIdentifier = FWork.GetIdentifier(v)
        if playerIdentifier == identifier then
            if Config.Debug then
                print("player found:", v)
            end
            if bool then
                return v
            else
                return FWork.GetPlayerFromId(v)
            end
        end
    end
end
------------------------------

---------- [Events] ----------
RegisterNetEvent("Pug:server:CreateNewBusiness", function(BusinessName)
    local src = source
    local Player = Config.FrameworkFunctions.GetPlayer(src)
    if Player ~= nil then
        local result = MySQL.query.await('SELECT * FROM pug_businesses', {})
        if result[1] ~= nil then
            local CanMakeJob = true
            for _, v in pairs(result) do
                if string.lower(v.job) == string.lower(BusinessName) then
                    TriggerClientEvent("Pug:client:ShowBusinessNotify", src, Config.LangT["BusinessCreatedAlready"], "error")
                    CanMakeJob = false
                    break
                end
            end
            if CanMakeJob then
                MySQL.insert.await('INSERT INTO pug_businesses (job, registers, cookstations, trays, storage, supplies, seats, trashcans, blip, duty, bossmenu, locker, animations, props, peds, zone, whiteboard, items, createditems, garage, creator) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)', {
                    BusinessName, json.encode({}),json.encode({}),json.encode({}),json.encode({}),json.encode({}),json.encode({}),json.encode({}),json.encode({}),json.encode({}),json.encode({}),json.encode({}),json.encode({}),json.encode({}),json.encode({}),json.encode({}),json.encode({}),json.encode({}),json.encode({}), json.encode({}), Player.PlayerData.charinfo.firstname
                })
                -- Might want to add a wait here
                local result2 = MySQL.query.await('SELECT * FROM pug_businesses', {})
                if result2[1] ~= nil then
                    TriggerClientEvent("Pug:client:OpenBusinessCreatorUI",src, result2)
                    TriggerClientEvent("Pug:client:UpdateAllBsuinessData",-1, result2)
                end
            end
        else
            MySQL.insert.await('INSERT INTO pug_businesses (job, registers, cookstations, trays, storage, supplies, seats, trashcans, blip, duty, bossmenu, locker, animations, props, peds, zone, whiteboard, items, createditems, garage, creator) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)', {
                BusinessName, json.encode({}),json.encode({}),json.encode({}),json.encode({}),json.encode({}),json.encode({}),json.encode({}),json.encode({}),json.encode({}),json.encode({}),json.encode({}),json.encode({}),json.encode({}),json.encode({}),json.encode({}),json.encode({}),json.encode({}),json.encode({}), json.encode({}), Player.PlayerData.charinfo.firstname
            })
            -- Might want to add a wait here
            local result2 = MySQL.query.await('SELECT * FROM pug_businesses', {})
            if result2[1] ~= nil then
                TriggerClientEvent("Pug:client:OpenBusinessCreatorUI",src, result2)
                TriggerClientEvent("Pug:client:UpdateAllBsuinessData",-1, result2)
            end
        end
        if Framework == "ESX" then
            if GetResourceState("esx_society") ~= 'missing' then
                if GetResourceState("esx_addonaccount") ~= 'missing' then
                    local result3 = MySQL.query.await('SELECT * FROM pug_businesses', {})
                    if result3[1] ~= nil then
                        for k, _ in pairs(result3) do
                            local ThisJob = result3[k]["job"]
                            local DoesSocietyExist = MySQL.query.await('SELECT * FROM addon_account WHERE name = ?', {"society_"..ThisJob})
                            if DoesSocietyExist[1] then
                                TriggerEvent('esx_society:registerSociety', tostring(ThisJob), tostring(ThisJob), 'society_'..tostring(ThisJob), 'society_'..tostring(ThisJob), 'society_'..tostring(ThisJob), { type = 'public' })
                            else
                                MySQL.insert('INSERT INTO addon_account (name, label, shared) VALUES (?, ?, ?)', {"society_"..ThisJob, ThisJob, 1})
                                TriggerEvent('esx_society:registerSociety', tostring(ThisJob), tostring(ThisJob), 'society_'..tostring(ThisJob), 'society_'..tostring(ThisJob), 'society_'..tostring(ThisJob), { type = 'public' })
                            end
                        end
                    end
                end
            end
        end
    end
end)
RegisterNetEvent("Pug:server:AddNewFeatureLocation", function(Data)
    local src = source
    local Business = Data.Business
    local Feature = Data.Feature
	local result = MySQL.query.await('SELECT * FROM pug_businesses', {})
	if result[1] ~= nil then
        for _, v in pairs(result) do
            if string.lower(v.job) == string.lower(Business) then
                local Upgrades = {}
                if Feature == "props" then
                    local StopRunning
                    local DecodedFeatureData = json.decode(v[Feature])
                    for _, j in pairs(DecodedFeatureData) do
                        if tostring(j.Animation) == tostring(Data.Animation) then
                            if tostring(Data.Animation) == "prop_b_board_blank" or tostring(Data.Animation) == "prop_tv_flat_michael" then
                                StopRunning = tostring(Data.Animation)
                                break
                            end
                        end
                    end
                    if StopRunning then
                        TriggerClientEvent("Pug:client:ShowBusinessNotify", src, Config.LangT["AlreadyPlacedProp"].." "..StopRunning, "error")
                        return
                    end
                end
                if Feature == "blip" or Feature == "zone" then
                    Upgrades[#Upgrades+1] = Data
                    if Feature == "zone" and Data.MinZ then
                    else
                        if Feature == "zone" then
                            Upgrades = {}
                        end
                    end
                elseif Feature == "whiteboard" then
                    local DecodedFeatureData = json.decode(v[Feature])
                    if DecodedFeatureData[1] ~= nil then
                        if tostring(DecodedFeatureData[1].Prop) == tostring(Data.Prop) then
                            Upgrades[#Upgrades+1] = Data
                            if DecodedFeatureData[2] ~= nil then
                                Upgrades[#Upgrades+1] = DecodedFeatureData[2]
                            end
                        elseif DecodedFeatureData[2] ~= nil then
                            if tostring(DecodedFeatureData[2].Prop) == tostring(Data.Prop) then
                                Upgrades[#Upgrades+1] = DecodedFeatureData[1]
                                Upgrades[#Upgrades+1] = Data
                            end
                        else
                            Upgrades[#Upgrades+1] = DecodedFeatureData[1]
                            Upgrades[#Upgrades+1] = Data
                        end
                    else
                        Upgrades[#Upgrades+1] = Data
                    end
                else
                    for _, featureValue in pairs(json.decode(v[Feature])) do
                        Upgrades[#Upgrades+1] = featureValue
                    end
                    Upgrades[#Upgrades+1] = Data
                end
                MySQL.update('UPDATE pug_businesses SET '.. Feature.. ' = ? WHERE job = ?', { json.encode( Upgrades ), Business })
                Wait(500)
                local result2 = MySQL.query.await('SELECT * FROM pug_businesses', {})
                if result2[1] ~= nil then
                    if Feature == "whiteboard" then
                        for key, v in pairs(result2) do
                            if result2[key]["job"] == Business then
                                local DecodedData = json.decode(result2[key][Feature])
                                for _, j in pairs(DecodedData) do
                                    if tostring(j.Prop) == tostring(Data.Prop) then
                                        TriggerClientEvent("Pug:client:CreateAllTargetswhiteboard", -1, j, false, tostring(Data.Prop), Upgrades)
                                        break
                                    end
                                end
                            end
                        end
                    else
                        for _, v in pairs(result2) do
                            for k, _ in pairs(v) do
                                if k == "id" or k == "creator" or k == "whiteboard" then
                                else
                                    TriggerClientEvent("Pug:client:CreateAllTargets"..k, -1, v)
                                end
                            end
                        end
                        TriggerClientEvent("Pug:client:UpdateAllBsuinessData",-1, result2)
                    end
                end
            end
        end
    end
end)

RegisterNetEvent("Pug:server:AttemptToRemoveZone", function(Data)
    local src = source
    local Business = Data.Business
    local Feature = Data.Feature
    local Target = Data.Target
	local result = MySQL.query.await('SELECT * FROM pug_businesses', {})
	if result[1] ~= nil then
        for k, v in pairs(result) do
            if string.lower(v.job) == string.lower(Business) then
                local Upgrades = {}
                local TargetToRemnove
                for _, featureValue in pairs(json.decode(v[Feature])) do
                    local TargetCoords = vector3(featureValue.Target.x,featureValue.Target.y,featureValue.Target.z)
                    if Feature == "props" then
                        TargetCoords = vector3(featureValue.Target.x,featureValue.Target.y,featureValue.Target.z+0.7)
                    end
                    if #(TargetCoords - vector3(Target.x, Target.y, Target.z)) <= 0.7 then
                        if not TargetToRemnove then
                            TargetToRemnove = TargetCoords
                        else
                            Upgrades[#Upgrades+1] = featureValue
                        end
                    else
                        Upgrades[#Upgrades+1] = featureValue
                    end
                end
                if not TargetToRemnove then
                    TriggerClientEvent("Pug:client:ShowBusinessNotify", src, "No "..Feature..Config.LangT["NothingFound"], "error")
                    return
                end
                MySQL.update('UPDATE pug_businesses SET '.. Feature.. ' = ? WHERE job = ?', { json.encode( Upgrades ), Business })
                Wait(100)
                local result2 = MySQL.query.await('SELECT * FROM pug_businesses', {})
                if result2[1] ~= nil then
                    for _, v in pairs(result2) do
                        for k, _ in pairs(v) do
                            if k == "id" or k == "creator" or k == "whiteboard" then
                            else
                                TriggerClientEvent("Pug:client:CreateAllTargets"..k, -1, v)
                            end
                        end
                    end
                    TriggerClientEvent("Pug:client:UpdateAllBsuinessData",-1, result2)
                end
            end
        end
    end
end)

RegisterServerEvent('Pug:server:GivBusinessItem', function(bool, item, amount, info)
    local src = source
    local Player = Config.FrameworkFunctions.GetPlayer(src)
	if bool then
        if amount then
            Player.AddItem(item, amount, false, info)
        else
            Player.AddItem(item, 1, false, info)
        end
        if Framework == "QBCore" then
		    TriggerClientEvent('inventory:client:ItemBox', src, FWork.Shared.Items[item], "add", amount or 1)
        end
    else
        if amount then
            Player.RemoveItem(item, amount)
        else
            Player.RemoveItem(item, 1)
        end
        if Framework == "QBCore" then
		    TriggerClientEvent('inventory:client:ItemBox', src, FWork.Shared.Items[item], "remove", amount or 1)
        end
	end
end)
RegisterServerEvent('Pug:server:CreateNewServerItem', function(ItemInfo)
    local src = source
    PerformHttpRequest(ItemInfo.Image, function(statusCode, data, headers)
        if statusCode == 200 then

            -- Save the downloaded image to the inventory file
            local DownloadDirectory = Config.inventoryImagesDirectoryPath
            local filePath = DownloadDirectory .. "pug-"..ItemInfo.Item..".png"

            -- Save the downloaded image to the specified directory
            local file = io.open(filePath, "wb")
            if file  ~= nil then
                file:write(data)
                file:close()
                local ItemWeight = math.ceil(ItemInfo.Weight * 1000)
                -- Creating inventory item to the core
                local Success = exports[Config.CoreName]:AddItem(ItemInfo.Item, {
                    name = ItemInfo.Item,
                    label = ItemInfo.Label,
                    weight = ItemWeight,
                    type = 'item',
                    image = tostring("pug-"..ItemInfo.Item..".png"),
                    unique = ItemInfo.Unique,
                    useable = true,
                    shouldClose = true,
                    combinable = false,
                    description = ItemInfo.Description
                })
                Wait(1000)
                if Success then
                    if ItemInfo.Type == "neither" then
                    else
                        FWork.Functions.CreateUseableItem(ItemInfo.Item, function(source, item)
                            local src = source
                            TriggerClientEvent("Pug:client:ConsumeItem", src, ItemInfo)
                        end)
                    end
                    local Upgrades = {}
                    Upgrades[#Upgrades+1] = ItemInfo
                    local result = MySQL.query.await('SELECT * FROM pug_businesses', {})
                    if result[1] ~= nil then
                        for k, v in pairs(result) do
                            local ThisJob = result[k]["job"]
                            if ThisJob == ItemInfo.Job then
                                for u, i in pairs(json.decode(result[k]["createditems"])) do
                                    Upgrades[#Upgrades+1] = i
                                end
                            end
                        end
                    end
                    MySQL.update('UPDATE pug_businesses SET createditems = ? WHERE job = ?', { json.encode( Upgrades ), ItemInfo.Job })
                    -- Give the player the item
                    if Framework == "QBCore" then
                        RefreshFrameWrok()
                    end
                    local Player = Config.FrameworkFunctions.GetPlayer(src)
                    if Player ~= nil then
                        Player.AddItem(ItemInfo.Item, 1)
                        if Framework == "QBCore" then
                            TriggerClientEvent('inventory:client:ItemBox', src, FWork.Shared.Items[ItemInfo.Item], "add", 1)
                        end
                    end
                else
                    local Player = Config.FrameworkFunctions.GetPlayer(src)
                    if Player ~= nil then
                        Player.AddItem(ItemInfo.Item, 1)
                        if Framework == "QBCore" then
                            TriggerClientEvent('inventory:client:ItemBox', src, FWork.Shared.Items[ItemInfo.Item], "add", 1)
                        end
                    end
                end
            else
                TriggerClientEvent("Pug:client:ShowBusinessNotify", src, "[^1ERROR^7] ^3".. DownloadDirectory.. " ^7Directory incorrect. Please adjust the ^4Config.inventoryImagesDirectoryPath ^7in your config.", "error")
                print("[^1ERROR^7] ^3".. DownloadDirectory.. " ^7Directory incorrect. Please adjust the ^4Config.inventoryImagesDirectoryPath ^7in your config.")
            end
        else
            print("Invalid image link")
        end
    end, "GET", "", {})
end)

CreateThread(function()
    if Framework == "QBCore" then
        local result = MySQL.query.await('SELECT * FROM pug_businesses', {})
        if result[1] ~= nil then
            for _, v in pairs(result) do
                local DecodedFeatureData = json.decode(v["createditems"])
                for _, j in pairs(DecodedFeatureData) do
                    exports[Config.CoreName]:AddItem(j.Item, {
                        name = j.Item,
                        label = j.Label,
                        weight = 1000,
                        type = 'item',
                        image = tostring("pug-"..j.Item..".png"),
                        unique = j.Unique,
                        useable = true,
                        shouldClose = true,
                        combinable = false,
                        description = j.Description
                    })
                    if j.Type == "neither" then
                    else
                        FWork.Functions.CreateUseableItem(j.Item, function(source, item)
                            local src = source
                            TriggerClientEvent("Pug:client:ConsumeItem", src, j)
                        end)
                    end
                end
            end
        end
        RefreshFrameWrok()
    end
end)
RegisterNetEvent("Pug:server:RemoveCustomBusinessitem", function(Data)
    local result = MySQL.query.await('SELECT * FROM pug_businesses', {})
    if result[1] ~= nil then
        local Upgrades = {}
        for k, v in pairs(result) do
            local ThisJob = result[k]["job"]
            if ThisJob == Data.Job then
                local DecodedFeatureData = json.decode(v["createditems"])
                for _, j in pairs(DecodedFeatureData) do
                    if j.Item == Data.Item then
                        local DownloadDirectory = Config.inventoryImagesDirectoryPath
                        local filePath = DownloadDirectory .. "pug-"..Data.Item..".png"
                        os.remove(filePath)

                        for _, v in pairs(FWork.Functions.GetPlayers()) do
                            local Player = FWork.Functions.GetPlayer(v)
                            if Player ~= nil then
                                local ItemAmount
                                if Config.InventoryType == "ox_inventory" then
                                    local ox_inventory = exports.ox_inventory
                                    ItemAmount = ox_inventory:GetItem(v, Data.Item, false, true)
                                else
                                    local item1 = GetItemByName(v, Data.Item)
                                    if item1 ~= nil then 
                                        ItemAmount = item1.amount
                                    end
                                end
                                if ItemAmount then
                                    Player.Functions.RemoveItem(Data.Item, ItemAmount)
                                end
                            end
                        end
                        Wait(1000)
                        exports[Config.CoreName]:RemoveItem(Data.Item)
                    else
                        Upgrades[#Upgrades+1] = j
                    end
                end
            end
        end
        MySQL.update('UPDATE pug_businesses SET createditems = ? WHERE job = ?', { json.encode( Upgrades ), Data.Job })
    end
end)
------------------------------

---------- [Callbacks] ----------
Config.FrameworkFunctions.CreateCallback('Pug:serverCB:GetBusinessData', function(source, cb)
	local result = MySQL.query.await('SELECT * FROM pug_businesses', {})
	if result[1] ~= nil then
		cb(result)
	else
		cb(false)
	end
end)
Config.FrameworkFunctions.CreateCallback('Pug:serverCB:GetNearbyCusomers', function(source, cb, PlyCoords)
    local src = source
    local ClosestPlayerData = {}
    for k, v in pairs(Config.FrameworkFunctions.GetPlayers()) do
        local Distance = #(GetEntityCoords(GetPlayerPed(v)) - PlyCoords)
        if Distance < 15.0 then
            local Player = Config.FrameworkFunctions.GetPlayer(v)
            if Player then
                if Config.Input == "ox_lib" then
                    ClosestPlayerData[#ClosestPlayerData+1] = { value = tonumber(v), label = Config.FrameworkFunctions.GetPlayer(v).PlayerData.charinfo.firstname.." | ID: ("..v..")"  }
                else
                    ClosestPlayerData[#ClosestPlayerData+1] = { value = tonumber(v), text = Config.FrameworkFunctions.GetPlayer(v).PlayerData.charinfo.firstname.." | ID: ("..v..")"  }
                end
            end
        end
    end
	cb(ClosestPlayerData) 
end)
------------------------------

---------- [Commands] ----------
if Framework == "QBCore" then
	FWork.Commands.Add(Config.BusinessMenuCommand, "Create business menu", {}, false, function(source, args)
		local src = source
		local result = MySQL.query.await('SELECT * FROM pug_businesses', {})
		if result[1] ~= nil then
			TriggerClientEvent("Pug:client:OpenBusinessCreatorUI",src, result)
		else
			TriggerClientEvent("Pug:client:OpenBusinessCreatorUI",src, false)
		end
	end,"admin")
    FWork.Commands.Add(Config.ViewAllCreatedItemsCommand, "View or remove and created item", {}, false, function(source, args)
		local src = source
		local result = MySQL.query.await('SELECT * FROM pug_businesses', {})
		if result[1] ~= nil then
			TriggerClientEvent("Pug:client:ViewCreatedItemsMenu",src, result)
		end
	end,"admin")
else
	FWork.RegisterCommand(Config.BusinessMenuCommand, 'admin', function(xPlayer, args)
		local src = xPlayer.source
		local result = MySQL.query.await('SELECT * FROM pug_businesses', {})
		if result[1] ~= nil then
			TriggerClientEvent("Pug:client:OpenBusinessCreatorUI",src, result)
		else
			TriggerClientEvent("Pug:client:OpenBusinessCreatorUI",src, false)
		end
	end, true, {help = 'Create business menu', validate = true, arguments = {} })
    FWork.RegisterCommand(Config.ViewAllCreatedItemsCommand, 'admin', function(xPlayer, args)
		local src = xPlayer.source
		local result = MySQL.query.await('SELECT * FROM pug_businesses', {})
		if result[1] ~= nil then
			TriggerClientEvent("Pug:client:ViewCreatedItemsMenu",src, result)
		end
	end, true, {help = 'View or remove and created item', validate = true, arguments = {} })
end
------------------------------

--// FRAMEWORK STUFF //--
if Framework == "ESX" then
    Config.FrameworkFunctions.CreateCallback('Pug:serverESX:GetItemESXBusinessCreator', function(source, cb, item, amount)
        local retval = false
        local Player = FWork.GetPlayerFromId(source)
        local PlayerItem = Player.getInventoryItem(item)
        local Cost = amount or 1
        if PlayerItem then
            if PlayerItem.count >= Cost then
                retval = true
            end
        end
        cb(retval)
    end)
elseif Framework == "QBCore" then
    local function GetFirstSlotByItem(items, itemName)
        if not items then return nil end
        for slot, item in pairs(items) do
            if item.name:lower() == itemName:lower() then
                return tonumber(slot)
            end
        end
        return nil
    end
    function GetItemByName(source, item)
        local Player = Config.FrameworkFunctions.GetPlayer(source)
        item = tostring(item):lower()
        local slot = GetFirstSlotByItem(Player.PlayerData.items, item)
        return Player.PlayerData.items[slot]
    end
    Config.FrameworkFunctions.CreateCallback('Pug:serverESX:GetItemQBCoreBusinessCreator', function(source, cb, items, amount)
        local src = source
        if Config.InventoryType == "ox_inventory" then
            local ox_inventory = exports.ox_inventory
            if ox_inventory:GetItem(src, items, false, true) >= amount then
                cb(true)
            else
                cb(false)
            end
        else
            local retval = false
            local isTable = type(items) == 'table'
            local isArray = isTable and table.type(items) == 'array' or false
            local totalItems = #items
            local count = 0
            local kvIndex = 2
            if amount == 'hidden' then
                amount = 1
            end
            if isTable and not isArray then
                totalItems = 0
                for _ in pairs(items) do totalItems += 1 end
                kvIndex = 1
            end
            if isTable then
                for k, v in pairs(items) do
                    local itemKV = {k, v}
                    local item = GetItemByName(src, itemKV[kvIndex])
                    if item and ((amount and item.amount >= amount) or (not isArray and item.amount >= v) or (not amount and isArray)) then
                        count += 1
                    end
                end
                if count == totalItems then
                    retval = true
                end
            else 
                local item = GetItemByName(src, items)
                if item and (not amount or (item and amount and item.amount >= amount)) then
                    retval = true
                end
            end
            cb(retval)
        end
    end)
end

AddEventHandler('onResourceStart', function(resourceName)
    if resourceName == GetCurrentResourceName() then
        CreateThread(function()
            local result = MySQL.query.await('SELECT * FROM pug_businesses', {})
            if result[1] ~= nil then
                for k, v in pairs(result) do
                    local ThisJob = result[k]["job"]
                    for u, i in pairs(json.decode(result[k]["trashcans"])) do
                        local TargetName = ThisJob..u.."trashcans"
                        if Config.InventoryType == "ox_inventory" and Framework == "ESX" then
                            MySQL.query('DELETE FROM ox_inventory WHERE name="'..tostring(TargetName)..'"')
                        else
                            MySQL.query('DELETE FROM stashitems WHERE stash="'..tostring(TargetName)..'"')
                        end
                    end
                end
            end
        end)
    end
end)
RegisterNetEvent('Pug:Server:SetUpdateMetaDataBusiness', function(meta, data)
    local src = source
    local Player = FWork.Functions.GetPlayer(src)
    if not Player then return end
    if meta == 'hunger' or meta == 'thirst' then
        if data > 100 then
            data = 100
        end
    end
    Player.Functions.SetMetaData(meta, data)
    TriggerClientEvent('hud:client:UpdateNeeds', src, Player.PlayerData.metadata['hunger'], Player.PlayerData.metadata['thirst'])
end)
------------------------------

---------- [OX_INVENTORY SHOP SUPPORT] ----------
local ShopsCreated = {}
RegisterNetEvent("Pug:server:BusinessOxShopOpen", function(Shop)
    if not ShopsCreated[Shop.label] then
        ShopsCreated[Shop.label] = true
        exports.ox_inventory:RegisterShop(Shop.label,{ 
            name = Shop.label,
            inventory = Shop.items
        })
    end
end)
------------------------------

---------- [OX_INVENTORY STASH SUPPORT] ----------
local StashCreated = {}
RegisterNetEvent("Pug:server:BusinessOxStashOpen", function(StashName, Slots, Space)
    if not StashCreated[StashName] then
        StashCreated[StashName] = true
        exports.ox_inventory:RegisterStash(
            StashName, 
            StashName, 
            Slots, 
            Space
        )
    end
end)
------------------------------

---------- [OX_INVENTORY TRASH CAN SUPPORT] ----------
RegisterNetEvent("Pug:server:BusinessOxTrashCanOpen", function(StashName, Slots, Space)
    local src = source
    local mystash = exports.ox_inventory:CreateTemporaryStash({
        label = StashName,
        slots = tonumber(Slots),
        maxWeight = tonumber(Space),
    })
    TriggerClientEvent('ox_inventory:openInventory', src, 'stash', mystash)
end)
------------------------------