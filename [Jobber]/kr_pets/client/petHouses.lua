petHouses = {}
local activePetHouses = {}

RegisterNetEvent("kr_pets:insertPetHouse", function(houseId)
    local hash = GetHashKey(Config.PetHouseModel)
    local pedCoords = GetEntityCoords(PlayerPedId())
    local forward = GetEntityForwardVector(PlayerPedId())

    RequestModel(hash)
    while(not HasModelLoaded(hash)) do
        Wait(0)
    end

    local house = CreateObject(hash, pedCoords + forward, Config.EnableNetworkedHouses, true, false)
    PlaceObjectOnGroundProperly(house)
    SetEntityHeading(house, GetEntityHeading(PlayerPedId()))
    FreezeEntityPosition(house, true)
    table.insert(petHouses, {houseId = houseId, houseModel = house})
    local pos = GetEntityCoords(house)
    local heading = GetEntityHeading(house)
    TriggerServerEvent("kr_pets:insertHousePos", houseId, vector4(math.floor(pos.x + 0.5), math.floor(pos.y + 0.5), math.floor(pos.z + 0.5), math.floor(heading + 0.5)))

    if(Config.TargetSystem ~= "none") then
        exports[Config.TargetSystem]:AddTargetEntity(house, {
            options = {
                {
                    label = "Open pet house",
                    action = function()
                        OpenPetHouse(houseId)
                    end
                }
            },
            distance = 2
        })
    end
end)

CreateThread(function()
    if(Config.TargetSystem == "none") then
        while(true) do
            Wait(2500)
            local pedCoords = GetEntityCoords(PlayerPedId())
            for i=1,#petHouses do
                local petHouseCoords = GetEntityCoords(petHouses[i].houseModel)
                local dist = #(petHouseCoords - pedCoords)
                if(dist < 50.0) then
                    table.insert(activePetHouses, i)
                end   
            end
        end
    end
end)

CreateThread(function()
    if(Config.TargetSystem == "none") then
        while(true) do
            Wait(0)
            local pedCoords = GetEntityCoords(PlayerPedId())

            for i=1,#activePetHouses do
                local petHouseCoords = GetEntityCoords(petHouses[activePetHouses[i]].houseModel)
                local dist = #(petHouseCoords - pedCoords)
                
                if(dist < 2.0) then
                    HelpText(Config.Translation[Config.CurrentTranslation].open)
                    if(IsControlJustPressed(0, 38)) then
                        OpenPetHouse(petHouses[activePetHouses[i]].houseId)
                    end
                end
            end
        end
    end
end)