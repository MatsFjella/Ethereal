CreateThread(function()
    if Config.PhoneScript ~= 'custom' then
        return
    end

    -- Returns the phone number of a player
    ---@param data table # { citizenid: string, charinfo: string }
    ---@return string # The phone number
    function GetCitizenPhoneNumber(data)
        local phone_number = 'phone_number'
        return phone_number
    end

    -- Replaces the default phone number of a player
    ---@param results table # [{ citizenid: string, charinfo: string }, ...]
    function TransformCitizensPhone(results)
        for i = 1, #results do
            local player = results[i]
            local phone_number = 'phone_number'
      
            player.charinfo = json.decode(player.charinfo)
            player.phone_number = phone_number
        end
    end
end)