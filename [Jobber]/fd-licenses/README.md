# INSTALL 


## Add the following items to your qb-core/shared/items.lua
```lua
		-- Licenses
	["airplane"] 					 = {["name"] = "airplane", 						["label"] = "Airplane License", 	["weight"] = 1000, 		["type"] = "item", 		["image"] = "airplane.png", 			["unique"] = true,   	["useable"] = true,     ["shouldClose"] = false,   ["combinable"] = nil,  ["description"] = "Los Santos Air License" },
	["helicopter"] 				 = {["name"] = "helicopter", 						["label"] = "Helicopter License", 	["weight"] = 1000, 		["type"] = "item", 		["image"] = "helicopter.png", 			["unique"] = true,   	["useable"] = true,     ["shouldClose"] = false,   ["combinable"] = nil,  ["description"] = "Los Santos Air License" },
	["trainee"] 					 = {["name"] = "trainee", 						["label"] = "Trainee License", 	["weight"] = 1000, 		["type"] = "item", 		["image"] = "trainee.png", 			["unique"] = true,   	["useable"] = true,     ["shouldClose"] = false,   ["combinable"] = nil,  ["description"] = "Los Santos Air License" },
```

## Add the imgs from img/ to your inventory

## Add this job
```lua
    ['flightschool'] = {
		label = 'LS Flight School',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Trainer',
                payment = 100
            },
        },
	},
```

## Find this in qb-core/server/player.lua

```lua
    PlayerData.metadata['licences'] = PlayerData.metadata['licences'] or {
        ['driver'] = true,
        ['business'] = false,
        ['weapon'] = false
    }
```
## and add 'airplane', 'helicopter', 'trainee' so it looks like this:

```lua
    PlayerData.metadata['licences'] = PlayerData.metadata['licences'] or {
        ['driver'] = true,
        ['business'] = false,
        ['weapon'] = false,
        ['airplane'] = false,
		['helicopter'] = false,
		['trainee'] = false
    }
```

## Go to qb-vehiclekeys/client/main.lua and find 'qb-vehiclekeys:client:ToggleEngine' and add this to the end. 
```lua
    PlayerData = QBCore.Functions.GetPlayerData()
    if GetVehicleClass(vehicle) == 16 then -- Planes
        if not PlayerData.metadata["licences"]["airplane"] then 
            SetVehicleEngineOn(vehicle, false, false, true)
        end
    elseif GetVehicleClass(vehicle) == 15 then -- Helicopters
        if not PlayerData.metadata["licences"]["helicopter"] then 
            SetVehicleEngineOn(vehicle, false, false, true)
        end
    elseif GetVehicleClass(vehicle) == 15 or GetVehicleClass(vehicle) == 16 then -- Trainee
        if not PlayerData.metadata["licences"]["trainee"] then 
            SetVehicleEngineOn(vehicle, false, false, true)
        end
    end
```

## So it looks like:

```lua
RegisterNetEvent('qb-vehiclekeys:client:ToggleEngine', function()
    local EngineOn = GetIsVehicleEngineRunning(GetVehiclePedIsIn(PlayerPedId()))
    local vehicle = GetVehiclePedIsIn(PlayerPedId(), true)
    local PlayerData = QBCore.Functions.GetPlayerData()
    local canStart = true
    if GetVehicleClass(vehicle) == 16 then -- Planes
        if PlayerData.metadata["licences"]["airplane"] == true or PlayerData.metadata["licences"]["trainee"] == true then 
            canStart = true
        else
            canStart = false
            QBCore.Functions.Notify("You don't know how to operate a plane...", "error")
        end
    elseif GetVehicleClass(vehicle) == 15 then -- Helicopters
        if PlayerData.metadata["licences"]["helicopter"] == true or PlayerData.metadata["licences"]["trainee"] == true then 
            canStart = true
        else
            canStart = false
            QBCore.Functions.Notify("You don't know how to operate a helicopter...", "error")
        end
    else

    end
    if canStart and HasKeys(QBCore.Functions.GetPlate(vehicle)) then
        if EngineOn then
            SetVehicleEngineOn(vehicle, false, false, true)
        else
            SetVehicleEngineOn(vehicle, true, false, true)
        end
    end
end)
```