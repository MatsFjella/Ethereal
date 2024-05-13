local QBCore = exports['qb-core']:GetCoreObject()

function loadAnimDict(dict)
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Citizen.Wait(5)
    end
end

RegisterNetEvent("qb-smallresources:ToggleAnchor", function()
    if IsPedInAnyBoat(PlayerPedId()) then
        if GetPedInVehicleSeat(GetVehiclePedIsIn(PlayerPedId()), -1) == PlayerPedId() then
            if not isCrafting then
                local veh = GetVehiclePedIsIn(PlayerPedId(), false)
                local vehPlate = QBCore.Functions.GetPlate(veh)
                local hasKeys = exports['qb-vehiclekeys']:HasKeys(vehPlate)
                local isCrafting = false
                local displayTime = 3000
                if hasKeys then
                    isAnchoredAndFrozen = IsBoatAnchoredAndFrozen(veh)
                    if isAnchoredAndFrozen then
                        isCrafting = true
                        loadAnimDict( "amb@world_human_clipboard@male@idle_a" ) 
                        TaskPlayAnim( PlayerPedId(), "amb@world_human_clipboard@male@idle_a", "idle_c", 8.0, 1.0, -1, 49, 0, 0, 0, 0 )
                        QBCore.Functions.Progressbar("reful_boat", "Raising Anchor", 5000, false, true, {
                            disableMovement = true,
                            disableCarMovement = true,
                            disableMouse = false,
                            disableCombat = true,
                        }, {}, {}, {}, function() -- Done
                            ClearPedTasks(PlayerPedId())
                            Citizen.Wait(300)
                            isCrafting = false
                            SetBoatFrozenWhenAnchored(veh, false)
                            SetBoatAnchor(veh, false)
                            QBCore.Functions.Notify('Du løftet ankeret og kan nå kjøre igjen.', 'success', displayTime)
                        end, function() -- Cancel
                            ClearPedTasks(PlayerPedId())
                            Citizen.Wait(300)
                            isCrafting = false
                            QBCore.Functions.Notify('Anker senk/løft er blitt avbrutt!', 'primary', displayTime)
                        end)
                    else
                        isCrafting = true
                        loadAnimDict( "amb@world_human_clipboard@male@idle_a" ) 
                        TaskPlayAnim( PlayerPedId(), "amb@world_human_clipboard@male@idle_a", "idle_c", 8.0, 1.0, -1, 49, 0, 0, 0, 0 )
                        QBCore.Functions.Progressbar("reful_boat", "Dropper anker", 5000, false, true, {
                            disableMovement = true,
                            disableCarMovement = true,
                            disableMouse = false,
                            disableCombat = true,
                        }, {}, {}, {}, function() -- Done
                            ClearPedTasks(PlayerPedId())
                            Citizen.Wait(300)
                            isCrafting = false
                            SetBoatFrozenWhenAnchored(veh, true)
                            SetBoatAnchor(veh, true)
                            QBCore.Functions.Notify('Du dropper ankeret så snart båten stopper.', 'success', displayTime)
                        end, function() -- Cancel
                            ClearPedTasks(PlayerPedId())
                            Citizen.Wait(300)
                            isCrafting = false
                            QBCore.Functions.Notify('Anker senk/løft er kansellert!', 'primary', displayTime)
                        end)
                    end
                else
                    QBCore.Functions.Notify('Du er ikke eier av denne båten!', 'error', displayTime)
                end
            end
        end
    end
end)