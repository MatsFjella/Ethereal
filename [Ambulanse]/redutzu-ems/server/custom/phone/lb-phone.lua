CreateThread(function()
    if Config.PhoneScript ~= 'lb-phone' then
        return
    end

    function GetCitizenPhoneNumber(data)
        local phone = exports['lb-phone']:GetEquippedPhoneNumber(data.citizenid)                
        return phone
    end

    function TransformCitizensPhone(results)
        for i = 1, #results do
            local player = results[i]
            local phone = exports['lb-phone']:GetEquippedPhoneNumber(player.citizenid)
   
            player.charinfo = json.decode(player.charinfo)

            if phone then
                player.phone_number = phone
            end
        end
    end
end)