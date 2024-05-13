CreateThread(function()
    if Config.PhoneScript ~= 'high-phone' then
        return
    end

    function GetCitizenPhoneNumber(data)
        return data.phone
    end

    function TransformCitizensPhone(results)
        for i = 1, #results do
            local player = results[i]

            player.charinfo = json.decode(player.charinfo)
            player.phone_number = player.phone
        end
    end
end)