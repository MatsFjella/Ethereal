-- Zones for Menues
Config = Config or {}

Config.UseTarget = GetConvar('UseTarget', 'false') == 'false' -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)

Config.BossMenus = {
    ['police'] = {
        vector3(451.43, -981.82, 30.69),
    },
    ['ambulance'] = {
        vector3(349.96, -1429.31, 32.43),
    },
    ['realestate'] = {
        vector3(-716.11, 261.21, 84.14),
    },
    ['cardealer'] = {
        vector3(-931.28, -2031.29, 9.51),
    },
    ['mechanic'] = {
        vector3(961.11, -1035.96, 46.24),
    },

    ['lawyer'] = {
        vector3(-211.51, -774.64, 34.09),
    },

    ['bcso'] = {
        vector3(451.72, -976.16, 39.49),
    },

    ['tequilala'] = {
        vector3(-561.93, 289.84, 82.18),
    },

    ['tow'] = {
        vector3(1558.34, 3518.2, 36.12),
    },

    ['burgershot'] = {
        vector3(-504.61, -701.02, 33.67),
    },
    
    
}

Config.BossMenuZones = {
    ['police'] = {
        { coords = vector3(452.37, -999.10, 35.09), length = 0.35, width = 0.45, heading = 351.0, minZ = 30.58, maxZ = 30.68 } ,
    },
    ['bcso'] = {
        { coords = vector3(1837.78, 3675.99, 34.33), length = 0.35, width = 0.45, heading = 351.0, minZ = 30.58, maxZ = 30.68 } ,
    },
    ['ambulance'] = {
        { coords = vector3(335.46, -594.52, 43.28), length = 1.2, width = 0.6, heading = 341.0, minZ = 43.13, maxZ = 43.73 },
    },
    ['realestate'] = {
        { coords = vector3(-716.11, 261.21, 84.14), length = 0.6, width = 1.0, heading = 25.0, minZ = 83.943, maxZ = 84.74 },
    },
    ['taxi'] = {
        { coords = vector3(907.24, -150.19, 74.17), length = 1.0, width = 3.4, heading = 327.0, minZ = 73.17, maxZ = 74.57 },
    },
    ['cardealer'] = {
        { coords = vector3(-25.61, -1104.63, 27.27), length = 2.4, width = 1.05, heading = 340.0, minZ = 27.07, maxZ = 27.67 },
    },
    ['mechanic'] = {
        { coords = vector3(-351.91, -128.86, 43.14), length = 1.15, width = 2.6, heading = 353.0, minZ = 43.59, maxZ = 44.99 },
    },

    ['catcafe'] = {
        { coords = vector3(-596.91, -1053.4, 22.34), length = 1.15, width = 2.6, heading = 353.0, minZ = 43.59, maxZ = 44.99 },
    },

    ['bahamas'] = {
        { coords = vector3(-1370.41, -626.93, 30.36), length = 1.15, width = 2.6, heading = 353.0, minZ = 43.59, maxZ = 44.99 },
    },

    ['lawyer'] = {
        { coords = vector3(-211.51, -774.64, 34.09), length = 1.15, width = 2.6, heading = 353.0, minZ = 43.59, maxZ = 44.99 },
    },

    ['sparebank'] = {
        { coords = vector3(253.82, 207.66, 106.29), length = 1.15, width = 2.6, heading = 353.0, minZ = 43.59, maxZ = 44.99 },
    },

    ['taxi'] = {
        { coords = vector3(725.79, -1070.41, 28.31), length = 1.15, width = 2.6, heading = 353.0, minZ = 43.59, maxZ = 44.99 },
    },

    ['bruktbil'] = {
        { coords = vector3(124.74, -3007.82, 7.04), length = 1.15, width = 2.6, heading = 353.0, minZ = 43.59, maxZ = 44.99 },
    },

    ['boats'] = {
        { coords = vector3(-733.6, -1342.85, 1.57), length = 1.15, width = 2.6, heading = 353.0, minZ = 43.59, maxZ = 44.99 },
    },

    ['planes'] = {
        { coords = vector3(-910.45, -2965.81, 19.87), length = 1.15, width = 2.6, heading = 353.0, minZ = 43.59, maxZ = 44.99 },
    },
}

Config.GangMenus = {
    ['lostmc'] = {
        vector3(0, 0, 0),
    },
    
   
    
    ['wenners'] = {
        vector3(-569.00, 227.61, 74.89),
    },

   
    ['vagos'] = {
        vector3(0, 0, 0),
    },
    
    ['cartel'] = {
        vector3(0, 0, 0),
    },
    ['families'] = {
        vector3(0, 0, 0),
    },

    ['lostmc'] = {
        vector3(101.1, 3613.89, 40.91),
    },


    ['aod'] = {
        vector3(-1145.01, -1550.55, 7.99),
    },

    ['lost'] = {
        vector3(1985.31, 3054.94, 50.51),
    },


    ['diazcartel'] = {
        vector3(-172.76, 935.38, 219.68),
    },

  

    ['nightshifters'] = {
        vector3(-605.53, 312.65, 78.19),
    },

 

  

    ['ghost'] = {
        vector3(1391.93, 1146.42, 117.54),
    },

    ['madrazo'] = {
        vector3(-1564.67, 21.31, 59.59),
    },
    
    ['blackstallion'] = {
        vector3(-325.50, -2440.20, 2.69),
    },

    ['bolero'] = {
        vector3(-1592.14, -20.46, 57.59),
    },

    ['bm'] = {
        vector3(111.73, 7123.04, 2.28),
    },

    ['clique'] = {
        vector3(-1036.61, 228.98, 55.89),
    },

}

Config.GangMenuZones = {
    --[[
    ['gangname'] = {
        { coords = vector3(0.0, 0.0, 0.0), length = 0.0, width = 0.0, heading = 0.0, minZ = 0.0, maxZ = 0.0 },
    },
    ]]
}
