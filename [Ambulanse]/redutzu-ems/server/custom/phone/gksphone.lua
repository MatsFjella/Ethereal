CreateThread(function()
    if Config.PhoneScript ~= 'gksphone' then
        return
    end

    function GetCitizenPhoneNumber(data)
        local gksphone = Database.fetchSingle({
            table = 'gksphone_settings',
            condition = 'identifier = :query',
            parameters = { query = data.citizenid }
        })

        return gksphone.phone_number
    end

    function TransformCitizensPhone(results)
        for i = 1, #results do
            local player = results[i]
            local gksphone = Database.fetchSingle({
                table = 'gksphone_settings',
                condition = 'identifier = :query',
                parameters = { query = player.citizenid }
            })
            
            player.charinfo = json.decode(player.charinfo)
  
            if gksphone and gksphone.phone_number then
                player.phone_number = gksphone.phone_number
            end
        end
    end
end)