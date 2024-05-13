Config = {}

Config.PawnLocation = {
    [1] = {
            coords = vector3(149.32, -1716.47, 29.31),
            length = 1.5,
            width = 1.8,
            heading = 207.0,
            debugPoly = false,
            minZ = 28.97,
            maxZ = 30.42,
            distance = 5.0
        },
    }

Config.BankMoney = false -- Set to true if you want the money to go into the players bank
Config.UseTimes = false -- Set to false if you want the pawnshop open 24/7
Config.TimeOpen = 0 -- Opening Time
Config.TimeClosed = 24 -- Closing Time
Config.SendMeltingEmail = true

Config.UseTarget = GetConvar('UseTarget', 'false') == 'false'

Config.PawnItems = {
    [1] = {
        item = 'goldchain',
        price = math.random(1500,2000)
    },
    [2] = {
        item = 'diamond_ring',
        price = math.random(1200,2500)
    },
    [3] = {
        item = 'rolex',
        price = math.random(800,3500)
    },
    [4] = {
        item = '10kgoldchain',
        price = math.random(3000,5000)
    },
    [5] = {
        item = 'tablet',
        price = math.random(500,1000)
    },
    [6] = {
        item = 'phone',
        price = math.random(1000,3000)
    },
    [7] = {
        item = 'goldbar',
        price = math.random(70000,110000)
    },
    [8] = {
        item = 'diamond',
        price = math.random(3000,5500)
    },

    [9] = {
        item = 'robbery_keycard_01',
        price = math.random(1000,4000)
    },
    [10] = {
        item = 'robbery_keycard_02',
        price = math.random(2000,4000)
    },

    [11] = {
        item = 'robbery_keycard_03',
        price = math.random(3000,6000)
    },

    [12] = {
        item = 'robbery_keycard_04',
        price = math.random(7000,10000)
    },

    [13] = {
        item = 'robbery_keycard_05',
        price = math.random(10000,25000)
    },

    [14] = {
        item = 'watch',
        price = math.random(500,1000)
    },

    [15] = {
        item = 'gold_watch',
        price = math.random(1000,2000)
    }, 

    [16] = {
        item = 'gold_bracelet',
        price = math.random(1000,1500)
    }, 

    [17] = {
        item = 'earings',
        price = math.random(800,1500)
    }, 

    [18] = {
        item = 'book',
        price = math.random(50,300)
    },
    
    [19] = {
        item = 'bracelet',
        price = math.random(800,2000)
    },

    [20] = {
        item = 'sculpture',
        price = math.random(1000,2200)
    },

    [21] = {
        item = 'hairdryer',
        price = math.random(200,400)
    },

    [22] = {
        item = 'pogo',
        price = math.random(4000,6000)
    },

    [23] = {
        item = 'plastic',
        price = math.random(10,20)
    },

    [24] = {
        item = 'metalscrap',
        price = math.random(10,20)
    },

    [25] = {
        item = 'copper',
        price = math.random(10,20)
    },

    [26] = {
        item = 'aluminum',
        price = math.random(10,20)
    },

    [27] = {
        item = 'aluminumoxide',
        price = math.random(10,20)
    },

    [28] = {
        item = 'iron',
        price = math.random(10,20)
    },

    [29] = {
        item = 'ironoxide',
        price = math.random(10,20)
    },

    [30] = {
        item = 'steel',
        price = math.random(10,20)
    },

    [31] = {
        item = 'rubber',
        price = math.random(10,20)
    },

    [32] = {
        item = 'glass',
        price = math.random(10,20)
    },

    [33] = {
        item = 'cloth',
        price = math.random(10,20)
    },

    [34] = {
        item = 'romantic_book',
        price = math.random(50,100)
    },

    [35] = {
        item = 'pencil',
        price = math.random(10,20)
    },

    [36] = {
        item = 'bong',
        price = math.random(200,400)
    },

    [37] = {
        item = 'bong',
        price = math.random(200,400)
    },

    [38] = {
        item = 'ziptie',
        price = math.random(10,20)
    },

    [39] = {
        item = 'toothpaste',
        price = math.random(50,80)
    },

    [40] = {
        item = 'skull',
        price = math.random(2000,3000)
    },

    [41] = {
        item = 'toiletry',
        price = math.random(100,200)
    },

    [42] = {
        item = 'hack_laptop',
        price = math.random(1000,1500)
    },

    [43] = {
        item = 'loot_bag',
        price = math.random(500,750)
    },

    [44] = {
        item = 'laptop',
        price = math.random(2500,3500)
    },

    [45] = {
        item = 'printer',
        price = math.random(500,900)
    },

    [46] = {
        item = 'npc_phone',
        price = math.random(1100,1300)
    },

    [47] = {
        item = 'monitor',
        price = math.random(600,1300)
    },

    [48] = {
        item = 'television',
        price = math.random(2000,2500)
    },

    [49] = {
        item = 'flat_television',
        price = math.random(2000,2500)
    },

    [50] = {
        item = 'radio_alarm',
        price = math.random(300,500)
    },

    [51] = {
        item = 'fan',
        price = math.random(300,500)
    },

    
    [52] = {
        item = 'shoebox',
        price = math.random(40,60)
    },

    [53] = {
        item = 'dj_deck',
        price = math.random(2000,4000)
    },

    [54] = {
        item = 'coffemachine',
        price = math.random(500,1500)
    },

    [55] = {
        item = 'tapeplayer',
        price = math.random(500,700)
    },

    [56] = {
        item = 'hairdryer',
        price = math.random(200,500)
    },

    [57] = {
        item = 'j_phone',
        price = math.random(1000,2500)
    },

    [58] = {
        item = 'sculpture',
        price = math.random(1000,2500)
    },

    [59] = {
        item = 'book',
        price = math.random(50,100)
    },

    [60] = {
        item = 'dirtywater',
        price = math.random(10,20)
    },

    [61] = {
        item = 'kq_expensive_laptop',
        price = math.random(2500,3500)
    },

    [62] = {
        item = 'kq_expensive_watch',
        price = math.random(1500,3000)
    },

    [63] = {
        item = 'kq_expensive_bag',
        price = math.random(1000,2000)
    },


    [64] = {
        item = 'kq_expensive_sneakers',
        price = math.random(500,1500)
    },


      
    [65] = {
        item = 'saltvannsperle',
        price = math.random(500,1500)
    },



}

Config.MeltingItems = { -- meltTime is amount of time in minutes per item
    -- [1] = {
    --     item = 'goldchain',
    --     rewards = {
    --         [1] = {
    --             item = 'goldbar',
    --             amount = 2
    --         }
    --     },
    --     meltTime = 0.15
    -- },
    -- [2] = {
    --     item = 'diamond_ring',
    --     rewards = {
    --         [1] = {
    --             item = 'diamond',
    --             amount = 1
    --         },
    --         [2] = {
    --             item = 'goldbar',
    --             amount = 1
    --         }
    --     },
    --     meltTime = 0.15
    -- },
    -- [3] = {
    --     item = 'rolex',
    --     rewards = {
    --         [1] = {
    --             item = 'diamond',
    --             amount = 1
    --         },
    --         [2] = {
    --             item = 'goldbar',
    --             amount = 1
    --         },
    --         [3] = {
    --             item = 'electronickit',
    --             amount = 1
    --         }
    --     },
    --     meltTime = 0.15
    -- },
    -- [4] = {
    --     item = '10kgoldchain',
    --     rewards = {
    --         [1] = {
    --             item = 'diamond',
    --             amount = 5
    --         },
    --         [2] = {
    --             item = 'goldbar',
    --             amount = 1
    --         }
    --     },
    --     meltTime = 0.15
    -- },
}
