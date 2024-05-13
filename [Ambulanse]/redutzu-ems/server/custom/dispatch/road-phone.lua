CreateThread(function()
    if Config.DispatchSystem ~= 'road-phone' then
        return
    end

    RegisterServerEvent('roadphone:sendDispatch', function(player, message, job, position)
        if job == 'ambulance' then
            TriggerClientEvent('rz-core:ems:client:create-alert', player, 'Phone Alert', message, position)
        end
    end)
end)
