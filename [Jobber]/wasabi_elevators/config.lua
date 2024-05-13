-----------------For support, scripts, and more----------------
--------------- https://discord.gg/wasabiscripts  -------------
---------------------------------------------------------------

Config = {}

Config.checkForUpdates = true -- Check for Updates?

Config.Elevators = {
    Sykehuset = { -- Elevator name(Doesn't show it's just to name table)
        [1] = {
            coords = vec3(-2779.24, -70.68, 18.61), -- Coords, if you're new; last number is heading
            heading = 28.74, -- Heading of how will spawn on floor
            title = '1 etasje', -- Title 
            description = 'Hovedetasjen', -- Description
            target = { -- Target length/width
                width = 5,
                length = 4
            },
        },
      
        [2] = {
            coords = vec3(-2795.67, -62.73, 31.38), -- Coords, if you're new; last number is heading
            heading = 28.74,
            title = '2 etasje',
            description = 'Behandling',
            target = {
            width = 5,
            length = 4
            } -- Example without group
        },

        [3] = {
            coords = vec3(-2794.55, -52.72, 54.82), -- Coords, if you're new; last number is heading
            heading = 28.74, -- Heading of how will spawn on floor
            title = '3 etasje', -- Title 
            description = 'Taket', -- Description
            target = { -- Target length/width
                width = 5,
                length = 4
            },
    },
},

   

   
     Sykehusetnr2 = { -- Elevator name(Doesn't show it's just to name table)
        [1] = {
            coords = vec3(-2788.85, -64.04, 18.61), -- Coords, if you're new; last number is heading
            heading = 28.74, -- Heading of how will spawn on floor
            title = '1 etasje', -- Title 
            description = 'Hovedetasjen', -- Description
            target = { -- Target length/width
                width = 5,
                length = 4
            },
            -- groups = {-- Job locks
            --     'police',
            --     'ambulance'
            },
 
        [2] = {
            coords = vec3(-2801.24, -58.74, 31.38), -- Coords, if you're new; last number is heading
            heading = 28.74,
            title = '2 etasje',
            description = 'Behandling',
            target = {
            width = 5,
            length = 4
            } -- Example without group
        },

        [3] = {
            coords = vec3(-2790.18, -55.82, 54.82), -- Coords, if you're new; last number is heading
            heading = 28.74, -- Heading of how will spawn on floor
            title = '3 etasje', -- Title 
            description = 'Taket', -- Description
            target = { -- Target length/width
                width = 5,
                length = 4
            },
        },

    },



    Krimsykehus = { -- Elevator name(Doesn't show it's just to name table)
        [1] = {
            coords = vec3(1014.09, -2533.69, 2.83), -- Coords, if you're new; last number is heading
            heading = 28.74, -- Heading of how will spawn on floor
            title = 'Sykestue', -- Title 
            description = ' ', -- Description
            target = { -- Target length/width
                width = 5,
                length = 4
            },
            -- groups = {-- Job locks
            --     'police',
            --     'ambulance'
            },
        
        [2] = {
            coords = vec3(1017.67, -2529.20, 28.30), -- Coords, if you're new; last number is heading
            heading = 28.74,
            title = 'Ute',
            description = ' ',
            target = {
            width = 5,
            length = 4
            } -- Example without group
    },
},

}


