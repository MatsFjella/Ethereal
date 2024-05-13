CreateThread(function()
    if Config.DispatchSystem ~= 'ps-dispatch' then
        return
    end

    RegisterServerEvent('dispatch:server:notify', function(data)
        local player = source
        local jobs = arrayToSet(data.job)

        if jobs['ambulance'] then
            TriggerClientEvent('rz-core:ems:client:create-alert', player, data.dispatchMessage, data.firstStreet)
        end
    end)
end)
