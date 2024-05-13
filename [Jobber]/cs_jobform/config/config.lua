CodeStudio = {}

CodeStudio.Debug = false
CodeStudio.AutoSQL = true

CodeStudio.ServerType = 'QB'    ---QB/ESX  check config/server_function.lua if you want to configure framework

CodeStudio.UISound_Effect = true        --toggle ui sound effects
CodeStudio.Enable_JobLogo = true        --toggle customizable job logos

CodeStudio.PhotoLoc = vector4(402.92, -996.50, -100.00, 184)        --Photo Studio Location

CodeStudio.Webhook = {
    PhotoWebhook = 'https://discord.com/api/webhooks/1122539901041258576/jRfUQT3LpMNPTrVLg4Z0tSTnhUXKVWSKf3BsN5TyTcvxnr8KIxQGReV3UQEh5RPVnwSe',  --Capture Photo Discord Webhook
    AllinOne = {
        Enable = false,      --Enable this to receive all logs in one channel
        Webhook = '',
    },
    Individual = {          --Enable this to receive independent logs based on jobs
        Enable = false,
        ['police'] = '',
        ['ambulance'] = '',
    }
}


CodeStudio.ReApplyTime = {      --Cooldown Settings
    Enable = true,          --toggle cooldown mode
    Days = 1                --cooldown in days
}


CodeStudio.LocationSettings = {
    useTarget = {
        Enable = true,              --toggle target system
        Target = 'ox_target'        --qb-target/ox_target
    },
    useTextUI = {
        Enable = false,              --toggle textUi system requires(ox_lib)
        openKey = 38                 --Key to open menu
    },
    ApplyLocation = true,       --Enable/Disable Global Apply Location
    JobLocation = {
        Enable = true,      --Enable/Disable Job Location Completely 
        ManageMenu = true,  --Enable/Disable Job Manage Location
        ApplyMenu = true    --Enable/Disable Apply Menu at Job Location
    }
}


CodeStudio.ApplyLocation = {     -- This is Global Apply location zone where players can apply to multiple jobs at the same time
vector4(-544.05, -197.67, 38.23, 169.39)
}


CodeStudio.JobLocation = {
    ['police'] = {
        ManageMenu = {      --Management Menu
        vector4(452.24, -999.03, 35.09, 232.87),
        },
        ApplyMenu = {           --This is Optional You can also use global apply location [CodeStudio.ApplyLocation]
            -- vector4(440.92, -981.13, 30.69, 351.72),
        },
    },

    ['ambulance'] = {
        ManageMenu = {      --Management Menu
        vector4(-2819.54, -64.34, 18.61, 322.67),
        },
        ApplyMenu = {           --This is Optional You can also use global apply location [CodeStudio.ApplyLocation]
            -- vector4(440.92, -981.13, 30.69, 351.72),
        },
    },

    ['realestate'] = {
        ManageMenu = {      --Management Menu
        vector4(-716.11, 261.21, 84.14, 322.67),
        },
        ApplyMenu = {           --This is Optional You can also use global apply location [CodeStudio.ApplyLocation]
            -- vector4(440.92, -981.13, 30.69, 351.72),
        },
    },

    ['taxi'] = {
        ManageMenu = {      --Management Menu
        vector4(238.71, 6503.54, 32.42, 296.18),
        },
        ApplyMenu = {           --This is Optional You can also use global apply location [CodeStudio.ApplyLocation]
            -- vector4(440.92, -981.13, 30.69, 351.72),
        },
    },

    ['cardealer'] = {
        ManageMenu = {      --Management Menu
        vector4(-931.74, -2031.08, 9.51, 296.18),
        },
        ApplyMenu = {           --This is Optional You can also use global apply location [CodeStudio.ApplyLocation]
            -- vector4(440.92, -981.13, 30.69, 351.72),
        },
    },

    ['mechanic'] = {
        ManageMenu = {      --Management Menu
        vector4(-194.91, -1315.79, 31.30, 296.18),
        },
        ApplyMenu = {           --This is Optional You can also use global apply location [CodeStudio.ApplyLocation]
            -- vector4(440.92, -981.13, 30.69, 351.72),
        },
    },

    ['fixern'] = {
        ManageMenu = {      --Management Menu
        vector4(564.92, 2774.90, 42.13, 296.18),
        },
        ApplyMenu = {           --This is Optional You can also use global apply location [CodeStudio.ApplyLocation]
            -- vector4(440.92, -981.13, 30.69, 351.72),
        },
    },

    ['lawyer'] = {
        ManageMenu = {      --Management Menu
        vector4(-211.51, -774.64, 34.09, 296.18),
        },
        ApplyMenu = {           --This is Optional You can also use global apply location [CodeStudio.ApplyLocation]
            -- vector4(440.92, -981.13, 30.69, 351.72),
        },
    },

    ['burgershot'] = {
        ManageMenu = {      --Management Menu
        vector4(-1198.11, -897.59, 13.8, 296.18),
        },
        ApplyMenu = {           --This is Optional You can also use global apply location [CodeStudio.ApplyLocation]
            -- vector4(440.92, -981.13, 30.69, 351.72),
        },
    },

    ['reporter'] = {
        ManageMenu = {      --Management Menu
        vector4(-807.13, 167.34, 76.7, 296.18),
        },
        ApplyMenu = {           --This is Optional You can also use global apply location [CodeStudio.ApplyLocation]
            -- vector4(440.92, -981.13, 30.69, 351.72),
        },
    },

    ['vrrroom'] = {
        ManageMenu = {      --Management Menu
        vector4(-233.29, 6228.55, 32.0, 296.18),
        },
        ApplyMenu = {           --This is Optional You can also use global apply location [CodeStudio.ApplyLocation]
            -- vector4(440.92, -981.13, 30.69, 351.72),
        },
    },

    ['vrrroom'] = {
        ManageMenu = {      --Management Menu
        vector4(-233.29, 6228.55, 32.0, 296.18),
        },
        ApplyMenu = {           --This is Optional You can also use global apply location [CodeStudio.ApplyLocation]
            -- vector4(440.92, -981.13, 30.69, 351.72),
        },
    },

    ['vanilla'] = {
        ManageMenu = {      --Management Menu
        vector4(98.48, -1297.88, 35.58, 296.18),
        },
        ApplyMenu = {           --This is Optional You can also use global apply location [CodeStudio.ApplyLocation]
            -- vector4(440.92, -981.13, 30.69, 351.72),
        },
    },

    ['styrt'] = {
        ManageMenu = {      --Management Menu
        vector4(-910.65, -2966.13, 19.87, 296.18),
        },
        ApplyMenu = {           --This is Optional You can also use global apply location [CodeStudio.ApplyLocation]
            -- vector4(440.92, -981.13, 30.69, 351.72),
        },
    },

    ['tow'] = {
        ManageMenu = {      --Management Menu
        vector4(1558.34, 3518.2, 36.12, 296.18),
        },
        ApplyMenu = {           --This is Optional You can also use global apply location [CodeStudio.ApplyLocation]
            -- vector4(440.92, -981.13, 30.69, 351.72),
        },
    },

    ['bruktbil'] = {
        ManageMenu = {      --Management Menu
        vector4(-31.98, -1113.81, 26.42, 296.18),
        },
        ApplyMenu = {           --This is Optional You can also use global apply location [CodeStudio.ApplyLocation]
            -- vector4(440.92, -981.13, 30.69, 351.72),
        },
    },

    ['sikkerhet'] = {
        ManageMenu = {      --Management Menu
        vector4(-2202.13, -384.72, 13.27, 296.18),
        },
        ApplyMenu = {           --This is Optional You can also use global apply location [CodeStudio.ApplyLocation]
            -- vector4(440.92, -981.13, 30.69, 351.72),
        },
    },

    ['kirke'] = {
        ManageMenu = {      --Management Menu
        vector4(-313.78, 6165.30, 32.31, 296.18),
        },
        ApplyMenu = {           --This is Optional You can also use global apply location [CodeStudio.ApplyLocation]
            -- vector4(440.92, -981.13, 30.69, 351.72),
        },
    },

    ['goldenpub'] = {
        ManageMenu = {      --Management Menu
        vector4(1222.61, -495.76, 65.31, 296.18),
        },
        ApplyMenu = {           --This is Optional You can also use global apply location [CodeStudio.ApplyLocation]
            -- vector4(440.92, -981.13, 30.69, 351.72),
        },
    },

    ['dyreparken'] = {
        ManageMenu = {      --Management Menu
        vector4(2046.84, 4954.63, 41.48, 296.18),
        },
        ApplyMenu = {           --This is Optional You can also use global apply location [CodeStudio.ApplyLocation]
            -- vector4(440.92, -981.13, 30.69, 351.72),
        },
    },


  


   


}


CodeStudio.AllowedJob = {
    [1] = {
        jobName = 'police',     --job name
        jobRank = {14, 13, 12, 11, 10, 9, 8}        --allowed ranks/grade
    },

    [2] = {
        jobName = 'ambulance',     --job name
        jobRank = {8, 9, 7}        --allowed ranks/grade
    },

    [3] = {
        jobName = 'taxi',     --job name
        jobRank = {3}        --allowed ranks/grade
    },

    [4] = {
        jobName = 'cardealer',     --job name
        jobRank = {3, 4}        --allowed ranks/grade
    },

    [5] = {
        jobName = 'mechanic',     --job name
        jobRank = {3, 4}        --allowed ranks/grade
    },


    [6] = {
        jobName = 'lawyer',     --job name
        jobRank = {7, 8}        --allowed ranks/grade
    },

    [7] = {
        jobName = 'reporter',     --job name
        jobRank = {2, 3}        --allowed ranks/grade
    },


    [8] = {
        jobName = 'bruktbil',     --job name
        jobRank = {3}        --allowed ranks/grade
    },


    [9] = {
        jobName = 'dyreparken',     --job name
        jobRank = {3}        --allowed ranks/grade
    },


    [10] = {
        jobName = 'styrt',     --job name
        jobRank = {3}        --allowed ranks/grade
    },

    [11] = {
        jobName = 'vrrroom',     --job name
        jobRank = {3}        --allowed ranks/grade
    },

    [12] = {
        jobName = 'realestate',     --job name
        jobRank = {3, 4}        --allowed ranks/grade
    },

    [13] = {
        jobName = 'fixern',     --job name
        jobRank = {3, 4}        --allowed ranks/grade
    },

    [14] = {
        jobName = 'tow',     --job name
        jobRank = {3}        --allowed ranks/grade
    },

    [15] = {
        jobName = 'vanilla',     --job name
        jobRank = {3}        --allowed ranks/grade
    },

    [16] = {
        jobName = 'club77',     --job name
        jobRank = {3}        --allowed ranks/grade
    },

    [17] = {
        jobName = 'bruktbil',     --job name
        jobRank = {3}        --allowed ranks/grade
    },

    [18] = {
        jobName = 'burgershot',     --job name
        jobRank = {3}        --allowed ranks/grade
    },

    [19] = {
        jobName = 'burgershot',     --job name
        jobRank = {3}        --allowed ranks/grade
    },

    [20] = {
        jobName = 'boats',     --job name
        jobRank = {3}        --allowed ranks/grade
    },

    [21] = {
        jobName = 'sikkerhet',     --job name
        jobRank = {3}        --allowed ranks/grade
    },

    [22] = {
        jobName = 'kirke',     --job name
        jobRank = {3}        --allowed ranks/grade
    },

    [23] = {
        jobName = 'goldenpub',     --job name
        jobRank = {3}        --allowed ranks/grade
    },

}



function Notification(msg, state)
    SetNotificationTextEntry('STRING')
    AddTextComponentString(msg)
    DrawNotification(0,1)

    -- Examples --
    
    -- exports['cs_notification']:Notify({
    --     type = state,  
    --     title = false,
    --     description = msg
    -- })
end