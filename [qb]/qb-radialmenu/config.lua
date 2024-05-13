Config = {}
Config.Keybind = 'F1' -- FiveM Keyboard, this is registered keymapping, so needs changed in keybindings if player already has this mapped.
Config.Toggle = true -- use toggle mode. False requires hold of key
Config.UseWhilstWalking = true -- use whilst walking
Config.EnableExtraMenu = true
Config.Fliptime = 15000

Config.MenuItems = {

    -- {
    --     id = 'openmenu',
    --     title = 'Åpne bil meny',
    --     icon = 'car',
    --     type = 'client',
    --     event = 'vehcontrol:openExternal',
    --     shouldClose = true
    --  },
    [1] = {
        id = 'citizen',
        title = 'Person',
        icon = 'user',
        items = {
            {
                id = 'givenum',
                title = 'Gi kontaktdetaljer',
                icon = 'address-book',
                type = 'client',
                event = 'qb-phone:client:GiveContactDetails',
                shouldClose = true
            }, {
                id = 'getintrunk',
                title = 'Gå inn i bagasjerom',
                icon = 'car',
                type = 'client',
                event = 'qb-trunk:client:GetIn',
                shouldClose = true
            },
             {
                id = 'cornerselling',
                title = 'Selg',
                icon = 'cannabis',
                type = 'client',
                event = 'FOP-SellDrugs:client:StartSelling',
                shouldClose = true
            },
             {
                id = 'togglehotdogsell',
                title = 'Selg pølser',
                icon = 'hotdog',
                type = 'client',
                event = 'qb-hotdogjob:client:ToggleSell',
                shouldClose = true
            }, {
                id = 'interactions',
                title = 'Interaksjoner',
                icon = 'triangle-exclamation',
                items = {
                    {
                        id = 'handcuff',
                        title = 'Håndjern',
                        icon = 'user-lock',
                        type = 'client',
                        event = 'police:client:CuffPlayerSoft',
                        shouldClose = true
                    }, {
                        id = 'playerinvehicle',
                        title = 'Putt i kjøretøy',
                        icon = 'car-side',
                        type = 'client',
                        event = 'police:client:PutPlayerInVehicle',
                        shouldClose = true
                    }, {
                        id = 'playeroutvehicle',
                        title = 'Ta ut av kjøretøy',
                        icon = 'car-side',
                        type = 'client',
                        event = 'police:client:SetPlayerOutVehicle',
                        shouldClose = true
                    }, {
                        id = 'stealplayer',
                        title = 'Ran',
                        icon = 'mask',
                        type = 'client',
                        event = 'police:client:RobPlayer',
                        shouldClose = true
                    }, {
                        id = 'escort',
                        title = 'Kidnapp',
                        icon = 'user-group',
                        type = 'client',
                        event = 'police:client:KidnapPlayer',
                        shouldClose = true
                    }, {
                        id = 'escort2',
                        title = 'Eskorter',
                        icon = 'user-group',
                        type = 'client',
                        event = 'police:client:EscortPlayer',
                        shouldClose = true
                    }, {
                        id = 'escort554',
                        title = 'Gissel',
                        icon = 'child',
                        type = 'client',
                        event = 'A5:Client:TakeHostage',
                        shouldClose = true
                    },
                }
            }
        }
    },
    -- [2] = {
    --     id = 'general',
    --     title = 'Generelt',
    --     icon = 'rectangle-list',
    --     items = {
    --         -- {
    --         --     id = 'house',
    --         --     title = 'Hus interaksjoner',
    --         --     icon = 'house',
    --         --     items = {
    --         --         {
    --         --             id = 'givehousekey',
    --         --             title = 'Gi hus nøkkler',
    --         --             icon = 'key',
    --         --             type = 'client',
    --         --             event = 'qb-houses:client:giveHouseKey',
    --         --             shouldClose = true
    --         --         }, {
    --         --             id = 'removehousekey',
    --         --             title = 'Fjern hus nøkkler',
    --         --             icon = 'key',
    --         --             type = 'client',
    --         --             event = 'qb-houses:client:removeHouseKey',
    --         --             shouldClose = true
    --         --         }, {
    --         --             id = 'togglelock',
    --         --             title = 'Dørlås',
    --         --             icon = 'door-closed',
    --         --             type = 'client',
    --         --             event = 'qb-houses:client:toggleDoorlock',
    --         --             shouldClose = true
    --         --         }, {
    --         --             id = 'decoratehouse',
    --         --             title = 'Dekorer hus',
    --         --             icon = 'box',
    --         --             type = 'client',
    --         --             event = 'qb-houses:client:decorate',
    --         --             shouldClose = true
    --         --         }, {
    --         --             id = 'houseLocations',
    --         --             title = 'Lokasjoner',
    --         --             icon = 'house',
    --         --             items = {
    --         --                 {
    --         --                     id = 'setstash',
    --         --                     title = 'Plasser stash',
    --         --                     icon = 'box-open',
    --         --                     type = 'client',
    --         --                     event = 'qb-houses:client:setLocation',
    --         --                     shouldClose = true
    --         --                 }, {
    --         --                     id = 'setoutift',
    --         --                     title = 'Plasser garderobe',
    --         --                     icon = 'shirt',
    --         --                     type = 'client',
    --         --                     event = 'qb-houses:client:setLocation',
    --         --                     shouldClose = true
    --         --                 }, {
    --         --                     id = 'setlogout',
    --         --                     title = 'Plasser utlogging',
    --         --                     icon = 'door-open',
    --         --                     type = 'client',
    --         --                     event = 'qb-houses:client:setLocation',
    --         --                     shouldClose = true
    --         --                 }
    --         --             }
    --         --         }
    --         --     }
    --         -- }, 
    --     }
    -- },

--     [4] = {
--         id = 'tibasclothesmenu',
--         title = 'Klær',
--         icon = 'shirt',
--         items = {
--             {
--                id = 'Shirt',
--                title = 'Skjorte',
--                icon = 'shirt',
--                type = 'client',
--                event = 'TIBAS-clothing-system:TibasClothing',
--                shouldClose = true
--            }, {
--                id = 'Pants',
--                title = 'Bukse',
--                icon = 'user',
--                type = 'client',
--                event = 'TIBAS-clothing-system:TibasClothing',
--                shouldClose = true
--            }, {
--                id = 'Shoes',
--                title = 'Sko',
--                icon = 'shoe-prints',
--                type = 'client',
--                event = 'TIBAS-clothing-system:TibasClothing',
--                shouldClose = true
--            },{
--                id = 'Vest',
--                title = 'Vest',
--                icon = 'vest',
--                type = 'client',
--                event = 'TIBAS-clothing-system:TibasClothing',
--                shouldClose = true
--            }, {
--                 id = 'meer',
--                 title = 'Ekstra',
--                 icon = 'plus',
--                 items = {
--                     {
--                         id = 'Hat',
--                         title = 'Hatt',
--                         icon = 'hat-cowboy-side',
--                         type = 'client',
--                         event = 'TIBAS-clothing-system:TibasProps',
--                         shouldClose = true
--                     }, {
--                         id = 'Glasses',
--                         title = 'Briller',
--                         icon = 'glasses',
--                         type = 'client',
--                         event = 'TIBAS-clothing-system:TibasProps',
--                         shouldClose = true
--                     },  {
--                         id = 'Mask',
--                         title = 'Maske',
--                         icon = 'masks-theater',
--                         type = 'client',
--                         event = 'TIBAS-clothing-system:TibasClothing',
--                         shouldClose = true
--                     },  {
--                         id = 'Bag',
--                         title = 'Bagg',
--                         icon = 'bag-shopping',
--                         type = 'client',
--                         event = 'TIBAS-clothing-system:TibasClothing',
--                         shouldClose = true
--                     },{
--                         id = 'Bagoff',
--                         title = 'Bagg av',
--                         icon = 'bag-shopping',
--                         type = 'client',
--                         event = 'TIBAS-clothing-system:TibasClothing',
--                         shouldClose = true
--                     },  {
--                         id = 'Bracelet',
--                         title = 'Armbånd',
--                         icon = 'user',
--                         type = 'client',
--                         event = 'TIBAS-clothing-system:TibasProps',
--                         shouldClose = true
--                     }, {
--                         id = 'Watch',
--                         title = 'Klokke',
--                         icon = 'stopwatch',
--                         type = 'client',
--                         event = 'TIBAS-clothing-system:TibasProps',
--                         shouldClose = true
--                     },{
--                         id = 'Ear',
--                         title = 'Øre tilbehør',
--                         icon = 'ear-deaf',
--                         type = 'client',
--                         event = 'TIBAS-clothing-system:TibasProps',
--                         shouldClose = true
--                     }, {
--                         id = 'Neck',
--                         title = 'Hals tilbehør',
--                         icon = 'user-tie',
--                         type = 'client',
--                         event = 'TIBAS-clothing-system:TibasClothing',
--                         shouldClose = true
--                     }
--                 }
--             }
--         }
--     },
 }

Config.VehicleDoors = {
    id = 'vehicledoors',
    title = 'Dører',
    icon = 'car-side',
    items = {
        {
            id = 'door0',
            title = 'Sjoførdør',
            icon = 'car-side',
            type = 'client',
            event = 'qb-radialmenu:client:openDoor',
            shouldClose = false
        }, {
            id = 'door4',
            title = 'Panser',
            icon = 'car',
            type = 'client',
            event = 'qb-radialmenu:client:openDoor',
            shouldClose = false
        }, {
            id = 'door1',
            title = 'Passasjer dør',
            icon = 'car-side',
            type = 'client',
            event = 'qb-radialmenu:client:openDoor',
            shouldClose = false
        }, {
            id = 'door3',
            title = 'Bak høyre',
            icon = 'car-side',
            type = 'client',
            event = 'qb-radialmenu:client:openDoor',
            shouldClose = false
        }, {
            id = 'door5',
            title = 'Bagasjerom',
            icon = 'car',
            type = 'client',
            event = 'qb-radialmenu:client:openDoor',
            shouldClose = false
        }, {
            id = 'door2',
            title = 'Bak venstre',
            icon = 'car-side',
            type = 'client',
            event = 'qb-radialmenu:client:openDoor',
            shouldClose = false
        }
    }
}

Config.VehicleExtras = {
    id = 'vehicleextras',
    title = 'Bil ekstra',
    icon = 'plus',
    items = {
        {
            id = 'extra1',
            title = 'Ekstra 1',
            icon = 'box-open',
            type = 'client',
            event = 'qb-radialmenu:client:setExtra',
            shouldClose = false
        }, {
            id = 'extra2',
            title = 'Ekstra 2',
            icon = 'box-open',
            type = 'client',
            event = 'qb-radialmenu:client:setExtra',
            shouldClose = false
        }, {
            id = 'extra3',
            title = 'Ekstra 3',
            icon = 'box-open',
            type = 'client',
            event = 'qb-radialmenu:client:setExtra',
            shouldClose = false
        }, {
            id = 'extra4',
            title = 'Ekstra 4',
            icon = 'box-open',
            type = 'client',
            event = 'qb-radialmenu:client:setExtra',
            shouldClose = false
        }, {
            id = 'extra5',
            title = 'Ekstra 5',
            icon = 'box-open',
            type = 'client',
            event = 'qb-radialmenu:client:setExtra',
            shouldClose = false
        }, {
            id = 'extra6',
            title = 'Ekstra 6',
            icon = 'box-open',
            type = 'client',
            event = 'qb-radialmenu:client:setExtra',
            shouldClose = false
        }, {
            id = 'extra7',
            title = 'Ekstra 7',
            icon = 'box-open',
            type = 'client',
            event = 'qb-radialmenu:client:setExtra',
            shouldClose = false
        }, {
            id = 'extra8',
            title = 'Ekstra 8',
            icon = 'box-open',
            type = 'client',
            event = 'qb-radialmenu:client:setExtra',
            shouldClose = false
        }, {
            id = 'extra9',
            title = 'Ekstra 9',
            icon = 'box-open',
            type = 'client',
            event = 'qb-radialmenu:client:setExtra',
            shouldClose = false
        }, {
            id = 'extra10',
            title = 'Ekstra 10',
            icon = 'box-open',
            type = 'client',
            event = 'qb-radialmenu:client:setExtra',
            shouldClose = false
        }, {
            id = 'extra11',
            title = 'Ekstra 11',
            icon = 'box-open',
            type = 'client',
            event = 'qb-radialmenu:client:setExtra',
            shouldClose = false
        }, {
            id = 'extra12',
            title = 'Ekstra 12',
            icon = 'box-open',
            type = 'client',
            event = 'qb-radialmenu:client:setExtra',
            shouldClose = false
        }, {
            id = 'extra13',
            title = 'Ekstra 13',
            icon = 'box-open',
            type = 'client',
            event = 'qb-radialmenu:client:setExtra',
            shouldClose = false
        }
    }
}

Config.VehicleSeats = {
    id = 'vehicleseats',
    title = 'Kjøretøy seter',
    icon = 'chair',
    items = {}
}

Config.JobInteractions = {

    ["drivingteacher"] = {
        {
            id = 'playerlicinceoptions2',
            title = 'Lisenser',
            icon = 'plus',
            items = {
                {
                    id = 'givelicince1',
                    title = 'Gi',
                    icon = 'plus',
                    type = 'client',
                    event = 'mh-drivingteacherjob:client:giveLicinceMenu',
                    shouldClose = true
                },
            }
        },
        {
            id = 'instructorobjects',
            title = 'Objekter',
            icon = 'road',
            items = {
                {
                    id = 'deleteobject1',
                    title = 'Fjern objekt',
                    icon = 'trash',
                    type = 'client',
                    event = 'police:client:deleteObject',
                    shouldClose = false
                }, {
                    id = 'spawnhek1',
                    title = 'Port',
                    icon = 'torii-gate',
                    type = 'client',
                    event = 'police:client:spawnBarrier',
                    shouldClose = false
                }, {
                    id = 'spawnpion1',
                    title = 'Kjegle',
                    icon = 'triangle-exclamation',
                    type = 'client',
                    event = 'police:client:spawnCone',
                    shouldClose = false
                }, {
                    id = 'spawntent1',
                    title = 'Telt',
                    icon = 'campground',
                    type = 'client',
                    event = 'police:client:spawnTent',
                    shouldClose = false
                }, {
                    id = 'spawnverlichting1',
                    title = 'Lys',
                    icon = 'lightbulb',
                    type = 'client',
                    event = 'police:client:spawnLight',
                    shouldClose = false
                },
            }
        },
    },

    
    ["ambulance"] = {
        {
            id = 'statuscheck',
            title = 'Sjekk helsestatus',
            icon = 'heart-pulse',
            type = 'client',
            event = 'hospital:client:CheckStatus',
            shouldClose = true
        },{
            id = 'revivep',
            title = 'Gjenoppliv',
            icon = 'user-doctor',
            type = 'client',
            event = 'hospital:client:RevivePlayer',
            shouldClose = true
        },{
            id = 'treatwounds',
            title = 'Helbred person',
            icon = 'bandage',
            type = 'client',
            event = 'hospital:client:TreatWounds',
            shouldClose = true
        }, 
        
        {
            id = 'setbedp',
            title = 'Send i seng',
            icon = 'bed',
            type = 'client',
            event = 'hospital:client:SetBedPlayer',
            shouldClose = true
        },{
            id = 'escort',
            title = 'Eskorter',
            icon = 'user-group',
            type = 'client',
            event = 'police:client:EscortPlayer',
            shouldClose = true
        }, {
            id = 'stretcheroptions',
            title = 'Båre',
            icon = 'bed-pulse',
            items = {
                {
                    id = 'spawnstretcher',
                    title = 'Spawn båre',
                    icon = 'plus',
                    type = 'client',
                    event = 'qb-radialmenu:client:TakeStretcher',
                    shouldClose = false
                }, {
                    id = 'despawnstretcher',
                    title = 'Fjern båre',
                    icon = 'minus',
                    type = 'client',
                    event = 'qb-radialmenu:client:RemoveStretcher',
                    shouldClose = false
                }
            }
        }
    },
    ["taxi"] = {
        {
            id = 'togglemeter',
            title = 'Vis/gjem taximeter',
            icon = 'eye-slash',
            type = 'client',
            event = 'qb-taxi:client:toggleMeter',
            shouldClose = false
        }, {
            id = 'togglemouse',
            title = 'Start/stopp taximeter',
            icon = 'hourglass-start',
            type = 'client',
            event = 'qb-taxi:client:enableMeter',
            shouldClose = true
        }, {
            id = 'npc_mission',
            title = 'NPC oppdrag',
            icon = 'taxi',
            type = 'client',
            event = 'qb-taxi:client:DoTaxiNpc',
            shouldClose = true
        }
    },
    ["tow"] = {
        {
            id = 'togglenpc',
            title = 'NPC',
            icon = 'toggle-on',
            type = 'client',
            event = 'jobs:client:ToggleNpc',
            shouldClose = true
        }, {
            id = 'towvehicle',
            title = 'Tau kjøretøy',
            icon = 'truck-pickup',
            type = 'client',
            event = 'qb-tow:client:TowVehicle',
            shouldClose = true
        }
    },
    ["mechanic"] = {
        {
            id = 'towvehicle',
            title = 'Taubil',
            icon = 'truck-pickup',
            type = 'client',
            event = 'qb-tow:client:TowVehicle',
            shouldClose = true
        }
    },
    ["police"] = {
        {
            id = 'emergencybutton',
            title = 'Nødknapp',
            icon = 'bell',
            type = 'client',
            event = 'ps-dispatch:client:officerdown',
            shouldClose = true
        }, {
            id = 'checkvehstatus',
            title = 'Sjekk tuning',
            icon = 'circle-info',
            type = 'client',
            event = 'qb-tunerchip:client:TuneStatus',
            shouldClose = true
        }, {
            id = 'resethouse',
            title = 'Nullstill huslås',
            icon = 'key',
            type = 'client',
            event = 'qb-houses:client:ResetHouse',
            shouldClose = true
        }, {
            id = 'takedriverlicense',
            title = 'Ta førerkort',
            icon = 'id-card',
            type = 'client',
            event = 'police:client:SeizeDriverLicense',
            shouldClose = true
        }, {
            id = 'policeinteraction',
            title = 'Politivalg',
            icon = 'list-check',
            items = {
                {
                    id = 'statuscheck',
                    title = 'Sjekk helsestatus',
                    icon = 'heart-pulse',
                    type = 'client',
                    event = 'hospital:client:CheckStatus',
                    shouldClose = true
                }, {
                    id = 'checkstatus',
                    title = 'Sjekk status',
                    icon = 'question',
                    type = 'client',
                    event = 'police:client:CheckStatus',
                    shouldClose = true
                }, {
                    id = 'escort',
                    title = 'Eskorter',
                    icon = 'user-group',
                    type = 'client',
                    event = 'police:client:EscortPlayer',
                    shouldClose = true
                }, {
                    id = 'searchplayer',
                    title = 'Søk',
                    icon = 'magnifying-glass',
                    type = 'client',
                    event = 'police:client:SearchPlayer',
                    shouldClose = true
                }, {
                    id = 'jailplayer',
                    title = 'Fengsle',
                    icon = 'user-lock',
                    type = 'client',
                    event = 'police:client:JailPlayer',
                    shouldClose = true
                }
            }
        }, {
            id = 'policeobjects',
            title = 'Objekter',
            icon = 'road',
            items = {
                {
                    id = 'spawnpion',
                    title = 'Kjegle',
                    icon = 'triangle-exclamation',
                    type = 'client',
                    event = 'police:client:spawnCone',
                    shouldClose = false
                }, {
                    id = 'spawnhek',
                    title = 'Port',
                    icon = 'torii-gate',
                    type = 'client',
                    event = 'police:client:spawnBarrier',
                    shouldClose = false
                }, {
                    id = 'spawnschotten',
                    title = 'Fartskilt',
                    icon = 'sign-hanging',
                    type = 'client',
                    event = 'police:client:spawnRoadSign',
                    shouldClose = false
                }, {
                    id = 'spawntent',
                    title = 'Telt',
                    icon = 'campground',
                    type = 'client',
                    event = 'police:client:spawnTent',
                    shouldClose = false
                }, {
                    id = 'spawnverlichting',
                    title = 'Lys',
                    icon = 'lightbulb',
                    type = 'client',
                    event = 'police:client:spawnLight',
                    shouldClose = false
                }, {
                    id = 'spikestrip',
                    title = 'Spikermatte',
                    icon = 'caret-up',
                    type = 'client',
                    event = 'police:client:SpawnSpikeStrip',
                    shouldClose = false
                }, {
                    id = 'deleteobject',
                    title = 'Fjern objekter',
                    icon = 'trash',
                    type = 'client',
                    event = 'police:client:deleteObject',
                    shouldClose = false
                }
            }
        }
    },
    ["hotdog"] = {
        {
            id = 'togglesell',
            title = 'Start å selg',
            icon = 'hotdog',
            type = 'client',
            event = 'qb-hotdogjob:client:ToggleSell',
            shouldClose = true
        }
    }
}

Config.TrunkClasses = {
    [0] = {allowed = true, x = 0.0, y = -1.5, z = 0.0}, -- Coupes
    [1] = {allowed = true, x = 0.0, y = -2.0, z = 0.0}, -- Sedans
    [2] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- SUVs
    [3] = {allowed = true, x = 0.0, y = -1.5, z = 0.0}, -- Coupes
    [4] = {allowed = true, x = 0.0, y = -2.0, z = 0.0}, -- Muscle
    [5] = {allowed = true, x = 0.0, y = -2.0, z = 0.0}, -- Sports Classics
    [6] = {allowed = true, x = 0.0, y = -2.0, z = 0.0}, -- Sports
    [7] = {allowed = true, x = 0.0, y = -2.0, z = 0.0}, -- Super
    [8] = {allowed = false, x = 0.0, y = -1.0, z = 0.25}, -- Motorcycles
    [9] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Off-road
    [10] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Industrial
    [11] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Utility
    [12] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Vans
    [13] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Cycles
    [14] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Boats
    [15] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Helicopters
    [16] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Planes
    [17] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Service
    [18] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Emergency
    [19] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Military
    [20] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Commercial
    [21] = {allowed = true, x = 0.0, y = -1.0, z = 0.25} -- Trains
}

Config.ExtrasEnabled = true

Config.Commands = {
    -- ["top"] = {
    --     Func = function() ToggleClothing("Top") end,
    --     Sprite = "top",
    --     Desc = "Ta skjorte av/på",
    --     Button = 1,
    --     Name = "Torso"
    -- },
    -- ["gloves"] = {
    --     Func = function() ToggleClothing("gloves") end,
    --     Sprite = "gloves",
    --     Desc = "Ta hansker av/på",
    --     Button = 2,
    --     Name = "Gloves"
    -- },
    -- ["visor"] = {
    --     Func = function() ToggleProps("visor") end,
    --     Sprite = "visor",
    --     Desc = "Endre på hatt",
    --     Button = 3,
    --     Name = "Visor"
    -- },
    -- ["bag"] = {
    --     Func = function() ToggleClothing("Bag") end,
    --     Sprite = "bag",
    --     Desc = "Åpne eller lukk bagg",
    --     Button = 8,
    --     Name = "Bag"
    -- },
    -- ["shoes"] = {
    --     Func = function() ToggleClothing("Shoes") end,
    --     Sprite = "shoes",
    --     Desc = "Ta sko av/på",
    --     Button = 5,
    --     Name = "Shoes"
    -- },
    -- ["vest"] = {
    --     Func = function() ToggleClothing("Vest") end,
    --     Sprite = "vest",
    --     Desc = "Ta vest av/på",
    --     Button = 14,
    --     Name = "Vest"
    -- },
    -- ["hair"] = {
    --     Func = function() ToggleClothing("hair") end,
    --     Sprite = "hair",
    --     Desc = "Endre på hår.",
    --     Button = 7,
    --     Name = "Hair"
    -- },
    -- ["hat"] = {
    --     Func = function() ToggleProps("Hat") end,
    --     Sprite = "hat",
    --     Desc = "Ta hatt av/på",
    --     Button = 4,
    --     Name = "Hat"
    -- },
    -- ["glasses"] = {
    --     Func = function() ToggleProps("Glasses") end,
    --     Sprite = "glasses",
    --     Desc = "Ta briller av/på",
    --     Button = 9,
    --     Name = "Glasses"
    -- },
    -- ["ear"] = {
    --     Func = function() ToggleProps("Ear") end,
    --     Sprite = "ear",
    --     Desc = "Ta øre tilbehør av/på",
    --     Button = 10,
    --     Name = "Ear"
    -- },
    -- ["neck"] = {
    --     Func = function() ToggleClothing("Neck") end,
    --     Sprite = "neck",
    --     Desc = "Ta smykke av/på",
    --     Button = 11,
    --     Name = "Neck"
    -- },
    -- ["watch"] = {
    --     Func = function() ToggleProps("Watch") end,
    --     Sprite = "watch",
    --     Desc = "Ta klokke av/på",
    --     Button = 12,
    --     Name = "Watch",
    --     Rotation = 5.0
    -- },
    -- ["bracelet"] = {
    --     Func = function() ToggleProps("Bracelet") end,
    --     Sprite = "bracelet",
    --     Desc = "Ta armbånd av/på",
    --     Button = 13,
    --     Name = "Bracelet"
    -- },
    -- ["mask"] = {
    --     Func = function() ToggleClothing("Mask") end,
    --     Sprite = "mask",
    --     Desc = "Ta maske av/på",
    --     Button = 6,
    --     Name = "Mask"
    -- }
}

local bags = {[40] = true, [41] = true, [44] = true, [45] = true}

Config.ExtraCommands = {
    -- ["pants"] = {
    --     Func = function() ToggleClothing("Pants", true) end,
    --     Sprite = "pants",
    --     Desc = "Ta bukse av/på",
    --     Name = "Pants",
    --     OffsetX = -0.04,
    --     OffsetY = 0.0
    -- },
    -- ["shirt"] = {
    --     Func = function() ToggleClothing("Shirt", true) end,
    --     Sprite = "shirt",
    --     Desc = "Ta skjorte av/på",
    --     Name = "shirt",
    --     OffsetX = 0.04,
    --     OffsetY = 0.0
    -- },
    -- ["reset"] = {
    --     Func = function()
    --         if not ResetClothing(true) then
    --             Notify('Ingenting å resette', 'error')
    --         end
    --     end,
    --     Sprite = "reset",
    --     Desc = "Reverser tilbake til normalen",
    --     Name = "reset",
    --     OffsetX = 0.12,
    --     OffsetY = 0.2,
    --     Rotate = true
    -- },
    -- ["bagoff"] = {
    --     Func = function() ToggleClothing("Bagoff", true) end,
    --     Sprite = "bagoff",
    --     SpriteFunc = function()
    --         local Bag = GetPedDrawableVariation(PlayerPedId(), 5)
    --         local BagOff = LastEquipped["Bagoff"]
    --         if LastEquipped["Bagoff"] then
    --             if bags[BagOff.Drawable] then
    --                 return "bagoff"
    --             else
    --                 return "paraoff"
    --             end
    --         end
    --         if Bag ~= 0 then
    --             if bags[Bag] then
    --                 return "bagoff"
    --             else
    --                 return "paraoff"
    --             end
    --         else
    --             return false
    --         end
    --     end,
    --     Desc = "Ta bagg av/på",
    --     Name = "bagoff",
    --     OffsetX = -0.12,
    --     OffsetY = 0.2
    -- }
}
