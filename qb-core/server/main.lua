QBCore = {}
QBCore.Config = QBConfig
QBCore.Shared = QBShared
QBCore.ClientCallbacks = {}
QBCore.ServerCallbacks = {}

exports('GetCoreObject', function()
    return QBCore
end)

CreateThread(function()
    Wait(50000) -- Wait 30 seconds

    -- Ensure the scripts
    TriggerEvent('ensure', 'qb-smallresources')
    TriggerEvent('ensure', 'qb-menu')
    TriggerEvent('ensure', 'envi-prescriptions')
    TriggerEvent('ensure', 'rm_hackerv')
    TriggerEvent('ensure', 'keep-bags')
    TriggerEvent('ensure', 'okokBanking')
    TriggerEvent('ensure', 'qb-humanelabsheist')
    TriggerEvent('ensure', 'ps-fuel')
    TriggerEvent('ensure', 'pickle_weaponthrowing')
    TriggerEvent('ensure', 'qb-idcard')
    TriggerEvent('stop', 'rs9000')

   
   

    print('SCRIPTS ER ENSURED MOFOOOOOOOZ.')
end)

-- To use this export in a script instead of manifest method
-- Just put this line of code below at the very top of the script
-- local QBCore = exports['qb-core']:GetCoreObject()


            -- Jobs Creator integration (jobs_creator)
            RegisterNetEvent("jobs_creator:injectJobs", function(jobs)
                QBCore.Shared.Jobs = jobs
            end)
        