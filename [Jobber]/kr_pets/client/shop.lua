local hasSpawned = false
local shopCurrentPetSelected = 1
local lastPed = nil
local cam

RegisterNUICallback("shopSwitch", function(data, cb)
    SwitchPetInShop(data.left)
    cb({})
end)

function SwitchPetInShop(left)
    for i=1, #Config.Pets do
        if(i == shopCurrentPetSelected) then
            if(i == #Config.Pets and not left) then
                shopCurrentPetSelected = 1
                break
            elseif(i == 1 and left) then
                shopCurrentPetSelected = #Config.Pets
                break
            else
                if(left) then
                    shopCurrentPetSelected = shopCurrentPetSelected - 1
                else
                    shopCurrentPetSelected = shopCurrentPetSelected + 1
                end
                break
            end
        end
    end
    
    DeleteEntity(lastPed)
    local hash = GetHashKey(Config.Pets[shopCurrentPetSelected].model)
    RequestModel(hash)
    while(not HasModelLoaded(hash)) do
        Wait(0)
    end
    lastPed = CreatePed(28, hash, Config.ShopSceneCoords["petSpawn"], false, false)
end

function OpenPetShopScene()
    SendNUIMessage({type = "petShop", pets = Config.Pets, police = Config.PoliceOnly})
    SetNuiFocus(true, true)
    cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", Config.ShopSceneCoords["camCoords"].coords, Config.ShopSceneCoords["camCoords"].rot, 45.0, 1)
    SetCamActive(cam, true)
    RenderScriptCams(true, false, 0, true, false)
    local hash = GetHashKey(Config.Pets[1].model)

    RequestModel(hash)
    while(not HasModelLoaded(hash)) do
        Wait(0)
    end

    lastPed = CreatePed(28, hash, Config.ShopSceneCoords["petSpawn"], false, false)
end

RegisterNUICallback("closePetShop", function(data, cb)
    ClosePetShopScene()
    cb({})
end)

function ClosePetShopScene()
    SetNuiFocus(false, false)
    DestroyCam(cam, 0)
    DeleteEntity(lastPed)
    while(DoesEntityExist(lastPed)) do
        Wait(0)
        DeleteEntity(lastPed)
    end
    RenderScriptCams(0, 0, 1, 1, 1)
    cam = nil
    SetFocusEntity(PlayerId())
    shopCurrentPetSelected = 1
end