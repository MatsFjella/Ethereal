CreateThread(function()
    while true do
        for _, sctyp in next, Config.BlacklistedScenarios['TYPES'] do
            SetScenarioTypeEnabled(sctyp, false)
        end
        for _, scgrp in next, Config.BlacklistedScenarios['GROUPS'] do
            SetScenarioGroupEnabled(scgrp, false)
        end
        Wait(10000)
    end
end)

AddEventHandler("populationPedCreating", function(x, y, z)
	Wait(500) -- Give the entity some time to be created
	local _, handle = GetClosestPed(x, y, z, 1.0) -- Get the entity handle
	SetPedDropsWeaponsWhenDead(handle, false)
end)

CreateThread(function() -- all these should only need to be called once
	if Config.DisableAmbience then
		-- StartAudioScene("CHARACTER_CHANGE_IN_SKY_SCENE") rcore casino sa jeg skulle fjerne denne
		SetAudioFlag("DisableFlightMusic", true)
	end
	SetAudioFlag("PoliceScannerDisabled", true)
	SetGarbageTrucks(false)
	SetCreateRandomCops(false)
	SetCreateRandomCopsNotOnScenarios(false)
	SetCreateRandomCopsOnScenarios(false)
	DistantCopCarSirens(false)
	RemoveVehiclesFromGeneratorsInArea(335.2616 - 300.0, -1432.455 - 300.0, 46.51 - 300.0, 335.2616 + 300.0, -1432.455 + 300.0, 46.51 + 300.0) -- central los santos medical center
	RemoveVehiclesFromGeneratorsInArea(441.8465 - 500.0, -987.99 - 500.0, 30.68 -500.0, 441.8465 + 500.0, -987.99 + 500.0, 30.68 + 500.0) -- police station mission row
	RemoveVehiclesFromGeneratorsInArea(316.79 - 300.0, -592.36 - 300.0, 43.28 - 300.0, 316.79 + 300.0, -592.36 + 300.0, 43.28 + 300.0) -- pillbox
	RemoveVehiclesFromGeneratorsInArea(-2150.44 - 500.0, 3075.99 - 500.0, 32.8 - 500.0, -2150.44 + 500.0, -3075.99 + 500.0, 32.8 + 500.0) -- military
	RemoveVehiclesFromGeneratorsInArea(-1108.35 - 300.0, 4920.64 - 300.0, 217.2 - 300.0, -1108.35 + 300.0, 4920.64 + 300.0, 217.2 + 300.0) -- nudist
	RemoveVehiclesFromGeneratorsInArea(-458.24 - 300.0, 6019.81 - 300.0, 31.34 - 300.0, -458.24 + 300.0, 6019.81 + 300.0, 31.34 + 300.0) -- police station paleto
	RemoveVehiclesFromGeneratorsInArea(1854.82 - 300.0, 3679.4 - 300.0, 33.82 - 300.0, 1854.82 + 300.0, 3679.4 + 300.0, 33.82 + 300.0) -- police station sandy
	RemoveVehiclesFromGeneratorsInArea(-724.46 - 300.0, -1444.03 - 300.0, 5.0 - 300.0, -724.46 + 300.0, -1444.03 + 300.0, 5.0 + 300.0) -- REMOVE CHOPPERS WOW
end)

if Config.Stun.active then
    CreateThread(function()
        local sleep
        while true do
            sleep = 1000
            local ped = PlayerPedId()
            if IsPedBeingStunned(ped, 0) then
                sleep = 0
                SetPedMinGroundTimeForStungun(ped, math.random(Config.Stun.min, Config.Stun.max))
            end
            Wait(sleep)
        end
    end)
end

CreateThread(function()
	for dispatchService, enabled in pairs(Config.DispatchServices) do
		EnableDispatchService(dispatchService, enabled)
	end

	local wantedLevel = 0
	if Config.EnableWantedLevel then
		wantedLevel = 5
	end

	SetMaxWantedLevel(wantedLevel)
end)

if Config.IdleCamera then --Disable Idle Cinamatic Cam
    DisableIdleCamera(true)
end

RegisterNetEvent('QBCore:Client:DrawWeapon', function()
    local sleep
    while true do
        sleep = 500
        local ped = PlayerPedId()
        local weapon = GetSelectedPedWeapon(ped)
        if weapon ~= `WEAPON_UNARMED` then
            if IsPedArmed(ped, 6) then
                sleep = 0
                DisableControlAction(1, 140, true)
                DisableControlAction(1, 141, true)
                DisableControlAction(1, 142, true)
            end

            if weapon == `WEAPON_FIREEXTINGUISHER` or weapon == `WEAPON_PETROLCAN` then
                if IsPedShooting(ped) then
                    SetPedInfiniteAmmo(ped, true, weapon)
                end
            end
        else
            break
        end
        Wait(sleep)
    end
end)

CreateThread(function()
    local pedPool = GetGamePool('CPed')
    for _, v in pairs(pedPool) do
        SetPedDropsWeaponsWhenDead(v, false)
    end
end)

CreateThread(function()
    while true do
        Wait(2500)
        local ped = PlayerPedId()
        local weapon = GetSelectedPedWeapon(ped)
        if Config.BlacklistedWeapons[weapon] then
            RemoveWeaponFromPed(ped, weapon)
        end
    end
end)


local MaxJump = 2
local JumpTimer = 10
local seconds = 0

CreateThread(function()
    while true do
        Wait(1000)
        seconds = seconds + 1
        if seconds == JumpTimer then
            seconds = 0
        end
    end
end)

CreateThread(function()
    local NumberJump = 0
    while true do
        Wait(500)
        local ped = PlayerPedId()
        if IsPedOnFoot(ped) and not IsPedSwimming(ped) and (IsPedRunning(ped) or IsPedSprinting(ped)) and not IsPedClimbing(ped) and IsPedJumping(ped) and not IsPedRagdoll(ped) then
            NumberJump = NumberJump + 1
            if NumberJump == MaxJump then
                SetPedToRagdoll(ped, 5000, 1400, 2)
                NumberJump = 0
            end
        end
        if seconds == 0 then
            NumberJump = 0
        end
    end
end)

CreateThread(function()
    while true do
        Wait(0)
	local ped = PlayerPedId()
        if IsPedArmed(ped, 6) then
	   DisableControlAction(1, 140, true)
       	   DisableControlAction(1, 141, true)
           DisableControlAction(1, 142, true)
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        if IsControlJustPressed(0, 21) then
            SetRelationshipBetweenGroups(2, 'player', 'player')
        end
        if IsControlJustReleased(0, 21) then
            SetRelationshipBetweenGroups(1, 'player', 'player')
        end
        Citizen.Wait(0)
    end
end)

-- -- motorsykkelhjelm
Citizen.CreateThread( function()
	while true do 
		REVEL = 1000
		if IsPedInAnyVehicle(PlayerPedId(), false) then 
		REVEL = 1
	  SetPedConfigFlag(PlayerPedId(), 35, false)
		end
      Citizen.Wait(REVEL)
	end
  end)

  -- Ikke miste caps og briller
  Citizen.CreateThread(function()
    while true do
        if PlayerPedId() ~= lastped then
            lastped = PlayerPedId()
            SetPedCanLosePropsOnDamage(PlayerPedId(), false, 0)
        end
        Wait(100)
    end
end)

-- CreateThread(function()
--     SwitchTrainTrack(0, true)
--     SwitchTrainTrack(3, true)
--     SetTrainTrackSpawnFrequency(0, 10 * 60 * 1000) -- 2 minutes in milliseconds
--     SetRandomTrains(1)
--       -- turn off/On doors opening
--       SetTrainsForceDoorsOpen(false)
--   end)


-- Skru av action mode

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        local ped = PlayerPedId()
        if IsPedUsingActionMode(ped) then
            SetPedUsingActionMode(ped, false, -1, 'DEFAULT_ACTION')
        end
        if not GetPedConfigFlag(ped,78,1) then
            SetPedUsingActionMode(ped, false, -1, 0)
        end
    end
end)


-- Politisirener på distanse
-- client code
Citizen.CreateThread(function()
    while true do
        DistantCopCarSirens(false) -- Setting to false will disable the distant sirens
        Citizen.Wait(400)
    end
end)


-- Fikse våpen på rygg bug

CreateThread(function()
    while true do
        Wait(100)
        local entering = GetVehiclePedIsTryingToEnter(PlayerPedId())
        if entering ~= 0 then
            for k, v in pairs(GetGamePool('CObject')) do
                if IsEntityAttachedToEntity(PlayerPedId(), v) then
                    SetEntityAsMissionEntity(v, true, true)
                    DeleteObject(v)
                    DeleteEntity(v)
                end
            end
            TriggerEvent("Pug:ReloadGuns:sling")
            Wait(2000)
        end
    end
end)


-------------------------------------------------------------------------------
-- Title: Speed limiter.
-- Author: Serpico -- twitch.tv/SerpicoTV
-- Description: This script will restict the speed of the vehicle when
--              INPUT_MP_TEXT_CHAT_TEAM is pressed. To disable, press
--              INPUT_VEH_SUB_ASCEND + INPUT_MP_TEXT_CHAT_TEAM
-------------------------------------------------------------------------------
local useMph = false -- if false, it will display speed in kph

Citizen.CreateThread(function()
  local resetSpeedOnEnter = true
  while true do
    Citizen.Wait(0)
    local playerPed = GetPlayerPed(-1)
    local vehicle = GetVehiclePedIsIn(playerPed,false)
    if GetPedInVehicleSeat(vehicle, -1) == playerPed and IsPedInAnyVehicle(playerPed, false) then

      -- This should only happen on vehicle first entry to disable any old values
      if resetSpeedOnEnter then
        maxSpeed = GetVehicleHandlingFloat(vehicle,"CHandlingData","fInitialDriveMaxFlatVel")
        SetEntityMaxSpeed(vehicle, maxSpeed)
        resetSpeedOnEnter = false
      end
      -- Disable speed limiter
      if IsControlJustReleased(0,246) and IsControlPressed(0,131) then
        maxSpeed = GetVehicleHandlingFloat(vehicle,"CHandlingData","fInitialDriveMaxFlatVel")
        SetEntityMaxSpeed(vehicle, maxSpeed)
        showHelpNotification("Fartsperre avslått")
      -- Enable speed limiter
      elseif IsControlJustReleased(0,246) then
        cruise = GetEntitySpeed(vehicle)
        SetEntityMaxSpeed(vehicle, cruise)
        if useMph then
          cruise = math.floor(cruise * 2.23694 + 0.5)
          showHelpNotification("Fartsperre satt til "..cruise.." km/t. ~INPUT_VEH_SUB_ASCEND~ + ~INPUT_MP_TEXT_CHAT_TEAM~ for å skru av.")
        else
          cruise = math.floor(cruise * 3.6 + 0.5)
          showHelpNotification("Fartsperre satt til "..cruise.." km/t. ~INPUT_VEH_SUB_ASCEND~ + ~INPUT_MP_TEXT_CHAT_TEAM~ for å skru av.")
        end
      end
    else
      resetSpeedOnEnter = true
    end
  end
end)

function showHelpNotification(msg)
    BeginTextCommandDisplayHelp("STRING")
    AddTextComponentSubstringPlayerName(msg)
    EndTextCommandDisplayHelp(0, 0, 1, -1)
end
