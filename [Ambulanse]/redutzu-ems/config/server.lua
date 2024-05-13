Config = Config or {}

-- If you want other jobs to be able to access the MDT, add it to the list below;
-- Example: { 'ambulance', 'doctor' }
Config.WhitelistedJobs = { 'ambulance' }

-- If you are not using one of the following scripts, you can leave the default value: default
Config.PhoneScript = 'lb-phone' -- default, quasar-phone, high-phone, road-phone, lb-phone, gksphone

-- If you don't find your dispatch script above, set the value to none
Config.DispatchSystem = 'ps-dispatch' -- none, ps-dispatch, cd_dispatch, road-phone, qs-dispatch, custom

-- Enable this if you want to open the MDT using a command
Config.Command = {
    Enabled = true,
    Name = 'amk',
    Description = 'Åpner cad'
}

-- Enable this if you want to open the MDT using an item
Config.Item = {
    Enabled = false,
    Name = 'ambulance_mdt'
    -- Don't forget to add the item to @qb-core/shared/items.lua
}

-- Enable this if you want to open the MDT using a keybind
Config.Keybind = {
    Enabled = false,
    Key = 'G'
}

-- Invoices settings
Config.Invoices = {
    Society = {
        Resource = 'qb-management', -- The name of the resource that will handle the fines
        Name = 'ambulance' -- The name of the society
    },
    Split = {
        /*
            If you want to split the fine between the society and the doctor,
            otherwise the percentage will go to the society
        */
        Enabled = false,
        Society = 70, -- The percentage of the fine that will go to the society
        Doctor = 30 -- The percentage of the fine that will go to the doctor
    },
    Function = function(online, citizenid, amount, data, creator) -- Custom function to handle the invoice
        if online then
            local player = QBCore.Functions.GetPlayerByCitizenId(citizenid)
            local message = replace_all(Config.Messages['player:invoice'], {
                amount = amount
            })

            player.Functions.RemoveMoney('bank', amount, 'invoice-paid')

            Config.Notify(player.PlayerData.source, message, 'error')
        else
            local result = Database.fetchSingle({
                table = Config.Tables['players'],
                condition = Config.Queries['search:citizen'],
                parameters = {
                    query = citizenid
                }
            })

            if result.money then
                local money = json.decode(result.money)
                local updated = concat(money, {
                    bank = tonumber(money.bank) - amount
                })

                return Database.execute({
                    query = 'UPDATE ' .. Config.Tables['players'] .. ' SET money = :money WHERE citizenid = :citizenid',
                    values = {
                        citizenid = citizenid,
                        money = json.encode(updated)
                    }
                })
            end
        end
    end
}

-- I highly recommend not modifying if you don't know what you're doing
Config.Tables = {
    -- Players
    ['players'] = 'players',
    ['doctors'] = 'players',
    ['citizen'] = 'players',

    -- Incidents / Invoices / Codes
    ['incidents'] = 'ems_incidents',
    ['incident'] = 'ems_incidents',
    ['invoices'] = 'ems_invoices',
    ['invoice'] = 'ems_invoices',
    ['codes'] = 'ems_codes',
    ['code'] = 'ems_codes'
}

-- Should not be modified!
Config.Queries = {
    -- Players
    ['search:players'] = 'CONCAT(JSON_VALUE(charinfo, \'$.firstname\'), \' \', JSON_VALUE(charinfo, \'$.lastname\')) LIKE :query OR citizenid LIKE :query OR JSON_VALUE(metadata, \'$.fingerprint\') LIKE :query',
    ['search:citizen'] = 'citizenid = :query',
    ['search:doctors'] = 'CONCAT(JSON_VALUE(charinfo, \'$.firstname\'), \' \', JSON_VALUE(charinfo, \'$.lastname\')) LIKE :query OR citizenid LIKE :query',
   
    -- Incidents
    ['search:incidents'] = 'name LIKE :query',
    ['search:incident'] = 'id = :query',

    -- Invoice
    ['search:invoices'] = 'name LIKE :query',
    ['search:invoice'] = 'id = :query',

    -- Codes
    ['search:codes'] = 'name LIKE :query OR code LIKE :query',
    ['search:code'] = 'id = :query',

    -- Citizen
    ['search:citizen:incidents'] = 'players LIKE :query'
}

Config.Columns = {
    ['players'] = nil,
    ['incidents'] = 'id, name, createdAt',
    ['invoices'] = nil,
    ['codes'] = 'id, name, createdAt'
}

-- Custom Functions
Config.Notify = function(source, message, type)
    TriggerClientEvent('QBCore:Notify', source, message, type)
end

-- Commands
Config.UseQBCommands = true -- If you want to use QB commands, set this to true
Config.RegisterCommand = function(name, description, callback)
    if Config.UseQBCommands then
        QBCore.Commands.Add(name, description, {}, false, function(source, args)
            local player = QBCore.Functions.GetPlayer(source)
            callback(player)
        end, 'user')
    else
        RegisterCommand(name, function(source, args, raw)
            local player = QBCore.Functions.GetPlayer(source)
            callback(player)
        end, false)
    end
end

-- Items
Config.RegisterItem = function(name, callback)
    QBCore.Functions.CreateUseableItem(name, function(source, item)
	    local player = QBCore.Functions.GetPlayer(source)
        callback(player)
    end)
end

-- Permissions
-- https://docs.redutzu.com/resources/redutzu-ems/configuration#permissions

Config.Permissions = {
    -- Template:
    -- [job] = { ...grades = { ...permissions } }
    ['ambulance'] = {
        -- You can find these in the database (databse.job_grades)
        -- [grade] = { ...permissions }
        [0] = {
            'dashboard.view',
            'config.view',
            'alerts.view',
            'alerts.create',
            'alerts.take',
            'citizens.view',
            'citizens.edit',
            'invoices.view',
            'codes.view',
            'incidents.view',
            'incidents.create',
            'incidents.edit',
            'doctors.view'
        },
        -- You have the same permissions as grade 0 + these
        [1] = {
            'codes.create',
            'invoices.create',
        },
        [2] = {
            'codes.edit',
            'codes.delete',
            'invoices.edit',
            'invoices.delete',
        },
        [3] = {
            'incidents.delete',
        },
        [4] = {
            'doctors.edit'
        }
    }
}

-- Discord Webhooks
-- https://docs.redutzu.com/resources/redutzu-ems/configuration#webooks

Config.Webhooks = {
    ['incidents'] = true, -- Leave this false if you don't want to send incident data anywhere
    ['invoices'] = true, -- Leave this false if you don't want to send invoice data anywhere
    ['codes'] = true, -- Leave this false if you don't want to send code data anywhere
    ['images'] = "https://discord.com/api/webhooks/1234865118714658897/U2QqRSMpVwLxUg3zYOc0Ilhdl3TNaqiKMSlymDTMVzw1kqrL_EhPSUJxOdTWxMxbiutc", -- SET THE WEBHOOK, OTHERWISE YOU WON'T BE ABLE TO TAKE PICTURES
    ['chat'] = true -- Leave this false if you don't want to send the messages anywhere
}
