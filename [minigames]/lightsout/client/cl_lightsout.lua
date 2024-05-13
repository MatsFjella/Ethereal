local Failed = false
local Success = false

---@param grid number || description: "Whole Number Between 3-6. It determines the size of the grid. Example: 4 = 4x4 grid."
---@param maxClicks number || description: "Whole Number. It determines the maximum amount of times someone can click on the grid to solve."

local function StartLightsOut(grid, maxClicks)
    if not grid then
        grid = Config.DefaultGridSize
    end

    if not length then
        maxClicks = Config.DefaultLength
    end

    -- Anything over 5 is too big!
    if grid > 5 then grid = 5 end
    
    SendNUIMessage({type = "lightsout", starthack = true, grid = grid, length = maxClicks})
    SetNuiFocus(true, true)

    while not Failed or not Success do
        Wait(1000)
        if Failed == true or Success == true then
            break
        end
    end

    if Failed then
        return false
    elseif Success then

        return true
    end

    -- Default to returning false, although this code should not be executed.
    return false

end exports('StartLightsOut', StartLightsOut)

RegisterNUICallback('success', function(data)
    Success = true
    SetNuiFocus(false, false)
    Wait(2500)
    Success = false
end)

RegisterNUICallback('failed', function(data)
    Failed = true
    SetNuiFocus(false, false)
    Wait(2500)
    Failed = false
end)
