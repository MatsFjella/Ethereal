CreateThread(function()
    if Config.DispatchSystem ~= 'qs-dispatch' then
        return
    end

    RegisterServerEvent('qs-dispatch:server:CreateDiapatchCall', function(data)
        local player = source
        local jobs = arrayToSet(data.job)

        if jobs['ambulance'] then
            TriggerClientEvent('rz-core:ems:client:create-alert', player, 'Alert', data.message, data.callLocation)
        end
    end)
end)
