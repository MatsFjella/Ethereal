local QBCore = exports['qb-core']:GetCoreObject()
local firstAlarm = false
local smashing = false
local guard = nil
local JeweleryZone = {}

AddEventHandler('onResourceStart', function(resourceName)
	if GetCurrentResourceName() == resourceName then
		TriggerServerEvent('lumio-jewelery:server:openDoor', 1)
	end
end)

CreateThread(function()
    local blip = AddBlipForCoord(Config.JewelleryLocation["coords"]["x"], Config.JewelleryLocation["coords"]["y"], Config.JewelleryLocation["coords"]["z"])
    SetBlipSprite(blip, 617)
    SetBlipDisplay(blip, 4)
    SetBlipScale(blip, 0.7)
    SetBlipAsShortRange(blip, true)
    SetBlipColour(blip, 3)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName("Juvelen")
    EndTextCommandSetBlipName(blip)

    for k, v in pairs(Config.Locations) do
        exports['qb-target']:AddBoxZone("JeweleryCase"..k, vector3(v.coords.x, v.coords.y, v.coords.z-1), 0.6, 1.2, {
            name = "JeweleryCase"..k,
            heading = v.coords.w,
            debugPoly = false,
            minZ = 37.65,
            maxZ = 38.35,
            }, {
                options = { 
                {
                    action = function()
                        smashVitrine(k)
                    end,
                    icon = 'fas fa-gem',
                    label = 'Knus glasset',
                    canInteract = function()
                        if v["isOpened"] or v["isBusy"] then 
                            return false
                        end
                        return true
                    end,
                }
            },
            distance = 1.5,
        })
    end
    exports['qb-target']:AddBoxZone("thermite", vector3(-595.94, -283.74, 50.32), 0.4, 0.8, {
        name = "thermite",
        heading = 302.79,
        debugPoly = false,
        minZ = 50.25,
        maxZ = 51.35,
        }, {
            options = { 
            {
                type = "client",
                event = "lumio-jewelery:client:Thermite",
                icon = 'fas fa-gem',
                label = 'Smelt panelet for å åpne den'
            }
        },
        
        distance = 1.5,
    })
end)

RegisterNetEvent('lumio-jewelery:client:Thermite', function()
    -- QBCore.Functions.TriggerCallback('QBCore.Functions.HasItem', function(result)
    local Player = PlayerId()
    TriggerServerEvent("qb-log:server:CreateLog", "juvelen", "Juvelen", "red", "**" .. GetPlayerName(Player) .. "**(CitizenID: " .. QBCore.Functions.GetPlayerData().citizenid .. " | ID: " ..GetPlayerServerId(player)..") Har startet juvelran")
        local result = QBCore.Functions.HasItem({"thermite", "lighter", "robbery_keycard_01"})
        print('result', result)
        if result then 
            if math.random(1, 100) <= 85 and not IsWearingHandshoes() then
                TriggerServerEvent("evidence:server:CreateFingerDrop", GetEntityCoords(PlayerPedId()))
            end
            QBCore.Functions.TriggerCallback('lumio-jewelery:server:getCops', function(cops)
                if cops >= Config.RequiredCops then
                    PlantThermite()
                    exports['ps-ui']:Thermite(function(success)
                       
                        if success then
                            ThermiteEffect()
                            
                        else
                            QBCore.Functions.Notify("Termitt failet..", "error")
                           
                        end
                    end, 20, 5, 3)
                else
                    QBCore.Functions.Notify("Ikke nok politi..", "error")
                    
                end
            end)
        else
            QBCore.Functions.Notify("Du mangler noe..", "error", 2500)
            
        end
    -- end, {"thermite", "lighter", "robbery_keycard_01"})
end)

RegisterNetEvent('lumio-jewelery:client:thermiteEffect', function()
    local ptfx = vector3(-596.17, -282.62, 50.32)
    RequestNamedPtfxAsset("scr_ornate_heist")
    while not HasNamedPtfxAssetLoaded("scr_ornate_heist") do Wait(50) end
    SetPtfxAssetNextCall("scr_ornate_heist")
    local effect = StartParticleFxLoopedAtCoord("scr_heist_ornate_thermal_burn", ptfx, 0.0, 0.0, 0.0, 1.0, false, false, false, false)
    Wait(27500)
    StopParticleFxLooped(effect, 0)
end)

RegisterNetEvent('lumio-jewelery:client:setVitrineState', function(stateType, state, k)
    Config.Locations[k][stateType] = state
end)

RegisterNetEvent('lumio-jewelery:client:resetGuard', function()
    if guard ~= nil then
        DeletePed(guard)
        guard = nil
    end
end)


-------------------------FUNCTIONS---------------------------------

function smashVitrine(k)
    if validWeapon() then
        local animDict = "missheist_jewel"
        local animName = "smash_case"
        local ped = PlayerPedId()
        local plyCoords = GetOffsetFromEntityInWorldCoords(ped, 0, 0.6, 0)
        local pedWeapon = GetSelectedPedWeapon(ped)
        if math.random(1, 100) <= 80 and not IsWearingHandshoes() then
            TriggerServerEvent("evidence:server:CreateFingerDrop", plyCoords)
        elseif math.random(1, 100) <= 5 and IsWearingHandshoes() then
            TriggerServerEvent("evidence:server:CreateFingerDrop", plyCoords)
            QBCore.Functions.Notify("Du har lemnet fingeravtrykk på glasset", "error")
        end
        smashing = true
        QBCore.Functions.Progressbar("smash_vitrine", "Tømmer", Config.WhitelistedWeapons[pedWeapon]["timeOut"], false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            TriggerServerEvent('lumio-jewelery:server:setVitrineState', "isOpened", true, k)
            TriggerServerEvent('lumio-jewelery:server:setVitrineState', "isBusy", false, k)
            TriggerServerEvent('lumio-jewelery:server:vitrineReward')
            TriggerServerEvent('lumio-jewelery:server:setTimeout')
            -- exports['ps-dispatch']:VangelicoRobbery(31)
            smashing = false
            TaskPlayAnim(ped, animDict, "exit", 3.0, 3.0, -1, 2, 0, 0, 0, 0)
        end, function()
            TriggerServerEvent('lumio-jewelery:server:setVitrineState', "isBusy", false, k)
            smashing = false
            TaskPlayAnim(ped, animDict, "exit", 3.0, 3.0, -1, 2, 0, 0, 0, 0)
        end)
        TriggerServerEvent('lumio-jewelery:server:setVitrineState', "isBusy", true, k)

        CreateThread(function()
            while smashing do
                loadAnimDict(animDict)
                TaskPlayAnim(ped, animDict, animName, 3.0, 3.0, -1, 2, 0, 0, 0, 0 )
                Wait(500)
                TriggerServerEvent("InteractSound_SV:PlayOnSource", "breaking_vitrine_glass", 0.25)
                loadParticle()
                StartParticleFxLoopedAtCoord("scr_jewel_cab_smash", plyCoords.x, plyCoords.y, plyCoords.z, 0.0, 0.0, 0.0, 1.0, false, false, false, false)
                Wait(2500)
            end
        end)
    else
        QBCore.Functions.Notify('Våpenet ditt er ikke sterkt nok..', 'error')
    end
end

function SpawnGuard()
    local pos = Config.GuardSpawn[math.random(#Config.GuardSpawn)]
    local model = Config.GuardPeds[math.random(#Config.GuardPeds)]

    RequestModel(model)
    while not HasModelLoaded(model) do
        Wait(0)
    end

    CreateThread(function()
        guard = CreatePed(0, model, pos.xyzw, true, false)

        SetPedCombatAttributes(guard, 0, Config.GuardPerks.canUseCover)
        SetPedCombatAttributes(guard, 5, Config.GuardPerks.canFightArmedPedsWhenNotArmed)
        SetPedCombatAttributes(guard, 46, Config.GuardPerks.alwaysFight)
    
        SetPedFleeAttributes(guard, 0, 0)
    
        GiveWeaponToPed(guard, 'weapon_pistol', 100, true, true)
        SetPedAccuracy(guard, Config.GuardPerks.accuracy)
    
        QBCore.Functions.TriggerCallback('lumio-jewelery:server:getPlayersInZone', function(result)
            if result[1] ~= nil then
                for k,v in pairs(result) do
                    TaskCombatPed(guard, v.playerPedId, 0, 16)
                end
            end
        end)
        SetPedAsNoLongerNeeded(guard)
    end)
end

function ThermiteEffect()
    TriggerServerEvent('lumio-jewelery:server:itemaction', "robbery_keycard_01", 1, "remove")
    
    exports['ps-dispatch']:VangelicoRobbery(camId)

    local ped = PlayerPedId()
    RequestAnimDict("anim@heists@ornate_bank@thermal_charge")
    while not HasAnimDictLoaded("anim@heists@ornate_bank@thermal_charge") do Wait(50) end
    Wait(1500)
    TriggerServerEvent("lumio-jewelery:server:thermiteEffect")
    Wait(500)
    TaskPlayAnim(ped, "anim@heists@ornate_bank@thermal_charge", "cover_eyes_intro", 8.0, 8.0, 1000, 36, 1, 0, 0, 0)
    TaskPlayAnim(ped, "anim@heists@ornate_bank@thermal_charge", "cover_eyes_loop", 8.0, 8.0, 3000, 49, 1, 0, 0, 0)
    Wait(25000)
    ClearPedTasks(ped)
    Wait(2000)

    TriggerServerEvent('lumio-jewelery:server:openDoor', 0)
    SpawnGuard()
end

function PlantThermite()
    local ped = PlayerPedId()
    local pos = vector4(-596.09, -283.64, 50.42, 301.38)
  
    TriggerServerEvent('lumio-jewelery:server:itemaction', "thermite", 1, "remove")

    RequestAnimDict("anim@heists@ornate_bank@thermal_charge")
    RequestModel("hei_p_m_bag_var22_arm_s")
    RequestNamedPtfxAsset("scr_ornate_heist")

    while not HasAnimDictLoaded("anim@heists@ornate_bank@thermal_charge") or not HasModelLoaded("hei_p_m_bag_var22_arm_s") or not HasNamedPtfxAssetLoaded("scr_ornate_heist") do Wait(50) end

    SetEntityHeading(ped, pos.w)
    Wait(100)

    local rotx, roty, rotz = table.unpack(vec3(GetEntityRotation(PlayerPedId())))
    local netscene = NetworkCreateSynchronisedScene(pos.x, pos.y, pos.z, rotx, roty, rotz, 2, false, false, 1065353216, 0, 1.3)
    local bag = CreateObject('hei_p_m_bag_var22_arm_s', pos.x, pos.y, pos.z,  true,  true, false)

    SetEntityCollision(bag, false, true)

    local x, y, z = table.unpack(GetEntityCoords(ped))
    local thermite = CreateObject('hei_prop_heist_thermite', x, y, z + 0.2,  true,  true, true)

    SetEntityCollision(thermite, false, true)
    AttachEntityToEntity(thermite, ped, GetPedBoneIndex(ped, 28422), 0, 0, 0, 0, 0, 200.0, true, true, false, true, 1, true)
    NetworkAddPedToSynchronisedScene(ped, netscene, "anim@heists@ornate_bank@thermal_charge", "thermal_charge", 1.5, -4.0, 1, 16, 1148846080, 0)
    NetworkAddEntityToSynchronisedScene(bag, netscene, "anim@heists@ornate_bank@thermal_charge", "bag_thermal_charge", 4.0, -8.0, 1)
    SetPedComponentVariation(ped, 5, 0, 0, 0)
    NetworkStartSynchronisedScene(netscene)

    Wait(5000)

    DetachEntity(thermite, 1, 1)
    FreezeEntityPosition(thermite, true)
    DeleteObject(bag)
    NetworkStopSynchronisedScene(netscene)

    CreateThread(function()
        Wait(15000)
        DeleteEntity(thermite)
    end)
end

function loadParticle()
	if not HasNamedPtfxAssetLoaded("scr_jewelheist") then RequestNamedPtfxAsset("scr_jewelheist") end
    while not HasNamedPtfxAssetLoaded("scr_jewelheist") do Wait(0) end
    SetPtfxAssetNextCall("scr_jewelheist")
end

function loadAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Wait(3)
    end
end

function validWeapon()
    local ped = PlayerPedId()
    local pedWeapon = GetSelectedPedWeapon(ped)

    for k, v in pairs(Config.WhitelistedWeapons) do
        if pedWeapon == k then
            return true
        end
    end
    return false
end

function IsWearingHandshoes()
    local armIndex = GetPedDrawableVariation(PlayerPedId(), 3)
    local model = GetEntityModel(PlayerPedId())
    local retval = true
    if model == 'mp_m_freemode_01' then
        if Config.MaleNoHandshoes[armIndex] ~= nil and Config.MaleNoHandshoes[armIndex] then
            retval = false
        end
    else
        if Config.FemaleNoHandshoes[armIndex] ~= nil and Config.FemaleNoHandshoes[armIndex] then
            retval = false
        end
    end
    return retval
end

------------ADD/REMOVE PLAYERS FROM TARGET LIST GUARD

CreateThread(function()
    JeweleryZone[1] = PolyZone:Create({
        vector2(-638.07, -229.39),
        vector2(-647.07, -239.67),
        vector2(-615.11, -289.83),
        vector2(-606.74, -304.47),
        vector2(-577.97, -287.92),
        vector2(-618.17, -219.17)
    }, {
        name='JeweleryZone',
        minZ = 30,
        maxZ = 56,
        debugPoly = false
    })

    JeweleryZone[1]:onPointInOut(PolyZone.getPlayerPosition, function(isPointInside, point)
        if isPointInside then
            TriggerServerEvent('lumio-jewelery:server:addPlayer', QBCore.Functions.GetPlayerData().citizenid, GetPlayerPed(-1))
        elseif not isPointInside then
            TriggerServerEvent('lumio-jewelery:server:removePlayer', QBCore.Functions.GetPlayerData().citizenid)
        end
    end)
end)