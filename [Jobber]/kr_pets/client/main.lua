currentPets = {}
isInPetMenu = false
local petIndexInSkillMenu = 0
local carriesPet = false
action = nil

function LoadDict(Dict)
    while not HasAnimDictLoaded(Dict) do 
        Wait(0)
        RequestAnimDict(Dict)
    end

    return Dict
end

CreateThread(function()
    while(true) do
        Wait(0)
        if(#currentPets > 0) then
            for i=1,#currentPets do
                local value = currentPets[i].skills.speed / 20
                if(currentPets[i].skills.speed == 11) then
                    value = value + 0.25
                end
                SetPedMoveRateOverride(currentPets[i].petId, 1.0 + value)
            end
        end
    end
end)

AddEventHandler("entityDamaged", function(victim, culprit, weapon, baseDamage)
    local ped = PlayerPedId()
    for i=1,#currentPets do
        if(currentPets[i].skills.bravery == 11) then
            if(ped == victim and ped ~= culprit and currentPets[i].status.guard) then
                TaskCombatPed(currentPets[i].petId, culprit, 0, -16)
            end
        end
    end
end)

CreateThread(function()
    while(true) do
        Wait(2500)
        if(#currentPets > 0) then
            for i=1,#currentPets do
                if(DoesEntityExist(currentPets[i].petId) and NetworkGetEntityOwner(currentPets[i].petId) == PlayerId()) then
                    local health = GetEntityHealth(currentPets[i].petId)
                    if(health <= 0) then
                        DeleteEntity(currentPets[i].petId)
                        TriggerServerEvent("kr_pets:petDeath", currentPets[i])
                        TriggerServerEvent("kr_pets:removePetMigrate", PedToNet(currentPets[i].petId))
                        table.remove(currentPets, i)
                        break
                    end
                end
            end
        end
    end
end)

CreateThread(function()
    while(true) do
        Wait(2500)
        if(#currentPets > 0) then
            for i=1,#currentPets do
                if(DoesEntityExist(currentPets[i].petId) and NetworkGetEntityOwner(currentPets[i].petId) == PlayerId()) then
                    local pedCoords = GetEntityCoords(PlayerPedId())
                    if(#(GetEntityCoords(currentPets[i].petId) - pedCoords) > 50.0) then
                        while(IsPedInAnyVehicle(PlayerPedId(), true) or GetEntitySpeed(GetVehiclePedIsIn(PlayerPedId(), false)) > 1.0 or GetEntitySpeed(PlayerPedId()) > 1.0) do
                            Wait(150)
                        end
                        if(currentPets[i].action == "follow") then
                            local forward = GetEntityForwardVector(PlayerPedId())
                            local x,y,z = table.unpack(GetEntityCoords(PlayerPedId()) + forward)
                            SetEntityCoords(currentPets[i].petId, x,y,z)
                        end
                    end
                end
            end
        end
    end
end)

CreateThread(function()
    while(true) do
        Wait(Config.Delays.statusRemoval * 1000)
        if(#currentPets > 0) then
            for i=1,#currentPets do
                local hunger = currentPets[i].status.hunger
                if(hunger > 0) then
                    currentPets[i].status.hunger = hunger - 1
                    TriggerServerEvent("kr_pets:updateStatus", currentPets[i])
                end
                if(hunger == 0) then
                    DeleteEntity(currentPets[i].petId)
                    TriggerServerEvent("kr_pets:petDeath", currentPets[i])
                    TriggerServerEvent("kr_pets:removePetMigrate", PedToNet(currentPets[i].petId))
                    table.remove(currentPets, i)
                    break
                end
            end
        end
    end
end)

RegisterNetEvent("kr_pets:spawnPet", function(pet)
    local ped = PlayerPedId()
    local forward = GetEntityForwardVector(ped)
    local coords = GetEntityCoords(ped) + forward
    local hash = GetHashKey(pet.model)

    RequestModel(hash)
    while (not HasModelLoaded(hash)) do
        Wait(1)
    end

    local petId = CreatePed(28, hash, coords, 0.0, true, true)
    PlaceObjectOnGroundProperly(petId)
    SetEntityAsMissionEntity(petId, true,true)
    SetBlockingOfNonTemporaryEvents(petId, true)
    SetPedFleeAttributes(petId, 0, 0)
    NetworkRegisterEntityAsNetworked(petId)
    local healthModifier = (pet.skills.health == 11 and 150 or pet.skills.health * 10)
    SetEntityHealth(pet, 150 + healthModifier)

    if(pet.skills.bravery == 11) then
        pet.status.guard = true
    end
    if(pet.status.tracker) then
        AddBlipForPet(pet)
    end

    table.insert(currentPets, {petId = petId, model = pet.model, sniffedItems = pet.sniffedItems, status = pet.status, skills = pet.skills, name = pet.name, bornAt = pet.bornAt, stored = pet.stored})
    TriggerServerEvent("kr_pets:insertPetMigrate", PedToNet(petId), pet.name)

    if(Config.TargetSystem ~= "none") then
        exports[Config.TargetSystem]:AddTargetEntity(petId, {
            options = {
                {
                    event = "kr_pets:interact",
                    label = "Snakk",
                    pet = #currentPets,
                }
            },
            distance = 2
        })
    end
end)

RegisterNetEvent("kr_pets:removeMigratedPet", function(pet)
    DeleteEntity(NetToPed(pet))
end)

RegisterNetEvent("kr_pets:migrationHandler", function(name, coords)
    for i=1,#currentPets do
        if(currentPets[i].name == name) then
            if(currentPets[i].action == "follow") then
                TriggerEvent("kr_pets:replacePetEntity", i)
            else
                TriggerEvent("kr_pets:awaitRespawnPetEntity", i, coords)
            end
            break
        end
    end
end)

RegisterNetEvent("kr_pets:awaitRespawnPetEntity", function(i, coords)
    CreateThread(function()
        if(coords) then
            local pedCoords = GetEntityCoords(PlayerPedId())
            while((currentPets[i].action == "goto") and #(coords - pedCoords) > 50.0) do
                pedCoords = GetEntityCoords(PlayerPedId())
                Wait(150)
            end
        end

        local pet = currentPets[i]
        local hash = GetHashKey(pet.model)

        RequestModel(hash)
        while (not HasModelLoaded(hash)) do
            Wait(1)
        end

        local petId = CreatePed(28, hash, coords, 0.0, true, true)
        PlaceObjectOnGroundProperly(petId)
        SetEntityAsMissionEntity(petId, true,true)
        SetBlockingOfNonTemporaryEvents(petId, true)
        SetPedFleeAttributes(petId, 0, 0)
        NetworkRegisterEntityAsNetworked(petId)
        local healthModifier = (pet.skills.health == 11 and 150 or pet.skills.health * 10)
        SetEntityHealth(pet, 150 + healthModifier)
        currentPets[i].petId = petId
        
        if(Config.TargetSystem ~= "none") then
            exports[Config.TargetSystem]:AddTargetEntity(petId, {
                options = {
                    {
                        event = "kr_pets:interact",
                        label = "Snakk",
                        pet = i,
                    }
                },
                distance = 2
            })
        end

        TriggerServerEvent("kr_pets:insertPetMigrate", PedToNet(petId), currentPets[i].name)
    end)
end)

RegisterNetEvent("kr_pets:replacePetEntity", function(i)
    CreateThread(function()
        while(IsPedInAnyVehicle(PlayerPedId(), true) or GetEntitySpeed(GetVehiclePedIsIn(PlayerPedId(), false)) > 1.0 or GetEntitySpeed(PlayerPedId()) > 1.0) do
            Wait(150)
        end

        local ped = PlayerPedId()
        local pet = currentPets[i]
        local forward = GetEntityForwardVector(ped)
        local coords = GetEntityCoords(ped) + forward
        local hash = GetHashKey(pet.model)

        RequestModel(hash)
        while (not HasModelLoaded(hash)) do
            Wait(1)
        end
        
        local petId = CreatePed(28, hash, coords, 0.0, true, true)
        PlaceObjectOnGroundProperly(petId)
        SetEntityAsMissionEntity(petId, true,true)
        SetBlockingOfNonTemporaryEvents(petId, true)
        SetPedFleeAttributes(petId, 0, 0)
        NetworkRegisterEntityAsNetworked(petId)
        local healthModifier = (pet.skills.health == 11 and 150 or pet.skills.health * 10)
        SetEntityHealth(pet, 150 + healthModifier)
        currentPets[i].petId = petId
        
        if(Config.TargetSystem ~= "none") then
            exports[Config.TargetSystem]:AddTargetEntity(petId, {
                options = {
                    {
                        event = "kr_pets:interact",
                        label = "Snakk",
                        pet = i,
                    }
                },
                distance = 2
            })
        end

        TriggerServerEvent("kr_pets:insertPetMigrate", PedToNet(petId), currentPets[i].name)
    end)
end)

local interact = 1
local currentVehDoor = 1

local vehicleBones = {
    "seat_pside_f",
    "seat_dside_r",
    "seat_pside_r"
}

function AnimHandler(pet, newAnim)
    if(not Config.PetAnims[pet.model][newAnim]) then pet.anim = nil return false end

    if(pet.anim) then
        if(Config.PetAnims[pet.model][pet.anim].exitAnim) then
            if(Config.PetAnims[pet.model][pet.anim].exitDict) then
                TaskPlayAnim(pet.petId, LoadDict(Config.PetAnims[pet.model][pet.anim].exitDict), Config.PetAnims[pet.model][pet.anim].exitAnim, 8.0, -8.0, -1, Config.PetAnims[pet.model][pet.anim].loop, -1,false,false,false)
                if(Config.PetAnims[pet.model][pet.anim].await) then
                    Wait(GetAnimDuration(Config.PetAnims[pet.model][pet.anim].dict, Config.PetAnims[pet.model][pet.anim].anim) * 1000)
                end
            else
                TaskPlayAnim(pet.petId, LoadDict(Config.PetAnims[pet.model][pet.anim].dict), Config.PetAnims[pet.model][pet.anim].exitAnim, 8.0, -8.0, -1, Config.PetAnims[pet.model][pet.anim].loop,-1,false,false,false)
                if(Config.PetAnims[pet.model][pet.anim].await) then
                    Wait(GetAnimDuration(Config.PetAnims[pet.model][pet.anim].dict, Config.PetAnims[pet.model][pet.anim].anim) * 1000)
                end
            end
            pet.anim = nil
        else
            pet.anim = nil
        end
    end
    if(newAnim) then
        pet.anim = newAnim
        CreateThread(function()
            while(pet.anim) do
                if(not IsEntityPlayingAnim(pet.petId, Config.PetAnims[pet.model][pet.anim].dict, Config.PetAnims[pet.model][pet.anim].anim, 3)) then
                    TaskPlayAnim(pet.petId, LoadDict(Config.PetAnims[pet.model][pet.anim].dict), Config.PetAnims[pet.model][pet.anim].anim, 8.0, -8.0, -1, Config.PetAnims[pet.model][pet.anim].loop, -1, false, false, false)
                    if(Config.PetAnims[pet.model][pet.anim].loop == 0) then
                        break
                    end
                end
                Wait(150)
            end            
        end)

        if(Config.PetAnims[pet.model][pet.anim].await) then
            Wait(GetAnimDuration(Config.PetAnims[pet.model][pet.anim].dict, Config.PetAnims[pet.model][pet.anim].anim) * 1000)
        end
    end
end

function Follow(pet)
    AnimHandler(pet)
    CheckUniqueAction(pet, "follow")
    pet.action = "follow"
    
    if(GetScriptTaskStatus(pet.petId, 0x3EF867F4) == 7) then
        TaskFollowToOffsetOfEntity(pet.petId, PlayerPedId(), -0.5, -0.5, 0.0, 18.0, -1, 1.0, true)
        SetPedKeepTask(pet.petId, true)
    end

    CreateThread(function()
        local storedDoorPos = vector3(0.0, 0.0, 0.0)
        while(pet.action == "follow") do
            Wait(0)
            if(IsPedInAnyVehicle(PlayerPedId(), false)) then
                if(currentVehDoor < 4 and not pet.targetDoorIndex) then
                    pet.targetDoorIndex = currentVehDoor
                    currentVehDoor = currentVehDoor + 1
                end
                if(not pet.insideVehicle and pet.targetDoorIndex) then
                    local veh = GetVehiclePedIsIn(PlayerPedId(), false)
                    local forward = GetEntityForwardVector(veh) * 0.5
                    local doorPos = GetEntryPositionOfDoor(veh, pet.targetDoorIndex) + forward
                    local seatPos = GetWorldPositionOfEntityBone(veh, GetEntityBoneIndexByName(veh, vehicleBones[pet.targetDoorIndex]))
                    local petCoords = GetEntityCoords(pet.petId)

                    if(#(storedDoorPos - doorPos) > 2.0) then
                        storedDoorPos = doorPos
                        TaskGoToCoordAnyMeans(pet.petId, doorPos, 5.0, 0, 0, 786603, 0x93399E79)
                    elseif(#(doorPos - petCoords) < 1.5) then
                        local forward = GetEntityForwardVector(veh)
                        local heading = GetHeadingFromVector_2d(seatPos.x - petCoords.x, seatPos.y - petCoords.y)
                        pet.insideVehicle = true
                        if(Config.AutomaticDoors) then
                            SetVehicleDoorOpen(veh, pet.targetDoorIndex, false, false)
                        end

                        SetEntityHeading(pet.petId, heading)
                        Wait(1500)
                        SetEntityHeading(pet.petId, heading)
                        local anim = AnimHandler(pet, "getInVehicle")
                        if(anim ~= false) then
                            Wait(1000)
                        end
                        AttachEntityToEntity(pet.petId, veh, GetEntityBoneIndexByName(veh, vehicleBones[pet.targetDoorIndex]), 0, 0, 0.20, 0, 0, 0, true, false, false, true, 0, true)
                        AnimHandler(pet, "sitAnim")
                        if(Config.AutomaticDoors) then
                            SetVehicleDoorShut(veh, pet.targetDoorIndex, false)
                        end
                    end
                else

                end
            elseif(pet.targetDoorIndex and pet.insideVehicle) then
                if(GetEntityHealth(pet.petId) > 0.0) then
                    local veh = GetVehiclePedIsIn(PlayerPedId(), true)
                    local forward = GetEntityForwardVector(veh)
                    local doorPos = GetEntryPositionOfDoor(veh, pet.targetDoorIndex) + forward
                    pet.targetDoorIndex = nil
                    pet.insideVehicle = nil
                    currentVehDoor = 1
                    AnimHandler(pet)
                    DetachEntity(pet.petId, 1, 1)
                    SetEntityCoords(pet.petId, doorPos)
                    if(GetScriptTaskStatus(pet.petId, 0x3EF867F4) == 7) then
                        TaskFollowToOffsetOfEntity(pet.petId, PlayerPedId(), -0.5, -0.5, 0.0, 18.0, -1, 1.0, true)
                        SetPedKeepTask(pet.petId, true)
                    end
                else
                    pet.targetDoorIndex = nil
                    pet.insideVehicle = nil
                    currentVehDoor = 1
                end
            end
        end
    end)
end

function FeedPet(pet)
    if(pet.status.hunger + 5 > 100) then Notify(Config.Translation[Config.CurrentTranslation].notHungry) return end
    pet.action = "feed"
    local hash = GetHashKey("prop_cs_bowl_01b")
    local pedCoords = GetEntityCoords(PlayerPedId())
    local forward = GetEntityForwardVector(PlayerPedId())
    local petCoords = GetEntityCoords(pet.petId)
    local spawnCoords = vector3(pedCoords.x, pedCoords.y, pedCoords.z - 1.0) + forward

    RequestModel(hash)
    while(not HasModelLoaded(hash)) do
        Wait(0)
    end

    local bowl = CreateObject(hash, spawnCoords, true, true, false)
    TaskPlayAnim(PlayerPedId(), LoadDict("pickup_object"), "pickup_low", 2.7, 2.7, -1, 32, 0, 0, 0, 0)
    TaskGoToCoordAnyMeans(pet.petId, GetEntityCoords(bowl), 8.0, 0, 0, 786603, 0x93399E79)

    CreateThread(function()
        while(pet.action == "feed") do
            local bowlCoords = GetEntityCoords(bowl)
            local petCoords = GetEntityCoords(pet.petId)
            local dist = #(bowlCoords - petCoords)

            if(dist < 1.0) then
                local heading = GetHeadingFromVector_2d(bowlCoords.x - petCoords.x, bowlCoords.y - petCoords.y)
                pet.action = "follow"
                TaskAchieveHeading(pet.petId, heading, -1)
                AnimHandler(pet, "pickUp")
                Wait(2500)
                local toAdd = 5 + pet.skills.hunger
                if(pet.skills.hunger == 11) then
                    toAdd = 15
                end
                TriggerServerEvent("kr_pets:addStatus", pet, toAdd)
                DeleteEntity(bowl)
                Follow(pet)
            end

            Wait(0)
        end
    end)
end

function GoTo(pet, targetCoords)
    TaskGoToCoordAnyMeans(pet.petId, targetCoords, 5.0, 0, 0, 786603, 0x93399E79)
    CheckUniqueAction(pet, "goto")
    AnimHandler(pet)
    pet.action = "goto"
    CreateThread(function()
        while(#(GetEntityCoords(pet.petId) - targetCoords) > 1.0) do
            Wait(0)
        end
        Wait(500)
        AnimHandler(pet, "sitAnim")
        -- AnimHandler(pet, "sitAnim")
        -- TaskPlayAnim(pet.petId, LoadDict(Config.PetAnims[pet.model].sitAnim.dict), Config.PetAnims[pet.model].sitAnim.anim ,8.0, -8.0, 9999999,1,-1,false,false,false)
    end)
end

function Attack(pet, targetCoords)
    local ped, dist = GetClosestPedDist(targetCoords)
    if(Config.PoliceOnly.onlyPoliceCanAttack) then
        local checkPolice = CheckPolice()
        if(checkPolice ~= "police") then Notify(Config.Translation[Config.CurrentTranslation].actionMustBePolice) return end
    end
    CheckUniqueAction(pet, "attack")
    pet.action = "attack"
    if(Config.Debug) then
        print(ped, dist)
    end
    
    if(ped and dist < 2) then
        local ranNum = math.random(1, 10)
        if(pet.skills.bravery >= ranNum) then
            CreateThread(function()
                while(pet.action == "attack") do
                    Wait(0)
                    if(GetPedAlertness(pet.petId) == 1) then
                        TaskSmartFleePed(pet.petId, ped, 20.0, -1, 1, 1)
                        break
                    end
                end
            end)
            TaskCombatPed(pet.petId, ped, 0, -16)
            CreateThread(function()
                while(pet.action == "attack") do
                    Wait(0)
                    if(GetEntityHealth(ped) == 0 and HasEntityBeenDamagedByEntity(ped, pet.petId, 1)) then
                        pet.action = "follow"
                        AddXP(pet, Config.RewardsXP.successfulAttack)
                    end
                end
            end)
        else
            TaskSmartFleePed(pet.petId, ped, 20.0, -1, 1, 1)
        end
    end
end

function CheckUniqueAction(pet, newAction)
    if(not pet.action) or (pet.action ~= newAction) then
        AddXP(pet, Config.RewardsXP.uniqueActions)
    end
end

function AddXP(pet, xp)
    if(pet.skills.xp + xp >= 100) then
        pet.skills.skillPoints = pet.skills.skillPoints + 1
        pet.skills.xp = 0
        TriggerServerEvent("kr_pets:updateSkills", pet)
    else
        pet.skills.xp = pet.skills.xp + 1
        TriggerServerEvent("kr_pets:updateSkills", pet)
    end
end

local pet, closest = 0, 15.0

CreateThread(function()
    local hasBeenMsged = false
    while(Config.TargetSystem == "none") do
        Wait(500)
        if(#currentPets > 0) then
            closest = 3.0
            for i=1,#currentPets do
                local petCoords = GetEntityCoords(currentPets[i].petId)
                local playerCoords = GetEntityCoords(PlayerPedId())
                if(#(petCoords - playerCoords) < closest) then
                    pet = i
                    closest = #(petCoords - playerCoords)
                end
            end

            if(closest < 2.0 and not carriesPet and not hasBeenMsged) then
                hasBeenMsged = true
                HelpText(Config.Keys[Config.KeyActions.InteractWithPet].label .. Config.Translation[Config.CurrentTranslation].open2, 2000)
            elseif(closest > 2.0 and hasBeenMsged) then
                hasBeenMsged = false
            end
        end
    end
end)

RegisterCommand('petmenu', function()
    if(closest < 2.0 and not isInPetMenu and not carriesPet) then
        if(currentPets[pet]) then
            OpenPetMenu(pet)
        end
    end
end, false)

RegisterKeyMapping('petmenu', 'Pet Menu', 'keyboard', Config.KeyActions.InteractWithPet)

function SitPet(pet)
    AnimHandler(pet, "sitAnim")
end

function LieDownPet(pet)
    AnimHandler(pet, "layingDown")
end

function FetchBall(pet)
    local baseball = GetClosestObjectOfType(GetEntityCoords(pet.petId), 50.0, GetHashKey('w_am_baseball'))

    if DoesEntityExist(baseball) then
        pet.action = "fetch"
        TaskGoToCoordAnyMeans(pet.petId, GetEntityCoords(baseball), 8.0, 0, 0, 786603, 0x93399E79)

        CreateThread(function()
            while(pet.action == "fetch" and DoesEntityExist(baseball)) do
                Wait(0)
                local petCoords = GetEntityCoords(pet.petId)
                local baseballCoords =  GetEntityCoords(baseball)

                if #(petCoords - baseballCoords) < 1.5 then
                    AnimHandler(pet, "pickUp")
                    Wait(500)
                    local boneIndex = GetPedBoneIndex(pet.petId, 17188)
                    AttachEntityToEntity(baseball, pet.petId, boneIndex, 0.120, 0.010, 0.010, 5.0, 150.0, 0.0, true, true, false, true, 1, true)
                    pet.action = "fetchGoBack"
                end
            end

            TaskFollowToOffsetOfEntity(pet.petId, PlayerPedId(), -0.5, -0.5, 0.0, 18.0, -1, 1.0, true)
            SetPedKeepTask(pet.petId, true)

            while(pet.action == "fetchGoBack" and DoesEntityExist(baseball)) do
                Wait(0)
                local petCoords = GetEntityCoords(pet.petId)
                local playerCoords =  GetEntityCoords(PlayerPedId())

                if #(petCoords - playerCoords) < 2.0 then
                    pet.action = "follow"
                    DetachEntity(baseball, 1, 1)
                    Wait(500)
                    SetEntityAsMissionEntity(baseball)
                    AddXP(pet, Config.RewardsXP.fetchedBall)
                    DeleteEntity(baseball)
                    GiveWeaponToPed(PlayerPedId(), GetHashKey("WEAPON_BALL"), 1, false, true)
                end
            end
        end)
    end
end

RegisterNUICallback("upgradeSkill", function(data, cb)
    if(currentPets[petIndexInSkillMenu].skills.skillPoints > 0 and data.level-1 == currentPets[petIndexInSkillMenu].skills[data.skill]) then
        if(data.level == 11) then
            if(currentPets[petIndexInSkillMenu].skills.skillPoints >= 5) then
                currentPets[petIndexInSkillMenu].skills.skillPoints = currentPets[petIndexInSkillMenu].skills.skillPoints - 4
                if(data.skill == "bravery") then
                    currentPets[petIndexInSkillMenu].status.guard = true
                end
            else
                return
            end
        end
        currentPets[petIndexInSkillMenu].skills.skillPoints = currentPets[petIndexInSkillMenu].skills.skillPoints - 1
        currentPets[petIndexInSkillMenu].skills[data.skill] = currentPets[petIndexInSkillMenu].skills[data.skill] + 1
        TriggerServerEvent("kr_pets:updateSkills", currentPets[petIndexInSkillMenu])
    end
    cb({})
end)

RegisterNetEvent("kr_pets:updateStatus", function(name, hunger)
    local petIndex = nil

    for i=1,#currentPets do
        if(currentPets[i].name == name) then
            if(currentPets[i].skills.hunger == 11) then
                local toAdd = GetEntityHealth(currentPets[i].petId) + 25
                if(GetEntityMaxHealth(currentPets[i].petId) < toAdd) then
                    toAdd = GetEntityMaxHealth(currentPets[i].petId)
                end
                SetEntityHealth(currentPets[i].petId, toAdd)
            end
            petIndex = i
            break
        end
    end
    
    if(petIndex) then
        currentPets[petIndex].status.hunger = currentPets[petIndex].status.hunger + hunger
    end
end)

function OpenPetMenu(index)
    if(GetEntityHealth(currentPets[index].petId) == 0 or not currentPets[index]) then return end
    isInPetMenu = true
    petIndexInSkillMenu = index
    local canAttack = false
    local canSniff = false
    
    for i=1,#Config.Pets do
        if(currentPets[index].model == Config.Pets[i].model) then
            canAttack = Config.Pets[i].canAttack
            canSniff = Config.Pets[i].canSniff
        end
    end
    local healthDivider = (currentPets[index].skills.health == 11 and 150 or currentPets[index].skills.health * 10)
    local health = GetEntityHealth(currentPets[index].petId) / (150 + healthDivider)
    SendNUIMessage({type = "showPetSkillMenu", pet = currentPets[index], health = health, canAttack = canAttack, canSniff = canSniff, canSit = Config.PetAnims[currentPets[index].model]["sitAnim"], canLay = Config.PetAnims[currentPets[index].model]["layingDown"]})
    SetNuiFocus(true, true)
    TriggerScreenblurFadeIn(750.0)
end

function Interact(interactPet)
    SetNuiFocus(false, false)
    CreateThread(function()
        while(doesInteract) do
            Wait(0)
            local coords = GetWorldCoordsFromScreen()
            
            if(interact == 1) then
                local ped, dist = GetClosestPedDist(coords)
                if(ped and dist < 2) then
                    local pedCoords = GetEntityCoords(ped)
                    DrawMarker(20, pedCoords.x, pedCoords.y, pedCoords.z + 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 255, 0, 0, 150, 0, 0, 2, 1, 0, 0, false)
                end
                DrawMarker(1, coords, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 4.0, 4.0, 1.0, 200, 0, 0, 150, 0, 0, 2, 0, 0, 0, false)
            elseif(interact == 2) then
                DrawMarker(1, coords, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 0, 200, 0, 150, 0, 0, 2, 0, 0, 0, false)
            elseif(interact == 3) then
                local ped, dist = GetClosestPedDist(coords)
                local veh, vehDist = GetClosestVehicleDist(coords)
                local entity, realDist = nil, 0.0

                -- if(interactPet.skills.sniff > 10) then
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
                -- end

                if(entity and realDist < 2) then
                    local entityCoords = GetEntityCoords(entity)
                    DrawMarker(20, entityCoords.x, entityCoords.y, entityCoords.z + 1.5, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 0, 0, 100, 150, 0, 0, 2, 1, 0, 0, false)
                end
                DrawMarker(1, coords, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 4.0, 4.0, 1.0, 0, 0, 100, 150, 0, 0, 2, 0, 0, 0, false)
            end

            if(IsControlJustPressed(0, Config.Keys[Config.KeyActions.FastInteraction].key)) then
                interact = interact + 1

                if(interact > 4) then
                    interact = 1
                end
                SendNUIMessage({type = "interact", interact = interact, switchKey = Config.KeyActions.FastInteraction})
            end

            if(IsControlJustReleased(0, 202)) then
                doesInteract = false
                SendNUIMessage({type = "hideInteract"})
            end

            if(IsControlJustPressed(0, 191)) then
                doesInteract = false
                SendNUIMessage({type = "hideInteract"})
                local pedCoords = GetEntityCoords(PlayerPedId())
                if(interactPet) then
                    TaskPlayAnim(PlayerPedId(), LoadDict("rcmnigel1c"), "hailing_whistle_waive_a", 2.7, 2.7, -1, 48, 0, 0, 0, 0)
                    if #(GetEntityCoords(interactPet.petId) - pedCoords) < 15.0 then
                        if(interact == 1) then
                            Attack(interactPet, coords)
                        elseif(interact == 2) then
                            GoTo(interactPet, coords)
                        elseif(interact == 3) then
                            SearchEntity(interactPet, coords)
                        elseif(interact == 4) then
                            Follow(interactPet)
                        end
                    end
                else
                    TaskPlayAnim(PlayerPedId(), LoadDict("rcmnigel1c"), "hailing_whistle_waive_a", 2.7, 2.7, -1, 48, 0, 0, 0, 0)
                    for i=1,#currentPets do
                        if #(GetEntityCoords(currentPets[i].petId) - pedCoords) < 15.0 then
                            if(interact == 1) then
                                Attack(currentPets[i], coords)
                            elseif(interact == 2) then
                                GoTo(currentPets[i], coords)
                            elseif(interact == 3) then
                                SearchEntity(currentPets[i], coords)
                            elseif(interact == 4) then
                                Follow(currentPets[i])
                            end
                        end
                    end
                end
            end
        end
    end)
end

function CarryPet(pet)
    if(not carriesPet) then
        carriesPet = true
        if(Config.CarryParams[pet.model].carryAnim) then
            LoadDict("anim@heists@box_carry@")
            TaskPlayAnim(PlayerPedId(), "anim@heists@box_carry@", "idle", 8.0, -8.0, -1, 49, -1, false, false, false)
        end
        CreateThread(function()
            while(carriesPet) do
                Wait(0)
                if not IsEntityPlayingAnim(PlayerPedId(), "anim@heists@box_carry@", "idle", 3) and Config.CarryParams[pet.model].carryAnim then
                    TaskPlayAnim(PlayerPedId(), "anim@heists@box_carry@", "idle", 8.0, -8.0, -1, 49, -1, false, false, false)
                end

                HelpText("Press ".. Config.Keys[Config.KeyActions.DropPet].label .. " to drop pet")

                if(IsControlJustPressed(0, Config.Keys[Config.KeyActions.DropPet].key)) then
                    local forward = GetEntityForwardVector(PlayerPedId())
                    DetachEntity(pet.petId, 1, true)
                    SetEntityCoords(pet.petId, GetEntityCoords(PlayerPedId()) + forward)
                    carriesPet = false
                    ClearPedTasksImmediately(PlayerPedId())
                    AnimHandler(pet)
                    ClearPedTasksImmediately(pet.petId)
                    Follow(pet)
                end
            end
        end)

        -- CreateThread(function()
            -- local rot = {x = 5.5, y = 345.0, z = 20.0}
            -- local coords = {x = 0.1, y = -0.1, z = 0.18}
            -- local current = {"x", "y", "z"}
            -- local i = 1
            -- while(carriesPet) do
            --     Wait(0)
                
            --     if(IsControlPressed(0, 172)) then
            --         rot[current[i]] = rot[current[i]] - 0.5
            --     end
            --     if(IsControlPressed(0, 173)) then
            --         rot[current[i]] = rot[current[i]] + 0.5
            --     end
                
            --     -- if(IsControlPressed(0, 172)) then
            --     --     coords[current[i]] = coords[current[i]] - 0.01
            --     -- end
            --     -- if(IsControlPressed(0, 173)) then
            --     --     coords[current[i]] = coords[current[i]] + 0.01
            --     -- end

            --     if(IsControlPressed(0, 174)) then
            --         i = i + 1
            --         if(i > 3) then
            --             i = 1
            --         end 
            --     end
                
                -- AttachEntityToEntity(pet.petId, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 10706), coords.x, coords.y, coords.z, rot.x, rot.y, rot.z, true, true, false, true, 1, true)
                -- AttachEntityToEntity(pet.petId, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 57005), coords.x, coords.y, coords.z, rot.x, rot.y, rot.z, true, true, false, true, 1, true)

                -- print(rot.x, rot.y, rot.z)
                -- print(coords.x, coords.y, coords.z)
        --     end
        -- end)

        if(Config.CarryParams[pet.model].carryAnim) then
            AttachEntityToEntity(pet.petId, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 57005), Config.CarryParams[pet.model].coords, Config.CarryParams[pet.model].rot, true, true, false, true, 1, true)
        else
            AttachEntityToEntity(pet.petId, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 10706), Config.CarryParams[pet.model].coords, Config.CarryParams[pet.model].rot, true, true, false, true, 1, true)
        end

        local layDown = AnimHandler(pet, "layingDown")

        if(layDown == false) then
            AnimHandler(pet, "sitAnim")
        end

        -- while(true) do
        --     Wait(0)
        -- end
    end
end

function GetWorldCoordsFromScreen()
    local camCoords = GetFinalRenderedCamCoord()
    local rot = GetFinalRenderedCamRot(2)
    local dir = RotToDir(rot)
    local endPoint = camCoords + dir*75
    local raycast = StartExpensiveSynchronousShapeTestLosProbe(camCoords.x, camCoords.y, camCoords.z, endPoint.x, endPoint.y, endPoint.z, 1, PlayerPedId(), 4)
    local result, hit, coords = GetShapeTestResult(raycast)

    return coords
end

function RotToDir(rot)
    return vector3(
        -math.sin((math.pi / 180) * rot.z) * math.abs(math.cos((math.pi / 180) * rot.x)),
        math.cos((math.pi / 180) * rot.z) * math.abs(math.cos((math.pi / 180) * rot.x)),
        math.sin((math.pi / 180) * rot.x)
    )
end

-- CreateThread(function()
--     while(true) do
--         Wait(0)
--         if(IsControlJustPressed(0, Config.Keys[Config.KeyActions.FastInteraction].key)) and not doesInteract and #currentPets > 0 then
--             doesInteract = true
--             SendNUIMessage({type = "showInteract", switchKey = Config.KeyActions.FastInteraction})
--             Interact()
--         end
--     end
-- end)

RegisterCommand('petinteract', function()
    if(not doesInteract and #currentPets > 0) then
        doesInteract = true
        SendNUIMessage({type = "showInteract", switchKey = Config.KeyActions.FastInteraction})
        Interact()
    end
end, false)

RegisterKeyMapping('petinteract', 'Pet Interact', 'keyboard', Config.KeyActions.FastInteraction)

function GetClosestPedDist(coords)
    local closestPed, dist = 0, 0.0
	local peds = GetGamePool("CPed")

    for i=1,#peds do
        local distanceCheck = #(coords - GetEntityCoords(peds[i]))
        if(dist == 0.0) then
            dist = distanceCheck
        end
        if(dist > distanceCheck) then
            local found = false
            for j=1,#currentPets do
                if(currentPets[j].petId == peds[i] or peds[i] == PlayerPedId()) then 
                    found = true 
                    break
                end
            end
            if(found == false) then
                closestPed = peds[i]
                dist = distanceCheck
            end
        end
    end
    return closestPed, dist
end

function GetClosestVehicleDist(coords)
    local closestVehicle, dist = 0, 0.0
	local vehicles = GetGamePool("CVehicle")

    for i=1, #vehicles do
        local distanceCheck = #(coords - GetEntityCoords(vehicles[i]))
        if(dist == 0.0) then
            closestVehicle = vehicles[i]
            dist = distanceCheck
        end
        if(dist > distanceCheck) then
            closestVehicle = vehicles[i]
            dist = distanceCheck
        end
    end
    return closestVehicle, dist
end

RegisterNetEvent("kr_pets:removeTransferedPet", function(currentPet)
    for i=1, #currentPets do
        if(currentPets[i].name == currentPet.name) then
            if(Config.TargetSystem ~= "none") then
                exports[Config.TargetSystem]:RemoveTargetEntity(currentPet[i].petId, 
                {
                    "Interact"
                })
            end
            table.remove(currentPets, i)
            break
        end
    end    
end)

RegisterNetEvent("kr_pets:removePet", function(currentPet)
    for i=1, #currentPets do
        if(currentPets[i].name == (currentPet.name or currentPet)) then
            if(currentPets[i].status.tracker) then
                RemoveBlipForPet(currentPets[i].name)
            end
            TriggerServerEvent("kr_pets:removePetMigrate", PedToNet(currentPets[i].petId))
            DeleteEntity(currentPets[i].petId)
            table.remove(currentPets, i)
            break
        end
    end 
end)

RegisterNetEvent("kr_pets:commandPetHouse", function()
    OpenPetHouse(-2, true)
end)

RegisterNetEvent("kr_pets:insertTransferedPet", function(currentPet)
    currentPet.petId = NetToPed(currentPet.petId)

    while(not NetworkHasControlOfEntity(currentPet.petId)) do
        NetworkRequestControlOfEntity(currentPet.petId)
        Wait(150)
    end

    if(currentPet.status.tracker) then
        AddBlipForPet(currentPet)
    end

    table.insert(currentPets, currentPet)
    if(Config.TargetSystem ~= "none") then
        exports[Config.TargetSystem]:AddTargetEntity(petId, {
            options = {
                {
                    event = "kr_pets:interact",
                    label = "Interact",
                    pet = currentPets[#currentPets],
                }
            },
            distance = 2
        })
    end
    Follow(currentPet)
end)

RegisterNUICallback("close", function(data, cb)
    SetNuiFocus(false, false)
    isInPetMenu = false
    cb({})
end)

RegisterNUICallback("fadeOut", function(data, cb)
    TriggerScreenblurFadeOut(750.0)
    cb({})
end)

RegisterNUICallback("command", function(data, cb)
    if(not doesInteract) then
        doesInteract = true
        Wait(150)
        SendNUIMessage({type = "showInteract", switchKey = Config.KeyActions.FastInteraction})
        Interact(currentPets[petIndexInSkillMenu])
    end
    petIndexInSkillMenu = nil
    cb({})
end)

RegisterNUICallback("carry", function(data, cb)
    CarryPet(currentPets[petIndexInSkillMenu])
    petIndexInSkillMenu = nil
    cb({})
end)

RegisterNUICallback("feed", function(data, cb)
    FeedPet(currentPets[petIndexInSkillMenu])
    cb({})
end)

RegisterNUICallback("guard", function(data, cb)
    if(currentPets[petIndexInSkillMenu].status.guard) then
        currentPets[petIndexInSkillMenu].status.guard = nil
    else
        currentPets[petIndexInSkillMenu].status.guard = true
    end
    cb({})
end)

RegisterNUICallback("switchTracker", function(data, cb)
    if(currentPets[petIndexInSkillMenu].status.tracker) then
        currentPets[petIndexInSkillMenu].status.tracker = nil
        TriggerServerEvent("kr_pets:switchTracker", false)
        RemoveBlipForPet(currentPets[petIndexInSkillMenu].name)
        TriggerServerEvent("kr_pets:updateStatus", currentPets[petIndexInSkillMenu])
    else
        TriggerServerEvent("kr_pets:switchTracker", true, petIndexInSkillMenu) 
    end
    cb({})
end)

RegisterNetEvent("kr_pets:enableTracker", function(petIndex)
    currentPets[petIndex].status.tracker = true
    AddBlipForPet(currentPets[petIndex])
    TriggerServerEvent("kr_pets:updateStatus", currentPets[petIndex])
end)

RegisterNUICallback("fetch", function(data, cb)
    FetchBall(currentPets[petIndexInSkillMenu])
    cb({})
end)

RegisterNUICallback("lieDown", function(data, cb)
    LieDownPet(currentPets[petIndexInSkillMenu])
    cb({})
end)

RegisterNUICallback("sit", function(data, cb)
    SitPet(currentPets[petIndexInSkillMenu])
    cb({})
end)

RegisterNUICallback("sniffNewItem", function(data, cb)
    LearnNewSniffItem(currentPets[petIndexInSkillMenu])
    cb({})
end)

RegisterNUICallback("transfer", function(data, cb)
    Transfer(currentPets[petIndexInSkillMenu])
    cb({})
end)

AddEventHandler('playerDropped', function (reason)
    for i=1,#currentPets do
        DeleteEntity(currentPets[i].petId)
        TriggerServerEvent("kr_pets:removePetMigrate", PedToNet(currentPets[i].petId))
    end
end)

AddEventHandler('onResourceStop', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
      return
    end
    for i=1,#currentPets do
        DeleteEntity(currentPets[i].petId)
        TriggerServerEvent("kr_pets:removePetMigrate", PedToNet(currentPets[i].petId))
    end
end)
