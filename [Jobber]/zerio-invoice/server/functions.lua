if Shared.Framework == "qbcore" then
    Framework = exports["qb-core"]:GetCoreObject()
elseif Shared.Framework == "esx" then
    if ESX == nil then
        TriggerEvent("esx:getSharedObject", function(obj) Framework = obj end)
    else
        Framework = ESX
    end
end

local uuidTemplate = 'xxxxxx-xxxxxx-xxxxxx-xxxxxx' -- DO NOT CHANGE THE UUID's
Functions = {
    -- Execute SQL query
    ---@param query string
    ---@param params any[]
    ---@param cb? function
    ---@return any
    ExecuteSQL = function(query, params, cb)
        if GetResourceState("oxmysql") == "started" then
            exports.oxmysql:query(query, params, function(retVal)
                if cb then
                    cb(retVal)
                end
            end)
        elseif GetResourceState("ghmattimysql") == "started" and GetResourceState("oxmysql") ~= "started" then
            exports.ghmattimysql:execute(query, params, function(retVal)
                if cb then
                    cb(retVal)
                end
            end)
        elseif GetResourceState("mysql-async") == "started" and GetResourceState("oxmysql") ~= "started" then
            MySQL.Async.execute(query, params, function(retVal)
                if cb then
                    cb(retVal)
                end
            end)
        end
    end,

    ---@param source number
    ---@param msg string
    ---@return nil
    Notify = function(source, msg)
        if Shared.Framework == "esx" then
            TriggerClientEvent("esx:showNotification", source, msg)
        elseif Shared.Framework == "qbcore" then
            TriggerClientEvent("QBCore:Notify", source, msg)
        end
    end,

    -- Fetch information from database
    ---@param query string
    ---@param params any[]
    ---@param cb function
    SelectSQL = function(query, params, cb)
        if GetResourceState("oxmysql") == "started" then
            exports.oxmysql:query(query, params, function(retVal)
                if cb then
                    cb(retVal)
                end
            end)
        elseif GetResourceState("ghmattimysql") == "started" and GetResourceState("oxmysql") ~= "started" then
            exports.ghmattimysql:scalar(query, params, function(retVal)
                if cb then
                    cb(retVal)
                end
            end)
        elseif GetResourceState("mysql-async") == "started" and GetResourceState("oxmysql") ~= "started" then
            MySQL.Async.fetchAll(query, params, function(retVal)
                if cb then
                    cb(retVal)
                end
            end)
        end
    end,

    -- Fetch a players money
    ---@param Player unknown
    ---@return number
    GetPlayerMoney = function(Player)
        local retVal = promise.new()

        if Shared.Framework == "esx" then
            if type(Player) == "string" then
                Functions.SelectSQL("select accounts from users where identifier = @identifier", {
                    ["@identifier"] = Player
                }, function(result)
                    if result and result[1] then
                        local accounts = json.decode(result[1].accounts)

                        retVal:resolve(accounts.bank)
                    else
                        retVal:resolve(0)
                    end
                end)
            else
                retVal:resolve(Player.getAccount('bank').money)
            end
        elseif Shared.Framework == "qbcore" then
            if type(Player) == "string" then
                Functions.SelectSQL("select money from players where citizenid = @identifier", {
                    ["@identifier"] = Player
                }, function(result)
                    if result and result[1] then
                        local money = json.decode(result[1].money)

                        retVal:resolve(money.bank)
                    else
                        retVal:resolve(0)
                    end
                end)
            else
                retVal:resolve(Player.PlayerData.money.bank)
            end
        else
            retVal:resolve(0)
        end

        Citizen.Await(retVal)

        return retVal.value
    end,

    -- Remove money from a player
    ---@param Player unknown
    ---@param amount number
    RemovePlayerMoney = function(Player, amount)
        local wait = promise.new()

        if type(Player) == "string" then
            local newPlayer = Functions.GetPlayerFromIdentifier(Player)
            if newPlayer ~= nil then Player = newPlayer end
        end

        if Shared.Framework == "esx" then
            if type(Player) == "string" then
                Functions.SelectSQL("select accounts from users where identifier = @identifier", {
                    ["@identifier"] = Player
                }, function(result)
                    if result and result[1] then
                        local money = json.decode(result[1].accounts)

                        if money ~= nil then
                            money.bank = money.bank - amount

                            Functions.ExecuteSQL("update users set accounts = @accounts where identifier = @identifier", {
                                ["@accounts"] = json.encode(money),
                                ["@identifier"] = Player
                            }, function()
                                wait:resolve(true)
                            end)
                        else
                            wait:resolve(false)
                        end
                    else
                        wait:resolve(false)
                    end
                end)
            else
                Player.removeAccountMoney('bank', amount)
                wait:resolve(true)
            end
        elseif Shared.Framework == "qbcore" then
            if type(Player) == "string" then
                Functions.SelectSQL("select money from players where citizenid = @identifier", {
                    ["@identifier"] = Player
                }, function(result)
                    if result and result[1] then
                        local money = json.decode(result[1].money)

                        if money ~= nil then
                            money.bank = money.bank - amount

                            Functions.ExecuteSQL("update players set money = @money where citizenid = @identifier", {
                                ["@money"] = json.encode(money),
                                ["@identifier"] = Player
                            }, function()
                                wait:resolve(true)
                            end)
                        else
                            wait:resolve(false)
                        end
                    else
                        wait:resolve(false)
                    end
                end)
            else
                Player.Functions.RemoveMoney("bank", amount)
                wait:resolve(true)
            end
        end

        Citizen.Await(wait)
    end,

    -- Fetch a jobs money
    ---@param cb function
    ---@param job string
    GetJobMoney = function(cb, job)
        if GetResourceState("qb-bossmenu") == "started" then
            cb(exports["qb-bossmenu"]:GetAccount(job))
        elseif GetResourceState("qb-management") == "started" then
            cb(exports["qb-management"]:GetAccount(job))
        elseif GetResourceState("qb-banking") == "started" then
            cb(exports["qb-banking"]:GetAccountBalance(job))
        elseif GetResourceState("esx_society") == "started" then
            TriggerEvent('esx_society:getSociety', job, function(society)
                if society ~= nil then
                    TriggerEvent('esx_addonaccount:getSharedAccount', society.account, function(account)
                        if account then
                            cb(account.money)
                        else
                            Functions.Error("Invalid account for " .. job)
                            cb(0)
                        end
                    end)
                else
                    Functions.Error("Invalid society for " .. job)
                    cb(0)
                end
            end)
        elseif GetResourceState("710-management") == "started" then
            cb(exports["710-management"]:GetManagementAccount(job).balance)
        elseif GetResourceState("okokBanking") == "started" then
            Functions.SelectSQL('SELECT * FROM okokbanking_societies WHERE `society` = @job', {
                ["@job"] = job
            }, function(result)
                if result and result[1] then
                    cb(result[1].value)
                else
                    cb(0)
                end
            end)
        end
    end,

    -- Add money to a job
    ---@param job string
    ---@param amount number
    AddJobMoney = function(job, amount)
        if GetResourceState("okokBanking") == "started" then
            Functions.GetJobMoney(function(currAmount)
                Functions.ExecuteSQL("update okokbanking_societies where society = @job set `value` = @value", {
                    ["@job"] = job,
                    ["@value"] = tostring(currAmount + amount)
                })
            end, job)
        elseif GetResourceState("qb-management") == "started" then
            exports["qb-management"]:AddMoney(job, amount)
        elseif GetResourceState("qb-banking") == "started" then
            exports["qb-banking"]:AddMoney(job, amount)
        elseif GetResourceState("esx_society") == "started" then
            TriggerEvent('esx_society:getSociety', job, function(society)
                if society ~= nil then
                    TriggerEvent('esx_addonaccount:getSharedAccount',
                                society.account, function(account)
                        if account ~= nil then
                            account.addMoney(amount)
                        else
                            Functions.Error("Invalid account for " .. job)
                        end
                    end)
                else
                    Functions.Error("Invalid society for " .. job)
                end
            end)
        elseif GetResourceState("710-management") == "started" then
            exports["710-management"]:AddAccountMoney(job, amount)
        elseif GetResourceState("qb-bossmenu") then
            TriggerEvent("qb-bossmenu:server:addAccountMoney", job, amount, "success")
        end
    end,

    -- Remove money from a job
    ---@param job string
    ---@param amount number
    RemoveJobMoney = function(job, amount)
        if GetResourceState("qb-bossmenu") == "started" then
            TriggerEvent("qb-bossmenu:server:removeAccountMoney", job, amount)
        elseif GetResourceState("qb-management") == "started" then
            exports["qb-management"]:RemoveMoney(job, amount)
        elseif GetResourceState("qb-banking") == "started" then
            exports["qb-banking"]:RemoveMoney(job, amount)
        elseif GetResourceState("710-management") == "started" then
            exports["710-management"]:RemoveAccountMoney(job, amount)
        elseif GetResourceState("okokBanking") == "started" then
            Functions.GetJobMoney(function(currAmount)
                Functions.ExecuteSQL("update okokbanking_societies where society = @job set `value` = @value", {
                    ["@job"] = job,
                    ["@value"] = tostring(currAmount - amount)
                })
            end, job)
        end
    end,

    -- Fetch a players identifier
    ---@param Player unknown
    ---@return string | nil
    GetPlayerIdentifier = function(Player)
        if Shared.Framework == "esx" then
            return Player.identifier
        elseif Shared.Framework == "qbcore" then
            return Player.PlayerData.citizenid
        end
    end,

    -- Fetch a players source
    ---@param Player unknown
    ---@return number | nil
    GetPlayerSource = function(Player)
        if Shared.Framework == "esx" then
            return Player.source
        elseif Shared.Framework == "qbcore" then
            return Player.PlayerData.source
        end
    end,

    -- Fetch a players job info
    ---@param Player unknown
    ---@return string | nil, string | nil, string | nil, string | nil
    GetPlayerJobInfo = function(Player)
        local jobInfo = promise.new()

        if type(Player) == "string" then
            if Shared.Framework == "esx" then
                Functions.SelectSQL("SELECT `job`, `job_grade` FROM `users` WHERE `identifier` = @identifier", {
                    ["@identifier"] = Player
                }, function(result)
                    if result and result[1] then
                        if Framework.Jobs ~= nil then
                            local jobData = Framework.Jobs[result[1].job]
                            if jobData ~= nil and jobData.grades[tostring(result[1].job_grade)] ~= nil then
                                jobInfo:resolve({
                                    result[1].job, result[1].job_grade,
                                    jobData.label, jobData.grades[tostring(result[1].job_grade)].label
                                })
                            else
                                jobInfo:resolve({"", "", "", ""})
                            end
                        else
                            Functions.SelectSQL("SELECT `label` FROM `jobs` WHERE `name` = @job", {
                               ["@job"] = result[1].job
                            }, function(result2)
                                if result2 and result2[1] then
                                    Functions.SelectSQL("SELECT `label` FROM `job_grades` WHERE `job_name` = @job", {
                                        ["@job"] = result[1].job_grade
                                    }, function(result3)
                                        if result3 and result3[1] then
                                            jobInfo:resolve({
                                                result[1].job, result[1].job_grade,
                                                result2[1].label, result3[1].label
                                            })
                                        else
                                            jobInfo:resolve({"", "", "", ""})
                                        end
                                    end)
                                else
                                    jobInfo:resolve({"", "", "", ""})
                                end
                            end)
                        end
                    else
                        jobInfo:resolve({"", "", "", ""})
                    end
                end)
            elseif Shared.Framework == "qbcore" then
                Functions.SelectSQL("SELECT `job` FROM `players` WHERE `citizenid` = @citizenid", {
                    ["@citizenid"] = Player
                }, function(result)
                    if result and result[1] then
                        local jobData = json.decode(result[1].job)

                        jobInfo:resolve({
                            jobData.name, jobData.grade.level,
                            jobData.label, jobData.grade.name
                        })
                    else
                        jobInfo:resolve({"", "", "", ""})
                    end
                end)
            end
        else
            if Shared.Framework == "esx" then
                jobInfo:resolve({
                    Player.job.name, Player.job.grade, 
                    Player.job.label, Player.job.grade_label
                })
            elseif Shared.Framework == "qbcore" then
                jobInfo:resolve({
                    Player.PlayerData.job.name, Player.PlayerData.job.grade.level, 
                    Player.PlayerData.job.label, Player.PlayerData.job.grade.name
                })
            end
        end

        Citizen.Await(jobInfo)

        return table.unpack(jobInfo.value)
    end,

    -- Fetches the player's phone number
    ---@param Player unknown
    ---@return number
    GetPhoneNumber = function(Player)
        local phoneNumber = promise.new()

        if type(Player) == "string" then
            if Shared.Framework == "qbcore" then
                Functions.SelectSQL("SELECT `charinfo` FROM `players` WHERE `citizenid` = @citizenid", {
                    ["@citizenid"] = Player
                }, function(result)
                    if result and result[1] then
                        local charinfo = json.decode(result[1].charinfo)

                        phoneNumber:resolve(charinfo.phone)
                    else
                        phoneNumber:resolve("???")
                    end
                end)
            else
                phoneNumber:resolve("???")
            end
        else
            if Shared.Framework == "qbcore" then
                phoneNumber:resolve(Player.PlayerData.charinfo.phone)
            else
                phoneNumber:resolve("???")
            end
        end

        Citizen.Await(phoneNumber)

        return phoneNumber.value
    end,

    -- Fetches the player's gender
    ---@param Player unknown
    ---@return string
    GetGender = function(Player)
        local gender = promise.new()

        if type(Player) == "string" or Shared.Framework == "esx" then
            if Shared.Framework == "esx" then
                Functions.SelectSQL("SELECT `sex` FROM `users` WHERE `identifier` = @identifier", {
                    ["@identifier"] = Player
                }, function(result)
                    if result and result[1] then
                        if result[1].sex == "m" then
                            gender:resolve(_U({"misc", "male"}))
                        else
                            gender:resolve(_U({"misc", "female"}))
                        end
                    else
                        gender:resolve("???")
                    end
                end)
            elseif Shared.Framework == "qbcore" then
                Functions.SelectSQL("SELECT `charinfo` FROM `players` WHERE `citizenid` = @citizenid", {
                    ["@citizenid"] = Player
                }, function(result)
                    if result and result[1] then
                        local charinfo = json.decode(result[1].charinfo)

                        if charinfo.gender == 0 then
                            gender:resolve(_U({"misc", "male"}))
                        else
                            gender:resolve(_U({"misc", "female"}))
                        end
                    else
                        gender:resolve("???")
                    end
                end)
            end

        else
            if Shared.Framework == "qbcore" then
                if Player.PlayerData.charinfo.gender == 0 then
                    gender:resolve(_U({"misc", "male"}))
                else
                    gender:resolve(_U({"misc", "female"}))
                end
            else
                gender:resolve("???")
            end
        end

        Citizen.Await(gender)

        return gender.value
    end,

    -- Fetch a players ingame name
    ---@param Player unknown
    ---@return string
    GetPlayerName = function(Player)
        local name = promise.new()

        if Shared.Framework == "qbcore" then
            if type(Player) == "string" then
                Functions.SelectSQL("SELECT `charinfo` FROM `players` WHERE `citizenid` = @citizenid", {
                    ["@citizenid"] = Player
                }, function(result)
                    if result and result[1] then
                        local charinfo = json.decode(result[1].charinfo)

                        name:resolve(charinfo.firstname .. " " .. charinfo.lastname)
                    else
                        name:resolve("")
                    end
                end)
            else
                name:resolve(Player.PlayerData.charinfo.firstname .. " " ..
                    Player.PlayerData.charinfo.lastname)
            end
        elseif Shared.Framework == "esx" then
            if type(Player) ~= "string" and Player.getName() ~= nil then
                name:resolve(Player.getName())
            else
                local identifier = Player
                if type(Player) ~= "string" then
                    identifier = Player.identifier
                end

                Functions.SelectSQL("SELECT `firstname`, `lastname` FROM `users` WHERE `identifier` = @identifier", {
                    ["@identifier"] = identifier
                }, function(result)
                    if result and result[1] then
                        name:resolve(result[1].firstname .. " " .. result[1].lastname)
                    else
                        name:resolve("")
                    end
                end)
            end
        end

        Citizen.Await(name)

        return name.value
    end,

    -- Fetch a players date of birth
    ---@param Player unknown
    ---@return string
    GetDateOfBirth = function(Player)
        local dateOfBirth = promise.new()

        if type(Player) == "string" then
            if Shared.Framework == "qbcore" then
                Functions.SelectSQL("SELECT `charinfo` from `players` WHERE `citizenid` = @citizenid", {
                    ["@citizenid"] = Player
                }, function(result)
                    if result and result[1] then
                        dateOfBirth:resolve(json.decode(result[1].charinfo).birthdate)
                    else
                        dateOfBirth:resolve(_U({"misc", "unknown"}))
                    end
                end)
            elseif Shared.Framework == "esx" then
                Functions.SelectSQL("SELECT `dateofbirth` from `users` WHERE `identifier` = @identifier", {
                    ["@identifier"] = Player
                }, function(result)
                    if result and result[1] then
                        dateOfBirth:resolve(result[1].dateofbirth)
                    else
                        dateOfBirth:resolve(_U({"misc", "unknown"}))
                    end
                end)
            end
        else
            if Shared.Framework == "qbcore" then
                dateOfBirth:resolve(Player.PlayerData.charinfo.birthdate)
            elseif Shared.Framework == "esx" then
                Functions.SelectSQL("SELECT `dateofbirth` FROM `users` WHERE `identifier` = @identifier", {
                    ["@identifier"] = Player.identifier
                }, function(result)
                    if result and result[1] then
                        dateOfBirth:resolve(result[1].dateofbirth)
                    else
                        dateOfBirth:resolve(_U({"misc", "unknown"}))
                    end
                end)
            end
        end

        Citizen.Await(dateOfBirth)

        return dateOfBirth.value
    end,

    -- Fetch a players invoice info
    ---@param Player unknown
    ---@return {picture: string, darkTheme: number}
    GetPlayerInfo = function(Player)
        local picture = promise.new()
        local darkTheme = promise.new()

        if Shared.Framework == "qbcore" then
            Functions.SelectSQL("SELECT `profilePicture`, `invoiceDarkTheme` FROM `players` WHERE `citizenid` = @citizenid", {
                ["@citizenid"] = Player.PlayerData.citizenid
            }, function(result)
                picture:resolve(result[1].profilePicture)
                darkTheme:resolve(result[1].invoiceDarkTheme)
            end)
        elseif Shared.Framework == "esx" then
            Functions.SelectSQL("SELECT `profilePicture`, `invoiceDarkTheme` FROM `users` WHERE `identifier` = @identifier", {
                ["@identifier"] = Player.identifier
            }, function(result)
                picture:resolve(result[1].profilePicture)
                darkTheme:resolve(result[1].invoiceDarkTheme)
            end)
        end

        Citizen.Await(picture)
        Citizen.Await(darkTheme)

        return {
            picture = picture.value,
            darkTheme = darkTheme.value
        }
    end,

    -- Fetch all players (as player objects)
    ---@return unknown[] | nil
    GetPlayerObjects = function()
        if Shared.Framework == "qbcore" then
            return Framework.Functions.GetQBPlayers()
        elseif Shared.Framework == "esx" then
            return Framework.GetExtendedPlayers()
        end
    end,

    -- Fetches all players in the database
    ---@return unknown[] | nil
    GetPlayersDBList = function()
        local retVal = promise.new()

        if Shared.Framework == "qbcore" then
            Functions.SelectSQL("SELECT `charinfo`, `citizenid` FROM `players`", {}, function(result)
                retVal:resolve(result)
            end)
        elseif Shared.Framework == "esx" then
            Functions.SelectSQL("SELECT `firstname`, `lastname`, `identifier` FROM `users`", {}, function(result)
                retVal:resolve(result)
            end)
        end

        Citizen.Await(retVal)

        return retVal.value
    end,

    -- Returns the character name from a database row
    ---@param row unknown
    ---@return string
    GetPlayerNameFromDB = function(row)
        if Shared.Framework == "qbcore" then
            local charinfo = json.decode(row.charinfo)

            return charinfo.firstname .. " " .. charinfo.lastname
        elseif Shared.Framework == "esx" then
            return row.firstname .. " " .. row.lastname
        else
            return ""
        end
    end,

    -- Returns the character name from a database row
    ---@param row unknown
    ---@return string
    GetPlayerIdentifierFromDB = function(row)
        if Shared.Framework == "qbcore" then
            return row.citizenid
        elseif Shared.Framework == "esx" then
            return row.identifier
        else
            return ""
        end
    end,

    -- Print a formatted error in the console
    Error = function(text)
        print("\27[91m" .. text .. "\27[0m")
    end,

    -- Print a formatted warning in the console
    Warning = function(text)
        print("\27[33m" .. text .. "\27[0m")
    end,

    -- Print a formatted success message in the console
    Success = function(text)
        print("\27[32m" .. text .. "\27[0m")
    end,

    -- Update a players profile picture
    ---@param Player unknown
    ---@param value string
    SaveProfilePicture = function(Player, value)
        if Shared.Framework == "qbcore" then
            Functions.ExecuteSQL("UPDATE `players` SET `profilePicture` = @profilePicture WHERE `citizenid` = @citizenid", {
                ["@profilePicture"] = value,
                ["@citizenid"] = Player.PlayerData.citizenid
            })
        elseif Shared.Framework == "esx" then
            Functions.ExecuteSQL("UPDATE `users` SET `profilePicture` = @profilePicture WHERE `identifier` = @identifier", {
                ["@profilePicture"] = value,
                ["@identifier"] = Player.identifier
            })
        end
    end,

    -- Update a players dark theme setting
    ---@param Player unknown
    ---@param value number
    SaveDarkTheme = function(Player, value)
        if value == true then
            value = 1
        elseif value == false then
            value = 0
        else
            return
        end

        if Shared.Framework == "qbcore" then
            Functions.ExecuteSQL("UPDATE `players` SET `invoiceDarkTheme` = @darkTheme WHERE `citizenid` = @citizenid", {
                ["@darkTheme"] = value,
                ["@citizenid"] = Player.PlayerData.citizenid
            })
        elseif Shared.Framework == "esx" then
            Functions.ExecuteSQL("UPDATE `users` SET `invoiceDarkTheme` = @darkTheme WHERE `identifier` = @identifier", {
                ["@darkTheme"] = value,
                ["@identifier"] = Player.identifier
            })
        end
    end,

    -- Generate a uuid
    ---@return string, number
    GenerateUuid = function()
        return string.gsub(uuidTemplate, '[xy]', function(char)
            local v = (char == 'x') and math.random(0, 0xf) or math.random(8, 0xb)
            return string.format('%x', v)
        end)
    end,

    -- Get a player object from source
    ---@param source number
    ---@return unknown | nil
    GetPlayer = function(source)
        if Shared.Framework == "qbcore" then
            return Framework.Functions.GetPlayer(source)
        elseif Shared.Framework == "esx" then
            return Framework.GetPlayerFromId(source)
        end
    end,

    GetPlayerFromIdentifier = function(identifier)
        if Shared.Framework == "qbcore" then
            return Framework.Functions.GetPlayerByCitizenId(identifier)
        elseif Shared.Framework == "esx" then
            return Framework.GetPlayerFromIdentifier(identifier)
        end
    end,

    -- Register a server callback
    ---@param name string
    ---@param cb function
    ---@param ... any[]
    CreateCallback = function(name, cb, ...)
        if Shared.Framework == "qbcore" then
            Framework.Functions.CreateCallback(name, function(...)
                cb(...)
            end, ...)
        elseif Shared.Framework == "esx" then
            Framework.RegisterServerCallback(name, function(...)
                cb(...)
            end)
        end
    end,
}