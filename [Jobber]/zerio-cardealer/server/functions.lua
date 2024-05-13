Framework = exports["qb-core"]:GetCoreObject()

Functions = {
    ExecuteSQL = function(query, cb)
        exports.oxmysql:update(query, {}, function(retVal)
            AddLog("sql", {query = query, type = "execute", retVal = retVal})
            if cb then cb(retVal) end
        end)
    end,

    InsertSQL = function(query, cb)
        exports.oxmysql:insert(query, {}, function(retVal)
            AddLog("sql", {query = query, type = "insert", retVal = retVal})
            if cb then cb(retVal) end
        end)
    end,

    SelectSQL = function(query, cb)
        exports.oxmysql:query(query, {}, function(retVal)
            AddLog("sql", {query = query, type = "select", retVal = retVal})
            if cb then cb(retVal) end
        end)
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

    BuyVehicle = function(vehicleData, buyerSource, sellerSource) end
}
