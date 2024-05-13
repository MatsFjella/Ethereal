QBCore = exports['qb-core']:GetCoreObject()
Config = Config or {}

-- Dispatch Alerts Configuration

Config.Alerts = {
    Blip = true,
    BlipId = 126,
    BlipColor = 1,
    BlipLabel = 'Alert',
    BlipFadeOutRate = 25,
    BlipFadeOutInterval = 10000
}

-- Tablet Animation

Config.Animation = {
    Anim = 'amb@world_human_seat_wall_tablet@female@base',
    Prop = 'vpad_prop_2',
    BoneIndex = 28422
}

-- Camera Configuration

Config.CameraMinZoom = 80
Config.CameraMaxZoom = 15
Config.CameraZoomSpeed = 3
Config.CameraRotationSpeed = 10
Config.CameraProp = 'prop_pap_camera_01'
Config.CameraExitAnimation = 'amb@world_human_paparazzi@male@exit'
Config.CameraBaseAnimation = 'amb@world_human_paparazzi@male@base'

-- Notifications

Config.Messages = {
    ['player:invoice'] = 'You have received a invoice for ${{amount}} for your medical treatment!',
    ['not_allowed'] = 'You are not allowed to open the MDT!'
}

-- Client-side Notifications

if not IsDuplicityVersion() then
    Config.Notify = function(message)
        QBCore.Functions.Notify(message)
    end
end
