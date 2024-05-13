CreateThread(function()
    if Config.PhoneScript ~= 'quasar-phone' then
        return
    end

    function GetCitizenPhoneNumber(data)
        local charinfo = json.decode(data.charinfo)
        return charinfo.phone
    end

    function TransformCitizensPhone(results)
        for i = 1, #results do
            local player = results[i]

            player.charinfo = json.decode(player.charinfo)
    
            if player.charinfo.phone then
                player.phone_number = player.charinfo.phone
            end
        end
    end
end)