local RegisterTargets = {}
local TrashCanTargets = {}
local TrayTargets = {}
local StorageTargets = {}
local SeatsTargets = {}
local DutyTargets = {}
local BossMenuTargets = {}
local LockerTargets = {}
local CookStationTargets = {}
local BlipIconDatas = {}
local BusinesBlips = {}
local AnimationTargets = {}
local PropPlacements = {}
local WhiteboardTexture = {}
local ZoneLocations = {}
local PedPlacements = {}
local SupplyTargets = {}
local ItemsTargets = {}
local GarageTargets = {}

---------- [FUNCTIONS] ----------
local function CreateBlip(name, blip, color, coords, Scale)
    local x = coords.x
	local y = coords.y
	local z = coords.z
	if DoesBlipExist(BusinesBlips[x]) then RemoveBlip(BusinesBlips[x]) BusinesBlips[x] = nil Wait(100) end
    BusinesBlips[x] = AddBlipForCoord(x, y, z)
    SetBlipSprite(BusinesBlips[x], tonumber(blip))
    SetBlipDisplay(BusinesBlips[x], 2)
    SetBlipScale(BusinesBlips[x], tonumber(Scale))
    SetBlipColour(BusinesBlips[x], tonumber(color))
    SetBlipAsShortRange(BusinesBlips[x], Config.ShowBlipsOnMiniMapOnlyShortRange)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(name)
    EndTextCommandSetBlipName(BusinesBlips[x])
end
local function IsPlayerJob(JobName)
	if JobName == "criminal" then
		return true
	else
		local PlayerJob = Config.FrameworkFunctions.GetPlayer(true, false, true).PlayerData.job.name
		return PlayerJob == JobName
	end
end
------------------------------

---------- [CASH REGISTERS] ----------
RegisterNetEvent("Pug:client:CreateAllTargetsregisters", function(Data, Bool)
	local ThisJob
	for k, v in pairs(Data) do
		if Config.Target == "ox_target" then
			ThisJob = Data["job"]
			if tostring(k) == "registers" then
				local TableToRun = RegisterTargets
				if Bool then
					TableToRun = json.decode(Data["registers"])
				end
				for u, _ in pairs(TableToRun) do
					local TargetName = u
					if Bool then
						TargetName = ThisJob..u..k
					end
					if RegisterTargets[TargetName] then
						exports.ox_target:removeZone(RegisterTargets[TargetName])
						RegisterTargets[TargetName] = nil
					end
				end
			end
		else
			ThisJob = Data["job"]
			if tostring(k) == "registers" then
				local TableToRun = RegisterTargets
				if Bool then
					TableToRun = json.decode(Data["registers"])
				end
				for u, _ in pairs(TableToRun) do
					local TargetName = ThisJob..u..k
					exports[Config.Target]:RemoveZone(TargetName)
				end
			end
		end
	end
	Wait(100)
	for k, v in pairs(Data) do
		ThisJob = Data["job"]
		if tostring(k) == "registers" then
			for u, i in pairs(json.decode(Data["registers"])) do
				local TargetName = ThisJob..u..k
				local Info = i
				if Config.Target == "ox_target" then
					local Data = {
						Info = Info,
					}
					RegisterTargets[TargetName] = exports.ox_target:addBoxZone({
						coords = vector3(Info.Target.x,Info.Target.y,Info.Target.z),
						size = vector3(1, 1, 1),
						rotation = 35,
						debug = Config.Debug,
						options = {
							{
								name= TargetName,
								type = "client",
								event = "Pug:Client:DoBusinessRegisteranLogic",
								args = Data,
								icon = "fa-solid fa-print",
								label = Config.LangT["ChargeCustomer"],
								canInteract = function(entity)
									return IsPlayerJob(ThisJob)
								end,
								distance = 2.0
							}
						}
					})
				else
					RegisterTargets[u] = v
					exports[Config.Target]:AddBoxZone(TargetName, vector3(Info.Target.x,Info.Target.y,Info.Target.z), 0.4, 0.4, {
						name=TargetName,
						heading=35,
						debugPoly = Config.Debug,
						minZ= Info.Target.z-0.3,
						maxZ= Info.Target.z+0.3,
					}, {
						options = {
							{
								icon = "fa-solid fa-print",
								label = Config.LangT["ChargeCustomer"],
								event = " ",
								canInteract = function(entity)
									return IsPlayerJob(ThisJob)
								end,
								action = function()
									local Data = {
										args = {
											Info = Info,
										}
									}
									TriggerEvent("Pug:Client:DoBusinessRegisteranLogic", Data)
								end,
							},
						},
						distance = 2.0
					})
				end
			end
		end
	end
end)
RegisterNetEvent("Pug:Client:DoBusinessRegisteranLogic", function(Data)
	local Info = Data.args.Info
	if Info.PedCoords ~= nil then
		TaskGoStraightToCoord(PlayerPedId(), Info.PedCoords.x, Info.PedCoords.y, Info.PedCoords.z, 1.0, 20000, 40000.0, 0.5)
		while #(GetEntityCoords(PlayerPedId()) - vector3(Info.PedCoords.x, Info.PedCoords.y, Info.PedCoords.z)) >= 1.1 do Wait(500) end
		TaskTurnPedToFaceCoord(PlayerPedId(), vector3(Info.Target.x, Info.Target.y, Info.Target.z))
		Wait(800)
		SetEntityHeading(PlayerPedId(), Info.Heading)
	end
	if Info.Animation ~= nil then
		if not Info.Animation.IsScenario then
			loadAnimDict(Info.Animation.AnimDict)
			TaskPlayAnim(PlayerPedId(), Info.Animation.AnimDict, Info.Animation.AnimAction, 8.0, 1, -1, 1, 1.0, 0, 0, 0)
		else
			ClearPedTasksImmediately(PlayerPedId())
			TaskStartScenarioInPlace(PlayerPedId(), Info.Animation.AnimDict, 0, false)
		end
	end
	TriggerEvent("Pug:client:UseBusinessRegisters")
	Wait(3000)
	if Config.InventoryType == "qs-inventory" then
		ClearPedTasksImmediately(PlayerPedId())
	else
		ClearPedTasks(PlayerPedId())
	end
end)
------------------------------

---------- [TRASH CANS] ----------
RegisterNetEvent("Pug:client:CreateAllTargetstrashcans", function(Data, Bool)
	local ThisJob
	for k, v in pairs(Data) do
		if Config.Target == "ox_target" then
			ThisJob = Data["job"]
			if tostring(k) == "trashcans" then
				local TableToRun = TrashCanTargets
				if Bool then
					TableToRun = json.decode(Data["trashcans"])
				end
				for u, _ in pairs(TableToRun) do
					local TargetName = u
					if Bool then
						TargetName = ThisJob..u..k
					end
					if TrashCanTargets[TargetName] then
						exports.ox_target:removeZone(TrashCanTargets[TargetName])
						TrashCanTargets[TargetName] = nil
					end
				end
			end
		else
			ThisJob = Data["job"]
			if tostring(k) == "trashcans" then
				local TableToRun = TrashCanTargets
				if Bool then
					TableToRun = json.decode(Data["trashcans"])
				end
				for u, _ in pairs(TableToRun) do
					local TargetName = ThisJob..u..k
					exports[Config.Target]:RemoveZone(TargetName)
				end
			end
		end
	end
	Wait(100)
	for k, v in pairs(Data) do
		ThisJob = Data["job"]
		if tostring(k) == "trashcans" then
			for u, i in pairs(json.decode(Data["trashcans"])) do
				local TargetName = ThisJob..u..k
				local Info = i
				if Config.Target == "ox_target" then
					local Data = {
						Info = Info,
						Name = TargetName,
					}
					TrashCanTargets[TargetName] = exports.ox_target:addBoxZone({
						coords = vector3(Info.Target.x,Info.Target.y,Info.Target.z),
						size = vector3(1, 1, 1),
						rotation = 35,
						debug = Config.Debug,
						options = {
							{
								name= TargetName,
								type = "client",
								event = "Pug:Client:DoBusinessTrashcanLogic",
								args = Data,
								icon = "fa-solid fa-trash",
								label = Config.LangT["Trash"],
								distance = 2.0
							}
						}
					})
				else
					TrashCanTargets[u] = v
					exports[Config.Target]:AddBoxZone(TargetName, vector3(Info.Target.x,Info.Target.y,Info.Target.z), 0.8, 0.8, {
						name=TargetName,
						heading=35,
						debugPoly = Config.Debug,
						minZ= Info.Target.z-0.3,
						maxZ= Info.Target.z+0.3,
					}, {
						options = {
							{
								icon = "fa-solid fa-trash",
								label = Config.LangT["Trash"],
								event = " ",
								action = function()
									local Data = {
										args = {
											Info = Info,
											Name = TargetName,
										}
									}
									TriggerEvent("Pug:Client:DoBusinessTrashcanLogic",Data)
								end,
							},
						},
						distance = 2.0
					})
				end
			end
		end
	end
end)
RegisterNetEvent("Pug:Client:DoBusinessTrashcanLogic", function(Data)
	local Info = Data.args.Info
	local TargetName = Data.args.Name
	if Info.PedCoords ~= nil then
		TaskGoStraightToCoord(PlayerPedId(), Info.PedCoords.x, Info.PedCoords.y, Info.PedCoords.z, 1.0, 20000, 40000.0, 0.5)
		while #(GetEntityCoords(PlayerPedId()) - vector3(Info.PedCoords.x, Info.PedCoords.y, Info.PedCoords.z)) >= 1.1 do Wait(500) end
		TaskTurnPedToFaceCoord(PlayerPedId(), vector3(Info.Target.x, Info.Target.y, Info.Target.z))
		Wait(800)
		SetEntityHeading(PlayerPedId(), Info.Heading)
	end
	if Info.Animation ~= nil then
		if not Info.Animation.IsScenario then
			loadAnimDict(Info.Animation.AnimDict)
			TaskPlayAnim(PlayerPedId(), Info.Animation.AnimDict, Info.Animation.AnimAction, 8.0, 1, -1, 1, 1.0, 0, 0, 0)
		else
			ClearPedTasksImmediately(PlayerPedId())
			TaskStartScenarioInPlace(PlayerPedId(), Info.Animation.AnimDict, 0, false)
		end
	end
	if Config.InventoryType == "qs-inventory" then
		exports['qs-inventory']:RegisterStash(TargetName, Config.BusinessStorageSlots, Config.BusinessStorageSize) 
	elseif Config.InventoryType == "ox_inventory" then
		TriggerServerEvent("Pug:server:BusinessOxTrashCanOpen", TargetName, Config.BusinessStorageSlots, Config.BusinessStorageSize)
	else
		TriggerServerEvent("inventory:server:OpenInventory", "stash", TargetName, {
			maxweight = Config.BusinessStorageSize,
			slots = Config.BusinessStorageSlots,
		})
		TriggerEvent("inventory:client:SetCurrentStash", TargetName)
	end
	Wait(2000)
	if Config.InventoryType == "qs-inventory" then
		ClearPedTasksImmediately(PlayerPedId())
	else
		ClearPedTasks(PlayerPedId())
	end
end)
------------------------------

---------- [TRAYS] ----------
RegisterNetEvent("Pug:client:CreateAllTargetstrays", function(Data, Bool)
	local ThisJob
	for k, v in pairs(Data) do
		if Config.Target == "ox_target" then
			ThisJob = Data["job"]
			if tostring(k) == "trays" then
				local TableToRun = TrayTargets
				if Bool then
					TableToRun = json.decode(Data["trays"])
				end
				for u, _ in pairs(TableToRun) do
					local TargetName = u
					if Bool then
						TargetName = ThisJob..u..k
					end
					if TrayTargets[TargetName] then
						exports.ox_target:removeZone(TrayTargets[TargetName])
						TrayTargets[TargetName] = nil
					end
				end
			end
		else
			ThisJob = Data["job"]
			if tostring(k) == "trays" then
				local TableToRun = TrayTargets
				if Bool then
					TableToRun = json.decode(Data["trays"])
				end
				for u, _ in pairs(TableToRun) do
					local TargetName = ThisJob..u..k
					exports[Config.Target]:RemoveZone(TargetName)
				end
			end
		end
	end
	Wait(100)
	for k, v in pairs(Data) do
		ThisJob = Data["job"]
		if tostring(k) == "trays" then
			for u, i in pairs(json.decode(Data["trays"])) do
				local TargetName = ThisJob..u..k
				local Info = i
				if Config.Target == "ox_target" then
					local Data = {
						Info = Info,
						Name = TargetName,
					}
					TrayTargets[TargetName] = exports.ox_target:addBoxZone({
						coords = vector3(Info.Target.x,Info.Target.y,Info.Target.z),
						size = vector3(1, 1, 1),
						rotation = 35,
						debug = Config.Debug,
						options = {
							{
								name= TargetName,
								type = "client",
								event = "Pug:Client:DoBusinessTrayLogic",
								args = Data,
								icon = "fa-solid fa-box",
								label = Config.LangT["Counter"],
								distance = 2.0
							}
						}
					})
				else
					TrayTargets[u] = v
					exports[Config.Target]:AddBoxZone(TargetName, vector3(Info.Target.x,Info.Target.y,Info.Target.z), 0.4, 0.4, {
						name=TargetName,
						heading=35,
						debugPoly = Config.Debug,
						minZ= Info.Target.z-0.3,
						maxZ= Info.Target.z+0.3,
					}, {
						options = {
							{
								icon = "fa-solid fa-box",
								label = Config.LangT["Counter"],
								event = " ",
								action = function()
									local Data = {
										args = {
											Info = Info,
											Name = TargetName,
										}
									}
									TriggerEvent("Pug:Client:DoBusinessTrayLogic",Data)
								end,
							},
						},
						distance = 2.0
					})
				end
			end
		end
	end
end)
RegisterNetEvent("Pug:Client:DoBusinessTrayLogic", function(Data)
	local TargetName = Data.args.Name
	if Config.InventoryType == "qs-inventory" then
		exports['qs-inventory']:RegisterStash(TargetName, Config.CounterTopTreySlots, Config.CounterTopTreySize) 
	elseif Config.InventoryType == "ox_inventory" then
		TriggerServerEvent("Pug:server:BusinessOxStashOpen", TargetName, Config.CounterTopTreySlots, Config.CounterTopTreySize)
		exports.ox_inventory:openInventory('stash', TargetName)
	else
		TriggerServerEvent("inventory:server:OpenInventory", "stash", TargetName, {
			maxweight = Config.CounterTopTreySize,
			slots = Config.CounterTopTreySlots,
		})
		TriggerEvent("inventory:client:SetCurrentStash", TargetName)
	end
end)
------------------------------

---------- [STORAGE] ----------
RegisterNetEvent("Pug:client:CreateAllTargetsstorage", function(Data, Bool)
	local ThisJob
	for k, v in pairs(Data) do
		if Config.Target == "ox_target" then
			ThisJob = Data["job"]
			if tostring(k) == "storage" then
				local TableToRun = StorageTargets
				if Bool then
					TableToRun = json.decode(Data["storage"])
				end
				for u, _ in pairs(TableToRun) do
					local TargetName = u
					if Bool then
						TargetName = ThisJob..u..k
					end
					if StorageTargets[TargetName] then
						exports.ox_target:removeZone(StorageTargets[TargetName])
						StorageTargets[TargetName] = nil
					end
				end
			end
		else
			ThisJob = Data["job"]
			if tostring(k) == "storage" then
				local TableToRun = StorageTargets
				if Bool then
					TableToRun = json.decode(Data["storage"])
				end
				for u, _ in pairs(TableToRun) do
					local TargetName = ThisJob..u..k
					exports[Config.Target]:RemoveZone(TargetName)
				end
			end
		end
	end
	Wait(100)
	for k, v in pairs(Data) do
		ThisJob = Data["job"]
		if tostring(k) == "storage" then
			for u, i in pairs(json.decode(Data["storage"])) do
				local TargetName = ThisJob..u..k
				local Info = i
				if Config.Target == "ox_target" then
					local Data = {
						Info = Info,
						Name = TargetName,
					}
					StorageTargets[TargetName] = exports.ox_target:addBoxZone({
						coords = vector3(Info.Target.x,Info.Target.y,Info.Target.z),
						size = vector3(1, 1, 1),
						rotation = 35,
						debug = Config.Debug,
						options = {
							{
								name= TargetName,
								type = "client",
								event = "Pug:Client:DoBusinessStorageLogic",
								args = Data,
								icon = "fa-solid fa-box",
								label = Config.LangT["Storage"],
								canInteract = function(entity)
									return IsPlayerJob(ThisJob)
								end,
								distance = 2.0
							}
						}
					})
				else
					StorageTargets[u] = v
					exports[Config.Target]:AddBoxZone(TargetName, vector3(Info.Target.x,Info.Target.y,Info.Target.z), 0.7, 0.7, {
						name=TargetName,
						heading=35,
						debugPoly = Config.Debug,
						minZ= Info.Target.z-0.3,
						maxZ= Info.Target.z+0.3,
					}, {
						options = {
							{
								icon = "fa-solid fa-box",
								label = Config.LangT["Storage"],
								event = " ",
								canInteract = function(entity)
									return IsPlayerJob(ThisJob)
								end,
								action = function()
									local Data = {
										args = {
											Info = Info,
											Name = TargetName,
										}
									}
									TriggerEvent("Pug:Client:DoBusinessStorageLogic",Data)
								end,
							},
						},
						distance = 2.0
					})
				end
			end
		end
	end
end)
RegisterNetEvent("Pug:Client:DoBusinessStorageLogic", function(Data)
	local TargetName = Data.args.Name
	if Config.InventoryType == "qs-inventory" then
		exports['qs-inventory']:RegisterStash(TargetName, Config.BusinessStorageSlots, Config.BusinessStorageSize) 
	elseif Config.InventoryType == "ox_inventory" then
		TriggerServerEvent("Pug:server:BusinessOxStashOpen", TargetName, Config.BusinessStorageSlots, Config.BusinessStorageSize)
		exports.ox_inventory:openInventory('stash', TargetName)
	else
		TriggerServerEvent("inventory:server:OpenInventory", "stash", TargetName, {
			maxweight = Config.BusinessStorageSize,
			slots = Config.BusinessStorageSlots,
		})
		TriggerEvent("inventory:client:SetCurrentStash", TargetName)
	end
end)
------------------------------

---------- [SEATS] ----------
RegisterNetEvent("Pug:client:CreateAllTargetsseats", function(Data, Bool)
	local ThisJob
	for k, v in pairs(Data) do
		if Config.Target == "ox_target" then
			ThisJob = Data["job"]
			if tostring(k) == "seats" then
				local TableToRun = SeatsTargets
				if Bool then
					TableToRun = json.decode(Data["seats"])
				end
				for u, _ in pairs(TableToRun) do
					local TargetName = u
					if Bool then
						TargetName = ThisJob..u..k
					end
					if SeatsTargets[TargetName] then
						exports.ox_target:removeZone(SeatsTargets[TargetName])
						SeatsTargets[TargetName] = nil
					end
				end
			end
		else
			ThisJob = Data["job"]
			if tostring(k) == "seats" then
				local TableToRun = SeatsTargets
				if Bool then
					TableToRun = json.decode(Data["seats"])
				end
				for u, _ in pairs(TableToRun) do
					local TargetName = ThisJob..u..k
					exports[Config.Target]:RemoveZone(TargetName)
				end
			end
		end
	end
	Wait(100)
	for k, v in pairs(Data) do
		ThisJob = Data["job"]
		if tostring(k) == "seats" then
			for u, i in pairs(json.decode(Data["seats"])) do
				local TargetName = ThisJob..u..k
				local Info = i
				if Config.Target == "ox_target" then
					local Data = {
						Info = Info,
						Name = TargetName,
					}
					SeatsTargets[TargetName] = exports.ox_target:addBoxZone({
						coords = vector3(Info.Target.x,Info.Target.y,Info.Target.z),
						size = vector3(1, 1, 1),
						rotation = 35,
						debug = Config.Debug,
						options = {
							{
								name= TargetName,
								type = "client",
								event = "Pug:Client:DoBusinessSeatsLogic",
								args = Data,
								icon = "fa-solid fa-chair",
								label = Config.LangT["Sit"],
								distance = 2.0
							}
						}
					})
				else
					SeatsTargets[u] = v
					exports[Config.Target]:AddBoxZone(TargetName, vector3(Info.Target.x,Info.Target.y,Info.Target.z), 0.7, 0.7, {
						name=TargetName,
						heading=35,
						debugPoly = Config.Debug,
						minZ= Info.Target.z-0.3,
						maxZ= Info.Target.z+0.3,
					}, {
						options = {
							{
								icon = "fa-solid fa-chair",
								label = Config.LangT["Sit"],
								event = " ",
								action = function()
									local Data = {
										args = {
											Info = Info,
											Name = TargetName,
										}
									}
									TriggerEvent("Pug:Client:DoBusinessSeatsLogic",Data)
								end,
							},
						},
						distance = 2.0
					})
				end
			end
		end
	end
end)
RegisterNetEvent("Pug:Client:DoBusinessSeatsLogic", function(Data)
	local Info = Data.args.Info
	TaskTurnPedToFaceCoord(PlayerPedId(), vector3(Info.Target.x, Info.Target.y, Info.Target.z))
	Wait(800)
	SetEntityHeading(PlayerPedId(), Info.Heading)
	TaskStartScenarioAtPosition(PlayerPedId(), "PROP_HUMAN_SEAT_CHAIR_MP_PLAYER", Info.Target.x, Info.Target.y, Info.Target.z-0.1, Info.Heading, 0, 1, true)
	TriggerEvent("Pug:client:ClearPedTaskLoopCheck")
end)
------------------------------

---------- [DUTY] ----------
RegisterNetEvent("Pug:client:CreateAllTargetsduty", function(Data, Bool)
	local ThisJob
	for k, v in pairs(Data) do
		if Config.Target == "ox_target" then
			ThisJob = Data["job"]
			if tostring(k) == "duty" then
				local TableToRun = DutyTargets
				if Bool then
					TableToRun = json.decode(Data["duty"])
				end
				for u, _ in pairs(TableToRun) do
					local TargetName = u
					if Bool then
						TargetName = ThisJob..u..k
					end
					if DutyTargets[TargetName] then
						exports.ox_target:removeZone(DutyTargets[TargetName])
						DutyTargets[TargetName] = nil
					end
				end
			end
		else
			ThisJob = Data["job"]
			if tostring(k) == "duty" then
				local TableToRun = DutyTargets
				if Bool then
					TableToRun = json.decode(Data["duty"])
				end
				for u, _ in pairs(TableToRun) do
					local TargetName = ThisJob..u..k
					exports[Config.Target]:RemoveZone(TargetName)
				end
			end
		end
	end
	Wait(100)
	for k, v in pairs(Data) do
		ThisJob = Data["job"]
		if tostring(k) == "duty" then
			for u, i in pairs(json.decode(Data["duty"])) do
				local TargetName = ThisJob..u..k
				local Info = i
				if Config.Target == "ox_target" then
					local Data = {
						Info = Info,
						Name = TargetName,
					}
					DutyTargets[TargetName] = exports.ox_target:addBoxZone({
						coords = vector3(Info.Target.x,Info.Target.y,Info.Target.z),
						size = vector3(1, 1, 1),
						rotation = 35,
						debug = Config.Debug,
						options = {
							{
								name= TargetName,
								type = "client",
								event = "Pug:Client:DoBusinessDutyLogic",
								args = Data,
								icon = "fa-solid fa-clipboard",
								label = Config.LangT["ToggleDuty"],
								canInteract = function(entity)
									return IsPlayerJob(ThisJob)
								end,
								distance = 2.0
							}
						}
					})
				else
					DutyTargets[u] = v
					exports[Config.Target]:AddBoxZone(TargetName, vector3(Info.Target.x,Info.Target.y,Info.Target.z), 0.7, 0.7, {
						name=TargetName,
						heading=35,
						debugPoly = Config.Debug,
						minZ= Info.Target.z-0.3,
						maxZ= Info.Target.z+0.3,
					}, {
						options = {
							{
								icon = "fa-solid fa-clipboard",
								label = Config.LangT["ToggleDuty"],
								event = " ",
								canInteract = function(entity)
									return IsPlayerJob(ThisJob)
								end,
								action = function()
									local Data = {
										args = {
											Info = Info,
											Name = TargetName,
										}
									}
									TriggerEvent("Pug:Client:DoBusinessDutyLogic",Data)
								end,
							},
						},
						distance = 2.0
					})
				end
			end
		end
	end
end)
RegisterNetEvent("Pug:Client:DoBusinessDutyLogic", function(Data)
	local Info = Data.args.Info
	if Info.PedCoords ~= nil then
		TaskGoStraightToCoord(PlayerPedId(), Info.PedCoords.x, Info.PedCoords.y, Info.PedCoords.z, 1.0, 20000, 40000.0, 0.5)
		while #(GetEntityCoords(PlayerPedId()) - vector3(Info.PedCoords.x, Info.PedCoords.y, Info.PedCoords.z)) >= 1.1 do Wait(500) end
		TaskTurnPedToFaceCoord(PlayerPedId(), vector3(Info.Target.x, Info.Target.y, Info.Target.z))
		Wait(800)
		-- SetEntityCoords(PlayerPedId(), vector3(Info.PedCoords.x, Info.PedCoords.y, Info.PedCoords.z))
		SetEntityHeading(PlayerPedId(), Info.Heading)
	end
	if Info.Animation ~= nil then
		if not Info.Animation.IsScenario then
			loadAnimDict(Info.Animation.AnimDict)
			TaskPlayAnim(PlayerPedId(), Info.Animation.AnimDict, Info.Animation.AnimAction, 8.0, 1, -1, 1, 1.0, 0, 0, 0)
		else
			ClearPedTasksImmediately(PlayerPedId())
			TaskStartScenarioInPlace(PlayerPedId(), Info.Animation.AnimDict, 0, false)
		end
	end
	if Config.FrameworkFunctions.GetPlayer(true, false, true).PlayerData.job.onduty then
        ExecuteCommand('me '..Config.LangT["SignsOffDuty"], "success")
    else
        ExecuteCommand('me '..Config.LangT["SignsOnDuty"], "success")
    end
    FreezeEntityPosition(PlayerPedId(), true)
    Wait(2200)
    FreezeEntityPosition(PlayerPedId(), false)
    TriggerServerEvent("QBCore:ToggleDuty")
	ReloadSkin()
	if Config.InventoryType == "qs-inventory" then
		ClearPedTasksImmediately(PlayerPedId())
	else
		ClearPedTasks(PlayerPedId())
	end
end)
------------------------------

---------- [BOSS MENU] ----------
RegisterNetEvent("Pug:client:CreateAllTargetsbossmenu", function(Data, Bool)
	local ThisJob
	for k, v in pairs(Data) do
		if Config.Target == "ox_target" then
			ThisJob = Data["job"]
			if tostring(k) == "bossmenu" then
				local TableToRun = BossMenuTargets
				if Bool then
					TableToRun = json.decode(Data["bossmenu"])
				end
				for u, _ in pairs(TableToRun) do
					local TargetName = u
					if Bool then
						TargetName = ThisJob..u..k
					end
					if BossMenuTargets[TargetName] then
						exports.ox_target:removeZone(BossMenuTargets[TargetName])
						BossMenuTargets[TargetName] = nil
					end
				end
			end
		else
			ThisJob = Data["job"]
			if tostring(k) == "bossmenu" then
				local TableToRun = BossMenuTargets
				if Bool then
					TableToRun = json.decode(Data["bossmenu"])
				end
				for u, _ in pairs(TableToRun) do
					local TargetName = ThisJob..u..k
					exports[Config.Target]:RemoveZone(TargetName)
				end
			end
		end
	end
	Wait(100)
	for k, v in pairs(Data) do
		ThisJob = Data["job"]
		if tostring(k) == "bossmenu" then
			for u, i in pairs(json.decode(Data["bossmenu"])) do
				local TargetName = ThisJob..u..k
				local Info = i
				if Config.Target == "ox_target" then
					local Data = {
						Info = Info,
						Name = TargetName,
					}
					BossMenuTargets[TargetName] = exports.ox_target:addBoxZone({
						coords = vector3(Info.Target.x,Info.Target.y,Info.Target.z),
						size = vector3(1, 1, 1),
						rotation = 35,
						debug = Config.Debug,
						options = {
							{
								name= TargetName,
								type = "client",
								event = "Pug:Client:DoBusinessBossMenuLogic",
								args = Data,
								icon = "fa-solid fa-clipboard",
								label = Config.LangT["BossMenu"],
								canInteract = function(entity)
									return IsPlayerJob(ThisJob)
								end,
								distance = 2.0
							}
						}
					})
				else
					BossMenuTargets[u] = v
					exports[Config.Target]:AddBoxZone(TargetName, vector3(Info.Target.x,Info.Target.y,Info.Target.z), 0.7, 0.7, {
						name=TargetName,
						heading=35,
						debugPoly = Config.Debug,
						minZ= Info.Target.z-0.3,
						maxZ= Info.Target.z+0.3,
					}, {
						options = {
							{
								icon = "fa-solid fa-clipboard",
								label = Config.LangT["BossMenu"],
								event = " ",
								canInteract = function(entity)
									return IsPlayerJob(ThisJob)
								end,
								action = function()
									local Data = {
										args = {
											Info = Info,
											Name = TargetName,
										}
									}
									TriggerEvent("Pug:Client:DoBusinessBossMenuLogic",Data)
								end,
							},
						},
						distance = 2.0
					})
				end
			end
		end
	end
end)
RegisterNetEvent("Pug:Client:DoBusinessBossMenuLogic", function(Data)
	local Info = Data.args.Info
	if Info.PedCoords ~= nil then
		TaskGoStraightToCoord(PlayerPedId(), Info.PedCoords.x, Info.PedCoords.y, Info.PedCoords.z, 1.0, 20000, 40000.0, 0.5)
		while #(GetEntityCoords(PlayerPedId()) - vector3(Info.PedCoords.x, Info.PedCoords.y, Info.PedCoords.z)) >= 1.1 do Wait(500) end
		TaskTurnPedToFaceCoord(PlayerPedId(), vector3(Info.Target.x, Info.Target.y, Info.Target.z))
		Wait(800)
		-- SetEntityCoords(PlayerPedId(), vector3(Info.PedCoords.x, Info.PedCoords.y, Info.PedCoords.z))
		SetEntityHeading(PlayerPedId(), Info.Heading)
	end
	if Info.Animation ~= nil then
		if not Info.Animation.IsScenario then
			loadAnimDict(Info.Animation.AnimDict)
			TaskPlayAnim(PlayerPedId(), Info.Animation.AnimDict, Info.Animation.AnimAction, 8.0, 1, -1, 1, 1.0, 0, 0, 0)
		else
			ClearPedTasksImmediately(PlayerPedId())
			TaskStartScenarioInPlace(PlayerPedId(), Info.Animation.AnimDict, 0, false)
		end
	end
	if Framework == "ESX" then
		local JobName = Config.FrameworkFunctions.GetPlayer(true, false, true).PlayerData.job.name
		TriggerEvent('esx_society:openBossMenu', JobName, function (data, menu)
			Wait(2000)
			menu.close()
		end, {wash = false}) -- set custom options, e.g disable washing
	else
		TriggerEvent("qb-bossmenu:client:OpenMenu")
	end
	Wait(1000)
	TriggerEvent("Pug:ReloadGuns:sling")
	if Config.InventoryType == "qs-inventory" then
		ClearPedTasksImmediately(PlayerPedId())
	else
		ClearPedTasks(PlayerPedId())
	end
end)
------------------------------

---------- [LOCKERS] ----------
RegisterNetEvent("Pug:client:CreateAllTargetslocker", function(Data, Bool)
	local ThisJob
	for k, v in pairs(Data) do
		if Config.Target == "ox_target" then
			ThisJob = Data["job"]
			if tostring(k) == "locker" then
				local TableToRun = LockerTargets
				if Bool then
					TableToRun = json.decode(Data["locker"])
				end
				for u, _ in pairs(TableToRun) do
					local TargetName = u
					if Bool then
						TargetName = ThisJob..u..k
					end
					if LockerTargets[TargetName] then
						exports.ox_target:removeZone(LockerTargets[TargetName])
						LockerTargets[TargetName] = nil
					end
				end
			end
		else
			ThisJob = Data["job"]
			if tostring(k) == "locker" then
				local TableToRun = LockerTargets
				if Bool then
					TableToRun = json.decode(Data["locker"])
				end
				for u, _ in pairs(TableToRun) do
					local TargetName = ThisJob..u..k
					exports[Config.Target]:RemoveZone(TargetName)
				end
			end
		end
	end
	Wait(100)
	for k, v in pairs(Data) do
		ThisJob = Data["job"]
		if tostring(k) == "locker" then
			for u, i in pairs(json.decode(Data["locker"])) do
				local TargetName = ThisJob..u..k
				local Info = i
				if Config.Target == "ox_target" then
					local Data = {
						Info = Info,
						Name = TargetName,
					}
					LockerTargets[TargetName] = exports.ox_target:addBoxZone({
						coords = vector3(Info.Target.x,Info.Target.y,Info.Target.z),
						size = vector3(1, 1, 1),
						rotation = 35,
						debug = Config.Debug,
						options = {
							{
								name= TargetName,
								type = "client",
								event = "Pug:Client:DoBusinessLockerLogic",
								args = Data,
								icon = "fa-solid fa-clipboard",
								label = Config.LangT["OpenLocker"],
								canInteract = function(entity)
									return IsPlayerJob(ThisJob)
								end,
								distance = 2.0
							}
						}
					})
				else
					LockerTargets[u] = v
					exports[Config.Target]:AddBoxZone(TargetName, vector3(Info.Target.x,Info.Target.y,Info.Target.z), 0.9, 0.9, {
						name=TargetName,
						heading=35,
						debugPoly = Config.Debug,
						minZ= Info.Target.z-0.5,
						maxZ= Info.Target.z+0.5,
					}, {
						options = {
							{
								icon = "fa-solid fa-clipboard",
								label = Config.LangT["OpenLocker"],
								event = " ",
								canInteract = function(entity)
									return IsPlayerJob(ThisJob)
								end,
								action = function()
									local Data = {
										args = {
											Info = Info,
											Name = TargetName,
										}
									}
									TriggerEvent("Pug:Client:DoBusinessLockerLogic",Data)
								end,
							},
						},
						distance = 2.0
					})
				end
			end
		end
	end
end)
RegisterNetEvent("Pug:Client:DoBusinessLockerLogic", function(Data)
	local Info = Data.args.Info
	local TargetName = Data.args.Name
	TaskGoToCoordAnyMeans(PlayerPedId(), Info.PedCoords.x, Info.PedCoords.y, Info.PedCoords.z, 1.0, 0, 0, 786603, 0xbf800000)
	while #(GetEntityCoords(PlayerPedId()) - vector3(Info.PedCoords.x, Info.PedCoords.y, Info.PedCoords.z)) >= 1.1 do Wait(500) end
	TaskTurnPedToFaceCoord(PlayerPedId(), vector3(Info.Target.x, Info.Target.y, Info.Target.z))
	Wait(800)
	SetEntityHeading(PlayerPedId(), Info.Heading)
	if Info.Animation ~= nil then
		if not Info.Animation.IsScenario then
			loadAnimDict(Info.Animation.AnimDict)
			TaskPlayAnim(PlayerPedId(), Info.Animation.AnimDict, Info.Animation.AnimAction, 1.0, 1, -1, 1, 1.0, 0, 0, 0)
		else
			ClearPedTasksImmediately(PlayerPedId())
			TaskStartScenarioInPlace(PlayerPedId(), Info.Animation.AnimDict, 0, false)
		end
	end
	local CitizenId = Config.FrameworkFunctions.GetPlayer(true, false, true).PlayerData.charinfo.citizenid
	if Config.InventoryType == "qs-inventory" then
		exports['qs-inventory']:RegisterStash(TargetName..CitizenId, Config.BusinessLockerSlots, Config.BusinessLockerSize) 
	elseif Config.InventoryType == "ox_inventory" then
		TriggerServerEvent("Pug:server:BusinessOxStashOpen", tostring(TargetName..CitizenId), Config.BusinessLockerSlots, Config.BusinessLockerSize)
		exports.ox_inventory:openInventory('stash', tostring(TargetName..CitizenId))
	else
		TriggerServerEvent("inventory:server:OpenInventory", "stash", TargetName..CitizenId, {
			maxweight = Config.BusinessLockerSize,
			slots = Config.BusinessLockerSlots,
		})
		TriggerEvent("inventory:client:SetCurrentStash", TargetName..CitizenId)
	end
	Wait(3000)
	ClearPedTasksImmediately(PlayerPedId())
end)
------------------------------

---------- [SUPPLIES] ----------
RegisterNetEvent("Pug:client:CreateAllTargetssupplies", function(Data, Bool)
	local ThisJob
	for k, v in pairs(Data) do
		if Config.Target == "ox_target" then
			ThisJob = Data["job"]
			if tostring(k) == "supplies" then
				local TableToRun = SupplyTargets
				if Bool then
					TableToRun = json.decode(Data["supplies"])
				end
				for u, _ in pairs(TableToRun) do
					local TargetName = u
					if Bool then
						TargetName = ThisJob..u..k
					end
					if SupplyTargets[TargetName] then
						exports.ox_target:removeZone(SupplyTargets[TargetName])
						SupplyTargets[TargetName] = nil
					end
				end
			end
		else
			ThisJob = Data["job"]
			if tostring(k) == "supplies" then
				local TableToRun = SupplyTargets
				if Bool then
					TableToRun = json.decode(Data["supplies"])
				end
				for u, _ in pairs(TableToRun) do
					local TargetName = ThisJob..u..k
					exports[Config.Target]:RemoveZone(TargetName)
				end
			end
		end
	end
	Wait(100)
	for k, v in pairs(Data) do
		ThisJob = Data["job"]
		if tostring(k) == "supplies" then
			for u, i in pairs(json.decode(Data["supplies"])) do
				local TargetName = ThisJob..u..k
				local Info = i
				if Config.Target == "ox_target" then
					local Data = {
						Info = Info,
						Name = TargetName,
					}
					SupplyTargets[TargetName] = exports.ox_target:addBoxZone({
						coords = vector3(Info.Target.x,Info.Target.y,Info.Target.z),
						size = vector3(1, 1, 1),
						rotation = 35,
						debug = Config.Debug,
						options = {
							{
								name= TargetName,
								type = "client",
								event = "Pug:Client:DoBusinessSuppliesLogic",
								args = Data,
								icon = "fa-solid fa-burger",
								label = Config.LangT["GrabSupplies"],
								canInteract = function(entity)
									return IsPlayerJob(ThisJob)
								end,
								distance = 2.0
							}
						}
					})
				else
					SupplyTargets[u] = v
					exports[Config.Target]:AddBoxZone(TargetName, vector3(Info.Target.x,Info.Target.y,Info.Target.z), 0.9, 0.9, {
						name=TargetName,
						heading=35,
						debugPoly = Config.Debug,
						minZ= Info.Target.z-0.5,
						maxZ= Info.Target.z+0.5,
					}, {
						options = {
							{
								icon = "fa-solid fa-burger",
								label = Config.LangT["GrabSupplies"],
								event = " ",
								canInteract = function(entity)
									return IsPlayerJob(ThisJob)
								end,
								action = function()
									local Data = {
										args = {
											Info = Info,
											Name = TargetName,
											job = ThisJob,
										}
									}
									TriggerEvent("Pug:Client:DoBusinessSuppliesLogic",Data)
								end,
							},
						},
						distance = 2.0
					})
				end
			end
		end
	end
end)
RegisterNetEvent("Pug:Client:DoBusinessSuppliesLogic", function(Data)
	local items = {}
	local Info = Data.args.Info
	TaskGoStraightToCoord(PlayerPedId(), Info.PedCoords.x, Info.PedCoords.y, Info.PedCoords.z, 1.0, 20000, 40000.0, 0.5)
	while #(GetEntityCoords(PlayerPedId()) - vector3(Info.PedCoords.x, Info.PedCoords.y, Info.PedCoords.z)) >= 1.1 do Wait(500) end
	TaskTurnPedToFaceCoord(PlayerPedId(), vector3(Info.Target.x, Info.Target.y, Info.Target.z))
	Wait(800)
	SetEntityHeading(PlayerPedId(), Info.Heading)
	if Info.Animation ~= nil then
		if not Info.Animation.IsScenario then
			loadAnimDict(Info.Animation.AnimDict)
			TaskPlayAnim(PlayerPedId(), Info.Animation.AnimDict, Info.Animation.AnimAction, 1.0, 1, -1, 1, 1.0, 0, 0, 0)
		else
			ClearPedTasksImmediately(PlayerPedId())
			TaskStartScenarioInPlace(PlayerPedId(), Info.Animation.AnimDict, 0, false)
		end
	end
    local items = {}
	local FinalSLot
    for k, v in pairs(Info.SuppliesData) do
        local supplyNum = k:match("Supplies(%d+)$") -- match supplies# format
        if supplyNum then
            items[tonumber(supplyNum)] = {
                name = v,
                price = tonumber(Info.SuppliesData["SuppliesPrice" .. supplyNum]),
                amount = tonumber(Info.SuppliesData["SuppliesAmount" .. supplyNum]),
                info = {},
                type = "item",
                slot = tonumber(supplyNum)
            }
			FinalSLot = tonumber(supplyNum)
        end
    end
	local FinalItemsShopOpening = {
		label = Data.args.Name,
		slots = FinalSLot,
		items = items
	}
	if Config.InventoryType == "ox_inventory" then
		TriggerServerEvent("Pug:server:BusinessOxShopOpen", FinalItemsShopOpening) 
		exports.ox_inventory:openInventory("shop", {type = Data.args.Name})
	-- elseif Config.InventoryType == "qs-inventory" then
		-- QS SHOP SETUP
	else
		TriggerServerEvent("inventory:server:OpenInventory", "shop", Data.args.Name, FinalItemsShopOpening)
	end
	Wait(3000)
	ClearPedTasksImmediately(PlayerPedId())
end)
------------------------------

---------- [BLIPS] ----------
RegisterNetEvent("Pug:client:CreateAllTargetsblip", function(Data, Bool)
	for k, v in pairs(BusinesBlips) do
		RemoveBlip(BusinesBlips[k])
		BusinesBlips[k] = nil
	end
	local ThisJob
	for k, v in pairs(Data) do
		if Config.Target == "ox_target" then
			ThisJob = Data["job"]
			if tostring(k) == "blip" then
				local TableToRun = BlipIconDatas
				if Bool then
					TableToRun = json.decode(Data["blip"])
				end
				for u, _ in pairs(TableToRun) do
					local TargetName = u
					if Bool then
						TargetName = ThisJob..u..k
					end
					if BlipIconDatas[TargetName] then
						exports.ox_target:removeZone(BlipIconDatas[TargetName])
						BlipIconDatas[TargetName] = nil
					end
				end
			end
		else
			ThisJob = Data["job"]
			if tostring(k) == "blip" then
				local TableToRun = BlipIconDatas
				if Bool then
					TableToRun = json.decode(Data["blip"])
				end
				for u, _ in pairs(TableToRun) do
					local TargetName = ThisJob..u..k
					exports[Config.Target]:RemoveZone(TargetName)
				end
			end
		end
	end
	Wait(100)
	for k, v in pairs(Data) do
		ThisJob = Data["job"]
		if tostring(k) == "blip" then
			for u, i in pairs(json.decode(Data["blip"])) do
				local TargetName = ThisJob..u..k
				local Info = i
				if Config.Target == "ox_target" then
					local Data = {
						Info = Info,
						Name = TargetName,
					}
					BlipIconDatas[TargetName] = exports.ox_target:addBoxZone({
						coords = vector3(Info.Target.x,Info.Target.y,Info.Target.z),
						size = vector3(1, 1, 1),
						rotation = 35,
						debug = Config.Debug,
						options = {
							{
								name= TargetName,
								type = "client",
								event = "Pug:Client:DoBusinessBlipLogic",
								args = Data,
								icon = "fa-solid fa-clipboard",
								label = Config.LangT["ToggleBlip"],
								canInteract = function(entity)
									return IsPlayerJob(ThisJob)
								end,
								distance = 2.0
							}
						}
					})
				else
					BlipIconDatas[u] = v
					exports[Config.Target]:AddBoxZone(TargetName, vector3(Info.Target.x,Info.Target.y,Info.Target.z), 0.9, 0.9, {
						name=TargetName,
						heading=35,
						debugPoly = Config.Debug,
						minZ= Info.Target.z-0.5,
						maxZ= Info.Target.z+0.5,
					}, {
						options = {
							{
								icon = "fa-solid fa-clipboard",
								label = Config.LangT["ToggleBlip"],
								event = " ",
								canInteract = function(entity)
									return IsPlayerJob(ThisJob)
								end,
								action = function()
									local Data = {
										args = {
											Info = Info,
											Name = TargetName,
										}
									}
									TriggerEvent("Pug:Client:DoBusinessBlipLogic",Data)
								end,
							},
						},
						distance = 2.0
					})
				end
				if Info.Enabled then
					CreateBlip(Info.Name, Info.Sprite, Info.Color, Info.Target, Info.Scale)
				end
			end
		end
	end
end)
local ToggleBlipCooldown = false
RegisterNetEvent("Pug:Client:DoBusinessBlipLogic", function(Data)
	local Info = Data.args.Info
	if not ToggleBlipCooldown then
		TaskGoToCoordAnyMeans(PlayerPedId(), Info.PedCoords.x, Info.PedCoords.y, Info.PedCoords.z, 1.0, 0, 0, 786603, 0xbf800000)
		while #(GetEntityCoords(PlayerPedId()) - vector3(Info.PedCoords.x, Info.PedCoords.y, Info.PedCoords.z)) >= 1.1 do Wait(500) end
		TaskTurnPedToFaceCoord(PlayerPedId(), vector3(Info.Target.x, Info.Target.y, Info.Target.z))
		Wait(800)
		SetEntityHeading(PlayerPedId(), Info.Heading)
		if Info.Animation ~= nil then
			if not Info.Animation.IsScenario then
				loadAnimDict(Info.Animation.AnimDict)
				TaskPlayAnim(PlayerPedId(), Info.Animation.AnimDict, Info.Animation.AnimAction, 1.0, 1, -1, 1, 1.0, 0, 0, 0)
			else
				ClearPedTasksImmediately(PlayerPedId())
				TaskStartScenarioInPlace(PlayerPedId(), Info.Animation.AnimDict, 0, false)
			end
		end
		ToggleBlipCooldown = true
		Wait(2000)
		ReloadSkin()
		TriggerEvent("Pug:client:ChangeBlipEnableStatus", Info)
		if Config.InventoryType == "qs-inventory" then
			ClearPedTasksImmediately(PlayerPedId())
		else
			ClearPedTasks(PlayerPedId())
		end
		ToggleBlipCooldown = false
	else
		if Config.InventoryType == "qs-inventory" then
			ClearPedTasksImmediately(PlayerPedId())
		else
			ClearPedTasks(PlayerPedId())
		end
		BusinessNotify(Config.LangT["CantSpamThis"], "error")
	end
end)
------------------------------

---------- [CRAFT STATIONS] ----------
RegisterNetEvent("Pug:client:CreateAllTargetscookstations", function(Data, Bool)
	local ThisJob
	for k, v in pairs(Data) do
		if Config.Target == "ox_target" then
			ThisJob = Data["job"]
			if tostring(k) == "cookstations" then
				local TableToRun = CookStationTargets
				if Bool then
					TableToRun = json.decode(Data["cookstations"])
				end
				for u, _ in pairs(TableToRun) do
					local TargetName = u
					if Bool then
						TargetName = ThisJob..u..k
					end
					if CookStationTargets[TargetName] then
						exports.ox_target:removeZone(CookStationTargets[TargetName])
						CookStationTargets[TargetName] = nil
					end
				end
			end
		else
			ThisJob = Data["job"]
			if tostring(k) == "cookstations" then
				local TableToRun = CookStationTargets
				if Bool then
					TableToRun = json.decode(Data["cookstations"])
				end
				for u, _ in pairs(TableToRun) do
					local TargetName = ThisJob..u..k
					exports[Config.Target]:RemoveZone(TargetName)
				end
			end
		end
	end
	Wait(100)
	for k, v in pairs(Data) do
		ThisJob = Data["job"]
		if tostring(k) == "cookstations" then
			for u, i in pairs(json.decode(Data["cookstations"])) do
				local TargetName = ThisJob..u..k
				local Info = i
				if Config.Target == "ox_target" then
					local Data = {
						Info = Info,
						Name = TargetName,
					}
					CookStationTargets[TargetName] = exports.ox_target:addBoxZone({
						coords = vector3(Info.Target.x,Info.Target.y,Info.Target.z),
						size = vector3(1, 1, 1),
						rotation = 35,
						debug = Config.Debug,
						options = {
							{
								name= TargetName,
								type = "client",
								event = "Pug:Client:DoBusinessCraftLogic",
								args = Data,
								icon = "fa-solid fa-clipboard",
								label = Info.CookStationText,
								canInteract = function(entity)
									return IsPlayerJob(ThisJob)
								end,
								distance = 2.0
							}
						}
					})
				else
					CookStationTargets[u] = v
					exports[Config.Target]:AddBoxZone(TargetName, vector3(Info.Target.x,Info.Target.y,Info.Target.z), 0.9, 0.9, {
						name=TargetName,
						heading=35,
						debugPoly = Config.Debug,
						minZ= Info.Target.z-0.5,
						maxZ= Info.Target.z+0.5,
					}, {
						options = {
							{
								icon = "fa-solid fa-clipboard",
								label = Info.CookStationText,
								event = " ",
								canInteract = function(entity)
									return IsPlayerJob(ThisJob)
								end,
								action = function()
									local Data = {
										args = {
											Info = Info,
											Name = TargetName,
										}
									}
									TriggerEvent("Pug:Client:DoBusinessCraftLogic",Data)
								end,
							},
						},
						distance = 2.0
					})
				end
				if Info.Enabled then
					CreateBlip(Info.Name, Info.Sprite, Info.Color, Info.Target, Info.Scale)
				end
			end
		end
	end
end)
RegisterNetEvent("Pug:Client:DoBusinessCraftLogic", function(Data)
	local Info = Data.args.Info
	if Info.PedCoords ~= nil then
		TaskGoStraightToCoord(PlayerPedId(), Info.PedCoords.x, Info.PedCoords.y, Info.PedCoords.z, 1.0, 20000, 40000.0, 0.5)
		while #(GetEntityCoords(PlayerPedId()) - vector3(Info.PedCoords.x, Info.PedCoords.y, Info.PedCoords.z)) >= 1.1 do Wait(500) end
		TaskTurnPedToFaceCoord(PlayerPedId(), vector3(Info.Target.x, Info.Target.y, Info.Target.z))
		Wait(800)
		SetEntityHeading(PlayerPedId(), Info.Heading)
	end
	if Info.Animation ~= nil then
		if not Info.Animation.IsScenario then
			loadAnimDict(Info.Animation.AnimDict)
			TaskPlayAnim(PlayerPedId(), Info.Animation.AnimDict, Info.Animation.AnimAction, 8.0, 1, -1, 1, 1.0, 0, 0, 0)
		else
			ClearPedTasksImmediately(PlayerPedId())
			TaskStartScenarioInPlace(PlayerPedId(), Info.Animation.AnimDict, 0, false)
		end
	end
	local AllCraftableData = Info.CookStationData
	local CraftMenu = {}
	if Config.Menu == "ox_lib" then
	else
		CraftMenu = {
			{
				header = Info.CookStationText,
				txt = " ",
				isMenuHeader = true,
			},
		}
	end
	for k, v in pairs(AllCraftableData) do
		local requiredItems = AllCraftableData[k].RequiredItemToCraftIt
		local itemsString = " "
		local ItemStringText = " "

		for key, value in pairs(requiredItems) do
			if string.match(key, "required%d+") then
				local amountKey = "requiredAmount" .. string.sub(key, -1)
				local amount = requiredItems[amountKey] or ""
				itemsString = itemsString .. amount .. "x " .. value .. ", "
				ItemStringText = ItemStringText .. amount .. "x " .. GetItemsInformation(value) .. ", "
			end
		end
		-- remove the trailing comma and space
		itemsString = itemsString:sub(1, -3)

		local RequiredText = ItemStringText
		local ItemsToCraft = {
			Item = AllCraftableData[k].MainIngredientItem,
			ItemAmount = AllCraftableData[k].AmountCanCraft,
			ItemsToRemove = itemsString,
		}
		local DisabledMenu = true
		local items = {}
		for item in itemsString:gmatch("[^,]+") do
			table.insert(items, item:match("^%s*(.-)%s*$"))
		end
		for _, item in ipairs(items) do
			local quantity, name = item:match("(%d+)x%s*(.*)")
			if HasItem(tostring(name), tonumber(quantity)) then
				DisabledMenu = false
			else
				DisabledMenu = true
				break
			end
		end
		if Config.Menu == "ox_lib" then
			CraftMenu[#CraftMenu+1] = {
				title = Config.LangT["Make"]..AllCraftableData[k].AmountCanCraft.."x "..GetItemsInformation(AllCraftableData[k].MainIngredientItem), 
				description = RequiredText,
				icon = "fas fa-hand",
				disabled = DisabledMenu,
				event = "Pug:client:CraftBusinessItem",
				args = ItemsToCraft,
				image = 'https://cfx-nui-ox_inventory/web/images/'..AllCraftableData[k].MainIngredientItem..'.png',                   
				metadata = {
					{label = 'Craft:', value = AllCraftableData[k].MainIngredientItem},                      
				},
			}
		else
			CraftMenu[#CraftMenu+1] = {
				header = Config.LangT["Make"]..AllCraftableData[k].AmountCanCraft.."x "..GetItemsInformation(AllCraftableData[k].MainIngredientItem),
				txt = RequiredText,
				icon = "fas fa-hand",
				disabled = DisabledMenu,
				params = {
					event = "Pug:client:CraftBusinessItem",
					args = ItemsToCraft,
				}
			}
		end
	end
	if Config.Menu == "ox_lib" then
		CraftMenu[#CraftMenu+1] = {
			title = Config.LangT["Close"],
			icon = "fas fa-x",
			event = "Pug:client:CraftBusinessItem",
		}
		lib.registerContext({
			id = Info.CookStationText,
			title = Info.CookStationText,
			onExit = function()
                ClearPedTasksImmediately(PlayerPedId())
            end,
			options = CraftMenu
		})
		lib.showContext(Info.CookStationText)
	else
		CraftMenu[#CraftMenu+1] = {
			header = Config.LangT["Close"],
			icon = "fas fa-x",
			params = {
				event = "Pug:client:CraftBusinessItem",
			}
		}
		exports[Config.Menu]:openMenu(CraftMenu)
	end
end)
RegisterNetEvent("Pug:client:CraftBusinessItem", function(Data)
	if not Data then ClearPedTasksImmediately(PlayerPedId()) return end
	local DisabledMenu = true
	local items = {}
	for item in Data.ItemsToRemove:gmatch("[^,]+") do
		table.insert(items, item:match("^%s*(.-)%s*$"))
	end
	for _, item in ipairs(items) do
		local quantity, name = item:match("(%d+)x%s*(.*)")
		if HasItem(tostring(name), tonumber(quantity)) then
			DisabledMenu = false
		else
			DisabledMenu = Config.LangT["MissingItems"]..quantity.."x ".. name
			break
		end
	end
	if DisabledMenu then BusinessNotify(DisabledMenu, 'error') return end
	for _, item in ipairs(items) do
		local quantity, name = item:match("(%d+)x%s*(.*)")
		BusinessToggleItem(false, tostring(name), tonumber(quantity))
	end
	if Config.UseProgressBar then
		if Framework == "ESX" then
			FWork.Progressbar(Config.LangT["Crafting"]..Data.ItemAmount.."x ".. GetItemsInformation(Data.Item), 7500, {FreezePlayer = true, onFinish = function()
				BusinessToggleItem(true, Data.Item, Data.ItemAmount)
				ClearPedTasksImmediately(PlayerPedId())
			end, onCancel = function()
				BusinessNotify(Config.LangT["Canceled"], 'error')
				for _, item in ipairs(items) do
					local quantity, name = item:match("(%d+)x%s*(.*)")
					BusinessToggleItem(true, name, quantity)
				end
				ClearPedTasksImmediately(PlayerPedId())
			end})
		else
			FWork.Functions.Progressbar("Crafting", Config.LangT["Crafting"]..Data.ItemAmount.."x ".. GetItemsInformation(Data.Item), 7500, false, true, {
				disableMovement = true,
				disableCarMovement = true,
				disableMouse = false,
				disableCombat = true,
			}, {}, {}, {}, function() -- Done
				BusinessToggleItem(true, Data.Item, Data.ItemAmount)
				ClearPedTasksImmediately(PlayerPedId())
			end, function()
				BusinessNotify(Config.LangT["Canceled"], 'error')
				for _, item in ipairs(items) do
					local quantity, name = item:match("(%d+)x%s*(.*)")
					BusinessToggleItem(true, name, quantity)
				end
				ClearPedTasksImmediately(PlayerPedId())
			end)
		end
	else
		Wait(1500)
		BusinessNotify(Config.LangT["Crafting"].. GetItemsInformation(item), 'error')
		Wait(1500)
		BusinessNotify(3, 'error')
		Wait(1500)
		BusinessNotify(2, 'error')
		Wait(1500)
		BusinessNotify(1, 'error')
		Wait(1500)
		BusinessToggleItem(true, Data.Item, Data.ItemAmount)
		ClearPedTasksImmediately(PlayerPedId())
	end
end)
------------------------------

---------- [ANIMATIONS] ----------
RegisterNetEvent("Pug:client:CreateAllTargetsanimations", function(Data, Bool)
	local ThisJob
	for k, v in pairs(Data) do
		if Config.Target == "ox_target" then
			ThisJob = Data["job"]
			if tostring(k) == "animations" then
				local TableToRun = AnimationTargets
				if Bool then
					TableToRun = json.decode(Data["animations"])
				end
				for u, _ in pairs(TableToRun) do
					local TargetName = u
					if Bool then
						TargetName = ThisJob..u..k
					end
					if AnimationTargets[TargetName] then
						exports.ox_target:removeZone(AnimationTargets[TargetName])
						AnimationTargets[TargetName] = nil
					end
				end
			end
		else
			ThisJob = Data["job"]
			if tostring(k) == "animations" then
				local TableToRun = AnimationTargets
				if Bool then
					TableToRun = json.decode(Data["animations"])
				end
				for u, _ in pairs(TableToRun) do
					local TargetName = ThisJob..u..k
					exports[Config.Target]:RemoveZone(TargetName)
				end
			end
		end
	end
	Wait(100)
	for k, v in pairs(Data) do
		ThisJob = Data["job"]
		if tostring(k) == "animations" then
			for u, i in pairs(json.decode(Data["animations"])) do
				local TargetName = ThisJob..u..k
				local Info = i
				if Config.Target == "ox_target" then
					local Data = {
						Info = Info,
						Name = TargetName,
					}
					AnimationTargets[TargetName] = exports.ox_target:addBoxZone({
						coords = vector3(Info.Target.x,Info.Target.y,Info.Target.z),
						size = vector3(1, 1, 1),
						rotation = 35,
						debug = Config.Debug,
						options = {
							{
								name= TargetName,
								type = "client",
								event = "Pug:Client:DoBusinessAnimationsLogic",
								args = Data,
								icon = "fa-solid fa-land-mine-on",
								label = Config.LangT["Emote"],
								-- job = ThisJob,
								distance = 2.0
							}
						}
					})
				else
					AnimationTargets[u] = v
					exports[Config.Target]:AddBoxZone(TargetName, vector3(Info.Target.x,Info.Target.y,Info.Target.z), 0.7, 0.7, {
						name=TargetName,
						heading=35,
						debugPoly = Config.Debug,
						minZ= Info.Target.z-0.3,
						maxZ= Info.Target.z+0.3,
					}, {
						options = {
							{
								icon = "fa-solid fa-land-mine-on",
								label = Config.LangT["Emote"],
								event = " ",
								-- job = ThisJob,
								action = function()
									local Data = {
										args = {
											Info = Info,
											Name = TargetName,
										}
									}
									TriggerEvent("Pug:Client:DoBusinessAnimationsLogic",Data)
								end,
							},
						},
						distance = 2.0
					})
				end
			end
		end
	end
end)
RegisterNetEvent("Pug:Client:DoBusinessAnimationsLogic", function(Data)
	local Info = Data.args.Info
	if Info.PedCoords ~= nil then
		TaskGoStraightToCoord(PlayerPedId(), Info.PedCoords.x, Info.PedCoords.y, Info.PedCoords.z, 1.0, 20000, 40000.0, 0.5)
		while #(GetEntityCoords(PlayerPedId()) - vector3(Info.PedCoords.x, Info.PedCoords.y, Info.PedCoords.z)) >= 1.1 do Wait(500) end
		TaskTurnPedToFaceCoord(PlayerPedId(), vector3(Info.Target.x, Info.Target.y, Info.Target.z))
		Wait(800)
		SetEntityHeading(PlayerPedId(), Info.Heading)
	end
	if Info.Animation ~= nil then
		if not Info.Animation.IsScenario then
			if Info.Animation.IsNetWorkedScene then
				loadAnimDict(Info.Animation.AnimDict)
				local NetworkScene = NetworkCreateSynchronisedScene(vector3(Info.PedCoords.x, Info.PedCoords.y, Info.PedCoords.z+1), vector3(0.0, 0.0, 0.0), 2, false, true, 1065353216, 0, 1.3)
				NetworkAddPedToSynchronisedScene(PlayerPedId(), NetworkScene, Info.Animation.AnimDict, Info.Animation.AnimAction, 1.5, -4.0, 1, 1, 1148846080, 0)
				NetworkStartSynchronisedScene(NetworkScene)
			else
				loadAnimDict(Info.Animation.AnimDict)
				TaskPlayAnim(PlayerPedId(), Info.Animation.AnimDict, Info.Animation.AnimAction, 8.0, 1, -1, 1, 1.0, 0, 0, 0)
			end
			TriggerEvent("Pug:client:ClearPedTaskLoopCheck")
		else
			ClearPedTasksImmediately(PlayerPedId())
			TaskStartScenarioInPlace(PlayerPedId(), Info.Animation.AnimDict, 0, false)
		end
	end
end)
------------------------------

---------- [PROP PLACEMENTS] ----------
RegisterNetEvent("Pug:client:CreateAllTargetsprops", function(Data, Bool)
	for k, v in pairs(Data) do
		if tostring(k) == "props" then
			local TableToRun = PropPlacements
			if Bool then
				TableToRun = json.decode(Data["props"])
			end
			for u, i in pairs(TableToRun) do
				if Bool then
					local Info = i
					ClosestObject = GetClosestObjectOfType(vector3(Info.Target.x,Info.Target.y,Info.Target.z), 5.0, GetHashKey(Info.Animation))
					if DoesEntityExist(ClosestObject) then
						TriggerEvent("FullyDeleteBusinessEntity", ClosestObject)
					end
				else
					if TableToRun[u].Spawned then
						if DoesEntityExist(TableToRun[u].Spawned) then
							TriggerEvent("FullyDeleteBusinessEntity",TableToRun[u].Spawned)
							TableToRun[u] = nil
						end
					end
				end
			end
		end
	end
	Wait(1000)
	for k, v in pairs(Data) do
		if tostring(k) == "props" then
			for u, i in pairs(json.decode(Data["props"])) do
				local Info = i
				PropPlacements[#PropPlacements+1] = {
					Prop = Info.Animation,
					Coords = Info.Target, 
					Heading = Info.Heading,
					Spawned = nil,
					Business = Info.Business,
				}
			end
		end
	end
end)

CreateThread(function()
	while true do
		Wait(1000)
		for k, v in pairs(PropPlacements) do
			if not (v.Prop == "prop_tv_flat_michael") and #(GetEntityCoords(PlayerPedId()) - vector3(v.Coords.x, v.Coords.y, v.Coords.z)) <= 100 then
				if not PropPlacements[k].Spawned then
					local ZAxis = v.Coords.z
					if v.Prop == "gr_prop_gr_bench_03a" then
						ZAxis = ZAxis-1.44
					elseif v.Prop == "prop_b_board_blank" or v.Prop == "prop_tv_flat_michael" then
						ZAxis = ZAxis-0.93
					end
					LoadModel(v.Prop)
					PropPlacements[k].Spawned = CreateObject(GetHashKey(v.Prop), vector3(v.Coords.x,v.Coords.y,ZAxis))
					while not DoesEntityExist(PropPlacements[k].Spawned) do Wait(100) end
					SetEntityHeading(PropPlacements[k].Spawned, v.Heading)
					FreezeEntityPosition(PropPlacements[k].Spawned, true)
					if v.Prop == "prop_b_board_blank" or v.Prop == "prop_tv_flat_michael" then
						if Config.Target == "ox_target" then
							local Data = {
								Business = v.Business,
								Prop = v.Prop,
							}
							exports.ox_target:addLocalEntity(PropPlacements[k].Spawned, {
								{
									name= "ChangeChalkBoardImage"..tostring(ZAxis),
									type = "client",
									event = "Pug:client:ChangeChalkBoardImage",
									icon = "fa-solid fa-paintbrush",
									label = Config.LangT["ChangeImage"],
									args = Data,
									distance = 2.0
								},
							})
						else
							exports[Config.Target]:AddTargetModel(tostring(v.Prop), {
								options = {
									{
										type = "client",
										action = function()
											local Data = {
												Business = v.Business,
												Prop = v.Prop,
											}
											TriggerEvent("Pug:client:ChangeChalkBoardImage", Data)
										end,
										icon = "fa-solid fa-paintbrush",
										label = Config.LangT["ChangeImage"],
									},
								},
								distance = 2.0    
							})
						end
					end
				end
			elseif #(GetEntityCoords(PlayerPedId()) - vector3(v.Coords.x, v.Coords.y, v.Coords.z)) <= Config.TVSpawnDistance and v.Prop == "prop_tv_flat_michael" then
				if not PropPlacements[k].Spawned then
					local ZAxis = v.Coords.z
					if v.Prop == "gr_prop_gr_bench_03a" then
						ZAxis = ZAxis-1.44
					elseif v.Prop == "prop_b_board_blank" or v.Prop == "prop_tv_flat_michael" then
						ZAxis = ZAxis-0.53
					end
					LoadModel(v.Prop)
					PropPlacements[k].Spawned = CreateObject(GetHashKey(v.Prop), vector3(v.Coords.x,v.Coords.y,ZAxis))
					while not DoesEntityExist(PropPlacements[k].Spawned) do Wait(100) end
					SetEntityHeading(PropPlacements[k].Spawned, v.Heading)
					FreezeEntityPosition(PropPlacements[k].Spawned, true)
					if Config.Target == "ox_target" then
						local Data = {
							Business = v.Business,
							Prop = v.Prop,
						}
						exports.ox_target:addLocalEntity(PropPlacements[k].Spawned, {
							{
								name= "ChangeChalkBoardImage"..tostring(ZAxis),
								type = "client",
								event = "Pug:client:ChangeChalkBoardImage",
								icon = "fa-solid fa-paintbrush",
								label = Config.LangT["ChangeImage"],
								args = Data,
								distance = 2.0
							},
							{
								name= "UseMouseOnTv"..tostring(ZAxis),
								type = "client",
								event = "Pug:client:UseMouseOnTv",
								icon = "fa-solid fa-computer-mouse",
								label = Config.LangT["UseMouse"],
								args = Data,
								distance = 2.0
							},
						})
					else
						exports[Config.Target]:AddTargetModel(tostring(v.Prop), {
							options = {
								{
									type = "client",
									action = function()
										local Data = {
											Business = v.Business,
											Prop = v.Prop,
										}
										TriggerEvent("Pug:client:ChangeChalkBoardImage", Data)
									end,
									icon = "fa-solid fa-paintbrush",
									label = Config.LangT["ChangeImage"],
								},
								{
									type = "client",
									event = "Pug:client:UseMouseOnTv",
									icon = "fa-solid fa-computer-mouse",
									label = Config.LangT["UseMouse"],
								},
							},
							distance = 2.0    
						})
					end
				end
			else
				if PropPlacements[k].Spawned then
					if PropPlacements[k].Prop == "prop_tv_flat_michael" or PropPlacements[k].Prop == "prop_b_board_blank" then
						ChangeChalkBoardImage("none", tostring(PropPlacements[k].Prop))
					end
					if DoesEntityExist(PropPlacements[k].Spawned) then
						TriggerEvent("FullyDeleteBusinessEntity",PropPlacements[k].Spawned)
					end
					PropPlacements[k].Spawned = nil
				end
			end
		end
	end
end)
------------------------------

---------- [PED PLACEMENTS] ----------
RegisterNetEvent("Pug:client:CreateAllTargetspeds", function(Data, Bool)
	local ThisJob
	for k, v in pairs(Data) do
		ThisJob = Data["job"]
		if tostring(k) == "peds" then
			local TableToRun = PedPlacements
			if Bool then
				TableToRun = json.decode(Data["peds"])
			end
			for _, i in pairs(TableToRun) do
				if Bool then
					local Info = i
					CurrentObject = CreatePed(2, GetHashKey(Info.Animation), object,vector3(Info.Target.x,Info.Target.y,Info.Target.z))
					if DoesEntityExist(ClosestObject) then
						TriggerEvent("FullyDeleteBusinessEntity", ClosestObject)
					end
				else
					if DoesEntityExist(i) then
						TriggerEvent("FullyDeleteBusinessEntity", i)
					end
				end
			end
		end
	end
	Wait(1000)
	for k, v in pairs(Data) do
		ThisJob = Data["job"]
		if tostring(k) == "peds" then
			for u, i in pairs(json.decode(Data["peds"])) do
				local Info = i
				PedPlacements[u] = v
				LoadModel(Info.Model)
				PedPlacements[u] = CreatePed(2, Info.Model,  vector3(Info.Target.x,Info.Target.y,Info.Target.z))
				SetEntityHeading(PedPlacements[u], Info.Heading)
				FreezeEntityPosition(PedPlacements[u], true)
				SetPedFleeAttributes(PedPlacements[u], 0, 0)
				SetPedDiesWhenInjured(PedPlacements[u], false)
				SetPedKeepTask(PedPlacements[u], true)
				SetBlockingOfNonTemporaryEvents(PedPlacements[u], true)
				SetEntityInvincible(PedPlacements[u], true)
				if Info.Animation ~= nil then
					if not Info.Animation.IsScenario then
						if Info.Animation.IsNetWorkedScene then
							loadAnimDict(Info.Animation.AnimDict)
							local NetworkScene = NetworkCreateSynchronisedScene(vector3(Info.PedCoords.x, Info.PedCoords.y, Info.PedCoords.z+1), vector3(0.0, 0.0, 0.0), 2, false, true, 1065353216, 0, 1.3)
							NetworkAddPedToSynchronisedScene(PedPlacements[u], NetworkScene, Info.Animation.AnimDict, Info.Animation.AnimAction, 1.5, -4.0, 1, 1, 1148846080, 0)
							NetworkStartSynchronisedScene(NetworkScene)
						else
							loadAnimDict(Info.Animation.AnimDict)
							TaskPlayAnim(PedPlacements[u], Info.Animation.AnimDict, Info.Animation.AnimAction, 8.0, 1, -1, 1, 1.0, 0, 0, 0)
						end
					else
						ClearPedTasksImmediately(PedPlacements[u])
						TaskStartScenarioInPlace(PedPlacements[u], Info.Animation.AnimDict, 0, false)
					end
				end
			end
		end
	end
end)
------------------------------

---------- [BUSINESS ZONES] ----------
RegisterNetEvent("Pug:client:CreateAllTargetszone", function(Data, Bool)
	local ThisJob
	for k, v in pairs(Data) do
		ThisJob = Data["job"]
		if tostring(k) == "zone" then
			local TableToRun = ZoneLocations
			if Bool then
				TableToRun = json.decode(Data["zone"])
			end
			for _, i in pairs(TableToRun) do
				if Bool then
				else
					ZoneLocations[i.name]:destroy()
				end
			end
		end
	end
	Wait(100)
	for k, v in pairs(Data) do
		ThisJob = Data["job"]
		if tostring(k) == "zone" then
			for u, i in pairs(json.decode(Data["zone"])) do
				local Info = i
				ZoneLocations[Info.Business] = PolyZone:Create(Info.Target, { 
					name = tostring(Info.Business),
					minZ = Info.Target[1].z - Info.MinZ,
					maxZ = Info.Target[1].z + Info.MaxZ,
					debugPoly = Config.Debug,
				})
				ZoneLocations[Info.Business]:onPlayerInOut(function(isPointInside)
					if isPointInside then
						if Info.Business ==  ZoneLocations[Info.Business].name then
							BusinessNotify("Entered "..  ZoneLocations[Info.Business].name, 'success')
						end
					else
						if Info.Business ==  ZoneLocations[Info.Business].name then
							if Framework == "QBCore" then
								if Config.FrameworkFunctions.GetPlayer(true, false, true).PlayerData.job.onduty then
									if Config.FrameworkFunctions.GetPlayer(true, false, true).PlayerData.job.name == tostring(Info.Business) then
										TriggerServerEvent("QBCore:ToggleDuty")
									end
								end
							end
							BusinessNotify("Exited "..  ZoneLocations[Info.Business].name, 'error')
						end
					end
				end)
			end
		end
	end
end)
------------------------------

---------- [CHALKBOARD TEXTURE] ----------
RegisterNetEvent("Pug:client:CreateAllTargetswhiteboard", function(Data, Bool, Changed, Upgrades)
	if Changed then
		local Updated
		for key, v in pairs(WhiteboardTexture) do
			if Changed == v.Prop then
				local Info = Data
				if Info.Prop == Changed then
					if #(vector3(v.Coords.x, v.Coords.y, v.Coords.z) - vector3(Info.Target.x, Info.Target.y, Info.Target.z)) <= 4.0 then
						WhiteboardTexture[key] = {
							Coords = Info.Target, 
							UrlLink = Info.UrlLink,
							Prop = Info.Prop,
							Spawned = false,
						}
						Updated = true
					end
				end
			end
		end
		if not Updated then
			for _, v in pairs(Upgrades) do
				local Info = v
				if Info.Prop == Changed then
					WhiteboardTexture[#WhiteboardTexture+1] = {
						Coords = Info.Target, 
						UrlLink = Info.UrlLink,
						Prop = Info.Prop,
						Spawned = false,
					}
					break
				end
			end
		end
	else
		for k, _ in pairs(Data) do
			if tostring(k) == "whiteboard" then
				local Table
				if Bool then
					Table = json.decode(Data["whiteboard"])
				else
					Table = Data
				end
				for _, i in pairs(Table) do
					local Info = i
					WhiteboardTexture[#WhiteboardTexture+1] = {
						Coords = Info.Target, 
						UrlLink = Info.UrlLink,
						Prop = Info.Prop,
						Spawned = false,
					}
				end
			end
		end
	end
end)

CreateThread(function()
	while true do
		for k, v in pairs(WhiteboardTexture) do
			if not (v.Prop == "prop_tv_flat_michael") and #(GetEntityCoords(PlayerPedId()) - vector3(v.Coords.x, v.Coords.y, v.Coords.z)) <= Config.TVSpawnDistance then
				if not WhiteboardTexture[k].Spawned then
					ChangeChalkBoardImage(tostring(v.UrlLink), v.Prop)
					WhiteboardTexture[k].Spawned = tostring(v.UrlLink)
				end
			elseif #(GetEntityCoords(PlayerPedId()) - vector3(v.Coords.x, v.Coords.y, v.Coords.z)) <= Config.TVSpawnDistance and v.Prop == "prop_tv_flat_michael" then
				if not WhiteboardTexture[k].Spawned then
					ChangeChalkBoardImage(tostring(v.UrlLink), v.Prop)
					WhiteboardTexture[k].Spawned = tostring(v.UrlLink)
				end
			elseif WhiteboardTexture[k].Spawned then
				if WhiteboardTexture[k].Spawned == tostring(v.UrlLink) then
					WhiteboardTexture[k].Spawned = nil
				end
			end
		end
		Wait(2000)
	end
end)
------------------------------

---------- [ITEM CREATOR] ----------
RegisterNetEvent("Pug:client:CreateAllTargetsitems", function(Data, Bool)
	local ThisJob
	for k, v in pairs(Data) do
		if Config.Target == "ox_target" then
			ThisJob = Data["job"]
			if tostring(k) == "items" then
				local TableToRun = ItemsTargets
				if Bool then
					TableToRun = json.decode(Data["items"])
				end
				for u, _ in pairs(TableToRun) do
					local TargetName = u
					if Bool then
						TargetName = ThisJob..u..k
					end
					if ItemsTargets[TargetName] then
						exports.ox_target:removeZone(ItemsTargets[TargetName])
						ItemsTargets[TargetName] = nil
					end
				end
			end
		else
			ThisJob = Data["job"]
			if tostring(k) == "items" then
				local TableToRun = ItemsTargets
				if Bool then
					TableToRun = json.decode(Data["items"])
				end
				for u, _ in pairs(TableToRun) do
					local TargetName = ThisJob..u..k
					exports[Config.Target]:RemoveZone(TargetName)
				end
			end
		end
	end
	Wait(100)
	for k, v in pairs(Data) do
		ThisJob = Data["job"]
		if tostring(k) == "items" then
			for u, i in pairs(json.decode(Data["items"])) do
				local TargetName = ThisJob..u..k
				local Info = i
				if Config.Target == "ox_target" then
					local Data = {
						Info = Info,
					}
					ItemsTargets[TargetName] = exports.ox_target:addBoxZone({
						coords = vector3(Info.Target.x,Info.Target.y,Info.Target.z),
						size = vector3(1, 1, 1),
						rotation = 35,
						debug = Config.Debug,
						options = {
							{
								name= TargetName,
								type = "client",
								event = "Pug:Client:DoBusinessItemsLogic",
								args = Data,
								icon = "fa-solid fa-folder-plus",
								label = Config.LangT["CreateItem"],
								canInteract = function(entity)
									return IsPlayerJob(ThisJob)
								end,
								distance = 2.0
							}
						}
					})
				else
					ItemsTargets[u] = v
					exports[Config.Target]:AddBoxZone(TargetName, vector3(Info.Target.x,Info.Target.y,Info.Target.z), 0.4, 0.4, {
						name=TargetName,
						heading=35,
						debugPoly = Config.Debug,
						minZ= Info.Target.z-0.3,
						maxZ= Info.Target.z+0.3,
					}, {
						options = {
							{
								icon = "fa-solid fa-folder-plus",
								label = Config.LangT["CreateItem"],
								event = " ",
								canInteract = function(entity)
									return IsPlayerJob(ThisJob)
								end,
								action = function()
									local Data = {
										args = {
											Info = Info,
										}
									}
									TriggerEvent("Pug:Client:DoBusinessItemsLogic", Data)
								end,
							},
						},
						distance = 2.0
					})
				end
			end
		end
	end
end)
RegisterNetEvent("Pug:Client:DoBusinessItemsLogic", function(Data)
	local Info = Data.args.Info
	if Info.PedCoords ~= nil then
		TaskGoStraightToCoord(PlayerPedId(), Info.PedCoords.x, Info.PedCoords.y, Info.PedCoords.z, 1.0, 20000, 40000.0, 0.5)
		while #(GetEntityCoords(PlayerPedId()) - vector3(Info.PedCoords.x, Info.PedCoords.y, Info.PedCoords.z)) >= 1.1 do Wait(500) end
		TaskTurnPedToFaceCoord(PlayerPedId(), vector3(Info.Target.x, Info.Target.y, Info.Target.z))
		Wait(800)
		SetEntityHeading(PlayerPedId(), Info.Heading)
	end
	if Info.Animation ~= nil then
		if not Info.Animation.IsScenario then
			loadAnimDict(Info.Animation.AnimDict)
			TaskPlayAnim(PlayerPedId(), Info.Animation.AnimDict, Info.Animation.AnimAction, 8.0, 1, -1, 1, 1.0, 0, 0, 0)
		else
			ClearPedTasksImmediately(PlayerPedId())
			TaskStartScenarioInPlace(PlayerPedId(), Info.Animation.AnimDict, 0, false)
		end
	end
	if Config.Input == "ox_lib" then
		local Input = lib.inputDialog(Config.LangT["CreateNewItem"], {
			{
				label = Config.LangT["ItemName"],
				name = "name",
				type = "input",
			},
			{
				label = Config.LangT["ItemLabel"],
				name = "label",
				type = "input",
			},
			{
				label = Config.LangT["ItemDescription"],
				name = "description",
				type = "input",
			},
			{
				label = Config.LangT["ItemPNG"],
				name = "url",
				type = "input",
			},
			{
				label = Config.LangT["FoodWaterType"],
				name = "type",
				type = "select",
				options = {{ value = "food", label = "Food"  }, { value = "water", label = "Water"}, { value = "neither", label = "N/A"} },
			},
			{
				label = Config.LangT["ItemIncrease"],
				name = "increase",
				type = "slider",
			},
			{
				label = Config.LangT["ItemWeight"],
				name = "weight",
				type = "slider",
			},
			{
				label = Config.LangT["Unique"],
				name = "unique",
				type = "checkbox",
			},
		})
		
		if Input then 
			local ItemName = tostring(string.lower(Input[1]))
			if not Input[1] then
				ClearPedTasksImmediately(PlayerPedId())
				BusinessNotify(Config.LangT["MissingItemName"], "error")
				return
			elseif string.match(ItemName, " ") then
				ClearPedTasksImmediately(PlayerPedId())
				BusinessNotify(Config.LangT["NoSpaces"], "error")
				return
			end
			local ItemLabel = tostring(Input[2])
			if not Input[2] then
				ClearPedTasksImmediately(PlayerPedId())
				BusinessNotify(Config.LangT["MissingItemLabel"], "error")
				return
			end
			local Description = tostring(Input[3])
			if not Input[3] then
				ClearPedTasksImmediately(PlayerPedId())
				BusinessNotify(Config.LangT["MissingDescription"], "error")
				return
			end
			local UrlLink = tostring(Input[4])
			if not Input[4] then
				ClearPedTasksImmediately(PlayerPedId())
				BusinessNotify(Config.LangT["MissingUrlLink"], "error")
				return
			end
			local ItemType = Input[5]
			if not Input[5] then
				ClearPedTasksImmediately(PlayerPedId())
				BusinessNotify(Config.LangT["MissingType"], "error")
				return
			end
			local Increase = tostring(Input[6])
			if not Input[6] then
				if ItemType == "neither" then
				else
					ClearPedTasksImmediately(PlayerPedId())
					BusinessNotify(Config.LangT["MissingIncrease"], "error")
					return
				end
			end
			local Weight = Input[7]
			local Unique = Input[8]
			if UrlLink:match("%.png$") or UrlLink:match("%.gif$") then
				local ItemInfo = {
					Item = ItemName,
					Label = ItemLabel,
					Description = Description,
					Image = UrlLink,
					Job = Info.Business,
					Type = ItemType,
					Increase = tonumber(Increase),
					Weight = Weight,
					Unique = Unique,
				}
				TriggerServerEvent("Pug:server:CreateNewServerItem", ItemInfo)
			else
				ClearPedTasksImmediately(PlayerPedId())
				BusinessNotify(Config.LangT["NeedsToBePNG"], "error")
			end
		else
			ClearPedTasksImmediately(PlayerPedId())
			BusinessNotify(Config.LangT["MissingInput"], "error")
		end
	else
		local Input = exports[Config.Input]:ShowInput({
			header = Config.LangT["CreateNewItem"],
			submitText = "Submit",
			inputs = { 
				{
					text = Config.LangT["ItemName"],
					name = "name",
					type = "text",
					isRequired = true
				},
				{
					text = Config.LangT["ItemLabel"],
					name = "label",
					type = "text",
					isRequired = true
				},
				{
					text = Config.LangT["ItemDescription"],
					name = "description",
					type = "text",
					isRequired = true
				},
				{
					text = Config.LangT["ItemPNG"],
					name = "url",
					type = "text",
					isRequired = true
				},
				{
					text = Config.LangT["FoodWaterType"],
					name = "type",
					type = "radio",
					options = {{ value = "food", text = "Food"  }, { value = "water", text = "Water"}, { value = "neither", text = "N/A"} },
					isRequired = true
				},
				{
					text = Config.LangT["ItemIncrease"],
					name = "increase",
					type = "number",
					isRequired = true
				},
				{
					text = Config.LangT["ItemWeight"],
					name = "weight",
					type = "number",
					isRequired = true
				},
				{
					text = Config.LangT["Unique"],
					name = "unique",
					type = "checkbox",
					options = {{ value = "unique", text = "Unique"  } },
					isRequired = true
				},
			},
		})
		if Input then
			local ItemName = tostring(string.lower(Input.name))
			if not ItemName then
				ClearPedTasksImmediately(PlayerPedId())
				BusinessNotify(Config.LangT["MissingItemName"], "error")
				return
			end
			if string.match(ItemName, " ") then
				ClearPedTasksImmediately(PlayerPedId())
				BusinessNotify(Config.LangT["NoSpaces"], "error")
				return
			end
			local ItemLabel = tostring(Input.label)
			if not ItemLabel then
				ClearPedTasksImmediately(PlayerPedId())
				BusinessNotify(Config.LangT["MissingItemLabel"], "error")
				return
			end
			local Description = tostring(Input.description)
			if not Description then
				ClearPedTasksImmediately(PlayerPedId())
				BusinessNotify(Config.LangT["MissingDescription"], "error")
				return
			end
			local UrlLink = tostring(Input.url)
			if not UrlLink then
				ClearPedTasksImmediately(PlayerPedId())
				BusinessNotify(Config.LangT["MissingUrlLink"], "error")
				return
			end
			local ItemType = Input.type
			if not ItemType then
				ClearPedTasksImmediately(PlayerPedId())
				BusinessNotify(Config.LangT["MissingType"], "error")
				return
			end
			local Weight = Input.weight or 1.0
			local Increase = Input.increase or 15
			local Unique = Input.unique
			print(Unique)
			if Input.url:match("%.png$") or Input.url:match("%.gif$") then
				local ItemInfo = {
					Item = ItemName,
					Label = ItemLabel,
					Description = Description,
					Image = UrlLink,
					Job = Info.Business,
					Type = ItemType,
					Increase = tonumber(Increase),
					Weight = Weight,
					Unique = Unique,
				}
				TriggerServerEvent("Pug:server:CreateNewServerItem", ItemInfo)
			else
				ClearPedTasksImmediately(PlayerPedId())
				BusinessNotify(Config.LangT["NeedsToBePNG"], "error")
			end
		else
			ClearPedTasksImmediately(PlayerPedId())
			BusinessNotify(Config.LangT["MissingInput"], "error")
		end
	end
	ClearPedTasksImmediately(PlayerPedId())
end)
------------------------------

---------- [CAR GARAGES] ----------
local function CloseMenuFull()
    if Framework == "QBCore" and Config.Menu == "qb-menu" then
        exports[Config.Menu]:closeMenu()
    end
end

local function EnumerateEntitiesWithinDistance(entities, isPlayerEntities, coords, maxDistance)
	local nearbyEntities = {}
	if coords then
		coords = vector3(coords.x, coords.y, coords.z)
	else
		local playerPed = PlayerPedId()
		coords = GetEntityCoords(playerPed)
	end
	for k, entity in pairs(entities) do
		local distance = #(coords - GetEntityCoords(entity))
		if distance <= maxDistance then
			nearbyEntities[#nearbyEntities+1] = isPlayerEntities and k or entity
		end
	end
	return nearbyEntities
end

local function GetVehiclesInArea(coords, maxDistance) -- Vehicle inspection in designated area
	return EnumerateEntitiesWithinDistance(GetGamePool('CVehicle'), false, coords, maxDistance) 
end

local function IsSpawnPointClear(coords, maxDistance) -- Check the spawn point to see if it's empty or not:
	return #GetVehiclesInArea(coords, maxDistance) == 0 
end
local function PugSpawnVehicle(model, cb, coords, isnetworked, teleportInto)
	ClearPedTasksImmediately(PlayerPedId())
    local ped = PlayerPedId()
    model = type(model) == 'string' and GetHashKey(model) or model
    if not IsModelInCdimage(model) then return end
    if coords then
        coords = type(coords) == 'table' and vec3(coords.x, coords.y, coords.z) or coords
    else
        coords = GetEntityCoords(ped)
    end
    isnetworked = true
    LoadModel(model)
    local veh = CreateVehicle(model, coords.x, coords.y, coords.z, coords.w, isnetworked, false)
    local netid = NetworkGetNetworkIdFromEntity(veh)
    SetVehicleHasBeenOwnedByPlayer(veh, true)
    SetNetworkIdCanMigrate(netid, true)
    SetVehicleNeedsToBeHotwired(veh, false)
    SetVehRadioStation(veh, 'OFF')
    SetVehicleFuelLevel(veh, 100.0)
    SetModelAsNoLongerNeeded(model)
    if cb then cb(veh) end
end
RegisterNetEvent("Pug:client:CreateAllTargetsgarage", function(Data, Bool)
	local ThisJob
	for k, v in pairs(Data) do
		if Config.Target == "ox_target" then
			ThisJob = Data["job"]
			if tostring(k) == "garage" then
				local TableToRun = GarageTargets
				if Bool then
					TableToRun = json.decode(Data["garage"])
				end
				for u, _ in pairs(TableToRun) do
					local TargetName = u
					if Bool then
						TargetName = ThisJob..u..k
					end
					if GarageTargets[TargetName] then
						exports.ox_target:removeZone(GarageTargets[TargetName])
						GarageTargets[TargetName] = nil
					end
				end
			end
		else
			ThisJob = Data["job"]
			if tostring(k) == "garage" then
				local TableToRun = GarageTargets
				if Bool then
					TableToRun = json.decode(Data["garage"])
				end
				for u, _ in pairs(TableToRun) do
					local TargetName = ThisJob..u..k
					exports[Config.Target]:RemoveZone(TargetName)
				end
			end
		end
	end
	Wait(100)
	for k, v in pairs(Data) do
		ThisJob = Data["job"]
		if tostring(k) == "garage" then
			for u, i in pairs(json.decode(Data["garage"])) do
				local TargetName = ThisJob..u..k
				local Info = i
				if Config.Target == "ox_target" then
					local Data = {
						Info = Info,
					}
					GarageTargets[TargetName] = exports.ox_target:addBoxZone({
						coords = vector3(Info.Target.x,Info.Target.y,Info.Target.z),
						size = vector3(1, 1, 1),
						rotation = 35,
						debug = Config.Debug,
						options = {
							{
								name= TargetName,
								type = "client",
								event = "Pug:Client:DoBusinessGarageLogic",
								args = Data,
								icon = "fa-solid fa-car",
								label = Config.LangT["BusinessGarage"],
								canInteract = function(entity)
									return IsPlayerJob(ThisJob)
								end,
								distance = 2.0
							}
						}
					})
				else
					GarageTargets[u] = v
					exports[Config.Target]:AddBoxZone(TargetName, vector3(Info.Target.x,Info.Target.y,Info.Target.z), 0.4, 0.4, {
						name=TargetName,
						heading=35,
						debugPoly = Config.Debug,
						minZ= Info.Target.z-0.3,
						maxZ= Info.Target.z+0.3,
					}, {
						options = {
							{
								icon = "fa-solid fa-car",
								label = Config.LangT["BusinessGarage"],
								event = " ",
								canInteract = function(entity)
									return IsPlayerJob(ThisJob)
								end,
								action = function()
									local Data = {
										args = {
											Info = Info,
										}
									}
									TriggerEvent("Pug:Client:DoBusinessGarageLogic", Data)
								end,
							},
						},
						distance = 2.0
					})
				end
			end
		end
	end
end)
RegisterNetEvent("Pug:Client:DoBusinessGarageLogic", function(Data)
	local Info = Data.args.Info
	if Info.PedCoords ~= nil then
		TaskGoStraightToCoord(PlayerPedId(), Info.PedCoords.x, Info.PedCoords.y, Info.PedCoords.z, 1.0, 20000, 40000.0, 0.5)
		while #(GetEntityCoords(PlayerPedId()) - vector3(Info.PedCoords.x, Info.PedCoords.y, Info.PedCoords.z)) >= 1.1 do Wait(500) end
		TaskTurnPedToFaceCoord(PlayerPedId(), vector3(Info.Target.x, Info.Target.y, Info.Target.z))
		Wait(800)
		SetEntityHeading(PlayerPedId(), Info.Heading)
	end
	if Info.Animation ~= nil then
		if not Info.Animation.IsScenario then
			loadAnimDict(Info.Animation.AnimDict)
			TaskPlayAnim(PlayerPedId(), Info.Animation.AnimDict, Info.Animation.AnimAction, 8.0, 1, -1, 1, 1.0, 0, 0, 0)
		else
			ClearPedTasksImmediately(PlayerPedId())
			TaskStartScenarioInPlace(PlayerPedId(), Info.Animation.AnimDict, 0, false)
		end
	end
	local ItemOptions = {}
	if Config.Input == "ox_lib" then
		for _, v in ipairs(Info.MenuOption) do
			table.insert(ItemOptions, { value = v, label = v })
		end
	else
		table.insert(ItemOptions, { value = Info.MenuOption, text = Info.MenuOption })
	end
	print(Info.CarCoods, "Info.CarCoods")
	if Config.Input == "ox_lib" then
		local Input = lib.inputDialog(Config.LangT["ChooseBusinessVehicle"], {
			{
				label = Config.LangT["SelectVehicle"],
				name = "vehicle",
				options = ItemOptions,
				type = "select",
			},
		})
		if Input then
			ClearPedTasksImmediately(PlayerPedId())
			local VehicleSelected = tostring(Input[1])
			if not Input[1] then
				ClearPedTasksImmediately(PlayerPedId())
				BusinessNotify(Config.LangT["HaveNotChosesVehicle"], "error")
				return
			end
			if IsSpawnPointClear(Info.CarCoods, 5.0) then
				PugSpawnVehicle(VehicleSelected, function(veh)
					SetEntityHeading(veh, Info.CarHeading+90)
					SetVehicleEngineOn(veh, false, false)
					SetVehicleOnGroundProperly(veh)
					SetVehicleNeedsToBeHotwired(veh, false)
					SetVehicleColours(vehicle, 0, 0)
					SetVehicleNumberPlateText(veh, Info.Business)
					SetVehicleFuelLevel(veh, 100.0)
					-- TaskWarpPedIntoVehicle(PlayerPedId(), veh, -1)
					SetVehicleDoorsLocked(veh, 0)
					TriggerEvent(Config.VehilceKeysGivenToPlayerEvent, string.gsub(GetVehicleNumberPlateText(veh), '^%s*(.-)%s*$', '%1'))
				end, Info.CarCoods, true)
			else
				ClearPedTasksImmediately(PlayerPedId())
				BusinessNotify(Config.LangT["TheAreaIsNotClear"], "error")
			end
		else
			ClearPedTasksImmediately(PlayerPedId())
			BusinessNotify(Config.LangT["MissingInput"], "error")
		end
	else
		local Input = exports[Config.Input]:ShowInput({
			header = Config.LangT["ChooseBusinessVehicle"],
			submitText = "Submit",
			inputs = { 
				{
					text = Config.LangT["SelectVehicle"],
					name = "vehicle",
					type = "select",
					options = ItemOptions,
					isRequired = true
				},
			}
		})
		if Input then
			ClearPedTasksImmediately(PlayerPedId())
			local VehicleSelected = tostring(Input.vehicle)
			if not VehicleSelected then
				ClearPedTasksImmediately(PlayerPedId())
				BusinessNotify(Config.LangT["HaveNotChosesVehicle"], "error")
				return
			end
			if IsSpawnPointClear(Info.CarCoods, 5.0) then
				PugSpawnVehicle(VehicleSelected, function(veh)
					SetEntityHeading(veh, Info.CarHeading+90)
					SetVehicleEngineOn(veh, false, false)
					SetVehicleOnGroundProperly(veh)
					SetVehicleNeedsToBeHotwired(veh, false)
					SetVehicleColours(vehicle, 0, 0)
					SetVehicleNumberPlateText(veh, Info.Business)
					SetVehicleFuelLevel(veh, 100.0)
					-- TaskWarpPedIntoVehicle(PlayerPedId(), veh, -1)
					SetVehicleDoorsLocked(veh, 0)
					TriggerEvent(Config.VehilceKeysGivenToPlayerEvent, string.gsub(GetVehicleNumberPlateText(veh), '^%s*(.-)%s*$', '%1'))
				end, Info.CarCoods, true)
			else
				ClearPedTasksImmediately(PlayerPedId())
				BusinessNotify(Config.LangT["TheAreaIsNotClear"], "error")
			end
		else
			ClearPedTasksImmediately(PlayerPedId())
			BusinessNotify(Config.LangT["MissingInput"], "error")
		end
	end
	Wait(3000)
	if Config.InventoryType == "qs-inventory" then
		ClearPedTasksImmediately(PlayerPedId())
	else
		ClearPedTasks(PlayerPedId())
	end
end)
------------------------------


local InAnimation
RegisterNetEvent("Pug:client:ClearPedTaskLoopCheck", function()
	if not InAnimation then
		BusinessNotify("[C] TO CANCEL EMOTE", 'success')
		InAnimation = true
		while InAnimation do
			Wait(1)
			if InAnimation then
									-- Z keys						-- C Key						-- X Key
				if IsControlJustPressed(0, 48) or IsControlJustPressed(0, 26) or IsControlJustPressed(0, 73) then
					if Config.InventoryType == "qs-inventory" then
						ClearPedTasksImmediately(PlayerPedId())
					else
						ClearPedTasks(PlayerPedId())
					end
					InAnimation = false
					break
				end
			else
				break
			end
		end
	else
		InAnimation = false
	end
end)