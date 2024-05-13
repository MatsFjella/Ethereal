-- DONT CHANGE THIS IF YOU DONT KNOW WHAT YOU ARE DOING!!!!!!!!!!!!!!!!
if GetResourceState("qb-core") ~= "missing" then
    Shared.Framework = "qbcore"
    Shared.EventNames = {}
elseif GetResourceState("es_extended") ~= "missing" then
    Shared.Framework = "esx"
    Shared.EventNames = {}
end