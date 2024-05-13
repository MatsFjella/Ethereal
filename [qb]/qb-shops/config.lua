Config = {}
Config.UseTruckerJob = false -- true = The shops stock is based on when truckers refill it | false = shop inventory never runs out
Config.UseTarget = GetConvar('UseTarget', 'false') == 'false' -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)
Config.FirearmsLicenseCheck = false -- Whether a arms dealer checks for a firearms license
Config.ShopsInvJsonFile = './json/shops-inventory.json' -- json file location
Config.SellCasinoChips = {
    coords = vector4(-3747.0, -4400.0, -1.05, 8.29),
    radius = 1.5,
    ped = 's_m_y_casino_01'
}
Config.Products = {
    ["normal"] = {
        [1] = {
            name = "tosti",
            price = 100,
            amount = 100,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "water_bottle",
            price = 100,
            amount = 100,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "kurkakola",
            price = 120,
            amount = 110,
            info = {},
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "twerks_candy",
            price = 100,
            amount = 90,
            info = {},
            type = "item",
            slot = 4,
        },
        [5] = {
            name = "snikkel_candy",
            price = 90,
            amount = 70,
            info = {},
            type = "item",
            slot = 5,
        },
        [6] = {
            name = "sandwich",
            price = 100,
            amount = 100,
            info = {},
            type = "item",
            slot = 6,
        },
        [7] = {
            name = "bandage",
            price = 250,
            amount = 50,
            info = {},
            type = "item",
            slot = 7,
        },
        [8] = {
            name = "lighter",
            price = 300,
            amount = 50,
            info = {},
            type = "item",
            slot = 8,
        },
        [9] = {
            name = "rolling_paper",
            price = 20,
            amount = 5000,
            info = {},
            type = "item",
            slot = 9,
        },

        [10] = {
            name = "cups",
            price = 1000,
            amount = 5000,
            info = {},
            type = "item",
            slot = 10,
        },
    },
    ["liquor"] = {
        [1] = {
            name = "beer",
            price = 150,
            amount = 50,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "whiskey",
            price = 200,
            amount = 50,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "vodka",
            price = 180,
            amount = 50,
            info = {},
            type = "item",
            slot = 3,
        },
    },
    ["hardware"] = {
        [1] = {
            name = "lockpick",
            price = 500,
            amount = 50,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "weapon_wrench",
            price = 1500,
            amount = 250,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "weapon_hammer",
            price = 1200,
            amount = 250,
            info = {},
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "repairkit",
            price = 1500,
            amount = 50,
            info = {},
            type = "item",
            slot = 4,
            
        },
        [5] = {
            name = "screwdriverset",
            price = 1500,
            amount = 50,
            info = {},
            type = "item",
            slot = 5,
        },
        [6] = {
            name = "phone",
            price = 10000,
            amount = 50,
            info = {},
            type = "item",
            slot = 6,
        },
        [7] = {
            name = "radio",
            price = 4000,
            amount = 50,
            info = {},
            type = "item",
            slot = 7,
        },
        [8] = {
            name = "binoculars",
            price = 6000,
            amount = 50,
            info = {},
            type = "item",
            slot = 8,
        },
       
        [9] = {
            name = "fitbit",
            price = 3000,
            amount = 150,
            info = {},
            type = "item",
            slot = 9,
        },
        [10] = {
            name = "cleaningkit",
            price = 500,
            amount = 150,
            info = {},
            type = "item",
            slot = 10,
        },
        [11] = {
            name = "advancedrepairkit",
            price = 7000,
            amount = 50,
            info = {},
            type = "item",
            slot = 11,
            -- requiredJob = { "mechanic" }
        },

        [12] = {
            name = "spray",
            price = 200,
            amount = 50,
            info = {},
            type = "item",
            slot = 12,
            
        },

        [13] = {
            name = "spray_remover",
            price = 100,
            amount = 50,
            info = {},
            type = "item",
            slot = 13,
           
        },

        -- [14] = {
        --     name = "backpack1",
        --     price = 4000,
        --     amount = 50,
        --     info = {},
        --     type = "item",
        --     slot = 14,
           
        -- },

        -- [15] = {
        --     name = "backpack2",
        --     price = 6000,
        --     amount = 50,
        --     info = {},
        --     type = "item",
        --     slot = 15,
           
        -- },

        -- [16] = {
        --     name = "duffle1",
        --     price = 6000,
        --     amount = 50,
        --     info = {},
        --     type = "item",
        --     slot = 16,
           
        -- },


        -- [17] = {
        --     name = "briefcase",
        --     price = 6000,
        --     amount = 50,
        --     info = {},
        --     type = "item",
        --     slot = 17,
           
        -- },

        [14] = {
            name = "weapon_flashlight",
            price = 2000,
            amount = 50,
            info = {},
            type = "item",
            slot = 14,
           
        },

        [15] = {
            name = "notepad",
            price = 200,
            amount = 50,
            info = {},
            type = "item",
            slot = 15,
           
        },
        [16] = {
            name = "papers",
            price = 50,
            amount = 200,
            info = {},
            type = "item",
            slot = 16,
           
        },

        [17] = {
            name = "zipcutter",
            price = 50,
            amount = 200,
            info = {},
            type = "item",
            slot = 17,
           
        },

        [18] = {
            name = "boltcutter",
            price = 50,
            amount = 200,
            info = {},
            type = "item",
            slot = 18,
           
        },

        [19] = {
            name = "towing_rope",
            price = 500,
            amount = 1,
            info = {},
            type = "item",
            slot = 19,
           
        }, 

        [20] = {
            name = "boatanchor",
            price = 2000,
            amount = 200,
            info = {},
            type = "item",
            slot = 20,
           
        },

        [21] = {
            name = "weapon_knife",
            price = 2500,
            amount = 250,
            info = {},
            type = "item",
            slot = 21,
   
        },
        [22] = {
            name = "weapon_bat",
            price = 1800,
            amount = 250,
            info = {},
            type = "item",
            slot = 22,
     
        },
        [23] = {
            name = "weapon_hatchet",
            price = 1300,
            amount = 250,
            info = {},
            type = "item",
            slot = 23,
     
        },

        [24] = {
            name = 'parachute',
            price = 2500,
            amount = 50,
            info = {},
            type = 'item',
            slot = 24,
        
        },

        [25] = {
            name = 'diving_gear',
            price = 2500,
            amount = 50,
            info = {},
            type = 'item',
            slot = 25,
          
        },

        [26] = {
            name = 'diving_fill',
            price = 500,
            amount = 50,
            info = {},
            type = 'item',
            slot = 26,
       
        },

        [27] = {
            name = 'binoculars',
            price = 500,
            amount = 50,
            info = {},
            type = 'item',
            slot = 27,
         
        },

        [28] = {
            name = 'hairspray', 
            price = 500,
            amount = 50,
            info = {},
            type = 'item',
            slot = 28,
         
        },

        [29] = {
            name = 'trimming_scissors', 
            price = 500,
            amount = 50,
            info = {},
            type = 'item',
            slot = 29,
         
        },

        [30] = {
            name = 'carjack', 
            price = 2500,
            amount = 50,
            info = {},
            type = 'item',
            slot = 30,
         
        },

        [31] = {
            name = 'kq_outfitbag', 
            price = 20000,
            amount = 1,
            info = {},
            type = 'item',
            slot = 31,
         
        },

        [32] = {
            name = 'basketball', 
            price = 1000,
            amount = 1,
            info = {},
            type = 'item',
            slot = 32,
         
        },

        [33] = {
            name = 'basketball_hoop', 
            price = 5000,
            amount = 1,
            info = {},
            type = 'item',
            slot = 33,
         
        },

        [34] = {
            name = 'shovel', 
            price = 2000,
            amount = 1,
            info = {},
            type = 'item',
            slot = 34,
         
        },

        [35] = {
            name = 'megaphone', 
            price = 15000,
            amount = 1,
            info = {},
            type = 'item',
            slot = 35,
         
        },

        [36] = {
            name = 'trowel', 
            price = 500,
            amount = 1,
            info = {},
            type = 'item',
            slot = 36,
         
        },

      
        
    },
    ["weedshop"] = {
        
        [1] = {
            name = "weapon_poolcue",
            price = 2500,
            amount = 50,
            info = {},
            type = "item",
            slot = 2,
        },
        
        [2] = {
            name = "empty_weed_bag",
            price = 20,
            amount = 1000,
            info = {},
            type = "item",
            slot = 4,
        },
        [3] = {
            name = "rolling_paper",
            price = 20,
            amount = 1000,
            info = {},
            type = "item",
            slot = 5,
        },
    },
    ["gearshop"] = {
        [1] = {
            name = "diving_gear",
            price = 3000,
            amount = 10,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "jerry_can",
            price = 1000,
            amount = 50,
            info = {},
            type = "item",
            slot = 2,
        },
    },
    ["leisureshop"] = {
        [1] = {
            name = "parachute",
            price = 5000,
            amount = 10,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "binoculars",
            price = 6000,
            amount = 50,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "diving_gear",
            price = 3000,
            amount = 10,
            info = {},
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "diving_fill",
            price = 1500,
            amount = 10,
            info = {},
            type = "item",
            slot = 4,
        },

        -- [5] = {
        --     name = "fishingrod",
        --     price = 5000,
        --     amount = 100,
        --     info = {},
        --     type = "item",
        --     slot = 5,
        -- },

        -- [6] = {
        --     name = "fishbait",
        --     price = 5,
        --     amount = 100,
        --     info = {},
        --     type = "item",
        --     slot = 6,
        -- },
        -- [4] = {
        --     name = "smoketrailred",
        --     price = 250,
        --     amount = 50,
        --     info = {},
        --     type = "item",
        --     slot = 4,
        -- },
    },
    ["weapons"] = {
        [1] = {
            name = "weapon_knife",
            price = 2500,
            amount = 250,
            info = {},
            type = "item",
            slot = 1,
   
        },
        [2] = {
            name = "weapon_bat",
            price = 1800,
            amount = 250,
            info = {},
            type = "item",
            slot = 2,
     
        },
        [3] = {
            name = "weapon_hatchet",
            price = 1300,
            amount = 250,
            info = {},
            type = "item",
            slot = 3,
     
        },

        [4] = {
            name = 'parachute',
            price = 2500,
            amount = 50,
            info = {},
            type = 'item',
            slot = 4,
        
        },

        [5] = {
            name = 'diving_gear',
            price = 2500,
            amount = 50,
            info = {},
            type = 'item',
            slot = 5,
          
        },

        [6] = {
            name = 'diving_fill',
            price = 500,
            amount = 50,
            info = {},
            type = 'item',
            slot = 6,
       
        },

        [10] = {
            name = 'binoculars',
            price = 500,
            amount = 50,
            info = {},
            type = 'item',
            slot = 10,
         
        },

        -- [7] = {
        --     name = "fishingrod",
        --     price = 5000,
        --     amount = 100,
        --     info = {},
        --     type = "item",
        --     slot = 7,
        -- },

        -- [8] = {
        --     name = "fishbait",
        --     price = 5,
        --     amount = 100,
        --     info = {},
        --     type = "item",
        --     slot = 8,
        -- },
        
        
    },

    ["lcd"] = {
        [1] = {
            name = "lcd-morning_glory_seeds",
            price = 50,
            amount = 250,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "lcd-lsd_phos",
            price = 50,
            amount = 250,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "lcd-lsd_dieth",
            price = 50,
            amount = 250,
            info = {},
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "lcd-lsd_blotter",
            price = 50,
            amount = 250,
            info = {},
            type = "item",
            slot = 3,
        },
    },

    -- ["meth"] = {
    --     [1] = {
    --         name = "lcd-pseudoephedrine",
    --         price = 50,
    --         amount = 250,
    --         info = {},
    --         type = "item",
    --         slot = 1,
    --     },
    --     [2] = {
    --         name = "lcd-antifreeze",
    --         price = 50,
    --         amount = 250,
    --         info = {},
    --         type = "item",
    --         slot = 2,
    --     },
    --     [3] = {
    --         name = "lcd-batteries",
    --         price = 50,
    --         amount = 250,
    --         info = {},
    --         type = "item",
    --         slot = 3,
    --     },
    --     [4] = {
    --         name = "lcd-draincleaner",
    --         price = 50,
    --         amount = 250,
    --         info = {},
    --         type = "item",
    --         slot = 3,
    --     },
    -- },

    -- ["heroin"] = {
    --     [1] = {
    --         name = "lcd-aceticanhydride",
    --         price = 50,
    --         amount = 250,
    --         info = {},
    --         type = "item",
    --         slot = 1,
    --     },
    --     [2] = {
    --         name = "lcd-chloroform",
    --         price = 50,
    --         amount = 250,
    --         info = {},
    --         type = "item",
    --         slot = 2,
    --     },
    --     [3] = {
    --         name = "lcd-sodiumcarbonate",
    --         price = 50,
    --         amount = 250,
    --         info = {},
    --         type = "item",
    --         slot = 3,
    --     },
    --     [4] = {
    --         name = "lcd-hcl",
    --         price = 50,
    --         amount = 250,
    --         info = {},
    --         type = "item",
    --         slot = 3,
    --     },
    --     [5] = {
    --         name = "water_bottle",
    --         price = 100,
    --         amount = 250,
    --         info = {},
    --         type = "item",
    --         slot = 3,
    --     },
    -- },

    -- ["cocaine"] = {
    --     [1] = {
    --         name = "lcd-petrol",
    --         price = 50,
    --         amount = 250,
    --         info = {},
    --         type = "item",
    --         slot = 1,
    --     },
    --     [2] = {
    --         name = "lcd-draincleaner",
    --         price = 50,
    --         amount = 250,
    --         info = {},
    --         type = "item",
    --         slot = 2,
    --     },
    --     [3] = {
    --         name = "lcd-cementpowder",
    --         price = 50,
    --         amount = 250,
    --         info = {},
    --         type = "item",
    --         slot = 3,
    --     },
    --     [4] = {
    --         name = "lcd-sulfuricacid",
    --         price = 50,
    --         amount = 250,
    --         info = {},
    --         type = "item",
    --         slot = 3,
    --     },
    --     [5] = {
    --         name = "lcd-pottasiumsalt",
    --         price = 50,
    --         amount = 250,
    --         info = {},
    --         type = "item",
    --         slot = 3,
    --     },
    --     [6] = {
    --         name = "lcd-sodiumhydroxide",
    --         price = 50,
    --         amount = 250,
    --         info = {},
    --         type = "item",
    --         slot = 3,
    --     },
    --     [7] = {
    --         name = "water_bottle",
    --         price = 100,
    --         amount = 250,
    --         info = {},
    --         type = "item",
    --         slot = 3,
    --     },
    -- },

   
    
    ["casino"] = {
       
},


["sykehus"] = {
    [1] = {
        name = "bandage",
        price = 250,
        amount = 250,
        info = {},
        type = "item",
        slot = 1,
    },
    
},
["bruktbil"] = {
    [1] = {
        name = "contract",
        price = 0,
        amount = 250,
        info = {},
        type = "item",
        slot = 1,
        requiredJob = { "bennys" }
    },

    -- [2] = {
    --     name = "engine_level1",
    --     price = 0,
    --     amount = 250,
    --     info = {},
    --     type = "item",
    --     slot = 2,
    --     requiredJob = { "bennys" }
    -- },

    -- [3] = {
    --     name = "engine_level2",
    --     price = 0,
    --     amount = 250,
    --     info = {},
    --     type = "item",
    --     slot = 3,
    --     requiredJob = { "bennys" }
    -- },

    -- [4] = {
    --     name = "engine_level3",
    --     price = 0,
    --     amount = 250,
    --     info = {},
    --     type = "item",
    --     slot = 4,
    --     requiredJob = { "bennys" }
    -- },

    -- [5] = {
    --     name = "engine_level4",
    --     price = 0,
    --     amount = 250,
    --     info = {},
    --     type = "item",
    --     slot = 5,
    --     requiredJob = { "bennys" }
    -- },
    -- [6] = {
    --     name = "transmission_level1",
    --     price = 0,
    --     amount = 250,
    --     info = {},
    --     type = "item",
    --     slot = 6,
    --     requiredJob = { "bennys" }
    -- },
    -- [7] = {
    --     name = "transmission_level2",
    --     price = 0,
    --     amount = 250,
    --     info = {},
    --     type = "item",
    --     slot = 7,
    --     requiredJob = { "bennys" }
    -- },
    -- [8] = {
    --     name = "transmission_level3",
    --     price = 0,
    --     amount = 250,
    --     info = {},
    --     type = "item",
    --     slot = 8,
    --     requiredJob = { "bennys" }
    -- },
    -- [9] = {
    --     name = "suspension_level1",
    --     price = 0,
    --     amount = 250,
    --     info = {},
    --     type = "item",
    --     slot = 9,
    --     requiredJob = { "bennys" }
    -- },
    -- [10] = {
    --     name = "suspension_level2",
    --     price = 0,
    --     amount = 250,
    --     info = {},
    --     type = "item",
    --     slot = 10,
    --     requiredJob = { "bennys" }
    -- },
    -- [11] = {
    --     name = "suspension_level3",
    --     price = 0,
    --     amount = 250,
    --     info = {},
    --     type = "item",
    --     slot = 11,
    --     requiredJob = { "bennys" }
    -- },

    -- [12] = {
    --     name = "suspension_level4",
    --     price = 0,
    --     amount = 250,
    --     info = {},
    --     type = "item",
    --     slot = 12,
    --     requiredJob = { "bennys" }
    -- },

    -- [13] = {
    --     name = "brakes_level1",
    --     price = 0,
    --     amount = 250,
    --     info = {},
    --     type = "item",
    --     slot = 13,
    --     requiredJob = { "bennys" }
    -- },


    -- [14] = {
    --     name = "brakes_level2",
    --     price = 0,
    --     amount = 250,
    --     info = {},
    --     type = "item",
    --     slot = 14,
    --     requiredJob = { "bennys" }
    -- },

    -- [15] = {
    --     name = "brakes_level3",
    --     price = 0,
    --     amount = 250,
    --     info = {},
    --     type = "item",
    --     slot = 15,
    --     requiredJob = { "bennys" }
    -- },

    -- [16] = {
    --     name = "turbo",
    --     price = 0,
    --     amount = 250,
    --     info = {},
    --     type = "item",
    --     slot = 16,
    --     requiredJob = { "bennys" }
    -- },

    [2] = {
        name = "painttablet",
        price = 0,
        amount = 250,
        info = {},
        type = "item",
        slot = 2,
        requiredJob = { "bennys" }
    },

    [3] = {
        name = "parttablet",
        price = 0,
        amount = 250,
        info = {},
        type = "item",
        slot = 3,
        requiredJob = { "bennys" }
    },

    [4] = {
        name = "repairkit",
        price = 0,
        amount = 250,
        info = {},
        type = "item",
        slot = 4,
        requiredJob = { "bennys" }
    },

    [5] = {
        name = "advancedrepairkit",
        price = 0,
        amount = 250,
        info = {},
        type = "item",
        slot = 5,
        requiredJob = { "bennys" }
    },


    


    
},

-- ["bratva"] = {
--     [1] = {
--         name = "hacker_phone",
--         price = 50000,
--         amount = 5,
--         info = {},
--         type = "item",
--         slot = 1,
--     },
    
-- },


["elkjop"] = {
   

    [1] = {
        name = "boombox",
        price = 7000,
        amount = 5,
        info = {},
        type = "item",
        slot = 1,
    },

    [2] = {
        name = "var_helmet",
        price = 3500,
        amount = 5,
        info = {},
        type = "item",
        slot = 2,
    },


    [3] = {
        name = "camera",
        price = 15000,
        amount = 1,
        info = {},
        type = "item",
        slot = 3,
    },

    [4] = {
        name = "camera_module",
        price = 3000,
        amount = 1,
        info = {},
        type = "item",
        slot = 4,
    },

    [5] = {
        name = "drone",
        price = 40000,
        amount = 1,
        info = {},
        type = "item",
        slot = 5,
    },

    [6] = {
        name = "detector",
        price = 7500,
        amount = 1,
        info = {},
        type = "item",
        slot = 6,
    },

    [7] = {
        name = "fitbit",
        price = 2000,
        amount = 1,
        info = {},
        type = "item",
        slot = 7,
    },

    


    
    
},

["hellhounds"] = {
    [1] = {
        name = "beer",
        price = 150,
        amount = 50,
        info = {},
        type = "item",
        slot = 1,
        requiredJob = { "vanilla" },
    },
    [2] = {
        name = "whiskey",
        price = 200,
        amount = 50,
        info = {},
        type = "item",
        slot = 2,
        requiredJob = { "vanilla" },
    },
    [3] = {
        name = "vodka",
        price = 180,
        amount = 50,
        info = {},
        type = "item",
        slot = 3,
        requiredJob = { "vanilla" },
    },

    [4] = {
        name = "dvrcocktail",
        price = 180,
        amount = 50,
        info = {},
        type = "item",
        slot = 4,
        requiredJob = { "vanilla" },
    },
    [5] = {
        name = "kamikaze",
        price = 180,
        amount = 50,
        info = {},
        type = "item",
        slot = 5,
        requiredJob = { "vanilla" },
    },
    [6] = {
        name = "jbcocktail",
        price = 180,
        amount = 50,
        info = {},
        type = "item",
        slot = 6,
        requiredJob = { "vanilla" },
    },

    [7] = {
        name = "marvelcocktail",
        price = 180,
        amount = 50,
        info = {},
        type = "item",
        slot = 7,
        requiredJob = { "vanilla" },
    },

    [8] = {
        name = "vitodaiquiri",
        price = 180,
        amount = 50,
        info = {},
        type = "item",
        slot = 8,
        requiredJob = { "vanilla" },
    },

    [9] = {
        name = "yoshishooter",
        price = 180,
        amount = 50,
        info = {},
        type = "item",
        slot = 9,
        requiredJob = { "vanilla" },
    },

    [10] = {
        name = "iflag",
        price = 180,
        amount = 50,
        info = {},
        type = "item",
        slot = 10,
        requiredJob = { "vanilla" },
    },

    [11] = {
        name = "hulkcocktail",
        price = 180,
        amount = 50,
        info = {},
        type = "item",
        slot = 11,
        requiredJob = { "vanilla" },
    },

    [12] = {
        name = "voodoo",
        price = 180,
        amount = 50,
        info = {},
        type = "item",
        slot = 12,
        requiredJob = { "vanilla" },
    },

    [13] = {
        name = "milkdragon",
        price = 180,
        amount = 50,
        info = {},
        type = "item",
        slot = 13,
        requiredJob = { "vanilla" },
    },


    [14] = {
        name = "bkamikaze",
        price = 180,
        amount = 50,
        info = {},
        type = "item",
        slot = 14,
        requiredJob = { "vanilla" },
    },


    [15] = {
        name = "scarcolada",
        price = 180,
        amount = 50,
        info = {},
        type = "item",
        slot = 15,
        requiredJob = { "vanilla" },
    },

    [16] = {
        name = "cookies_frappuccino",
        price = 180,
        amount = 50,
        info = {},
        type = "item",
        slot = 16,
        requiredJob = { "vanilla" },
    },

    [17] = {
        name = "strawberry_juice",
        price = 180,
        amount = 50,
        info = {},
        type = "item",
        slot = 17,
        requiredJob = { "vanilla" },
    },

    [18] = {
        name = "brussian",
        price = 180,
        amount = 50,
        info = {},
        type = "item",
        slot = 18,
        requiredJob = { "vanilla" },
    },
},

["bobcat"] = {
    [1] = {
        name = "bobcatkeycard",
        price = 1000000,
        amount = 1,
        info = {},
        type = "item",
        slot = 1,
    },
 
    

  
},


["snusbutikk"] = {
    [1] = {
        name = "skruf",
        price = 100,
        amount = 5,
        info = {},
        type = "item",
        slot = 1,
    },
    -- [2] = {
    --     name = "epok",
    --     price = 100,
    --     amount = 5,
    --     info = {},
    --     type = "item",
    --     slot = 2,
    -- },
    -- [3] = {
    --     name = "general",
    --     price = 100,
    --     amount = 5,
    --     info = {},
    --     type = "item",
    --     slot = 3,
    -- },

    -- [4] = {
    --     name = "goteborg",
    --     price = 100,
    --     amount = 5,
    --     info = {},
    --     type = "item",
    --     slot = 4,
    -- },
    -- [5] = {
    --     name = "nickandjohnny",
    --     price = 100,
    --     amount = 5,
    --     info = {},
    --     type = "item",
    --     slot = 5,
    -- },
    

  
},

["cyberbar"] = {
    [1] = {
        name = "beer",
        price = 200,
        amount = 5,
        info = {},
        type = "item",
        slot = 1,
    },
    [2] = {
        name = "water_bottle",
        price = 200,
        amount = 5,
        info = {},
        type = "item",
        slot = 2,
    },
    [3] = {
        name = "var_helmet",
        price = 8000,
        amount = 5,
        info = {},
        type = "item",
        slot = 3,
    },

    [4] = {
        name = "gameboy",
        price = 2000,
        amount = 5,
        info = {},
        type = "item",
        slot = 4,
    },
    [5] = {
        name = "classic_nintendo",
        price = 6000,
        amount = 5,
        info = {},
        type = "item",
        slot = 5,
    },
    [6] = {
        name = "gray_nintendo",
        price = 6000,
        amount = 5,
        info = {},
        type = "item",
        slot = 6,
    },

    [7] = {
        name = "white_nintendo",
        price = 6000,
        amount = 5,
        info = {},
        type = "item",
        slot = 7,
    },
    

  
},




}
Config.Locations = {



    --  --Cyber bar
    --  ["cyberbar"] = {
    --     ["label"] = "Cyber bar",
    --     ["coords"] = vector4(335.78, -915.13, 29.26, 175.09),
    --     ["ped"] = 'a_m_y_hipster_01',
    --     ["scenario"] = "WORLD_HUMAN_COP_IDLES",
    --     ["radius"] = 2.5,
    --     ["targetIcon"] = "fas fa-shopping-basket",
    --     ["targetLabel"] = "Åpne butikk",
    --     ["products"] = Config.Products["cyberbar"],
    --     ["showblip"] = true,
    --     ["blipsprite"] = 269,
    --     ["blipscale"] = 0.6,
    --     ["blipcolor"] = 0,
    --     ["delivery"] = vector4(1194.52, 2722.21, 38.62, 9.37)
    -- },


      --bobcat spøkelseshus
      ["bobcat"] = {
        ["label"] = "Død sikkerhetsvakt",
        ["coords"] = vector4(-3688.95, -1688.42, 146.51, 267.03),
        ["ped"] = 's_f_y_bartender_01',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 2.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Åpne butikk",
        ["products"] = Config.Products["bobcat"],
        ["showblip"] = false,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0,
        ["delivery"] = vector4(1194.52, 2722.21, 38.62, 9.37)
    },

    --hellhounds
    ["snusbutikk"] = {
        ["label"] = "Tobakksbutikk",
        ["coords"] = vector4(28.82, -1769.76, 29.60, 71.20),
        -- ["ped"] = 's_f_y_bartender_01',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 2.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Åpne butikk",
        ["products"] = Config.Products["snusbutikk"],
        ["showblip"] = false,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0,
        ["delivery"] = vector4(1194.52, 2722.21, 38.62, 9.37)
    },

     
    -- Elektronikk
    ["elkjop"] = {
        ["label"] = "Elektronikkbutikk",
        ["coords"] = vector4(2666.52, 3363.90, 57.13, 69.16),
        -- ["ped"] = 'cs_siemonyetarian',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Elektronikkbutikk",
        ["products"] = Config.Products["elkjop"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0,
    },

    --   -- meth
    --   ["elkjop"] = {
    --     ["label"] = "Shady fyr",
    --     ["coords"] = vector4(-32.68, 364.27, 113.91, 103.59),
    --     ["ped"] = 'cs_siemonyetarian',
    --     ["scenario"] = "WORLD_HUMAN_COP_IDLES",
    --     ["radius"] = 1.5,
    --     ["targetIcon"] = "fas fa-shopping-basket",
    --     ["targetLabel"] = "Shady fyr",
    --     ["products"] = Config.Products["meth"],
    --     ["showblip"] = false,
    --     ["blipsprite"] = 52,
    --     ["blipscale"] = 0.6,
    --     ["blipcolor"] = 0,
    -- },

     -- Bratva
    --  ["bratva"] = {
    --     ["label"] = "Bratva fyr",
    --     ["type"] = "weapon",
    --     ["coords"] = vector4(-1427.03, 6761.3, 5.88, 146.46),
    --     ["ped"] = 'cs_siemonyetarian',
    --     ["scenario"] = "WORLD_HUMAN_COP_IDLES",
    --     ["radius"] = 1.5,
    --     ["targetIcon"] = "fas fa-gun",
    --     ["targetLabel"] = "Snakk med Bratva",
    --     ["products"] = Config.Products["bratva"],
    --     ["showblip"] = false,
    --     ["blipsprite"] = 626,
    --     ["blipcolor"] = 1
    -- },

    -- jakt










    -- -- 24/7 Locations
    -- ["247supermarket"] = {
    --     ["label"] = "Dagligvare",
    --     ["coords"] = vector4(24.33, -1347.22, 29.5, 261.11),
    --     -- ["ped"] = '',
    --     ["scenario"] = "",
    --     ["radius"] = 3.5,
    --     ["targetIcon"] = "fas fa-shopping-basket",
    --     ["targetLabel"] = "Åpne butikk",
    --     ["products"] = Config.Products["normal"],
    --     ["showblip"] = false,
    --     ["blipsprite"] = 52,
    --     ["blipscale"] = 0.6,
    --     ["blipcolor"] = 0,
    --     ["delivery"] = vector4(26.45, -1315.51, 29.62, 0.07)
    -- },

    -- ["247supermarket2"] = {
    --     ["label"] = "Dagligvare",
    --     ["coords"] = vector4(-3039.54, 584.38, 7.91, 17.27),
    --     -- ["ped"] = 'mp_m_shopkeep_01',
    --     ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
    --     ["radius"] = 3.5,
    --     ["targetIcon"] = "fas fa-shopping-basket",
    --     ["targetLabel"] = "Åpne butikk",
    --     ["products"] = Config.Products["normal"],
    --     ["showblip"] = false,
    --     ["blipsprite"] = 52,
    --     ["blipscale"] = 0.6,
    --     ["blipcolor"] = 0,
    --     ["delivery"] = vector4(-3047.95, 590.71, 7.62, 19.53)
    -- },

    -- --sykehus
    ["247supermarket2"] = {
        ["label"] = "Dagligvare",
        ["coords"] = vector4(-2815.90, -57.42, 18.61, 193.14),
        -- ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
        ["radius"] = 3.5,
        ["targetIcon"] = "fas fa-shopping-basket",
        ["targetLabel"] = "Åpne butikk",
        ["products"] = Config.Products["normal"],
        ["showblip"] = false,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0,
        ["delivery"] = vector4(-3047.95, 590.71, 7.62, 19.53)
    },

    -- ["247supermarket3"] = {
    --     ["label"] = "Dagligvare",
    --     ["coords"] = vector4(-3242.97, 1000.01, 12.83, 357.57),
    --     -- ["ped"] = 'mp_m_shopkeep_01',
    --     ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
    --     ["radius"] = 3.5,
    --     ["targetIcon"] = "fas fa-shopping-basket",
    --     ["targetLabel"] = "Åpne butikk",
    --     ["products"] = Config.Products["normal"],
    --     ["showblip"] = false,
    --     ["blipsprite"] = 52,
    --     ["blipscale"] = 0.6,
    --     ["blipcolor"] = 0,
    --     ["delivery"] = vector4(-3245.76, 1005.25, 12.83, 269.45)
    -- },

    -- ["247supermarket4"] = {
    --     ["label"] = "Dagligvare",
    --     ["coords"] = vector4(1728.07, 6415.63, 35.04, 242.95),
    --     -- ["ped"] = 'mp_m_shopkeep_01',
    --     ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
    --     ["radius"] = 3.5,
    --     ["targetIcon"] = "fas fa-shopping-basket",
    --     ["targetLabel"] = "Åpne butikk",
    --     ["products"] = Config.Products["normal"],
    --     ["showblip"] = false,
    --     ["blipsprite"] = 52,
    --     ["blipscale"] = 0.6,
    --     ["blipcolor"] = 0,
    --     ["delivery"] = vector4(1741.76, 6419.61, 35.04, 6.83)
    -- },

    -- ["247supermarket5"] = {
    --     ["label"] = "Dagligvare",
    --     ["coords"] = vector4(1959.82, 3740.48, 32.34, 301.57),
    --     -- ["ped"] = 'mp_m_shopkeep_01',
    --     ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
    --     ["radius"] = 3.5,
    --     ["targetIcon"] = "fas fa-shopping-basket",
    --     ["targetLabel"] = "Åpne butikk",
    --     ["products"] = Config.Products["normal"],
    --     ["showblip"] = false,
    --     ["blipsprite"] = 52,
    --     ["blipscale"] = 0.6,
    --     ["blipcolor"] = 0,
    --     ["delivery"] = vector4(1963.81, 3750.09, 32.26, 302.46)
    -- },

    -- ["247supermarket6"] = {
    --     ["label"] = "Dagligvare",
    --     ["coords"] = vector4(549.13, 2670.85, 42.16, 99.39),
    --     -- ["ped"] = 'mp_m_shopkeep_01',
    --     ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
    --     ["radius"] = 3.5,
    --     ["targetIcon"] = "fas fa-shopping-basket",
    --     ["targetLabel"] = "Åpne butikk",
    --     ["products"] = Config.Products["normal"],
    --     ["showblip"] = false,
    --     ["blipsprite"] = 52,
    --     ["blipscale"] = 0.6,
    --     ["blipcolor"] = 0,
    --     ["delivery"] = vector4(541.54, 2663.53, 42.17, 120.51)
    -- },

    -- ["247supermarket7"] = {
    --     ["label"] = "Dagligvare",
    --     ["coords"] = vector4(2677.47, 3279.76, 55.24, 335.08),
    --     -- ["ped"] = 'mp_m_shopkeep_01',
    --     ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
    --     ["radius"] = 3.5,
    --     ["targetIcon"] = "fas fa-shopping-basket",
    --     ["targetLabel"] = "Åpne butikk",
    --     ["products"] = Config.Products["normal"],
    --     ["showblip"] = false,
    --     ["blipsprite"] = 52,
    --     ["blipscale"] = 0.6,
    --     ["blipcolor"] = 0,
    --     ["delivery"] = vector4(2662.19, 3264.95, 55.24, 168.55)
    -- },

    -- ["247supermarket8"] = {
    --     ["label"] = "Dagligvare",
    --     ["coords"] = vector4(2556.66, 380.84, 108.62, 356.67),
    --     -- ["ped"] = 'mp_m_shopkeep_01',
    --     ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
    --     ["radius"] = 3.5,
    --     ["targetIcon"] = "fas fa-shopping-basket",
    --     ["targetLabel"] = "Åpne butikk",
    --     ["products"] = Config.Products["normal"],
    --     ["showblip"] = false,
    --     ["blipsprite"] = 52,
    --     ["blipscale"] = 0.6,
    --     ["blipcolor"] = 0,
    --     ["delivery"] = vector4(2553.24, 399.73, 108.56, 344.86)
    -- },

    -- ["247supermarket9"] = {
    --     ["label"] = "Dagligvare",
    --     ["coords"] = vector4(372.66, 326.98, 103.57, 253.73),
    --     -- ["ped"] = 'mp_m_shopkeep_01',
    --     ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
    --     ["radius"] = 3.5,
    --     ["targetIcon"] = "fas fa-shopping-basket",
    --     ["targetLabel"] = "Åpne butikk",
    --     ["products"] = Config.Products["normal"],
    --     ["showblip"] = false,
    --     ["blipsprite"] = 52,
    --     ["blipscale"] = 0.6,
    --     ["blipcolor"] = 0,
    --     ["delivery"] = vector4(379.97, 357.3, 102.56, 26.42)
    -- },

    -- -- LTD Gasoline Locations
    -- ["ltdgasoline"] = {
    --     ["label"] = "Bensinstasjon",
    --     ["coords"] = vector4(-47.02, -1758.23, 29.42, 45.05),
    --     -- ["ped"] = 'mp_m_shopkeep_01',
    --     ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
    --     ["radius"] = 3.5,
    --     ["targetIcon"] = "fas fa-shopping-basket",
    --     ["targetLabel"] = "Åpne butikk",
    --     ["products"] = Config.Products["normal"],
    --     ["showblip"] = false,
    --     ["blipsprite"] = 52,
    --     ["blipscale"] = 0.6,
    --     ["blipcolor"] = 0,
    --     ["delivery"] = vector4(-40.51, -1747.45, 29.29, 326.39)
    -- },

    -- ["ltdgasoline2"] = {
    --     ["label"] = "Bensinstasjon",
    --     ["coords"] = vector4(-706.06, -913.97, 19.22, 88.04),
    --     -- ["ped"] = 'mp_m_shopkeep_01',
    --     ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
    --     ["radius"] = 3.5,
    --     ["targetIcon"] = "fas fa-shopping-basket",
    --     ["targetLabel"] = "Åpne butikk",
    --     ["products"] = Config.Products["normal"],
    --     ["showblip"] = false,
    --     ["blipsprite"] = 52,
    --     ["blipscale"] = 0.6,
    --     ["blipcolor"] = 0,
    --     ["delivery"] = vector4(-702.89, -917.44, 19.21, 181.96)
    -- },

    -- ["ltdgasoline3"] = {
    --     ["label"] = "Bensinstasjon",
    --     ["coords"] = vector4(-1820.02, 794.03, 138.09, 135.45),
    --     -- ["ped"] = 'mp_m_shopkeep_01',
    --     ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
    --     ["radius"] = 3.5,
    --     ["targetIcon"] = "fas fa-shopping-basket",
    --     ["targetLabel"] = "Åpne butikk",
    --     ["products"] = Config.Products["normal"],
    --     ["showblip"] = false,
    --     ["blipsprite"] = 52,
    --     ["blipscale"] = 0.6,
    --     ["blipcolor"] = 0,
    --     ["delivery"] = vector4(-1829.29, 801.49, 138.41, 41.39)
    -- },

    -- ["ltdgasoline4"] = {
    --     ["label"] = "Bensinstasjon",
    --     ["coords"] = vector4(1164.71, -322.94, 69.21, 101.72),
    --     -- ["ped"] = 'mp_m_shopkeep_01',
    --     ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
    --     ["radius"] = 3.5,
    --     ["targetIcon"] = "fas fa-shopping-basket",
    --     ["targetLabel"] = "Open Åpne butikk",
    --     ["products"] = Config.Products["normal"],
    --     ["showblip"] = false,
    --     ["blipsprite"] = 52,
    --     ["blipscale"] = 0.6,
    --     ["blipcolor"] = 0,
    --     ["delivery"] = vector4(1160.62, -312.06, 69.28, 3.77)
    -- },

    -- ["ltdgasoline5"] = {
    --     ["label"] = "Bensinstasjon",
    --     ["coords"] = vector4(1697.87, 4922.96, 42.06, 324.71),
    --     -- ["ped"] = 'mp_m_shopkeep_01',
    --     ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
    --     ["radius"] = 3.5,
    --     ["targetIcon"] = "fas fa-shopping-basket",
    --     ["targetLabel"] = "Åpne butikk",
    --     ["products"] = Config.Products["normal"],
    --     ["showblip"] = false,
    --     ["blipsprite"] = 52,
    --     ["blipscale"] = 0.6,
    --     ["blipcolor"] = 0,
    --     ["delivery"] = vector4(1702.68, 4917.28, 42.22, 139.27)
    -- },

    -- -- Rob's Liquor Locations
    -- ["robsliquor"] = {
    --     ["label"] = "Vinmonopolet",
    --     ["coords"] = vector4(-1221.58, -908.15, 12.33, 35.49),
    --     -- ["ped"] = 'mp_m_shopkeep_01',
    --     ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
    --     ["radius"] = 3.5,
    --     ["targetIcon"] = "fas fa-shopping-basket",
    --     ["targetLabel"] = "Åpne butikk",
    --     ["products"] = Config.Products["liquor"],
    --     ["showblip"] = false,
    --     ["blipsprite"] = 52,
    --     ["blipscale"] = 0.6,
    --     ["blipcolor"] = 0,
    --     ["delivery"] = vector4(-1226.92, -901.82, 12.28, 213.26)
    -- },

    -- ["robsliquor2"] = {
    --     ["label"] = "Vinmonopolet",
    --     ["coords"] = vector4(-1486.59, -377.68, 40.16, 139.51),
    --     -- ["ped"] = 'mp_m_shopkeep_01',
    --     ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
    --     ["radius"] = 3.5,
    --     ["targetIcon"] = "fas fa-shopping-basket",
    --     ["targetLabel"] = "Åpne butikk",
    --     ["products"] = Config.Products["liquor"],
    --     ["showblip"] = false,
    --     ["blipsprite"] = 52,
    --     ["blipscale"] = 0.6,
    --     ["blipcolor"] = 0,
    --     ["delivery"] = vector4(-1468.29, -387.61, 38.79, 220.13)
    -- },

    -- ["robsliquor3"] = {
    --     ["label"] = "Vinmonopolet",
    --     ["coords"] = vector4(-2966.39, 391.42, 15.04, 87.48),
    --     -- ["ped"] = 'mp_m_shopkeep_01',
    --     ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
    --     ["radius"] = 3.5,
    --     ["targetIcon"] = "fas fa-shopping-basket",
    --     ["targetLabel"] = "Åpne butikk",
    --     ["products"] = Config.Products["liquor"],
    --     ["showblip"] = false,
    --     ["blipsprite"] = 52,
    --     ["blipscale"] = 0.6,
    --     ["blipcolor"] = 0,
    --     ["delivery"] = vector4(-2961.49, 376.25, 15.02, 111.41)
    -- },

    -- ["robsliquor4"] = {
    --     ["label"] = "Vinmonopolet",
    --     ["coords"] = vector4(1165.17, 2710.88, 38.16, 179.43),
    --     -- ["ped"] = 'mp_m_shopkeep_01',
    --     ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
    --     ["radius"] = 3.5,
    --     ["targetIcon"] = "fas fa-shopping-basket",
    --     ["targetLabel"] = "Åpne butikk",
    --     ["products"] = Config.Products["liquor"],
    --     ["showblip"] = false,
    --     ["blipsprite"] = 52,
    --     ["blipscale"] = 0.6,
    --     ["blipcolor"] = 0,
    --     ["delivery"] = vector4(1194.52, 2722.21, 38.62, 9.37)
    -- },

    -- ["robsliquor5"] = {
    --     ["label"] = "Vinmonopolet",
    --     ["coords"] = vector4(1134.2, -982.91, 46.42, 277.24),
    --     -- ["ped"] = 'mp_m_shopkeep_01',
    --     ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
    --     ["radius"] = 3.5,
    --     ["targetIcon"] = "fas fa-shopping-basket",
    --     ["targetLabel"] = "Åpne butikk",
    --     ["products"] = Config.Products["liquor"],
    --     ["showblip"] = false,
    --     ["blipsprite"] = 52,
    --     ["blipscale"] = 0.6,
    --     ["blipcolor"] = 0,
    --     ["delivery"] = vector4(1129.73, -989.27, 45.97, 280.98)
    -- },

  
    ["hardware"] = {
        ["label"] = "Jernvarehandelen",
        ["coords"] = vector4(2669.90, 3377.85, 57.12, 66.15),
        -- ["ped"] = 'mp_m_shopkeep_01',
        ["scenario"] = "WORLD_HUMAN_CLIPBOARD",
        ["radius"] = 2.5,
        ["targetIcon"] = "fas fa-wrench",
        ["targetLabel"] = "Åpne jernvarehandelen",
        ["products"] = Config.Products["hardware"],
        ["showblip"] = true,
        ["blipsprite"] = 402,
        ["blipscale"] = 0.8,
        ["blipcolor"] = 0,
        ["delivery"] = vector4(89.15, -1745.29, 30.09, 315.25)
    },

    -- ["hardware2"] = {
    --     ["label"] = "Biltema",
    --     ["coords"] = vector4(2747.71, 3472.85, 55.67, 255.08),
    --     ["ped"] = 'mp_m_waremech_01',
    --     ["scenario"] = "WORLD_HUMAN_CLIPBOARD",
    --     ["radius"] = 1.5,
    --     ["targetIcon"] = "fas fa-wrench",
    --     ["targetLabel"] = "Åpne biltema",
    --     ["products"] = Config.Products["hardware"],
    --     ["showblip"] = true,
    --     ["blipsprite"] = 402,
    --     ["blipscale"] = 0.8,
    --     ["blipcolor"] = 0,
    --     ["delivery"] = vector4(2704.68, 3457.21, 55.54, 176.28)
    -- },

    -- ["hardware3"] = {
    --     ["label"] = "Biltema",
    --     ["coords"] = vector4(-421.83, 6136.13, 31.88, 228.2),
    --     ["ped"] = 'mp_m_waremech_01',
    --     ["scenario"] = "WORLD_HUMAN_CLIPBOARD",
    --     ["radius"] = 1.5,
    --     ["targetIcon"] = "fas fa-wrench",
    --     ["targetLabel"] = "Åpne Biltema",
    --     ["products"] = Config.Products["hardware"],
    --     ["showblip"] = true,
    --     ["blipsprite"] = 402,
    --     ["blipscale"] = 0.8,
    --     ["blipcolor"] = 0,
    --     ["delivery"] = vector4(-438.25, 6146.9, 31.48, 136.99)
    -- },

    -- Ammunation Locations

    ["ammunation"] = {
        ["label"] = "Jakt & Fritid",
        ["type"] = "weapon",
        ["coords"] = vector4(18.87, -1108.14, 29.8, 159.34),
        -- ["ped"] = 's_m_y_ammucity_01',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-gun",
        ["targetLabel"] = "Åpne jakt & fritid",
        ["products"] = Config.Products["hardware"],
        ["showblip"] = false,
        ["blipsprite"] = 110,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0,
        ["delivery"] = vector4(-660.61, -938.14, 21.83, 167.22)
    },
    ["ammunation"] = {
        ["label"] = "Jakt & Fritid",
        ["type"] = "weapon",
        ["coords"] = vector4(-659.18, -938.86, 21.83, 83.11),
        -- ["ped"] = 's_m_y_ammucity_01',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 3.0,
        ["targetIcon"] = "fas fa-gun",
        ["targetLabel"] = "Åpne jakt & fritid",
        ["products"] = Config.Products["hardware"],
        ["showblip"] = false,
        ["blipsprite"] = 110,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0,
        ["delivery"] = vector4(-660.61, -938.14, 21.83, 167.22)
    },
    ["ammunation2"] = {
        ["label"] = "Jakt & Fritid",
        ["type"] = "weapon",
        ["coords"] = vector4(813.66, -2155.28, 29.62, 0.8),
        -- ["ped"] = 's_m_y_ammucity_01',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 3.0,
        ["targetIcon"] = "fas fa-gun",
        ["targetLabel"] = "Åpne jakt & fritid",
        ["products"] = Config.Products["hardware"],
        ["showblip"] = false,
        ["blipsprite"] = 110,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0,
        ["delivery"] = vector4(820.97, -2146.7, 28.71, 359.98)
    },
    ["ammunation3"] = {
        ["label"] = "Jakt & Fritid",
        ["type"] = "weapon",
        ["coords"] = vector4(1692.67, 3761.38, 34.71, 227.65),
        -- ["ped"] = 's_m_y_ammucity_01',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 3.0,
        ["targetIcon"] = "fas fa-gun",
        ["targetLabel"] = "Åpne jakt & fritid",
        ["products"] = Config.Products["hardware"],
        ["showblip"] = false,
        ["blipsprite"] = 110,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0,
        ["delivery"] = vector4(1687.17, 3755.47, 34.34, 163.69)
    },
    ["ammunation4"] = {
        ["label"] = "Jakt & Fritid",
        ["type"] = "weapon",
        ["coords"] = vector4(-331.23, 6085.37, 31.45, 228.02),
        -- ["ped"] = 's_m_y_ammucity_01',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 3.0,
        ["targetIcon"] = "fas fa-gun",
        ["targetLabel"] = "Åpne jakt & fritid",
        ["products"] = Config.Products["hardware"],
        ["showblip"] = false,
        ["blipsprite"] = 110,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0,
        ["delivery"] = vector4(-341.72, 6098.49, 31.32, 11.05)
    },
    ["ammunation5"] = {
        ["label"] = "Jakt & Fritid",
        ["type"] = "weapon",
        ["coords"] = vector4(247.32, -51.65, 69.94, 334.5),
        -- ["ped"] = 's_m_y_ammucity_01',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 3.0,
        ["targetIcon"] = "fas fa-gun",
        ["targetLabel"] = "Åpne jakt & fritid",
        ["products"] = Config.Products["hardware"],
        ["showblip"] = false,
        ["blipsprite"] = 110,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0,
        ["delivery"] = vector4(249.0, -50.64, 69.94, 60.71)
    },
    ["ammunation6"] = {
        ["label"] = "Jakt & Fritid",
        ["type"] = "weapon",
        ["coords"] = vector4(18.46, -1108.04, 29.8, 161.55),
        -- ["ped"] = 's_m_y_ammucity_01',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 3.0,
        ["targetIcon"] = "fas fa-gun",
        ["targetLabel"] = "Åpne jakt & fritid",
        ["products"] = Config.Products["hardware"],
        ["showblip"] = false,
        ["blipsprite"] = 110,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0,
        ["delivery"] = vector4(-5.82, -1107.48, 29.0, 164.32)
    },
    ["ammunation7"] = {
        ["label"] = "Jakt & Fritid",
        ["type"] = "weapon",
        ["coords"] = vector4(2564.71, 298.65, 108.74, 276.02),
        -- ["ped"] = 's_m_y_ammucity_01',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 3.0,
        ["targetIcon"] = "fas fa-gun",
        ["targetLabel"] = "Åpne jakt & fritid",
        ["products"] = Config.Products["hardware"],
        ["showblip"] = false,
        ["blipsprite"] = 110,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0,
        ["delivery"] = vector4(2578.77, 285.53, 108.61, 277.2)
    },
    ["ammunation8"] = {
        ["label"] = "Jakt & Fritid",
        ["type"] = "weapon",
        ["coords"] = vector4(-1112.55, 2697.43, 18.55, 136.18),
        -- ["ped"] = 's_m_y_ammucity_01',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 3.0,
        ["targetIcon"] = "fas fa-gun",
        ["targetLabel"] = "Åpne jakt & fritid",
        ["products"] = Config.Products["hardware"],
        ["showblip"] = false,
        ["blipsprite"] = 110,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0,
        ["delivery"] = vector4(-1127.67, 2708.18, 18.8, 41.76)
    },
    ["ammunation9"] = {
        ["label"] = "Jakt & Fritid",
        ["type"] = "weapon",
        ["coords"] = vector4(841.92, -1035.32, 28.19, 1.56),
        -- ["ped"] = 's_m_y_ammucity_01',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 3.0,
        ["targetIcon"] = "fas fa-gun",
        ["targetLabel"] = "Åpne jakt & fritid",
        ["products"] = Config.Products["hardware"],
        ["showblip"] = false,
        ["blipsprite"] = 110,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0,
        ["delivery"] = vector4(847.83, -1020.36, 27.88, 88.29)
    },
    ["ammunation10"] = {
        ["label"] = "Jakt & Fritid",
        ["type"] = "weapon",
        ["coords"] = vector4(-1304.19, -395.12, 36.7, 75.03),
        -- ["ped"] = 's_m_y_ammucity_01',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 3.0,
        ["targetIcon"] = "fas fa-gun",
        ["targetLabel"] = "Åpne jakt & fritid",
        ["products"] = Config.Products["hardware"],
        ["showblip"] = false,
        ["blipsprite"] = 110,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0,
        ["delivery"] = vector4(-1302.44, -385.23, 36.62, 303.79)
    },
    ["ammunation11"] = {
        ["label"] = "Jakt & Fritid",
        ["type"] = "weapon",
        ["coords"] = vector4(-3173.31, 1088.85, 20.84, 244.18),
        -- ["ped"] = 's_m_y_ammucity_01',
        ["scenario"] = "WORLD_HUMAN_COP_IDLES",
        ["radius"] = 3.0,
        ["targetIcon"] = "fas fa-gun",
        ["targetLabel"] = "Åpne jakt & fritid",
        ["products"] = Config.Products["hardware"],
        ["showblip"] = false,
        ["blipsprite"] = 110,
        ["blipscale"] = 0.6,
        ["blipcolor"] = 0,
        ["delivery"] = vector4(-3183.6, 1084.35, 20.84, 68.13)
    },

    -- -- Casino Locations
    -- ["casino"] = {
    --     ["label"] = "Casino",
    --     ["coords"] = vector4(978.46, 39.07, 74.88, 64.0),
    --     ["ped"] = 'csb_tomcasino',
    --     ["scenario"] = "WORLD_HUMAN_STAND_MOBILE",
    --     ["radius"] = 1.5,
    --     ["targetIcon"] = "fas fa-coins",
    --     ["targetLabel"] = "Buy Chips",
    --     ["products"] = Config.Products["casino"],
    --     ["showblip"] = true,
    --     ["blipsprite"] = 617,
    --     ["blipscale"] = 0.8,
    --     ["blipcolor"] = 0,
    --     ["delivery"] = vector4(972.6, 9.22, 81.04, 233.38)
    -- },

    -- ["casinobar"] = {
    --     ["label"] = "Casino Bar",
    --     ["coords"] = vector4(968.13, 29.85, 74.88, 208.86),
    --     ["ped"] = 'a_m_y_smartcaspat_01',
    --     ["scenario"] = "WORLD_HUMAN_VALET",
    --     ["radius"] = 1.5,
    --     ["targetIcon"] = "fas fa-wine-bottle",
    --     ["targetLabel"] = "Open Casino Bar",
    --     ["products"] = Config.Products["liquor"],
    --     ["showblip"] = false,
    --     ["blipsprite"] = 52,
    --     ["blipscale"] = 0.8,
    --     ["blipcolor"] = 0,
    --     ["delivery"] = vector4(937.16, 1.0, 78.76, 152.4)
    -- },

    -- Weedshop Locations
    ["weedshop"] = {
        ["label"] = "Hampen",
        ["coords"] = vector4(-1168.26, -1573.2, 4.66, 105.24),
        -- ["ped"] = 'a_m_y_hippy_01',
        ["scenario"] = "WORLD_HUMAN_AA_SMOKE",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-cannabis",
        ["targetLabel"] = "Åpne Hampen",
        ["products"] = Config.Products["weedshop"],
        ["showblip"] = false,
        ["blipsprite"] = 140,
        ["blipscale"] = 0.8,
        ["blipcolor"] = 0,
        ["delivery"] = vector4(-1162.13, -1568.57, 4.39, 328.52)
    },

    -- fiskebtuikk
    ["leisureshop"] = {
        ["label"] = "Fritidsbutikk",
        ["coords"] = vector4(-2192.59, 4294.15, 49.17, 66.04),
        -- ["ped"] = 'a_m_y_beach_01',
        ["scenario"] = "WORLD_HUMAN_STAND_IMPATIENT",
        ["radius"] = 1.5,
        ["targetIcon"] = "fas fa-fish",
        ["targetLabel"] = "Fritidsbutikk",
        ["products"] = Config.Products["leisureshop"],
        ["showblip"] = true,
        ["blipsprite"] = 52,
        ["blipscale"] = 0.8,
        ["blipcolor"] = 0,
        ["delivery"] = vector4(-1674.18, -1073.7, 13.15, 333.56)
    },

    -- -- Leisure Shop Locations
    -- ["leisureshop"] = {
    --     ["label"] = "Fritidsbutikk",
    --     ["coords"] = vector4(-1505.91, 1511.95, 115.29, 257.13),
    --     ["ped"] = 'a_m_y_beach_01',
    --     ["scenario"] = "WORLD_HUMAN_STAND_MOBILE_CLUBHOUSE",
    --     ["radius"] = 1.5,
    --     ["targetIcon"] = "fas fa-leaf",
    --     ["targetLabel"] = "Åpne Fritidsbutikk",
    --     ["products"] = Config.Products["leisureshop"],
    --     ["showblip"] = true,
    --     ["blipsprite"] = 52,
    --     ["blipscale"] = 0.8,
    --     ["blipcolor"] = 0,
    --     ["delivery"] = vector4(-1507.64, 1505.52, 115.29, 262.2)
    -- },
}
