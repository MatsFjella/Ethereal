Config = {}

Config = {
    Framework = "qb", -- "esx", "qb"
    CurrentTranslation = "en",
    PetMenuPos = "top-left", -- options between "top-right", "top-left", "bottom-right", "bottom-left"
    TargetSystem = "qb-target", -- "none", "qtarget" or "qb-target"
    Inventory = "default", -- "default", "ox"
    CustomStringESXEvent = "esx:getSharedObject",
    CustomStringQBExport = "qb-core",
    AutomaticDoors = true, --If the vehicle doors should be auto opened
    VehicleInventory = "qb", -- options between "mf-inventory", "ox_inventory", "qb", "esx_inventoryhud_trunk" [https://github.com/Trsak/esx_inventoryhud_trunk], "esx_trunk" [https://github.com/schwim0341/esx_trunk], "qs-inventory",  "custom" [use GetCustomVehicleInventoryItems in config, don't use if you don't know a bit of coding],
    --Make ticket in discord for more vehicle inventory/trunk scripts support
    PetHouseModel = "prop_doghouse_01",
    VetPrice = 100,
    PaymentMethod = "bank",
    MaxAmountPetOutside = 6,
    MaxAmountPetInsideOfAPetHouse = 4,
    EnableBlips = true,
    EnableNetworkedHouses = false, -- set to true if you want everyone too see everyone's pet house (not recommended)
    EnablePetHouse = true,
    EnablePetCommand = true,
    Debug = false,
    PetSkillCommand = "dyrmeny", -- for pet menu/skill menu
    CommandName = "dyr", -- for pet storage
    StartingSkillPoints = 5,

    Keys = { --[[https://docs.fivem.net/docs/game-references/controls/]]
        ["G"] = {key = 47, label = "~INPUT_DETONATE~"},
        ["K"] = {key = 311, label = "~INPUT_REPLAY_SHOWHOTKEY~"},
        ["E"] = {key = 38, label = "~INPUT_CONTEXT~"},
        ["Z"] = {key = 20, label = "~INPUT_MULTIPLAYER_INFO~"}
    },

    Blips = {
        Pet = {sprite = 442, color = 31},
    },

    KeyActions = { -- if you change KeyActions the Key must also be avaliable in Keys table.
        DropPet = "G",
        FastInteraction = "Z",
        InteractWithPet = "K", -- only for non targetsystem users 
    },

    AllowedSniffedItems = { -- under here you can add items which are allowed for your pet to sniff e.g. weed, meth or other drugs used on your server!
        "cokebaggy",
        "weed_skunk",
        "meth",
    },

    RewardsXP = {
        uniqueActions = 3, --the xp given from unique interactions with pet
        successfulAttack = 20,
        successfulSearch = 10,
        fetchedBall = 2,
    },

    PoliceOnly = {
        onlyPoliceCanSniff = false,
        onlyPoliceCanAttack = false,
    },

    Delays = {
        statusRemoval = 450, -- (seconds) the time it takes for your pet's hunger to be removed by one (default 450s => (450*100)/3600 = 12.5 hours for the pet to go from 100 to 0 in hunger)
        newItemToSniffDelay = 100000 -- (milisec) total of 100 sec before the pet can get better at sniffing an item or sniff a new item
    },

    Coords = {
        {coords = vector3(2043.55, 4961.09, 40.48), heading = -120.0, action = "petShop"},
        {coords = vector3(2046.16, 4958.89, 40.48), heading = 140.0, action = "veterinary"},
    },

    ShopSceneCoords = {
        ["petSpawn"] = vector4(2038.28, 4955.09, 41.48, 208.42),
        ["camCoords"] = {coords = vector3(2040.10, 4953.45, 41.48), rot = vector3(0.0, 0.0, 40.0)},
    },

    GetCustomVehicleInventoryItems = function(vehicle) --[[function to get custom vehicle inventory items make sure to set VehicleInventory = "custom"]]
       
    end,

    Pets = {
        {model = "a_c_rottweiler", label = "Rottweiler", price = 0, canAttack = true, canSniff = true, canBeCarried = true, buyable = true},
        {model = "a_c_retriever", label = "Retriever", price = 0, canAttack = true, canSniff = true, canBeCarried = true, buyable = true},
        {model = "a_c_pug", label = "Pug", price = 0, canAttack = false, canSniff = true, canBeCarried = true, buyable = true},
        {model = "a_c_husky", label = "Huski", price = 0, canAttack = true, canSniff = true, canBeCarried = true, buyable = true},
        {model = "a_c_poodle", label = "Poodle", price = 0, canAttack = false, canSniff = true, canBeCarried = true, buyable = true},
        {model = "a_c_westy", label = "Westie", price = 0, canAttack = false, canSniff = true, canBeCarried = true, buyable = true},
        {model = "a_c_shepherd", label = "Shepard", price = 0, canAttack = true, canSniff = true, canBeCarried = true, buyable = true},
        {model = "a_c_cat_01", label = "Cat", price = 0, canAttack = false, canSniff = false, canBeCarried = true, buyable = true},
        {model = "a_c_rat", label = "Rat", price = 0, canAttack = false, canSniff = false, canBeCarried = true, buyable = true},
        {model = "a_c_rabbit_01", label = "Rabbit", price = 0, canAttack = false, canSniff = false, canBeCarried = true, buyable = true},
        {model = "a_c_boar", label = "Boar", price = 0, canAttack = false, canSniff = false, canBeCarried = false, buyable = true},
        {model = "a_c_hen", label = "Hen", price = 0, canAttack = false, canSniff = false, canBeCarried = true, buyable = true},
    },

    CarryParams = {
        ["a_c_retriever"] = {carryAnim = true, coords = vector3(-0.17, 0.18, -0.33), rot = vector3(260.0, 340.0, 30.0)},
        ["a_c_rottweiler"] = {carryAnim = true, coords = vector3(-0.17, 0.18, -0.33), rot = vector3(260.0, 340.0, 30.0)},
        ["a_c_husky"] = {carryAnim = true, coords = vector3(-0.17, 0.18, -0.33), rot = vector3(260.0, 340.0, 30.0)},
        ["a_c_shepherd"] = {carryAnim = true, coords = vector3(-0.17, 0.18, -0.33), rot = vector3(260.0, 340.0, 30.0)},
        ["a_c_pug"] = {carryAnim = true, coords = vector3(-0.11, 0.07, -0.35), rot = vector3(230.0, 373.0, 33.5)},
        ["a_c_poodle"] = {carryAnim = true, coords = vector3(-0.11, 0.07, -0.35), rot = vector3(230.0, 373.0, 33.5)},
        ["a_c_westy"] = {carryAnim = true, coords = vector3(-0.11, 0.07, -0.35), rot = vector3(230.0, 373.0, 33.5)},
        ["a_c_cat_01"] = {coords = vector3(0.09, -0.07, 0.25), rot = vector3(291.0, 291.0, -90.0)},
        ["a_c_rat"] = {coords = vector3(0.14, -0.06, 0.12), rot = vector3(-8.5, 350.0, 9.0)},
        ["a_c_rabbit_01"] = {coords = vector3(0.1, -0.1, 0.18), rot = vector3(5.5, 345.0, 20.0)},
        ["a_c_hen"] = {coords = vector3(0.1, -0.1, 0.18), rot = vector3(5.5, 345.0, 20.0)},
    },

    PetAnims = {
        ["a_c_rottweiler"] = {
            sitAnim = {dict =  "creatures@rottweiler@amb@world_dog_sitting@base", anim = "base", exitDict = "creatures@rottweiler@amb@world_dog_sitting@exit", exitAnim = "exit", loop = 1},
            spawnAnim = {dict = "creatures@rottweiler@amb@sleep_in_kennel@", anim = "exit_kennel", await = true, loop = 0},
            beg = {dict = "creatures@rottweiler@tricks@", anim = "beg_loop"},
            pickUp = {dict = "creatures@rottweiler@move", anim = "fetch_pickup", loop = 0, await = false},
            layingDown = {dict = "creatures@rottweiler@amb@sleep_in_kennel@", anim = "sleep_in_kennel", loop = 1},
            getInVehicle = {dict = "creatures@rottweiler@in_vehicle@std_car", anim = "get_in", loop = 0},
            exitVehicle = {dict = "creatures@rottweiler@in_vehicle@std_car", anim = "get_out", loop = 0, await = 1}
        },
        ["a_c_pug"] = {
            sitAnim = {dict = "creatures@pug@amb@world_dog_sitting@base", anim = "base", exitDict = "creatures@pug@amb@world_dog_sitting@exit", exitAnim = "exit", loop = 1},
            spawnAnim = {dict = "creatures@pug@amb@world_dog_sitting@exit", anim = "exit", await = true, loop = 0},
        },
        ["a_c_retriever"] = {
            sitAnim = {dict = "creatures@retriever@amb@world_dog_sitting@base", anim = "base", exitDict = "creatures@retriever@amb@world_dog_sitting@exit", exitAnim = "exit", loop = 1},
            spawnAnim = {dict = "creatures@rottweiler@amb@sleep_in_kennel@", anim = "exit_kennel", await = true, loop = 0},
            beg = {dict = "creatures@rottweiler@tricks@", anim = "beg_loop_right", loop = 1},
            layingDown = {dict = "creatures@rottweiler@amb@sleep_in_kennel@", anim = "sleep_in_kennel", loop = 1},
            pickUp = {dict = "creatures@rottweiler@move", anim = "fetch_pickup", loop = 0, await = false},
            -- bark = {dict = "facials@creatures@rottweile@bark", anim = "bark_facial", loop = 1},
            getInVehicle = {dict = "creatures@rottweiler@in_vehicle@std_car", anim = "get_in", loop = 0},
            exitVehicle = {dict = "creatures@rottweiler@in_vehicle@std_car", anim = "get_out", loop = 0, await = 1}
        },
        ["a_c_husky"] = {
            sitAnim = {dict = "creatures@retriever@amb@world_dog_sitting@base", anim = "base", exitDict = "creatures@retriever@amb@world_dog_sitting@exit", exitAnim = "exit", loop = 1},
            spawnAnim = {dict = "creatures@rottweiler@amb@sleep_in_kennel@", anim = "exit_kennel", await = true, loop = 0},
            layingDown = {dict = "creatures@rottweiler@amb@sleep_in_kennel@", anim = "sleep_in_kennel", loop = 1},
            getInVehicle = {dict = "creatures@rottweiler@in_vehicle@std_car", anim = "get_in", loop = 0},
            pickUp = {dict = "creatures@rottweiler@move", anim = "fetch_pickup", loop = 0, await = false},
            exitVehicle = {dict = "creatures@rottweiler@in_vehicle@std_car", anim = "get_out", loop = 0, await = 1}
        },
        ["a_c_shepherd"] = {
            sitAnim = {dict = "creatures@retriever@amb@world_dog_sitting@base", anim = "base", exitDict = "creatures@retriever@amb@world_dog_sitting@exit", exitAnim = "exit", loop = 1},
            spawnAnim = {dict = "creatures@rottweiler@amb@sleep_in_kennel@", anim = "exit_kennel", await = true, loop = 0},
            layingDown = {dict = "creatures@rottweiler@amb@sleep_in_kennel@", anim = "sleep_in_kennel", loop = 1},
            getInVehicle = {dict = "creatures@rottweiler@in_vehicle@std_car", anim = "get_in", loop = 0},
            pickUp = {dict = "creatures@rottweiler@move", anim = "fetch_pickup", loop = 0, await = false},
            exitVehicle = {dict = "creatures@rottweiler@in_vehicle@std_car", anim = "get_out", loop = 0, await = 1}
        },
        ["a_c_poodle"] = {
            sitAnim = {dict = "creatures@pug@amb@world_dog_sitting@base", anim = "base", exitDict = "creatures@pug@amb@world_dog_sitting@exit", exitAnim = "exit", loop = 1},
            spawnAnim = {dict = "creatures@pug@amb@world_dog_sitting@exit", anim = "exit", await = true, loop = 0},
            getInVehicle = {dict = "", anim = "", loop = 0},
            exitVehicle = {dict = "", anim = "", loop = 0, await = 1}
        },
        ["a_c_westy"] = {
            sitAnim = {dict = "creatures@pug@amb@world_dog_sitting@base", anim = "base", exitDict = "creatures@pug@amb@world_dog_sitting@exit", exitAnim = "exit", loop = 1},
            spawnAnim = {dict = "creatures@pug@amb@world_dog_sitting@exit", anim = "exit", await = true, loop = 0},
            getInVehicle = {dict = "", anim = "", loop = 0},
            exitVehicle = {dict = "", anim = "", loop = 0, await = 1}
        },
        ["a_c_cat_01"] = {
            sitAnim = {dict = "creatures@cat@amb@world_cat_sleeping_ground@base", anim = "base", exitAnim = "exit", exitDict = "creatures@cat@amb@world_cat_sleeping_ground@exit", loop = 1},
            spawnAnim = {dict = "creatures@cat@amb@world_cat_sleeping_ground@exit", anim = "exit", await = true, loop = 0},
            getInVehicle = {dict = "", anim = "", loop = 0},
            exitVehicle = {dict = "", anim = "", loop = 0, await = 1}
        },
        ["a_c_rat"] = {
            sitAnim = {dict = "creatures@rat@move", anim = "idle", loop = 1},
            spawnAnim = {dict = "", anim = "", await = true, loop = 0},
            getInVehicle = {dict = "", anim = "", loop = 0},
            exitVehicle = {dict = "", anim = "", loop = 0, await = 1}
        },
        ["a_c_rabbit_01"] = {
            sitAnim = {dict = "creatures@rabbit@move", anim = "idle", loop = 1},
            spawnAnim = {dict = "", anim = "", await = true, loop = 0},
            getInVehicle = {dict = "", anim = "", loop = 0},
            exitVehicle = {dict = "", anim = "", loop = 0, await = 1}
        },
        ["a_c_boar"] = {
            spawnAnim = {dict = "", anim = "", await = true, loop = 0},
        },
        ["a_c_hen"] = {
            sitAnim = {dict = "creatures@hen@amb@world_hen_standing@base", anim = "base", loop = 1},
            spawnAnim = {dict = "", anim = "", await = true, loop = 0},
            getInVehicle = {dict = "", anim = "", loop = 0},
            exitVehicle = {dict = "", anim = "", loop = 0, await = 1}
        },
        ["a_c_pig"] = {
            sitAnim = {dict = "creatures@pig@move", anim = "idle", loop = 1},
            spawnAnim = {dict = "", anim = "", await = true, loop = 0},
            getInVehicle = {dict = "", anim = "", loop = 0},
            exitVehicle = {dict = "", anim = "", loop = 0, await = 1}
        },
    },

    Translation = {
        ['en'] = {
            alreadyHavePetWithName = "Du har allerede et kjæledyr med dette navnet",
            houseMustBeEmpty = "Ditt kjæledyrshus må være tomt før du tar det opp",
            pickUpHouse = "Plukk opp huset ditt",
            targetPlayerTooFar = "Spilleren du sikter på er for langt unna",
            tooManyPetsOutside = "Du har for mange kjæledyr ute for å motta en overføring",
            transferFailed = "Denne spilleren har allerede et kjæledyr ute",
            houseFull = "Dette kjæledyrshuset er fullt",
            notEnoughMoney = "Ikke nok penger",
            notHungry = "Kjæledyret ditt er ikke sultent",
            noItem = "Du har ikke noe kjæledyrfôr",
            insertNameOfPet = "Navngi kjæledyret ditt",
            petHouse = "Kjæledyrshus",
            insertPet = "Sett inn kjæledyr",
            withdrawPet = "Ta ut kjæledyr",
            pets = "Kjæledyr",
            vetPrice = " pris: ",
            invalidName = "Dette er ikke et gyldig navn for kjæledyret ditt",
            sniffNewItem = "Snus på ny gjenstand",
            alreadySniffedItem = "Dette kjæledyret har allerede snust på denne gjenstanden",
            cannotSniff = "Dette kjæledyret kan ikke snuse etter gjenstander for øyeblikket",
            cannotSniffNewItems = "Det er for tidlig for dette kjæledyret å snuse på nye gjenstander",
            blip = "Kjæledyrbutikk",
            open = "~INPUT_PICKUP~ for å åpne",
            open2 = " for å åpne",
            petMenu = "Kjæledyrsmeny",
            petDaycareBlip = "Kjæledyrdagpleie",
            vet = "Veterinær",
            alreadyHasTracker = "Dette kjæledyret har allerede en sporingsenhet",
            petNotFound = "Ingen kjæledyr kunne bli funnet",
            delay = "Denne handlingen har en forsinkelse",
            noItemTracker = "Du har ingen sporingsenhet i inventaret ditt",
            transferSuccessful = "Overføring av kjæledyr var vellykket",
            insertId = "Sett inn ID for hvem du vil overføre kjæledyret til",
            actionMustBePolice = "Du må være politi for å utføre denne handlingen"
            
        },
    },
}