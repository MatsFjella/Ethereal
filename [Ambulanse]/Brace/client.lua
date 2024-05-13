-- DONT CHANGE ANY OF THE OTHER CODE AS YOU WILL BREAK IT 
-- Replace 90 With Your Number
-- Leave All Other Numbers Alone
local isMaskEquipped = false


RegisterCommand("c-collar", function()
    if not isMaskEquipped then
        local playerPed = GetPlayerPed(-1)
        SetPedComponentVariation(playerPed, 1, 90, 0, 2)
        isMaskEquipped = true
        TriggerEvent("chatMessage", "^1 [SM-Brace]", {255, 255, 255}, "^2 Medical cervical collar has been applied to your character.")
    else
        TriggerEvent("chatMessage", "^1 [SM-Brace]", {255, 255, 255}, "^2 Medical cervical collar is all ready applied.")
    end
end)

RegisterCommand("r-collar", function()
    if isMaskEquipped then
        local playerPed = GetPlayerPed(-1)
        SetPedComponentVariation(playerPed, 1, 0, 0, 2) -- Only Adjust The First Zero Number If This Is Applying Another Mask After Removing Collar.
        isMaskEquipped = false
        TriggerEvent("chatMessage", "^1 [SM-Brace]", {255, 255, 255}, "^1 Medical cervical collar has been removed from your character.")
    else
        TriggerEvent("chatMessage", "1^ [SM-Brace]", {255, 255, 255}, "^1 Medical cervical collar is not applied")
    end
end)

