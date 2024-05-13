local QBCore = exports['qb-core']:GetCoreObject()


QBCore.Functions.CreateUseableItem("lindringskrem", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player.Functions.GetItemByName(item.name) then return end
    UseDoctorItem(Player, source, item.name, "Krem lindrer smerten din")
end)

QBCore.Functions.CreateUseableItem("glidemiddel", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player.Functions.GetItemByName(item.name) then return end
    UseDoctorItem(Player, source, item.name, "Glidemiddelet gjør deg mer glidyktig")
end)

QBCore.Functions.CreateUseableItem("hostesaft_med_kosylan", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player.Functions.GetItemByName(item.name) then return end
    Player.Functions.RemoveItem(item.name, 1)
    SendNotification(source, "Medisin brukt", "Halsen din føles bedre", 5000, "info")
    PlayEmote(source, 3000, "cough")
end)

QBCore.Functions.CreateUseableItem("blue_pill", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player.Functions.GetItemByName(item.name) then return end
    Player.Functions.RemoveItem(item.name, 1)
    SendNotification(source, "Medisin brukt", "Du kjenner en utrolig voldsom ereksjon vokser", 5000, "info")
    TriggerClientEvent("etherealRP:bluePillEffects", source)
end)

QBCore.Functions.CreateUseableItem("white_pill", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player.Functions.GetItemByName(item.name) then return end

    local closestSrc, closestDistance = GetClosestPlayer(source)
    if not closestSrc or not closestDistance then SendNotification(source, "Medisin ikke brukt", "Ingen personer i nærheten", 3000, "error") return end -- No player nearby
    if not (closestDistance <= 3.0) then SendNotification(source, "Medisin ikke brukt", "Ingen personer i nærheten", 3000, "error") return end -- No player nearby
    Player.Functions.RemoveItem(item.name, 1)
    
    local closestPed = GetPlayerPed(closestSrc)
    TriggerClientEvent("etherealRP:sedatePlayer", closestSrc, true)
    SendNotification(closestSrc, "Medisin brukt", "Du sovner av", 5000, "info")
    Citizen.SetTimeout(300 * 1000, function()
        TriggerClientEvent("etherealRP:sedatePlayer",closestSrc, false)
    end)
end)


function UseDoctorItem(Player, source, itemName, successMsg)
    local closestSrc, closestDistance = GetClosestPlayer(source)
    if not closestSrc or not closestDistance then SendNotification(source, "Medisin ikke brukt", "Ingen personer i nærheten", 3000, "error") return end -- No player nearby
    if not (closestDistance <= 3.0) then SendNotification(source, "Medisin ikke brukt", "Ingen personer i nærheten", 3000, "error") return end -- No player nearby
    Player.Functions.RemoveItem(itemName, 1)
    SendNotification(closestSrc, "Medisin brukt", successMsg, 5000, "info")
    PlayEmote(source, 5000, "mechanic")
end

function PlayEmote(source, time, anim)
    TriggerClientEvent('animations:client:EmoteCommandStart', source, {anim})
    if time then
        Citizen.SetTimeout(time, function()
            TriggerClientEvent('animations:client:EmoteCommandStart', source, {"c"})
        end)
    end
end

function SendNotification(source, title, message, time, msgType)
    print(source, title, message, time, msgType)
    TriggerClientEvent('okokNotify:Alert', source, title, message, time, msgType, true)
end

function GetClosestPlayer(source)
    local playerPed = GetPlayerPed(source)
    local playerCoords = GetEntityCoords(playerPed)
    local Players = QBCore.Functions.GetQBPlayers()
    
    local closestSrc, closestDistance = nil, nil
    for otherSource, playerData in pairs(Players) do
        if source ~= otherSource then
            local otherPed = GetPlayerPed(otherSource)
            local otherPedCoords = GetEntityCoords(otherPed)
            local distance = #(playerCoords - otherPedCoords)
            if not closestDistance or (closestDistance and distance < closestDistance) then
                closestDistance = distance
                closestSrc = otherSource
            end
        end

    end
    return closestSrc, closestDistance
end