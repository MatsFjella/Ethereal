PlayerData = {}

CreateThread(function()
    if(Config.Framework ~= "esx") then return end
    
    local export, ESX = pcall(function()
        return exports.es_extended:getSharedObject()
    end)
    if not export then
        TriggerEvent("esx:getSharedObject", function(obj)
            ESX = obj
        end)
    end
    
    while ESX.GetPlayerData().job == nil do
        Wait(250)
    end

    function MenuClose()
        ESX.UI.Menu.CloseAll()
    end

    PlayerData = ESX.GetPlayerData()

    function LoadPets()
        ESX.TriggerServerCallback("kr_pets:getPets", function(pets)
            local offset = 0.5
            local singleSequence = {{0.75, 0.0}, {0.75, 0.75}, {0.0, 0.75}, {-0.75, 0.0}, {-0.75, -0.75}, {0.0, -0.75}}
            for i=1,#pets do
                local ped = PlayerPedId()
                local coords = GetEntityCoords(ped)

                RequestModel(GetHashKey(pets[i].model))
                while (not HasModelLoaded(GetHashKey(pets[i].model))) do
                    Wait(1)
                end

                local pet = CreatePed(28, GetHashKey(pets[i].model), coords, 0.0, true, true)
                SetEntityAsMissionEntity(pet, true,true)
                SetBlockingOfNonTemporaryEvents(pet, true)
                SetPedFleeAttributes(pet, 0, 0)
                NetworkRegisterEntityAsNetworked(pet)
                local healthModifier = (pets[i].skills.health == 11 and 150 or pets[i].skills.health * 10)
                SetEntityHealth(pet, 150 + healthModifier)
                local offset = GetOffsetFromEntityInWorldCoords(pet, singleSequence[i % (Config.MaxAmountPetOutside + 1)][1], singleSequence[i % (Config.MaxAmountPetOutside + 1)][2], 0.0)
                local r, z = GetGroundZFor_3dCoord(offset.x, offset.y, offset.z, 1)
                SetEntityCoords(pet, offset.x, offset.y, z)

                table.insert(currentPets, {petId = pet, model = pets[i].model, sniffedItems = pets[i].sniffedItems, status = pets[i].status, skills = pets[i].skills, name = pets[i].name, bornAt = pets[i].bornAt, stored = pets[i].stored})
                if(currentPets[#currentPets].status.tracker) then
                    AddBlipForPet(currentPets[#currentPets])
                end
                TriggerServerEvent("kr_pets:insertPetMigrate", PedToNet(pet), pets[i].name)
            end

            for i=1,#currentPets do
                CreateThread(function()
                    Follow(currentPets[i])
                end)
            end

            if(Config.TargetSystem ~= "none") then
                for i=1,#currentPets do
                    exports[Config.TargetSystem]:AddTargetEntity(currentPets[i].petId, {
                        options = {
                            {
                                event = "kr_pets:interact",
                                label = "Interact",
                                pet = i,
                            }
                        },
                        distance = 2
                    })
                end
            end
        end)
    end

    LoadPets()

    RegisterNetEvent("kr_pets:interact", function(data)
        OpenPetMenu(data.pet)
    end)

    RegisterNetEvent("kr_pets:openPetHouse", function(data)
        OpenPetHouse(data.houseId)
    end)

    ESX.TriggerServerCallback("kr_pets:getPetHouses", function(petHouses_)
        for i=1,#petHouses_ do
            local coords = json.decode(petHouses_[i].position)
            local hash = GetHashKey(Config.PetHouseModel)
            local house = CreateObject(hash, vector3(coords.x, coords.y, coords.z), Config.EnableNetworkedHouses, true, false)
            SetEntityHeading(house, coords.w)
            PlaceObjectOnGroundProperly(house)
            table.insert(petHouses, {houseId = petHouses_[i].id, houseModel = house})
        end

        if(Config.TargetSystem ~= "none") then
            for i=1,#petHouses_ do
                exports[Config.TargetSystem]:AddTargetEntity(petHouses_[i].houseModel, {
                    options = {
                        {
                            event = "kr_pets:openPetHouse",
                            label = "Open pet house",
                            houseId = petHouses_[i].houseId,
                        }
                    },
                    distance = 2
                })
            end
        end
    end)

    function CheckPolice()
        local job = PlayerData.job.name

        return job
    end

    function HelpText(msg, time)
        if(not time) then
            ESX.ShowHelpNotification(msg, true)
        else
            ESX.ShowHelpNotification(msg, true, time)
        end
    end

    function Notify(msg)
        ESX.ShowNotification(msg)
    end

    function LearnNewSniffItem(pet)
        local inventory = ESX.GetPlayerData().inventory
        local elements = {}

        if(Config.Inventory == "default") then
            -- print(json.encode(inventory, {indent = true}))
            for i=1,#inventory do
                if(inventory[i].count > 0) then
                    for j=1,#Config.AllowedSniffedItems do
                        if(inventory[i].name == Config.AllowedSniffedItems[j]) then
                            table.insert(elements, inventory[i])
                        end
                    end
                end
            end
        elseif(Config.Inventory == "ox") then
            for j=1,#Config.AllowedSniffedItems do
                local count = exports.ox_inventory:Search('count', Config.AllowedSniffedItems[j])
                local name = nil

                for item, data in pairs(exports.ox_inventory:Items()) do
                    if(data.name == Config.AllowedSniffedItems[j]) then
                        name = data.label
                    end
                end

                if(count > 0) then
                    table.insert(elements, {name = Config.AllowedSniffedItems[j], label = name})
                end
            end
        end

        ESX.UI.Menu.Open("default", GetCurrentResourceName(), "pet",
        {
            title = Config.Translation[Config.CurrentTranslation].sniffNewItem,
            align = "top-right",
            elements = elements
        },
        function(data, menu)

            for k=1,#pet.sniffedItems do
                if(pet.sniffedItems[k] == data.current.name) then Notify(Config.Translation[Config.CurrentTranslation].alreadySniffedItem) return end
            end

            if(not pet.sniffTimer) then
                pet.sniffTimer = GetGameTimer() - Config.Delays.newItemToSniffDelay - 10
            end

            if(GetGameTimer() - pet.sniffTimer > Config.Delays.newItemToSniffDelay) then
                local pedCoords = GetEntityCoords(PlayerPedId())
                local forward = GetEntityForwardVector(PlayerPedId())
                local newCoords = pedCoords + forward
                pet.sniffTimer = GetGameTimer()
                TaskPlayAnim(PlayerPedId(), LoadDict("pickup_object"), "pickup_low", 2.7, 2.7, -1, 32, 0, 0, 0, 0)
                TaskGoToCoordAnyMeans(pet.petId, newCoords, 8.0, 0, 0, 786603, 0x93399E79)

                while(true) do
                    local petCoords = GetEntityCoords(pet.petId)
                    local dist = #(newCoords - petCoords)
        
                    if(dist < 1.0) then
                        local heading = GetHeadingFromVector_2d(newCoords.x - petCoords.x, newCoords.y - petCoords.y)
                        TaskAchieveHeading(pet.petId, heading, -1)
                        AnimHandler(pet, "pickUp")
                        Wait(2500)
                        AnimHandler(pet)
                        table.insert(pet.sniffedItems, data.current.name)
                        TriggerServerEvent("kr_pets:learnNewSniffItem", pet)
                        Follow(pet)
                        break
                    end
        
                    Wait(0)
                end
            else
                Notify(Config.Translation[Config.CurrentTranslation].cannotSniffNewItems)
            end
        end,
        function(data, menu)
            menu.close()
        end)
    end

    function SearchEntity(pet, targetCoords)
        local ped, dist = GetClosestPedDist(targetCoords)
        local veh, vehDist = GetClosestVehicleDist(targetCoords)

        if(Config.PoliceOnly.onlyPoliceCanSniff) then
            local checkPolice = CheckPolice()
            if(checkPolice ~= "police") then Notify(Config.Translation[Config.CurrentTranslation].actionMustBePolice) return end
        end
        
        local entity, realDist = nil, 0.0

        if(veh and ped) then
            if(dist > vehDist) then
                realDist = vehDist
                entity = veh
            else
                realDist = dist
                entity = ped
            end
        elseif(veh) then
            realDist = vehDist
            entity = veh
        elseif(ped) then
            realDist = dist
            entity = ped
        end


        if(entity and realDist < 2) then
            local ranNum = math.random(1, 10)
            TaskGoToEntity(pet.petId, entity, 9999999, 2.0, 2.5, 1073741824, 0)

            CreateThread(function()
                while(#(GetEntityCoords(pet.petId) - targetCoords) > 3.0) do
                    Wait(0)
                end
                if(Config.Debug) then
                    print("through")
                end
                if(IsEntityAPed(entity)) then -- IS ENTITY PED
                    local id = GetPlayerServerId(NetworkGetPlayerIndexFromPed(entity))

                    ESX.TriggerServerCallback("kr_pets:getTargetInventory", function(inventory)
                        Wait(2500)
                        for i=1,#inventory do
                            if(inventory[i].count > 0) then
                                for j=1,#pet.sniffedItems do
                                    if(inventory[i].name == pet.sniffedItems[j]) then
                                        if(pet.skills.sniff >= ranNum) then
                                            AnimHandler(pet, "sitAnim")
                                            Wait(500)
                                            AnimHandler(pet)
                                        end
                                        break
                                    end
                                end
                            end
                        end
                    end, id)
                else -- IS ENTITY VEHICLE
                    if(pet.skills.sniff < 11) then return end
                    if(Config.VehicleInventory == "esx_inventoryhud_trunk" or Config.VehicleInventory == "esx_trunk") then
                        ESX.TriggerServerCallback(Config.VehicleInventory..":getInventoryV", function(inventory)
                            Wait(2500)
                            for i=1,#inventory.items do
                                if(inventory.items[i].count > 0) then
                                    for j=1,#pet.sniffedItems do
                                        if(inventory.items[i].name == pet.sniffedItems[j]) then
                                            if(pet.skills.sniff >= ranNum) then
                                                AnimHandler(pet, "sitAnim")
                                                Wait(500)
                                                AnimHandler(pet)
                                            end
                                            break
                                        end
                                    end
                                end
                            end
                        end, trim(GetVehicleNumberPlateText(entity)))
                    elseif(Config.VehicleInventory == "ox_inventory") then
                        ESX.TriggerServerCallback("kr_pets:getOxTrunk", function(returnedCount)
                            Wait(2500)
                            if(returnedCount > 0) then
                                if(pet.skills.sniff >= ranNum) then
                                    AnimHandler(pet, "sitAnim")
                                    Wait(500)
                                    AnimHandler(pet)
                                end                      
                            end
                        end, trim(GetVehicleNumberPlateText(entity)), pet.sniffedItems)
                    elseif(Config.VehicleInventory == "qs-inventory") then
                        Wait(2500)
                        ESX.TriggerServerCallback("kr_pets:getQSTrunk", function(items)
                            for i=1,#items do
                                for j=1,#pet.sniffedItems do
                                    if(items[i].name == pet.sniffedItems[j]) then
                                        if(pet.skills.sniff >= ranNum) then
                                            AnimHandler(pet, "sitAnim")
                                            Wait(500)
                                            AnimHandler(pet)
                                        end
                                        break
                                    end
                                end
                            end
                        end, trim(GetVehicleNumberPlateText(entity)))
                    elseif(Config.VehicleInventoru == "mf-inventory") then
                        exports["mf-inventory"]:getInventoryItems('trunk'.. trim(GetVehicleNumberPlateText(entity)),function(items)
                            Wait(2500)
                            for i=1,#items do
                                for j=1,#pet.sniffedItems do
                                    if(items[i].name == pet.sniffedItems[j]) then
                                        if(pet.skills.sniff >= ranNum) then
                                            AnimHandler(pet, "sitAnim")
                                            Wait(500)
                                            AnimHandler(pet)
                                        end
                                        break
                                    end
                                end
                            end
                        end)
                    elseif(Config.VehicleInventory == "custom") then
                        Wait(2500)
                        if(Config.GetCustomVehicleInventoryItems ~= nil) then
                            local items = Config.GetCustomVehicleInventoryItems(entity)
                            for i=1,#items do
                                for j=1,#pet.sniffedItems do
                                    if(items[i].name == pet.sniffedItems[j]) then
                                        if(pet.skills.sniff >= ranNum) then
                                            AnimHandler(pet, "sitAnim")
                                            Wait(500)
                                            AnimHandler(pet)
                                        end
                                        break
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end
    end

    RegisterNUICallback("purchase", function(data, cb)
        ClosePetShopScene()
    
        if(#currentPets < Config.MaxAmountPetOutside) then
            ESX.UI.Menu.Open("dialog",GetCurrentResourceName(),"pets",
            {
                title = Config.Translation[Config.CurrentTranslation].insertNameOfPet,
            },
            function(data2, menu)
                if(data2.value and data2.value ~= "") then
                    TriggerServerEvent("kr_pets:insertPet", data.index+1, data2.value)
                end

                menu.close()
            end,
            function(data2, menu)
                menu.close()
            end)
        end
    end)

    RegisterNetEvent("kr_pets:insertPetWithoutPrice", function(model --[[e.g. "a_c_rottweiler"]])
        local index = nil
        for i=1,#Config.Pets do
            if(Config.Pets[i].model == model) then
                index = i
            end
        end

        if(not index) then
            print("invalid model name for pet")
            return
        end

        ESX.UI.Menu.Open("dialog",GetCurrentResourceName(),"pets",
        {
            title = Config.Translation[Config.CurrentTranslation].insertNameOfPet,
        },
        function(data2, menu)
            if(data2.value and data2.value ~= "") then
                TriggerServerEvent("kr_pets:insertPet", index, data2.value, true)
            end

            menu.close()
        end,
        function(data2, menu)
            menu.close()
        end)
    end)

    function OpenPetVet()
        ESX.TriggerServerCallback("kr_pets:getAllPets", function(pets)
            local elements = {}

            for i=1,#pets do
                if(pets[i].stored == -1) then
                    table.insert(elements, {label = pets[i].name})
                end
            end
            
            ESX.UI.Menu.Open("default",GetCurrentResourceName(),"pets",
            {
                title = Config.Translation[Config.CurrentTranslation].vet .. Config.Translation[Config.CurrentTranslation].vetPrice .. Config.VetPrice .. "€",
                align = "top-left",
                elements = elements
            },
            function(data, menu)
                if(#currentPets < Config.MaxAmountPetOutside) then
                    TriggerServerEvent("kr_pets:payVetBill", data.current.label)
                else
                    Notify(Config.Translation[Config.CurrentTranslation].tooManyPetsOutside)
                end
                menu.close()
            end,
            function(data, menu)
                menu.close()
            end)
        end)
    end

    function OpenPetHouse(houseId, isCommand)
        local elements = {
            {label = Config.Translation[Config.CurrentTranslation].insertPet, value = "insert"},
            {label = Config.Translation[Config.CurrentTranslation].withdrawPet, value = "withdraw"},
        }

        if(not isCommand) then
            table.insert(elements, {label = Config.Translation[Config.CurrentTranslation].pickUpHouse, value = "pickUp"})
        end

        ESX.UI.Menu.Open("default",GetCurrentResourceName(),"pets",
        {
            title = Config.Translation[Config.CurrentTranslation].petHouse,
            align = "top-left",
            elements = elements
        },
        function(data, menu)
            if(data.current.value == "insert") then
                InsertPet(houseId, isCommand)
            elseif(data.current.value == "withdraw") then
                WithdrawPet(houseId)
            elseif(data.current.value == "pickUp") then
                PickUpHouse(houseId)
            end
            menu.close()
        end,
        function(data, menu)
            menu.close()
        end)
    end

    function PickUpHouse(houseId)
        ESX.TriggerServerCallback("kr_pets:getPetHousePets", function(pets)
            local model = nil
            for i=1,#petHouses do
                if(petHouses[i].houseId == houseId) then
                    model = petHouses[i].houseModel
                    break
                end
            end
            if(Config.Debug) then
                print(json.encode(pets, {indent = true}))
            end
            if(#pets > 0) then 
                Notify(Config.Translation[Config.CurrentTranslation].houseMustBeEmpty) 
            else
                DeleteEntity(model)
                TriggerServerEvent("kr_pets:pickUpHouse", houseId)
            end
        end, houseId)
    end
    
    function InsertPet(houseId, isCommand)
        ESX.TriggerServerCallback("kr_pets:getPets", function(pets)
            local elements = {}

            for i=1,#pets do
                table.insert(elements, {label = pets[i].name})
            end

            ESX.UI.Menu.Open("default",GetCurrentResourceName(),"pets",
            {
                title = Config.Translation[Config.CurrentTranslation].petHouse,
                align = "top-left",
                elements = elements
            },
            function(data, menu)
                TriggerServerEvent("kr_pets:insertPetInHouse", data.current.label, houseId, isCommand)
                TriggerEvent("kr_pets:removePet", data.current.label)
                menu.close()
            end,
            function(data, menu)
                menu.close()
            end)
        end)
    end

    function WithdrawPet(houseId)
        if(#currentPets >= Config.MaxAmountPetOutside) then Notify(Config.Translation[Config.CurrentTranslation].tooManyPetsOutside) return end

        ESX.TriggerServerCallback("kr_pets:getPetHousePets", function(pets)
            local elements = {}

            for i=1,#pets do
                table.insert(elements, {label = pets[i].name})
            end

            ESX.UI.Menu.Open("default",GetCurrentResourceName(),"pets",
            {
                title = Config.Translation[Config.CurrentTranslation].petHouse,
                align = "top-left",
                elements = elements
            },
            function(data, menu)
                TriggerServerEvent("kr_pets:withdrawPet", data.current.label)
                menu.close()
            end,
            function(data, menu)
                menu.close()
            end)
        end, houseId)
    end


    function Transfer(pet)
        ESX.UI.Menu.Open("dialog", GetCurrentResourceName(), "pet",
        {
            title = Config.Translation[Config.CurrentTranslation].insertId,
            align = "top-right",
        },
        function(data, menu)
            if(tonumber(data.value)) then
                local targetPedSrc = tonumber(data.value)
                local targetPedIndex = GetPlayerFromServerId(targetPedSrc)
                local targetPed = GetPlayerPed(targetPedIndex)
                local targetPedCoords = GetEntityCoords(targetPed)
                local pedCoords = GetEntityCoords(PlayerPedId())

                if(#(targetPedCoords - pedCoords) > 5.0) then Notify(Config.Translation[Config.CurrentTranslation].targetPlayerTooFar) return end
                pet.petId = PedToNet(pet.petId)
                TriggerServerEvent("kr_pets:transferPet", pet, tonumber(data.value))
            end
            menu.close()
        end,
        function(data, menu)
            menu.close()
        end)
    end

    function trim(string)
        return (string:gsub("^%s*(.-)%s*$", "%1"))
    end
end)