local QBCore = exports['qb-core']:GetCoreObject()
local timeOut = false

-- Callback

QBCore.Functions.CreateCallback('lumio-jewelery:server:getCops', function(source, cb)
	local amount = 0
    for k, v in pairs(QBCore.Functions.GetQBPlayers()) do
        if v.PlayerData.job.name == "police" and v.PlayerData.job.onduty then
            amount = amount + 1
        end
    end
    cb(amount)
end)

RegisterNetEvent('lumio-jewelery:server:openDoor', function(state)
    local jewelerydoor = exports.ox_doorlock:getDoorFromName('juvel1337')
    TriggerEvent('ox_doorlock:setState', jewelerydoor.id, state)
end)

RegisterNetEvent('lumio-jewelery:server:itemaction', function(item, amount, action)
    local Player = QBCore.Functions.GetPlayer(source)

    if action == "add" then
        Player.Functions.AddItem(item, amount)
    else
        Player.Functions.RemoveItem(item, amount)
    end
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[item], action, amount)
end)

-- Events
RegisterNetEvent('lumio-jewelery:server:thermiteEffect', function()
    TriggerClientEvent('lumio-jewelery:client:thermiteEffect', -1)
end)

RegisterNetEvent('lumio-jewelery:server:setVitrineState', function(stateType, state, k)
    Config.Locations[k][stateType] = state
    TriggerClientEvent('lumio-jewelery:client:setVitrineState', -1, stateType, state, k)
end)

RegisterNetEvent('lumio-jewelery:server:vitrineReward', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    local cardChance = math.random(1,10)
    local cardAmount = math.random(1,1)

    local otherchance = math.random(1, 4)
    local odd = math.random(1, 4)

    if cardChance == 10 then
        Player.Functions.AddItem('robbery_keycard_02', cardAmount)
        TriggerClientEvent('inventory:client:ItemBox', src, 'robbery_keycard_02', 'add', cardAmount)
    end

    if otherchance == odd then
        local item = math.random(1, #Config.VitrineRewards)
        local amount = math.random(Config.VitrineRewards[item]["amount"]["min"], Config.VitrineRewards[item]["amount"]["max"])
        if Player.Functions.AddItem(Config.VitrineRewards[item]["item"], amount) then
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.VitrineRewards[item]["item"]], 'add')
        else
            TriggerClientEvent('QBCore:Notify', src, 'Lommene dine er fulle', 'error')
        end
    else
        local amount = math.random(1, 3)
        if Player.Functions.AddItem("10kgoldchain", amount) then
            TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["10kgoldchain"], 'add')
        else
            TriggerClientEvent('QBCore:Notify', src, 'Lommene dine er fulle..', 'error')
        end
    end
end)

RegisterNetEvent('lumio-jewelery:server:setTimeout', function()
    if not timeOut then
        timeOut = true
        TriggerEvent('qb-scoreboard:server:SetActivityBusy', "jewellery", true)
        CreateThread(function()
            Wait(Config.Timeout)

            for k, v in pairs(Config.Locations) do
                Config.Locations[k]["isOpened"] = false
                TriggerClientEvent('lumio-jewelery:client:setVitrineState', -1, 'isOpened', false, k)
                TriggerClientEvent('lumio-jewelery:client:setAlertState', -1, false)
                TriggerEvent('qb-scoreboard:server:SetActivityBusy', "jewellery", false)
                TriggerClientEvent('lumio-jewelery:client:resetGuard', -1)
            end
            timeOut = false
        end)
    end
end)

local playersInside = {}

RegisterNetEvent('lumio-jewelery:server:addPlayer', function(cid, playerPedId)
    playersInside[#playersInside + 1] = {
        cid = cid,
        playerPedId = playerPedId
    }
end)

RegisterNetEvent('lumio-jewelery:server:removePlayer', function(cid)
    for k,v in pairs(playersInside) do
        if v.cid == cid then
            playersInside[k] = nil
        end
    end
end)

QBCore.Functions.CreateCallback('lumio-jewelery:server:getPlayersInZone', function(source, cb)
    cb(playersInside)
end)