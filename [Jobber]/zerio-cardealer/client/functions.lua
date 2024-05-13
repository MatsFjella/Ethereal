Framework = exports["qb-core"]:GetCoreObject()

Functions = {
    ShowHelpText = function(text, coords)
        AddTextEntry("zerio-cardealer", text)
        SetFloatingHelpTextWorldPosition(1, coords)
        SetFloatingHelpTextStyle(1, 1, 2, -1, 3, 0)
        BeginTextCommandDisplayHelp("zerio-cardealer")
        EndTextCommandDisplayHelp(2, false, false, -1)
    end,

    Open = function()
        Framework.Functions.TriggerCallback("zerio-cardealer:server:getCars",
                                            function(result)
            local allow = false
            if Config.AllowDiscount ~= nil and type(Config.AllowDiscount) ==
                "boolean" then allow = Config.AllowDiscount end

            OpenedIndex = CurrentIndex
            SetNuiFocus(true, true)
            AddLog("action", "Opened main menu")
            SendNUIMessage({
                action = "open",

                data = {
                    categories = result,
                    label = Config.Positions[CurrentIndex].label,
                    job = Config.Positions[CurrentIndex].job,
                    allowdiscount = allow
                }
            })
        end, Config.Positions[CurrentIndex].job, Config.Positions[CurrentIndex]
                                                .categories,
                                            Config.Positions[CurrentIndex]
                                                .customname)
    end,

    GeneratePlate = function()
        local space = ""
        if Config.PlateUseSpace then space = " " end
        local plate = ""
        for i = 1, Config.PlateFirstString do
            plate = plate .. string.upper(string.char(math.random(97, 122)))
        end
        plate = plate .. space
        for i = 1, Config.PlateLastString do
            plate = plate .. tonumber(math.random(1, 9))
        end
        return plate
    end,

    ShowcaseMenu = function()
        Framework.Functions.TriggerCallback(
            "zerio-cardealer:server:getshowcasecars", function(result)
                OpenedIndex = CurrentIndex
                SetNuiFocus(true, true)
                AddLog("action", "Opened showcase menu")
                SendNUIMessage({
                    action = "openshowcase",

                    data = {
                        cars = result,
                        job = Config.Positions[CurrentIndex].job,
                        label = Config.Positions[CurrentIndex].label
                    }
                })
            end, Config.Positions[CurrentIndex].job,
            Config.Positions[CurrentIndex].customname)
    end,

    CatalogueMenu = function()
        Framework.Functions.TriggerCallback(
            "zerio-cardealer:server:getcataloguecars", function(result)
                OpenedIndex = CurrentIndex
                SetNuiFocus(true, true)
                AddLog("action", "Opened catalogue menu")
                SendNUIMessage({
                    action = "opencatalogue",

                    data = {
                        label = Config.Positions[CurrentIndex].label,
                        job = Config.Positions[CurrentIndex].job,
                        cars = result
                    }
                })
            end, Config.Positions[CurrentIndex].job,
            Config.Positions[CurrentIndex].categories,
            Config.Positions[CurrentIndex].customname)
    end,

    TestdriveMenu = function()
        Framework.Functions.TriggerCallback(
            "zerio-cardealer:server:gettestdrivedata", function(result)
                OpenedIndex = CurrentIndex
                SetNuiFocus(true, true)
                AddLog("action", "Opened testdrive menu")
                SendNUIMessage({
                    action = "opentestdrive",

                    data = {
                        label = Config.Positions[CurrentIndex].label,
                        job = Config.Positions[CurrentIndex].job,
                        cars = result.cars,
                        players = result.players
                    }
                })
            end, Config.Positions[CurrentIndex].job,
            Config.Positions[CurrentIndex].categories,
            Config.Positions[CurrentIndex].customname)
    end,

    OpenAdminMenu = function()
        OpenedIndex = CurrentIndex
        SetNuiFocus(true, true)
        AddLog("action", "Opened admin menu")
        SendNUIMessage({action = "openadminmenu", data = {}})
    end,

    ChangeDuty = function() TriggerServerEvent("QBCore:ToggleDuty") end,

    Close = function()
        AddLog("action", "Closed menu")
        OpenedIndex = nil
        SendNUIMessage({action = "close"})
    end
}
