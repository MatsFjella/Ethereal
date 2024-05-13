local currentAction = nil
local activeMarkers = {}
local open = false

function AddBlip(coords, sprite, text, size)
    local blip = AddBlipForCoord(coords)
    SetBlipSprite(blip, sprite)
    SetBlipDisplay(blip, 4)
    SetBlipScale(blip, size)
    SetBlipColour(blip, 39)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(text)
    EndTextCommandSetBlipName(blip)
end

CreateThread(function()
    while not NetworkIsSessionStarted() do 
        Wait(250)
    end

    local models = {
        "mp_m_shopkeep_01",
        "s_m_m_doctor_01"
    }

    for i=1,#Config.Coords do
        local modelHash = GetHashKey(models[i])
        RequestModel(modelHash)
        while(not HasModelLoaded(modelHash)) do
            Wait(0)
        end
        local ped = CreatePed(0, modelHash, Config.Coords[i].coords, Config.Coords[i].heading, false, true)
        SetEntityAlpha(ped, 0, false)
        Wait(50)
        SetEntityAlpha(ped, 255, false)
        SetPedFleeAttributes(ped, 2)
        SetBlockingOfNonTemporaryEvents(ped, true)
        SetPedCanRagdollFromPlayerImpact(ped, false)
        SetPedDiesWhenInjured(ped, false)
        FreezeEntityPosition(ped, true)
        SetEntityInvincible(ped, true)
        SetPedCanPlayAmbientAnims(ped, false)

        if(Config.TargetSystem ~= "none") then
            exports[Config.TargetSystem]:AddTargetEntity(ped, {
                options = {
                    {
                        label = "Interact",
                        action = function()
                            if(i == 1) then 
                                OpenPetShopScene()
                            else
                                OpenPetVet()
                            end
                        end
                    }
                },
                distance = 2
            })
        end
    end

    if Config.EnableBlips then
        AddBlip(Config.Coords[1].coords, 442, Config.Translation[Config.CurrentTranslation].blip, 0.6)
        AddBlip(Config.Coords[2].coords, 442, Config.Translation[Config.CurrentTranslation].vet, 0.6)
    end

    if(Config.TargetSystem == "none") then
        while(true) do
            Wait(2500)
            local pedCoords = GetEntityCoords(PlayerPedId())
            for i=1,#Config.Coords do
                if(#(Config.Coords[i].coords - pedCoords) < 50.0) then
                    local found = false
                    for j=1,#activeMarkers do
                        if(activeMarkers[j] == i) then
                            found = true
                            break
                        end
                    end
                    if(not found) then
                        table.insert(activeMarkers, i)
                    end
                end   
            end
        end
    end
end)

local petBlips = {}

function AddBlipForPet(pet)
    local blip = AddBlipForEntity(pet.petId)

    SetBlipSprite(blip, Config.Blips.Pet.sprite)
    SetBlipColour(blip, Config.Blips.Pet.color)
    SetBlipScale(blip, scale or 1.0)
    SetBlipAsShortRange(blip, true)

    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(pet.name)
    EndTextCommandSetBlipName(blip)

    table.insert(petBlips, {name = pet.name, blip = blip})
end

function RemoveBlipForPet(petName)
    local blip = nil

    for i=1,#petBlips do
        if(petBlips[i].name == petName) then
            blip = petBlips[i].blip
            table.remove(petBlips, i)
            break
        end
    end
    
    RemoveBlip(blip)
end

CreateThread(function()
    while(true) do
        Wait(0)
        if(#activeMarkers > 0) then
            local pedCoords = GetEntityCoords(PlayerPedId())
            for i=1,#activeMarkers do
                local dist = #(Config.Coords[activeMarkers[i]].coords - pedCoords)
                if(dist < 2.0) then
                    currentAction = Config.Coords[activeMarkers[i]].action
                    HelpText(Config.Translation[Config.CurrentTranslation].open)
                elseif(currentAction == Config.Coords[activeMarkers[i]].action) then
                    currentAction = nil
                    MenuClose()
                elseif(dist >= 50.0) then
                    table.remove(activeMarkers, i)
                    break
                end
            end

            if(currentAction) then
                if(IsControlJustPressed(0, 38)) then
                    if(currentAction == "petShop") then
                        currentAction = nil
                        OpenPetShopScene()
                    elseif(currentAction == "veterinary") then
                        currentAction = nil
                        OpenPetVet()
                    end
                end
            end
        end
    end
end)