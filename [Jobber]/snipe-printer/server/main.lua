QBCore = nil
ESX = nil
QS = nil

local webhook = ""

CreateThread(function()
    if Config.Core == "ESX" and Config.Inventory == "qs" then
        TriggerEvent('qs-core:getSharedObject', function(library) QS = library end) 
    end
end)

if Config.Core == "QBCore" then
    TriggerEvent(Config.Core..':GetObject', function(obj) QBCore = obj end)
    if QBCore == nil then
        QBCore = exports[Config.CoreFolderName]:GetCoreObject()
    end
elseif Config.Core == "ESX" then
    -- TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end) 
    if ESX == nil then
        ESX = exports[Config.CoreFolderName]:getSharedObject()
    end
end

CreateThread(function()
    if Config.Inventory == "linden" then
        ESX.RegisterUsableItem('printerdocument', function(source, item)
            TriggerClientEvent("inventory:useItem", source, item)
        end)
    elseif Config.Inventory == "qs" then
        QS.RegisterUsableItem("printerdocument", function(source, item)
            TriggerClientEvent("snipe-printer:client:usePrinterDoc", source, item)
        end)
    elseif Config.Inventory == "qb" then
        QBCore.Functions.CreateUseableItem("printerdocument", function(source, item)
            TriggerClientEvent("snipe-printer:client:usePrinterDoc", source, item)
        end)
    elseif Config.Inventory == "qsv2" then
        exports["qs-inventory"]:CreateUsableItem("printerdocument", function(source, item)
            TriggerClientEvent("snipe-printer:client:usePrinterDoc", source, item)
        end)        -- Do nothing
    elseif Config.Inventory ~= "ox" then
        print("You have not set a inventory system in the config. Choose the right one!")
    end
end)

local function GetPlayerFromId(source)
    if Config.Core == "QBCore" then
        local Player = QBCore.Functions.GetPlayer(source)
        return Player
    elseif Config.Core == "ESX" then
        local player = ESX.GetPlayerFromId(source)
        return player
    end
end

-- ██████  ███████ ███    ███  ██████  ██    ██ ███████     ██ ████████ ███████ ███    ███ 
-- ██   ██ ██      ████  ████ ██    ██ ██    ██ ██          ██    ██    ██      ████  ████ 
-- ██████  █████   ██ ████ ██ ██    ██ ██    ██ █████       ██    ██    █████   ██ ████ ██ 
-- ██   ██ ██      ██  ██  ██ ██    ██  ██  ██  ██          ██    ██    ██      ██  ██  ██ 
-- ██   ██ ███████ ██      ██  ██████    ████   ███████     ██    ██    ███████ ██      ██
function RemoveItem(source, item, amount)
    if Config.Core == "QBCore" and Config.Inventory ~= "ox" then
        local Player = QBCore.Functions.GetPlayer(source)
        if Player.Functions.RemoveItem(item, amount) then
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[item], "remove")
            return true
        else
            return false
        end
    elseif Config.Core == "ESX" and Config.Inventory ~= "ox" then
        local xPlayer = ESX.GetPlayerFromId(source)
        if xPlayer.getInventoryItem(item).count >= amount then
            xPlayer.removeInventoryItem(item, amount)
            return true
        else
            return false
        end
    elseif Config.Inventory == "ox" then
        if exports.ox_inventory:RemoveItem(source, item, amount) then 
            return true
        else
            return false
        end
    end
end

function SendLogs(source, type, message)
    local colorcode = 5763719
    if source == 0 then
        description = "**"..message.."**"
    else
        description = "**"..GetPlayerName(source).."** ("..source..")\n"..message
    end
    local embedData = {
        {
            ["title"] = "Printer Logs" ,
            ["color"] = colorcode,
            ["footer"] = {
                ["text"] = os.date("%c"),
            },
            ["description"] = description,
            ["author"] = {
            ["name"] = 'Snipe Printer Logs',
            },
        }
    }
    PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({ username = "Snipe Logs",embeds = embedData}), { ['Content-Type'] = 'application/json' })
end


RegisterServerEvent('snipe-printer:server:printDocument')
AddEventHandler('snipe-printer:server:printDocument', function(data, id)
    local source = source
    local Player = GetPlayerFromId(source)
    local info = {}
    if tonumber(data.amount) < 1 then
        data.amount = 1
    end
    local amount = tonumber(data.amount) or 1
    info.documentname = data.name
    info.url = data.url
    info.width = data.width
    info.height = data.height
    if Player ~= nil then
        SendLogs(source, "print", "Printed Document with url "..data.url.." and name "..data.name.." and amount "..data.amount)
        if Config.Inventory == "ox" then
            exports.ox_inventory:AddItem(source, 'printerdocument', amount, info, false)
        elseif Config.Inventory == "linden" then
            if amount > 1 then
                for i = 1, amount, 1 do
                    exports["linden_inventory"]:addInventoryItem(Player, "printerdocument", 1, info, false)
                end
            else
                exports["linden_inventory"]:addInventoryItem(Player, "printerdocument", amount, info, false)

            end
        elseif Config.Inventory == "qs" then
            info.showAllDescriptions = true
            if amount > 1 then
                for i = 1, amount, 1 do
                    TriggerEvent('qs-inventory:addItem', source, 'printerdocument', 1, false, info)
                end
            else
                TriggerEvent('qs-inventory:addItem', source, 'printerdocument', amount, false, info)
            end
            
        elseif Config.Inventory == "qsv2" then
            info.showAllDescriptions = true
            if amount > 1 then
                for i = 1, amount, 1 do
                    exports["qs-inventory"]:AddItem(source, 'printerdocument', 1, false, info)
                end
            else
                exports["qs-inventory"]:AddItem(source, 'printerdocument', amount, false, info)
            end
        elseif Config.Inventory == "qb" then
            if amount > 1 then
                for i = 1, amount, 1 do
                    Player.Functions.AddItem("printerdocument", 1, false, info)
                end
            else
                Player.Functions.AddItem("printerdocument", amount, false, info)
            end
            TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["printerdocument"], "add")
        else
            print("No inventory found")
        end
        if id then
            Config.Printer[id].count = Config.Printer[id].count - amount
            TriggerClientEvent('snipe-printer:client:SyncPrinterStatus', -1, Config.Printer)
        end
    end
end)


lib.callback.register('snipe-printer:checkItem', function()
	local xPlayer = GetPlayerFromId(source)
    local count = 0
    if Config.Inventory == "linden" or Config.Inventory == "qs" or Config.Inventory == "qsv2" then
        count = xPlayer.getInventoryItem("papers").count
    elseif Config.Inventory == "ox" then
        local items = exports["ox_inventory"]:Search(source, 'count', {'papers'})
        count = items
    elseif Config.Inventory == "qb" then
        local items = xPlayer.Functions.GetItemByName("papers")
        if items ~= nil then
            count = items.amount
        else
            count = 0
        end
    else
        print("No inventory found")
    end
    if count >= 1 then
        return true
    else
        return false
    end
end)


RegisterServerEvent('snipe-printer:server:refillPrinter')
AddEventHandler('snipe-printer:server:refillPrinter', function(id)
    local source = source

    if RemoveItem(source, "papers", 1) then
        Config.Printer[id].count = Config.Printer[id].count + 20
        TriggerClientEvent('snipe-printer:client:SyncPrinterStatus', -1, Config.Printer)
    else
        ShowNotification(source, "You don't have enough paper!", "error")
    end
end)

RegisterServerEvent('snipe-printer:server:GetPrinterData')
AddEventHandler('snipe-printer:server:GetPrinterData', function()
    local source = source
    TriggerClientEvent('snipe-printer:client:SyncPrinterStatus', source, Config.Printer)
end)

function ShowNotification(src, msg, type)
    if Config.Core == "QBCore" then
        TriggerClientEvent('QBCore:Notify', src, msg, type)
    elseif Config.Core == "ESX" then
        TriggerClientEvent('esx:showNotification', src, msg)
    end
end


