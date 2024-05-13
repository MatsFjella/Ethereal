if Shared.Framework == "qbcore" then
    Framework = exports["qb-core"]:GetCoreObject()

    if Shared.CloseOnDeath ~= false then
        -- Handling PlayerData for the IsDead function below
        PlayerData = Framework.Functions.GetPlayerData()

        RegisterNetEvent("QBCore:Player:SetPlayerData", function(newPlayerData) PlayerData = newPlayerData end)
    end
elseif Shared.Framework == "esx" then
    if ESX == nil then
        Citizen.CreateThread(function()
            while Framework == nil do
                TriggerEvent("esx:getSharedObject",
                             function(obj) Framework = obj end)
                Wait(100)
            end
        end)
    else
        Framework = ESX
    end

    if Shared.CloseOnDeath ~= false then
        -- Handling death state for the IsDead function below
        Framework.IsDead = false

        RegisterNetEvent('esx:onPlayerDeath', function() Framework.IsDead = true end)
        RegisterNetEvent('esx:onPlayerSpawn', function(spawn) Framework.IsDead = false end)
    end
end

Functions = {
    -- Trigger a server callback
    ---@param name string
    ---@param cb function
    ---@param ... any[]
    TriggerCallback = function(name, cb, ...)
        if Shared.Framework == "qbcore" then
            Framework.Functions.TriggerCallback(name, function(...)
                cb(...)
            end, ...)
        elseif Shared.Framework == "esx" then
            Framework.TriggerServerCallback(name, function(...)
                cb(...)
            end, ...)
        end
    end,

    IsDead = function()
        if Shared.Framework == "qbcore" then
            if PlayerData ~= nil then
                return PlayerData.metadata["inlaststand"] or PlayerData.metadata["isdead"]
            else
                return false
            end
        elseif Shared.Framework == "esx" then
            return Framework.IsDead -- handled by the events above
        end
    end,

    -- Open the invoice menu
    Open = function()
        if Shared.CloseOnDeath == false or Functions.IsDead() == false then
            Functions.TriggerCallback("zerio-invoice:server:getData", function(allowed, result)
                if allowed == true then
                    IsOpen = true

                    result.framework = Shared.Framework
                    result.themes = Shared.Themes

                    SetNuiFocus(true, true)
                    SendNUIMessage({
                        action = "open",
                        data = result,
                        default = {
                            profilePicture = Shared.DefaultProfilePicture
                        },
                        translations = _T(),
                        settings = {
                            locale = Shared.Locale,
                            currency = Shared.Currency,
                            VAT = Shared.VAT,
                            prefix = Shared.Prefix,
                            suffix = Shared.Suffix
                        }
                    })

                    StartDeathCheckLoop()
                end
            end)
        end
    end,

    OpenAdminMenu = function()
        Functions.TriggerCallback("zerio-invoice:server:getAdminData", function(allowed, result)
            if allowed == true then
                IsOpen = true

                result.framework = Shared.Framework
                result.themes = Shared.Themes

                SetNuiFocus(true, true)
                SendNUIMessage({
                    action = "openAdminMenu",
                    data = result,
                    default = {
                        profilePicture = Shared.DefaultProfilePicture
                    },
                    translations = _T(),
                    settings = {
                        locale = Shared.Locale,
                        currency = Shared.Currency,
                        VAT = Shared.VAT,
                        prefix = Shared.Prefix,
                        suffix = Shared.Suffix
                    }
                })
            end
        end)
    end,

    -- Close the invoice menu
    Close = function(fromNui)
        SetNuiFocus(false, false)
        IsOpen = false

        if fromNui == false then
            SendNUIMessage({
                action = "close"
            })
        end
    end
}