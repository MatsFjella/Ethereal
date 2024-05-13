CreateThread(function()
    if Config.PhoneScript ~= 'road-phone' then
        return
    end

    function GetCitizenPhoneNumber(data)
        return data.phone_number
    end

    function TransformCitizensPhone(results)
        for i = 1, #results do
            local player = results[i]

            player.charinfo = json.decode(player.charinfo)
        end
    end
end)