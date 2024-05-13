local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent("etherealRP:bluePillEffects", function()
    ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', randomCamModifier(0.3, 1.0))
    Wait(math.random(500, 1000))
    StopGameplayCamShaking(0)
    Wait(math.random(500, 1000))
    ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', randomCamModifier(0.3, 1.0))
    Wait(math.random(500, 1000))
    StopGameplayCamShaking(0)
end)

local sedated = false
RegisterNetEvent("etherealRP:sedatePlayer", function(isSedated)
    sedated = isSedated
    if not sedated then return end

    while sedated do
        Wait(0)
        DisableAllControlActions(1)
    end
end)


function randomCamModifier(a, b)
    return a + (b - a) * math.random()
end