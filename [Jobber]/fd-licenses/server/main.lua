local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent("fd-licenses:sv:printLicense", function(citizen, licensetype)
    local src = source
    local citizen = tonumber(citizen)
    local SourcePlayer = QBCore.Functions.GetPlayer(src)
    local cost = Config.Licenses[licensetype].priceToBuy
    local Player = QBCore.Functions.GetPlayer(citizen)

    if SourcePlayer.Functions.RemoveMoney('bank', cost, cost.." "..licensetype..' license print') then
        if Config.RenewedBanking == true then
            exports['Renewed-Banking']:addAccountMoney(Config.JobName, cost)
        else
            exports['qb-management']:AddMoney(Config.JobName, cost)
        end

        local licenseTable = Player.PlayerData.metadata["licences"]
        if not licenseTable[licensetype] then
            licenseTable[licensetype] = true
            Player.Functions.SetMetaData("licences", licenseTable)
        end

        local info = {
            name  = Player.PlayerData.charinfo.firstname .. " " .. Player.PlayerData.charinfo.lastname,
            sex = Player.PlayerData.charinfo.gender,
            dob = Player.PlayerData.charinfo.birthdate,
            nationality = Player.PlayerData.charinfo.nationality,
            type = licensetype,
        }
        SourcePlayer.Functions.AddItem(Config.Licenses[licensetype].item, 1, false, info)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.Licenses[licensetype].item], "add", 1)
    else
        TriggerClientEvent('QBCore:Notify', src, 'Ikke nok penger!')
    end
end)

QBCore.Functions.CreateCallback('fd-licenses:sv:getplayers', function(source, cb)
	local onlineList = {}
	for _, v in pairs(QBCore.Functions.GetPlayers()) do
		local P = QBCore.Functions.GetPlayer(v)
		onlineList[#onlineList+1] = { value = tonumber(v), text = "["..v.."] - "..P.PlayerData.charinfo.firstname..' '..P.PlayerData.charinfo.lastname  }
	end
	cb(onlineList)
end)

-- qb events
for k,v in pairs(Config.Licenses) do
    QBCore.Functions.CreateUseableItem(k, function(source, item)
        local src = source
        local Player = QBCore.Functions.GetPlayer(src)
        if Player.Functions.GetItemByName(item.name) then
            TriggerClientEvent("fd-licenses:open", src, item)
        end
    end)
end

QBCore.Commands.Add('licenses', 'Check licenses', {}, false, function(source, args)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local licenseTable = Player.PlayerData.metadata["licences"]
    for k,v in pairs(licenseTable) do
        TriggerClientEvent('QBCore:Notify', src, k .. ' ' .. tostring(v))
    end
end)

QBCore.Commands.Add('revokeairlicense', 'Fjern lisens', {{name = "id", help ="ID på person"}, {name = "type", help = "airplane, helicopter, trainee"}}, false, function(source, args)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local SearchedPlayer = QBCore.Functions.GetPlayer(tonumber(args[1]))
    if SearchedPlayer then 
        if Player.PlayerData.job.name == "police" or Player.PlayerData.job.name == Config.JobName then 
            if args[2] == "airplane" or args[2] == "helicopter" or args[2] == "trainee" then
                local licenseTable = SearchedPlayer.PlayerData.metadata["licences"]
                licenseTable[args[2]] = false
                SearchedPlayer.Functions.SetMetaData("licences", licenseTable)
                TriggerClientEvent('QBCore:Notify', src, 'Fjernet ' .. args[2] .. ' lisens fra   ' .. SearchedPlayer.PlayerData.charinfo.firstname..' '..SearchedPlayer.PlayerData.charinfo.lastname)
            else
                TriggerClientEvent('QBCore:Notify', src, 'Ugyldig lisens type!', 'error')
            end
        else
            TriggerClientEvent('QBCore:Notify', src, 'Du kan ikke gjøre dette!', 'error')
        end
    end
end)
