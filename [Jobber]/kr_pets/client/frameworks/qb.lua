QBCore = nil
PlayerData = {}

CreateThread(function()
    if(Config.Framework ~= "qb") then return end
    
    QBCore = exports[Config.CustomStringQBExport]:GetCoreObject()

    function MenuClose()
        -- QBCore.UI.Menu.CloseAll()
    end

    function HelpText(msg, time)
        AddTextEntry("pets", msg)
        if(not time) then
            BeginTextCommandDisplayHelp("pets")
            EndTextCommandDisplayHelp(0, false, false, time)
        else
            DisplayHelpTextThisFrame("pets", false)
            BeginTextCommandDisplayHelp("pets")
            EndTextCommandDisplayHelp(0, false, -1)
        end
    end

    PlayerData = QBCore.Functions.GetPlayerData()

    RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
        LoadPets()
        LoadPetHouse()
    end)

    function LoadPets()
        QBCore.Functions.TriggerCallback("kr_pets:getPets", function(pets)
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
                local pos = 6 - (i % 6)
                local offset = GetOffsetFromEntityInWorldCoords(pet, singleSequence[pos][1], singleSequence[pos][2], 0.0)
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
                    -- AnimHandler(currentPets[i], "spawnAnim")
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

    RegisterNetEvent("kr_pets:interact", function(data)
        data.pet = tonumber(data.pet)
        OpenPetMenu(data.pet)
    end)

    RegisterNetEvent("kr_pets:openPetHouse", function(data)
        OpenPetHouse(tonumber(data.houseId))
    end)

    function LoadPetHouse()
        QBCore.Functions.TriggerCallback("kr_pets:getPetHouses", function(petHouses_)
            for i=1,#petHouses_ do
                local coords = json.decode(petHouses_[i].position)
                local hash = GetHashKey(Config.PetHouseModel)
                local house = CreateObject(hash, vector3(coords.x, coords.y, coords.z), Config.EnableNetworkedHouses, true, false)
                SetEntityHeading(house, coords.w)
                PlaceObjectOnGroundProperly(house)
                table.insert(petHouses, {houseId = petHouses_[i].id, houseModel = house})
            end
            
            if(Config.TargetSystem ~= "none") then
                for i=1,#petHouses do
                    exports[Config.TargetSystem]:AddTargetEntity(petHouses[i].houseModel, {
                        options = {
                            {
                                event = "kr_pets:openPetHouse",
                                label = "Open pet house",
                                houseId = petHouses[i].houseId,
                            }
                        },
                        distance = 2
                    })
                end
            end
        end)
    end

    function CheckPolice()
        local job = QBCore.Functions.GetPlayerData().job.name

        return job
    end

    function Notify(msg)
        QBCore.Functions.Notify(msg)
    end

    function LearnNewSniffItem(pet)
        -- local inventory = QBCore.Functions.GetPlayerData().inventory
        local elements = {         
            {
                header = Config.Translation[Config.CurrentTranslation].sniffNewItem,
                isMenuHeader = true, -- Set to true to make a nonclickable title
            }
        }

        -- inventory = json.decode(inventory)
        -- for i=1,#inventory do
        --     if(inventory[i].amount > 0) then
                for j=1,#Config.AllowedSniffedItems do
                    local hasItem = QBCore.Functions.HasItem(Config.AllowedSniffedItems[j])
                    if(hasItem) then
                        local label = QBCore.Shared.Items[Config.AllowedSniffedItems[j]:lower()]["label"]
                        table.insert(elements, {
                            header = label,
                            params = {
                                isAction = true,
                                event = function()
                                    for k=1,#pet.sniffedItems do
                                        if(pet.sniffedItems[k] == Config.AllowedSniffedItems[j]) then Notify(Config.Translation[Config.CurrentTranslation].alreadySniffedItem) return end
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
                                                table.insert(pet.sniffedItems, Config.AllowedSniffedItems[j])
                                                TriggerServerEvent("kr_pets:learnNewSniffItem", pet)
                                                Follow(pet)
                                                break
                                            end
                                
                                            Wait(0)
                                        end
                                    else
                                        Notify(Config.Translation[Config.CurrentTranslation].cannotSniffNewItems)
                                    end
                                end
                            }
                        })
                    end
                end
        --     end
        -- end
        
        exports['qb-menu']:openMenu(elements)
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
            TaskGoToEntity(pet.petId, entity, 9999999, 1.0, 2.5, 1073741824, 0)

            CreateThread(function()
                while(#(GetEntityCoords(pet.petId) - targetCoords) > 3.0) do
                    Wait(0)
                end
                if(IsEntityAPed(entity)) then -- IS ENTITY PED
                    local id = GetPlayerServerId(NetworkGetPlayerIndexFromPed(entity))
                    QBCore.Functions.TriggerCallback("kr_pets:getTargetInventory", function(inventory)
                        inventory = json.decode(inventory)
                        Wait(2500)
                        for i=1,#inventory do
                            if(inventory[i].amount > 0) then
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
                    if(Config.VehicleInventory == "qs-inventory") then
                        Wait(2500)
                        QBCore.Functions.TriggerCallback("kr_pets:getQSTrunk", function(items)
                            if(Config.Debug) then
                                print(json.encode(items, {indent = true}))
                            end
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
                    else
                        QBCore.Functions.TriggerCallback("qb-inventory:server:GetTrunkItems", function(inventory)
                            Wait(2500)
                            for i=1,#inventory do
                                if(inventory[i].amount > 0) then
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
                        end, trim(GetVehicleNumberPlateText(entity)))
                    end
                end
            end)
        end
    end

    RegisterNUICallback("purchase", function(data, cb)
        ClosePetShopScene()
    
        if(#currentPets < Config.MaxAmountPetOutside) then
            local dialog = exports["qb-input"]:ShowInput({
                header = Config.Translation[Config.CurrentTranslation].insertNameOfPet,
                submitText = "Purchase",
                inputs = {
                    {
                        text = "Input name",
                        name = "name",
                        type = "text",
                        isRequired = true
                    }
                }
            })

            if(dialog and dialog.name) then
                TriggerServerEvent("kr_pets:insertPet", data.index+1, dialog.name)
            end
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

        local dialog = exports["qb-input"]:ShowInput({
            header = Config.Translation[Config.CurrentTranslation].insertNameOfPet,
            submitText = "Purchase",
            inputs = {
                {
                    text = "Input name",
                    name = "name",
                    type = "text",
                    isRequired = true
                }
            }
        })

        if(dialog and dialog.name) then
            TriggerServerEvent("kr_pets:insertPet", index, dialog.name, true)
        end
    end)

    function OpenPetVet()
        QBCore.Functions.TriggerCallback("kr_pets:getAllPets", function(pets)
            local elements = {
                {
                    header = Config.Translation[Config.CurrentTranslation].vet .. Config.Translation[Config.CurrentTranslation].vetPrice .. Config.VetPrice .. "€",
                    isMenuHeader = true, -- Set to true to make a nonclickable title
                },
            }

            for i=1,#pets do
                if(pets[i].stored == -1) then
                    table.insert(elements, {
                        header = pets[i].name,
                        params = {
                            isAction = true,
                            event = function()
                                if(#currentPets < Config.MaxAmountPetOutside) then
                                    TriggerServerEvent("kr_pets:payVetBill", pets[i].name)
                                else
                                    Notify(Config.Translation[Config.CurrentTranslation].tooManyPetsOutside)
                                end
                            end
                        }
                    })
                end
            end

            exports['qb-menu']:openMenu(elements)
        end)
    end

    function OpenPetHouse(houseId, isCommand)
        local elements = {
            {
                header = Config.Translation[Config.CurrentTranslation].petHouse,
                isMenuHeader = true, -- Set to true to make a nonclickable title
            },
            {
                header = Config.Translation[Config.CurrentTranslation].insertPet,
                params = {
                    isAction = true,
                    event = function()
                        InsertPet(houseId, isCommand)
                    end
                }
            },
            {
                header = Config.Translation[Config.CurrentTranslation].withdrawPet,
                params = {
                    isAction = true,
                    event = function()
                        WithdrawPet(houseId)
                    end
                }
            },
        }

        if(not isCommand) then
            table.insert(elements, 
            {
                header = Config.Translation[Config.CurrentTranslation].pickUpHouse,
                params = {
                    isAction = true,
                    event = function()
                        PickUpHouse(houseId)
                    end
                }
            })
        end
        exports['qb-menu']:openMenu(elements)
    end

    function PickUpHouse(houseId)
        QBCore.Functions.TriggerCallback("kr_pets:getPetHousePets", function(pets)
            local model = nil
            for i=1,#petHouses do
                if(petHouses[i].houseId == houseId) then
                    model = petHouses[i].houseModel
                    break
                end
            end
            if(Config.Debug) then
                print(#pets)
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
        QBCore.Functions.TriggerCallback("kr_pets:getPets", function(pets)

            local elements = {
                {
                    header = Config.Translation[Config.CurrentTranslation].petHouse,
                    isMenuHeader = true, -- Set to true to make a nonclickable title
                },
            }

            for i=1,#pets do
                table.insert(elements, {
                    header = pets[i].name,
                    params = {
                        isAction = true,
                        event = function()
                            TriggerServerEvent("kr_pets:insertPetInHouse", pets[i].name, houseId, isCommand)
                            TriggerEvent("kr_pets:removePet", pets[i].name)
                        end
                    }
                })
            end
            exports['qb-menu']:openMenu(elements)
        end)
    end

    function WithdrawPet(houseId)
        if(#currentPets >= Config.MaxAmountPetOutside) then Notify(Config.Translation[Config.CurrentTranslation].tooManyPetsOutside) return end

        QBCore.Functions.TriggerCallback("kr_pets:getPetHousePets", function(pets)
            local elements = {
                {
                    header = Config.Translation[Config.CurrentTranslation].petHouse,
                    isMenuHeader = true, -- Set to true to make a nonclickable title
                },
            }

            for i=1,#pets do
                table.insert(elements, {
                    header = pets[i].name,
                    params = {
                        isAction = true,
                        event = function()
                            TriggerServerEvent("kr_pets:withdrawPet", pets[i].name)
                        end
                    }
                })
            end
            exports['qb-menu']:openMenu(elements)
        end, houseId)
    end


    function Transfer(pet)
        local dialog = exports["qb-input"]:ShowInput({
            header = Config.Translation[Config.CurrentTranslation].insertId,
            submitText = "Transfer",
            inputs = {
                {
                    text = "ID",
                    name = "id",
                    type = "number",
                    isRequired = true
                }
            }
        })

        if(dialog and dialog.id) then
            local targetPedSrc = tonumber(dialog.id)
            local targetPedIndex = GetPlayerFromServerId(targetPedSrc)
            local targetPed = GetPlayerPed(targetPedIndex)
            local targetPedCoords = GetEntityCoords(targetPed)
            local pedCoords = GetEntityCoords(PlayerPedId())

            if(#(targetPedCoords - pedCoords) > 5.0) then Notify(Config.Translation[Config.CurrentTranslation].targetPlayerTooFar) return end
            pet.petId = PedToNet(pet.petId)
            TriggerServerEvent("kr_pets:transferPet", pet, tonumber(dialog.id))
        end
    end

    function trim(string)
        return (string:gsub("^%s*(.-)%s*$", "%1"))
    end
end)