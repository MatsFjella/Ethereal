Config = Config or {}

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)

Config.AvailableJobs = { -- Only used when not using qb-jobs.
    ["trucker"] = {["label"] = "Trucker", ["isManaged"] = false},
    ["taxi"] = {["label"] = "Taxi", ["isManaged"] = false},
    ["tow"] = {["label"] = "Tow Truck", ["isManaged"] = false},
    ["reporter"] = {["label"] = "News Reporter", ["isManaged"] = false},
    ["garbage"] = {["label"] = "Garbage Collector", ["isManaged"] = false},
    ["bus"] = {["label"] = "Bus Driver", ["isManaged"] = false},
    ["hotdog"] = {["label"] = "Hot Dog Stand", ["isManaged"] = false}
}

Config.Cityhalls = {
    { -- Cityhall 1
        coords = vector3(316.94, -1639.03, 32.54),
        showBlip = true,
        blipData = {
            sprite = 487,
            display = 4,
            scale = 0.65,
            colour = 0,
            title = "Rådhuset"
        },
        licenses = {
            ["id_card"] = {
                label = "ID Kort",
                cost = 1000,
            },
            -- ["driver_license"] = {
            --     label = "Driver License",
            --     cost = 50,
            --     metadata = "driver"
            -- },
            -- ["weaponlicense"] = {
            --     label = "Weapon License",
            --     cost = 50,
            --     metadata = "weapon"
            -- },
        }
    },
}

Config.DrivingSchools = {
    { -- Driving School 1
        coords = vec3(6214.59, -1830.01, -73.0),
        showBlip = false,
        blipData = {
            sprite = 225,
            display = 4,
            scale = 0.65,
            colour = 3,
            title = "Kjøreskole"
        },
        instructors = {
            "DJD56142",
            "DXT09752",
            "SRI85140",
        }
    },
}

Config.Peds = {
    -- Cityhall Ped
    {
        model = 'a_m_m_prolhost_01',
        coords = vector4(318.07, -1636.82, 31.54, 326.64),
        scenario = 'WORLD_HUMAN_STAND_MOBILE',
        cityhall = true,
        zoneOptions = { -- Used for when UseTarget is false
            length = 3.0,
            width = 3.0,
            debugPoly = false
        }
    },
    -- Driving School Ped
    {
        model = 'a_m_m_eastsa_02',
        coords = vec4(6214.59, -1830.01, -72.0, 0.0),
        scenario = 'WORLD_HUMAN_STAND_MOBILE',
        drivingschool = true,
        zoneOptions = { -- Used for when UseTarget is false
            length = 3.0,
            width = 3.0
        }
    }
}