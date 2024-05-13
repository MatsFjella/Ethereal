Config = {}

Config.Locale = "en"

Config.LoopIdleWait = 1000

Config.OrderTime = 10 -- seconds
Config.TestDriveTime = 60 -- seconds

-- playermoney - Pays through the players bank account
-- society - Pays through the businesses money, requires qb-bossmenur / qb-management
Config.PaymentType = "society"

Config.PayEmployeesPercentage = 0.08

Config.PlateFirstString = 2
Config.PlateLastString = 5
Config.PlateUseSpace = true

Config.TextShowCase = false

-- qb-management or qb-bossmenu
Config.JobScript = "qb-management"

-- Set this to nil if you dont have any other name then qb-management or qb-bossmenu, exports will be the same but using the provided resource name below if not set to nil.
Config.CustomJobScriptName = nil

-- main character identifier
Config.WhitelistedForAdminMenu = {
    "license:8173ea45a4aa2babbbfa80e2be65d0ed84d263b6"
}

-- If set to true it will be possible for employees to give out discounts for cars.
Config.AllowDiscount = false

-- normal -> Will use a normal floating help text etc
-- target -> Will use a target system (make sure Config.TargetScript is valid)
-- proximity -> Will use zerio-proximityprompts
-- custom -> Will open the menu open the client event "zerio-cardealer:client:openMenu" being triggered. The event takes 1 argument, which is the index of the dealership (from Config.Positions)
Config.OpenType = "normal"
Config.TargetScript = "qb-target" -- ox_target, qb-target, qtarget -> ONLY NEEDED IF USING TARGET <-
Config.TargetPed = "a_m_y_business_02" -- Ped used in jobless dealerships -> ONLY NEEDED IF USING TARGET <-

Config.Positions = {
    {
        position = vector4(-920.9, -2032.19, 9.51, 229.52),
        vehiclespawn = vector4(-958.89, -2060.91, 9.51, 132.86),
        duty = vector4(-31.38, -1087.79, 27.27, 177.06),
        job = "cardealer", -- Same as "cardealer" in the database tables.
        label = "Grotti Auto",

        showcase = {
            {
                menu = vector4(-924.79, -2042.99, 9.51, 266.41),
                vehicle = vector4(-922.88, -2045.33, 9.59, 168.98),
            }, {
                menu = vector4(-930.74, -2049.03, 9.51, 254.98),
                vehicle = vector4(-928.64, -2050.63, 9.59, 167.98),
            },
            {
                menu = vector4(-936.7, -2055.02, 9.51, 251.33),
                vehicle = vector4(-934.69, -2056.77, 9.59, 164.59),
            },

            {
                menu = vector4(-942.51, -2060.67, 9.51, 253.38),
                vehicle = vector4(-940.45, -2062.51, 9.59, 168.73),
            },
        },
        

        catalogues = {vector4(-921.58, -2035.13, 9.51, 48.01)},

        testdrive = {
            {
                menu = vector4(-937.45, -2034.71, 9.51, 212.12),
                vehicle = vector4(-958.59, -2060.46, 9.51, 134.08)
            }
        },

        blip = {
            position = vector3(-928.09, -2043.88, 9.51),
            sprite = 326,
            color = 0,
            scale = 1.0,

            disabled = false
        },

        marker = {
            sprite = 27,
            color = {255, 255, 255, 255},
            scale = 0.8,
            offsets = {0.0, 0.0, -0.975},
            rotate = true,

            disabled = false
        },

        dists = {marker = 5.0, helptext = 2.0, usage = 1.25, showcase = 3.0},

        helpTextDisabled = false,

        categories = {
            {name = "sports", label = "Sport", image = "sports.png"},
            {name = "offroad", label = "Offroad", image = "offroad.png"},
            {name = "motorcycles",label = "Motorsykkel",image = "motorcycles.png"},
            {name = "compacts", label = "Kompakt", image = "compacts.png"},
            {name = "coupes", label = "Coupe", image = "compacts.png"},
            {name = "sedans", label = "Sedan", image = "sedan.png"},
            {name = "vans", label = "Varebil", image = "truck.png"},
            {name = "cycles", label = "Sykler", image = "motorcycles.png"},
            {name = "suvs", label = "SUV", image = "suv.png"},
            {name = "muscle", label = "Muskel", image = "suv.png"},
            {name = "super", label = "Super", image = "compacts.png"},
            {name = "sportsclassics", label = "Sport Klassisk", image = "sports.png"},
        }
      },


      -- Politistasjon
      {
        position = vector4(454.01, -988.14, 30.69, 33.58),
        vehiclespawn = vector4(433.17, -981.74, 25.69, 178.16),
        duty = vector4(0, 0, 0, 0),
        job = "police", -- Same as "cardealer" in the database tables.
        label = "Politi",

        showcase = {
            -- {
            --     menu = vector4(-40.7, -1094.76, 27.27, 294.78),
            --     vehicle = vector4(-37.41, -1093.66, 27.3, 61.73),
            -- }, {
            --     menu = vector4(-38.51, -1099.99, 27.27, 125.87),
            --     vehicle = vector4(-41.84, -1101.01, 27.3, 130.57),
            -- },
            -- {
            --     menu = vector4(-46.77, -1095.89, 27.27, 13.02),
            --     vehicle = vector4(-47.65, -1092.55, 27.3, 337.27),
            -- },

            -- {
            --     menu = vector4(-51.34, -1094.8, 27.27, 118.82),
            --     vehicle = vector4(-54.72, -1096.57, 27.3, 213.99),
            -- },

            -- {
            --     menu = vector4(-51.28, -1087.4, 27.27, 338.79),
            --     vehicle = vector4(-49.88, -1083.56, 27.3, 199.59),
            -- },
        },
        

        catalogues = {vector4(455.32, -988.60, 30.69, 180.26)},

        testdrive = {
            {
                menu = vector4(455.43, -986.25, 30.69, 25.53),
                vehicle = vector4(433.17, -981.74, 25.69, 178.16)
            }
        },

        blip = {
            position = vector3(-56.8716, -1098.7214, 26.4223),
            sprite = 326,
            color = 0,
            scale = 1.0,

            disabled = true
        },

        marker = {
            sprite = 27,
            color = {255, 255, 255, 255},
            scale = 0.8,
            offsets = {0.0, 0.0, -0.975},
            rotate = true,

            disabled = false
        },

        dists = {marker = 5.0, helptext = 2.0, usage = 1.25, showcase = 3.0},

        helpTextDisabled = false,

        categories = {
            {name = "politi", label = "Politi", image = "sports.png"},
            {name = "offroad", label = "Offroad", image = "offroad.png"},
            {
                name = "motorcycles",
                label = "Motorcycles",
                image = "motorcycles.png"
            },
            {name = "compacts", label = "Kompakt", image = "compacts.png"},
            {name = "coupes", label = "Coupe", image = "compacts.png"},
            {name = "sedans", label = "Sedan", image = "sedan.png"},
            {name = "vans", label = "Varebil", image = "truck.png"},
            {name = "cycles", label = "Sykler", image = "motorcycles.png"},
            {name = "suvs", label = "SUV", image = "suv.png"},
            {name = "muscle", label = "Muskel", image = "suv.png"},
            {name = "super", label = "Super", image = "compacts.png"},
            {name = "sportsclassics", label = "Sport Klassisk", image = "sports.png"},
            {name = "police", label = "Sport Klassisk", image = "sports.png"},
            {
                name = "motorcycles",
                label = "Motorcycles",
                image = "motorcycles.png"
            },
            {name = "cycles", label = "Sykler", image = "motorcycles.png"},
        }
      }, 


     


    --   {
    --     position = vector4(-735.2, -1344.74, 1.57, 54.36),
    --     vehiclespawn = vector4(-729.67, -1354.83, -0.4, 117.25),
    --     duty = vector4(-754.75, -1369.0, 1.6, 229.26),
    --     job = "boats", -- Same as "cardealer" in the database tables.
    --     label = "Oslo båtbutikk",

    --     showcase = {
    --         {
    --             menu = vector4(-758.19, -1367.46, 1.6, 149.92),
    --             vehicle = vector4(-759.18, -1372.29, 0.86, 228.2),
    --         }, {
    --             menu = vector4(-739.68, -1329.63, 1.6, 241.0),
    --             vehicle = vector4(-732.5, -1334.03, -0.17, 230.37),
    --         },
            
    --     },

    --     catalogues = {vector4(-734.45, -1322.42, 1.60, 346.46)},

    --     testdrive = {
    --         {
    --             menu = vector4(-740.58, -1342.08, 1.57, 340.0),
    --             vehicle = vector4(-723.86, -1348.29, -0.24, 141.27)
    --         }
    --     },

    --     blip = {
    --         position = vector3(-737.4, -1341.64, 1.57),
    --         sprite = 427,
    --         color = 0,
    --         scale = 1.0,

    --         disabled = false
    --     },

    --     marker = {
    --         sprite = 27,
    --         color = {255, 255, 255, 255},
    --         scale = 0.8,
    --         offsets = {0.0, 0.0, -0.975},
    --         rotate = true,

    --         disabled = false
    --     },

    --     dists = {marker = 5.0, helptext = 2.0, usage = 1.25, showcase = 3.0},

    --     helpTextDisabled = false,

    --     categories = {
    --          {name = "boats", label = "Båter", image = "boats.png"}
            
    --     }
    --  },



    --   {
    --     position = vector4(-1257.47, -369.2, 36.91, 40.25),
    --     vehiclespawn = vector4(-1234.07, -345.67, 37.33, 26.79),
    --     duty = vector4(-1247.99, -353.09, 37.33, 104.09),
    --     job = "premium", -- Same as "cardealer" in the database tables.
    --     label = "Premium Deluxe",

    --     showcase = {
    --         {
    --             menu = vector4(-1263.71, -357.68, 36.91, 27.66),
    --             vehicle = vector4(-1265.34, -354.54, 36.91, 205.81),
    --         }, {
    --             menu = vector4(-1266.79, -359.95, 36.91, 63.4),
    --             vehicle = vector4(-1270.06, -358.6, 36.91, 246.95),
    --         },
    --         {
    --             menu = vector4(-1266.23, -363.44, 36.91, 117.52),
    --             vehicle = vector4(-1268.66, -364.67, 36.91, 297.65),
    --         },

    --         -- {
    --         --     menu = vector4(-51.34, -1094.8, 27.27, 118.82),
    --         --     vehicle = vector4(-54.72, -1096.57, 27.3, 213.99),
    --         -- },

    --         -- {
    --         --     menu = vector4(-51.28, -1087.4, 27.27, 338.79),
    --         --     vehicle = vector4(-49.88, -1083.56, 27.3, 199.59),
    --         -- },
    --     },
        

    --     catalogues = {vector4(-1253.96, -349.43, 36.91, 319.11)},

    --     testdrive = {
    --         {
    --             menu = vector4(-1252.73, -347.88, 36.91, 86.99),
    --             vehicle = vector4(-1234.07, -345.67, 37.33, 26.79)
    --         }
    --     },

    --     blip = {
    --         position = vector3(-1260.14, -358.48, 36.91),
    --         sprite = 326,
    --         color = 0,
    --         scale = 1.0,

    --         disabled = false
    --     },

    --     marker = {
    --         sprite = 27,
    --         color = {255, 255, 255, 255},
    --         scale = 0.8,
    --         offsets = {0.0, 0.0, -0.975},
    --         rotate = true,

    --         disabled = false
    --     },

    --     dists = {marker = 5.0, helptext = 2.0, usage = 1.25, showcase = 3.0},

    --     helpTextDisabled = false,

    --     categories = {
    --         {name = "sports", label = "Sport", image = "sports.png"},
    --         {name = "offroad", label = "Offroad", image = "offroad.png"},
    --         {
    --             name = "motorcycles",
    --             label = "Motorcycles",
    --             image = "motorcycles.png"
    --         },
    --         {name = "compacts", label = "Kompakt", image = "compacts.png"},
    --         {name = "coupes", label = "Coupe", image = "compacts.png"},
    --         {name = "sedans", label = "Sedan", image = "sedan.png"},
    --         {name = "vans", label = "Varebil", image = "truck.png"},
    --         {name = "cycles", label = "Sykler", image = "motorcycles.png"},
    --         {name = "suvs", label = "SUV", image = "suv.png"},
    --         {name = "muscle", label = "Muskel", image = "suv.png"},
    --         {name = "super", label = "Super", image = "compacts.png"},
    --         {name = "sportsclassics", label = "Sport Klassisk", image = "sports.png"},
    --     }
    --   }, 

    -- {
    --     position = vector4(-233.97, 6217.75, 31.94, 123.84),
    --     vehiclespawn = vector4(-248.99, 6226.69, 31.46, 132.71),
    --     duty = vector4(-226.3, 6224.6, 31.94, 303.6),
    --     job = "vrrroom", -- Same as "cardealer" in the database tables.
    --     label = "Vrrroom",

    --     showcase = {
    --         {
    --             menu = vector4(-242.0, 6214.04, 31.94, 211.33),
    --             vehicle = vector4(-241.76, 6210.77, 32.06, 222.89),
    --         }, {
    --             menu = vector4(-237.46, 6209.34, 31.94, 228.18),
    --             vehicle = vector4(-236.35, 6205.21, 32.06, 224.52),
    --         },
    --         {
    --             menu = vector4(-227.6, 6182.14, 31.92, 241.75),
    --             vehicle = vector4(-225.28, 6180.22, 32.4, 178.91),
    --         },

    --         {
    --             menu = vector4(-222.64, 6184.19, 31.92, 303.57),
    --             vehicle = vector4(-220.75, 6182.73, 32.57, 324.1),
    --         },

    --         {
    --             menu = vector4(-216.5, 6191.75, 31.93, 182.51),
    --             vehicle = vector4(-216.78, 6189.01, 32.38, 172.56),
    --         },

    --         {
    --             menu = vector4(-211.35, 6197.27, 31.92, 213.12),
    --             vehicle = vector4(-211.15, 6194.58, 32.35, 173.38),
    --         },

    --         {
    --             menu = vector4(-208.29, 6198.27, 31.93, 35.4),
    --             vehicle = vector4(-206.59, 6197.05, 32.51, 318.16),
    --         },

    --         {
    --             menu = vector4(-206.34, 6201.64, 31.92, 299.66),
    --             vehicle = vector4(-203.52, 6202.83, 32.41, 285.53),
    --         },
    --     },
        

    --     catalogues = {vector4(-235.64, 6215.89, 31.94, 336.88)},

    --     testdrive = {
    --         {
    --             menu = vector4(-211.65, 6224.8, 31.94, 149.24),
    --             vehicle = vector4(-248.99, 6226.69, 31.46, 132.71)
    --         }
    --     },

    --     blip = {
    --         position = vector3(-223.69, 6221.32, 31.94),
    --         sprite = 326,
    --         color = 0,
    --         scale = 1.0,

    --         disabled = false
    --     },

    --     marker = {
    --         sprite = 27,
    --         color = {255, 255, 255, 255},
    --         scale = 0.8,
    --         offsets = {0.0, 0.0, -0.975},
    --         rotate = true,

    --         disabled = false
    --     },

    --     dists = {marker = 5.0, helptext = 2.0, usage = 1.25, showcase = 3.0},

    --     helpTextDisabled = false,

    --     categories = {
    --         -- {name = "sports", label = "Sport", image = "sports.png"},
    --         -- {name = "offroad", label = "Offroad", image = "offroad.png"},
    --         {
    --             name = "motorcycles",
    --             label = "Motorcycles",
    --             image = "motorcycles.png"
    --         },
    --         -- {name = "compacts", label = "Kompakt", image = "compacts.png"},
    --         -- {name = "coupes", label = "Coupe", image = "compacts.png"},
    --         -- {name = "sedans", label = "Sedan", image = "sedan.png"},
    --         -- {name = "vans", label = "Varebil", image = "truck.png"},
    --         {name = "cycles", label = "Sykler", image = "motorcycles.png"},
    --         -- {name = "suvs", label = "SUV", image = "suv.png"},
    --         -- {name = "muscle", label = "Muskel", image = "suv.png"},
    --         -- {name = "super", label = "Super", image = "compacts.png"},
    --         -- {name = "sportsclassics", label = "Sport Klassisk", image = "sports.png"},
    --     }
    --   }, 
      
    --   {
    --     position = vector4(-735.2, -1344.74, 1.57, 54.36),
    --     vehiclespawn = vector4(-729.67, -1354.83, -0.4, 117.25),
    --     duty = vector4(-754.75, -1369.0, 1.6, 229.26),
    --     job = "boats", -- Same as "cardealer" in the database tables.
    --     label = "Oslo båtbutikk",

    --     showcase = {
    --         {
    --             menu = vector4(-758.19, -1367.46, 1.6, 149.92),
    --             vehicle = vector4(-759.18, -1372.29, 0.86, 228.2),
    --         }, {
    --             menu = vector4(-739.68, -1329.63, 1.6, 241.0),
    --             vehicle = vector4(-732.5, -1334.03, -0.17, 230.37),
    --         },
            
    --     },

    --     testdrive = {
    --         {
    --             menu = vector4(-740.58, -1342.08, 1.57, 340.0),
    --             vehicle = vector4(-723.86, -1348.29, -0.24, 141.27)
    --         }
    --     },

    --     blip = {
    --         position = vector3(-737.4, -1341.64, 1.57),
    --         sprite = 427,
    --         color = 0,
    --         scale = 1.0,

    --         disabled = false
    --     },

    --     marker = {
    --         sprite = 27,
    --         color = {255, 255, 255, 255},
    --         scale = 0.8,
    --         offsets = {0.0, 0.0, -0.975},
    --         rotate = true,

    --         disabled = false
    --     },

    --     dists = {marker = 5.0, helptext = 2.0, usage = 1.25, showcase = 3.0},

    --     helpTextDisabled = false,

    --     categories = {
    --          {name = "boat", label = "Båter", image = "boats.png"}
            
    --     }
    --  }, {
    --     position = vector4(-920.7, -2956.39, 19.87, 34.72),
    --     vehiclespawn = vector4(-986.5, -3002.17, 13.95, 57.46),
    --     duty = vector4(-916.35, -2955.04, 19.87, 284.68),
    --     job = "planes", -- Same as "cardealer" in the database tables.
    --     label = "Widerøe",

    --     showcase = {
    --         {
    --             menu = vector4(-919.34, -2953.46, 19.87, 56.37),
    --             vehicle = vector4(-951.88, -2989.05, 13.95, 86.32),
    --         }, {
    --             menu = vector4(-918.27, -2951.73, 19.87, 64.74),
    --             vehicle = vector4(-969.3, -3015.76, 13.95, 58.11),
    --         },
            
    --     },

    --     testdrive = {
    --         {
    --             menu = vector4(-912.46, -2967.61, 19.87, 25.31),
    --             vehicle = vector4(-986.5, -3002.17, 13.95, 57.46)
    --         }
    --     },

    --     blip = {
    --         position = vector(-986.5, -3002.17, 13.95),
    --         sprite = 423,
    --         color = 0,
    --         scale = 1.0,

    --         disabled = false
    --     },

    --     marker = {
    --         sprite = 27,
    --         color = {255, 255, 255, 255},
    --         scale = 0.8,
    --         offsets = {0.0, 0.0, -0.975},
    --         rotate = true,

    --         disabled = false
    --     },

    --     dists = {marker = 5.0, helptext = 2.0, usage = 1.25, showcase = 3.0},

    --     helpTextDisabled = false,

    --     categories = {
    --         {name = "planes", label = "Fly og heli", image = "plane.png"},

    --         {name = "helicopters", label = "Helikopter", image = "helicopter.png"},
            
    --     }
    -- },
}


Config.Events = {
    PlayerLoaded = "QBCore:Client:OnPlayerLoaded",
    JobChange = "QBCore:Client:OnJobUpdate",
    DutyChange = "QBCore:Player:SetPlayerData",
    Notify = "QBCore:Notify"
}
