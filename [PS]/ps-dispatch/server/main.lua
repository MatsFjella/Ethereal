local calls = {}
local callCount = 0

-- Functions
exports('GetDispatchCalls', function()
    return calls
end)

-- Events
RegisterServerEvent('ps-dispatch:server:notify', function(data)
    callCount = callCount + 1
    data.id = callCount
    data.time = os.time() * 1000
    data.units = {}
    data.responses = {}

    if #calls >= Config.MaxCallList then
        table.remove(calls, 1)
    end

    calls[#calls + 1] = data

    TriggerClientEvent('ps-dispatch:client:notify', -1, data)
end)

RegisterServerEvent('ps-dispatch:server:attach', function(id, player)
    for i=1, #calls do
        if calls[i]['id'] == id then
            for j = 1, #calls[i]['units'] do
                if calls[i]['units'][j]['citizenid'] == player.citizenid then
                    return
                end
            end
            calls[i]['units'][#calls[i]['units'] + 1] = player
            return
        end
    end
end)

RegisterServerEvent('ps-dispatch:server:detach', function(id, player)
    for i = #calls, 1, -1 do
        if calls[i]['id'] == id then
            if calls[i]['units'] and (#calls[i]['units'] or 0) > 0 then
                for j = #calls[i]['units'], 1, -1 do
                    if calls[i]['units'][j]['citizenid'] == player.citizenid then
                        table.remove(calls[i]['units'], j)
                    end
                end
            end
            return
        end
    end
end)

-- Callbacks
lib.callback.register('ps-dispatch:callback:getLatestDispatch', function(source)
    return calls[#calls]
end)

lib.callback.register('ps-dispatch:callback:getCalls', function(source)
    return calls
end)

-- Commands
lib.addCommand('dispatch', {
    help = locale('open_dispatch')
}, function(source, raw)
    TriggerClientEvent("ps-dispatch:client:openMenu", source, calls)
end)

lib.addCommand('112', {
    help = 'Send en melding til 112',
    params = { { name = 'message', type = 'string', help = '112 melding' }},
}, function(source, args, raw)
    -- Extract the full message from the raw command input
    local fullMessage = raw:sub(5)

    -- Trigger the event to send the emergency message to the client
    TriggerClientEvent('ps-dispatch:client:sendEmergencyMsg', source, fullMessage, "911", false)

    -- Fetch the player's name using GetPlayerName (ensure source is correctly defined as the player id)
    local playerName = GetPlayerName(source)

    -- Logging the action with qb-log
    -- Here, '112' is assumed to be your log type, and the description is formatted with the player name and the message
    TriggerEvent('qb-log:server:CreateLog', '112', 'Sendte 112 melding', 'green', string.format('%s sendte følgende 112 melding: "%s"', playerName, fullMessage), false)
end)

lib.addCommand('112a', {
    help = 'Send en anonym melding til 112a',
    params = { { name = 'message', type = 'string', help = '112a melding' }},
}, function(source, args, raw)
    -- Extract the full message from the raw command input, starting after the command identifier
    local fullMessage = raw:sub(5)

    -- Trigger the event to send the anonymous emergency message to the client
    TriggerClientEvent('ps-dispatch:client:sendEmergencyMsg', source, fullMessage, "911", true)

    -- Since this is an anonymous message, we may not need to log the player's name directly.
    -- However, for internal tracking/logging, we can still fetch and log the player's name in a more secure/anonymous manner
    local playerName = GetPlayerName(source)

    -- Logging the action with qb-log, marking it as anonymous if that is a concern
    -- '112a' might be your log type specific for anonymous reports
    TriggerEvent('qb-log:server:CreateLog', '112', 'Sendte 112a melding', 'green', string.format('%s sendte følgende anonym 112a melding: "%s"', playerName, fullMessage), false)
end)

lib.addCommand('113', {
    help = 'Send en 113 melding',
    params = { { name = 'message', type = 'string', help = '113 melding' }},
}, function(source, args, raw)
    -- Extract the full message from the raw command input
    local fullMessage = raw:sub(5)

    -- Trigger the event to send the emergency message to the client
    TriggerClientEvent('ps-dispatch:client:sendEmergencyMsg', source, fullMessage, "311", false)

    -- Fetch the player's name using GetPlayerName (ensure source is correctly defined as the player id)
    local playerName = GetPlayerName(source)

    -- Logging the action with qb-log
    -- '113' is the log type, and the description is formatted with the player name and the message
    TriggerEvent('qb-log:server:CreateLog', '112', 'Sendte 113 melding', 'green', string.format('%s sendte følgende 113 melding: "%s"', playerName, fullMessage), false)
end)


lib.addCommand('113a', {
    help = 'Send en anonym 113 melding',
    params = { { name = 'message', type = 'string', help = '113a melding' }},
}, function(source, args, raw)
    -- Extract the full message from the raw command input
    local fullMessage = raw:sub(5)

    -- Trigger the event to send the anonymous emergency message to the client
    TriggerClientEvent('ps-dispatch:client:sendEmergencyMsg', source, fullMessage, "311", true)

    -- Optionally fetch the player's name for internal use, not exposed to public logs
    local playerName = GetPlayerName(source)

    -- Logging the action with qb-log, marking it as anonymous
    -- '113a' might be your log type specific for anonymous reports
    TriggerEvent('qb-log:server:CreateLog', '112', 'Sendte 113a melding', 'green', string.format('%s sendte følgende anonym 113a melding: "%s"', playerName, fullMessage), false)
end)





