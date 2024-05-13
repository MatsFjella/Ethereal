QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    Citizen.CreateThread(function()
        local playerPed = PlayerPedId()
        local wait = 1000
        while true do
            if IsPedOnAnyBike(playerPed) then
                wait = 1
                SetPedConfigFlag(playerPed, 35, false)
            else
                wait = 1000
            end
            Citizen.Wait(wait)
        end
    end)
end)