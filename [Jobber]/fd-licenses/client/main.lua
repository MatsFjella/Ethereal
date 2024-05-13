local QBCore = exports[Config.Core]:GetCoreObject()

PlayerJob = {}
PlayerGang = {}
local onDuty = false
RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function() QBCore.Functions.GetPlayerData(function(PlayerData) PlayerJob = PlayerData.job PlayerGang = PlayerData.gang end) end)
RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo) PlayerJob = JobInfo onDuty = PlayerJob.onduty end)
RegisterNetEvent('QBCore:Client:SetDuty', function(duty) onDuty = duty end)
RegisterNetEvent('QBCore:Client:OnGangUpdate', function(GangInfo) PlayerGang = GangInfo end)
-- target  & blips
CreateThread(function() 
    local blip = nil
    blip = AddBlipForCoord(Config.PrintLocation.coords)
    SetBlipSprite(blip, 90)
    SetBlipDisplay(blip, 4)
    SetBlipColour(blip, 43)
    SetBlipScale(blip, 0.6)
    SetBlipAsShortRange(blip, true)
    SetBlipScale(blip, 0.6)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName("Flyskole")
    EndTextCommandSetBlipName(blip)

    exports[Config.Target]:AddBoxZone('PrintLocation', Config.PrintLocation.coords, 1.0, 2.5, {
        name='PrintLocation', 
        heading = 120.86, 
        debugPoly=Config.Debug, 
        minZ=Config.PrintLocation.coords.z-1, 
        maxZ=Config.PrintLocation.coords.z+1, 
    },{ 
        options = {
            {  
                type = 'client',
                event = "fd-licenses:cl:printLicense", 
                icon = "fa-solid fa-id-card", 
                label = Config.PrintLocation.label,
                job = Config.JobName
            },
        },
        distance = 2.0,
    })
end)

--- Events

RegisterNetEvent("fd-licenses:cl:printLicense", function()
	local input = {}
    local p = promise.new() QBCore.Functions.TriggerCallback('fd-licenses:sv:getplayers', function(cb) p:resolve(cb) end)
    local onlineList = Citizen.Await(p)
    local nearbyList = {}
    for _, v in pairs(QBCore.Functions.GetPlayersFromCoords(GetEntityCoords(PlayerPedId()), 15)) do
        local dist = #(GetEntityCoords(GetPlayerPed(v)) - GetEntityCoords(PlayerPedId()))
        for i = 1, #onlineList do
            if onlineList[i].value == GetPlayerServerId(v) then
                if v or Config.Debug then
                    nearbyList[#nearbyList+1] = { value = onlineList[i].value, text = onlineList[i].text..' ('..math.floor(dist+0.05)..'m)' }
                end
            end
        end
    end
    --If list is empty(no one nearby) show error and stop
    if not nearbyList[1] then triggerNotify(nil, "Ingen i nærheten å printe lisens for", "error") return end

    input[#input+1] = { text = "Select Citizen", name = "citizen", type = "select", options = nearbyList }

	input[#input+1] = { type = 'radio', name = 'licensetype', text = "Lisenstype", options = { { value = "airplane", text = 'Fly' }, { value = "helicopter", text = 'Helikopter' }, { value = "trainee", text = 'Opplæring' } } }
	--Grab Player Job name or Gang Name if needed
	local label = PlayerJob.label
	local gang = false
	local dialog = exports[Config.Input]:ShowInput({ header = "Print lisens", submitText = "Print", inputs = input})
	if dialog then
		if not dialog.citizen or not dialog.licensetype then return end
		TriggerServerEvent('fd-licenses:sv:printLicense', dialog.citizen, dialog.licensetype)
	end
end)

RegisterNUICallback("exit", function(data)
    if data.type == "close" then
        SetNuiFocus(false, false)
    end
end)

RegisterNetEvent('fd-licenses:open', function(item)
    local item = item
    if item.info.type then 
        SetNuiFocus(true, true)
        SendNUIMessage({
            type = item.info.type,
            name  = item.info.name,
            sex = item.info.sex,
            dob = item.info.dob,
            nationality = item.info.nationality,
        })
    else
        SetNuiFocus(false, false)
        SendNUIMessage({
            type = "false",
        })
    end
end)


if GetVehicleClass(vehicle) == 16 then -- Planes
    if not PlayerData.metadata["licences"]["airplane"] then 
        SetVehicleEngineOn(vehicle, false, false, true)
    else
        QBCore.Functions.Notify("Du kan ikke operere ett fly...", "error")
    end
elseif GetVehicleClass(vehicle) == 15 then -- Helicopters
    if not PlayerData.metadata["licences"]["helicopter"] then 
        SetVehicleEngineOn(vehicle, false, false, true)
    else
        QBCore.Functions.Notify("Du kan ikke operere ett helikopter...", "error")
    end
elseif GetVehicleClass(vehicle) == 15 or GetVehicleClass(vehicle) == 16 then -- Trainee
    if not PlayerData.metadata["licences"]["trainee"] then 
        SetVehicleEngineOn(vehicle, false, false, true)
    else
        QBCore.Functions.Notify("Du kan ikke operere dette...", "error")
    end
else
    SetVehicleEngineOn(vehicle, false, false, true)
end


-- Vehicle Anti License --
CreateThread(function()
    while true do
        local veh
        local model
        if IsPedInAnyVehicle(PlayerPedId(), false) then
            veh = GetVehiclePedIsIn(PlayerPedId(), false)
            model = GetEntityModel(veh)
            local PlayerData = QBCore.Functions.GetPlayerData()
            if IsThisModelAHeli(model) then
                if (PlayerData.metadata["licences"]["helicopter"] ~= true) then
                    DisableControlAction(0, 59, true) -- LR
                    DisableControlAction(0, 60, true) -- UD
                    DisableControlAction(0, 61, true) -- UP
                    DisableControlAction(0, 62, true) -- Down
                    DisableControlAction(0, 63, true) -- Left
                    DisableControlAction(0, 64, true) -- Right
                    DisableControlAction(0, 65, true) -- Special
                    DisableControlAction(0, 69, true) -- Attack
                    DisableControlAction(0, 71, true) -- Accel
                    DisableControlAction(0, 72, true) -- Brake
                    DisableControlAction(0, 87, true) -- Fly Up
                    DisableControlAction(0, 88, true) -- Down
                    DisableControlAction(0, 89, true) -- Left
                    DisableControlAction(0, 90, true) -- Right
                    DisableControlAction(0, 107, true) -- LR
                    DisableControlAction(0, 108, true) -- Left
                    DisableControlAction(0, 109, true) -- Righ
                    DisableControlAction(0, 110, true) -- UD
                    DisableControlAction(0, 111, true) -- Up
                    DisableControlAction(0, 112, true) -- Down
                end
                Wait(1)
            elseif IsThisModelAPlane(model) then
                if (PlayerData.metadata["licences"]["airplane"] ~= true) then
                    DisableControlAction(0, 59, true) -- LR
                    DisableControlAction(0, 60, true) -- UD
                    DisableControlAction(0, 61, true) -- UP
                    DisableControlAction(0, 62, true) -- Down
                    DisableControlAction(0, 63, true) -- Left
                    DisableControlAction(0, 64, true) -- Right
                    DisableControlAction(0, 65, true) -- Special
                    DisableControlAction(0, 69, true) -- Attack
                    DisableControlAction(0, 71, true) -- Accel
                    DisableControlAction(0, 72, true) -- Brake
                    DisableControlAction(0, 87, true) -- Fly Up
                    DisableControlAction(0, 88, true) -- Down
                    DisableControlAction(0, 89, true) -- Left
                    DisableControlAction(0, 90, true) -- Right
                    DisableControlAction(0, 107, true) -- LR
                    DisableControlAction(0, 108, true) -- Left
                    DisableControlAction(0, 109, true) -- Righ
                    DisableControlAction(0, 110, true) -- UD
                    DisableControlAction(0, 111, true) -- Up
                    DisableControlAction(0, 112, true) -- Down
                end
                Wait(1)
            else
                Wait(5000)
            end
        else
            Wait(5000)
        end
    end
end)

AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then return end
    Wait(2000)
    PlayerData = QBCore.Functions.GetPlayerData()
    QBCore.Functions.GetPlayerData(function(PlayerData) PlayerJob = PlayerData.job PlayerGang = PlayerData.gang end) 

end)

RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
    PlayerData = {}
end)

RegisterNetEvent('QBCore:Player:SetPlayerData', function(val)
    PlayerData = val
end)

AddEventHandler('onResourceStop', function(resourceName)
    if resourceName == GetCurrentResourceName() then

    end
end)