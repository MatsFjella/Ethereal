
Config = {}
---------- [Framework] ----------
-- (DONT TOUCH THIS UNLESS YOU HAVE A CUSTOM FRAMEWORK)
if GetResourceState('es_extended') == 'started' then
    Framework = "ESX" -- (ESX) or (QBCore)
elseif GetResourceState('qb-core') == 'started' then
    Framework = "QBCore" -- (ESX) or (QBCore)
end
if Framework == "QBCore" then
    Config.CoreName = "qb-core" -- your core name
    FWork = exports[Config.CoreName]:GetCoreObject()
elseif Framework == "ESX" then
    Config.CoreName = "es_extended" -- your core name
    FWork = exports[Config.CoreName]:getSharedObject()
end
------------------------------
------------------------------
Config.Debug = false -- enables debug poly for zones and prints
------------------------------
------------------------------
-- [THESE ARE NOT NOT MEANT TO BE TOUCHED UNLESS YOU KNOW WHAT YOU ARE DOING]
Config.CompatibleTargetScripts = { -- Put whatever target script you use in this table if it is not here.
    "ox_target",
    "qb-target",
    "qtarget",
}
Config.CompatibleInputScripts = { -- If you have multiple input scripts in your server, Put only the one you want to use in this table or else dont touch this.
    "ox_lib",
    "qb-input",
    "ps-ui",
}
Config.CompatibleMenuScripts = { -- If you have multiple Menu scripts in your server, Put only the one you want to use in this table or else dont touch this.
    "ox_lib",
    "qb-menu",
    "ps-ui",
}
Config.CompatibleManagmentScripts = { -- Having a compatible managment script is not required
    "qb-management",
    "prime-management",
    "esx_society"
}
Config.CompatibleInventoryScripts = { -- Having a compatible inventory script is not required
    "ox_inventory",
    "qb-inventory",
    "qs-inventory",
    "ps-inventory",
    "qb-inventory",
}
------------------------------
------------------------------
-- (DONT TOUCH ANY OF THIS SECTION)
for _, v in pairs(Config.CompatibleTargetScripts) do
    if GetResourceState(v) == 'started' then
        Config.Target = tostring(v)
        break
    end
end
-- (DONT TOUCH ANY OF THIS SECTION)
for _, v in pairs(Config.CompatibleInputScripts) do
    if GetResourceState(v) == 'started' then
        Config.Input = tostring(v)
        break
    end
end
-- (DONT TOUCH ANY OF THIS SECTION)
for _, v in pairs(Config.CompatibleMenuScripts) do
    if GetResourceState(v) == 'started' then
        Config.Menu = tostring(v)
        break
    end
end
-- (DONT TOUCH ANY OF THIS SECTION)
for _, v in pairs(Config.CompatibleManagmentScripts) do
    if GetResourceState(v) == 'started' then
        Config.ManagementScript = tostring(v)
        break
    end
end
-- (DONT TOUCH ANY OF THIS SECTION)
for _, v in pairs(Config.CompatibleInventoryScripts) do
    if GetResourceState(v) == 'started' then
        Config.InventoryType = tostring(v)
        break
    end
end
------------------------------
---------- [STRINGS] ----------
Config.inventoryImagesDirectoryPath = "resources/[scripts]/[random]/qb-inventory/html/images/" -- Image directory path to your inventory script so that images can be saved to it when you make new items.
Config.BusinessMenuCommand = "business" -- Command to open the business creator and editor menu.
Config.ViewAllCreatedItemsCommand = "createditems" -- Command to view and or remove any item that has been created in the server through the script.
Config.VehilceKeysGivenToPlayerEvent = "vehiclekeys:client:SetOwner" -- Event used to give player keys to vehicle if you are using the business garage feature.
------------------------------
---------- [BOOLS] ----------
Config.UseProgressBar = true -- If you dont have a progressbar in your server make this false.
Config.ShowBlipsOnMiniMapOnlyShortRange = true -- Make this false if you want blips on the minimap to be shown no matter how far you are from it.
Config.PullItemsFromOXInventory = false -- Make this true if you are qbcore and want the items list to be from the items in your ox_inventory script. (I DO NOT RECCOMEND THIS AT ALL AS ITS THE WRONG WAY TO DO YOUR SERVER)
---------- [INTAGERS] ----------
Config.WorkersCommission = 0.05 -- (%) 10 % of the total register sale gets devided by all workers on duty and within the radiuis of the physical business location. 
Config.BusinessCommission = 0.30 -- (%) 30 % is the commision that goes to the business of each register sale
Config.BillerCommission = 0.00 -- (%) 5 % is the commision that goes to the worker who makes the sale at the register (they also get the Config.WorkersCommission so in total 15 %)
Config.TVSpawnDistance = 25 -- Distance in meters the tv will spawn for players
------------------------------
---------- [TRAYS] ----------
Config.CounterTopTreySize = 100000 -- How much wight the counter top treys can hold. (Default is 100)
Config.CounterTopTreySlots = 10 -- How many item slots the counter top treys can hold. (Default is 10)
------------------------------
---------- [STORAGE] ----------
Config.BusinessStorageSize = 1000000 -- How much wight the businesses storage can hold. (Default is 1000)
Config.BusinessStorageSlots = 200 -- How many item slots the businesses storage can hold. (Default is 200)
------------------------------
---------- [LOCKERS] ----------
Config.BusinessLockerSize = 1000000 -- How much wight the businesses storage can hold. (Default is 1000)
Config.BusinessLockerSlots = 100 -- How many item slots the businesses storage can hold. (Default is 200)
------------------------------
---------- [TABLES] ----------
Config.OptionalCars = { -- Selectable cars for garage menus. You can add as many as you like.
    "stalion2",
    "sultan",
}
Config.LangT = { -- All text options
    -- MENU
    ["SignsOnDuty"] = "Registrerer navn for vakt",
["SignsOffDuty"] = "Registrerer navn for av vakt",
["Close"] = "(LUKK)",
["Make"] = "Lag ",
["Crafting"] = "Håndverk ",
["ChangeImage"] = "Endre Bilde",
["UseMouse"] = "Bruk mus på skjermen",
["ImageURL"] = "Bilde-URL (PNG, GIF)",
["VideoURL"] = "Video-URL (volum er chromium-underprosess)",
["ItemName"] = "Varenavn (INGEN MELLOMROM)",
["ItemLabel"] = "Vareetikett",
["ItemDescription"] = "Varebeskrivelse",
["ItemPNG"] = "Vare-PNG",

["FoodWaterType"] = "Mat-/Vann-type",
["ItemIncrease"] = "Økning av Mat/Vann for Varen (0-100)",
["ItemWeight"] = "Varens Vekt",
["Unique"] = "Vare Kan Stables",
["SelectVehicle"] = "Velg Kjøretøy",
["ChooseBusinessVehicle"] = "Velg Forretningskjøretøy",
["CreateNewItem"] = "LAG NY VARE",
["EXIT"] = "AVSLUTT",
["SETPOINT"] = "SETT PUNKT",
["SETPLACEMENT"] = "SETT PLASSERING",
["ROTATEHEADING"] = "ROTER RETNING",
["SETANIMATION"] = "SETT ANIMASJON",
["CHANGEPROP"] = "ENDRE REKVISITT",

["CHANGEPEDMODEL"] = "ENDRE PED-MODELL",
["CHANGEEDITOR"] = "ENDRE REDAKTØR",
["CHANGEHEIGHT"] = "ENDRE HØYDE",
["ANIMATION"] = "ANIMASJON",
["SETPOINT"] = "SETT PUNKT",
["REMOVEPOINT"] = "FJERN PUNKT",
["REMOVE"] = "FJERN ",
["SUBMIT"] = "SENDE",
["REMOVEZONE"] = "FJERN SONE",
["SelectItemsToRemove"] = "Velg Varer Å Fjerne",
["RemoveItemFromServer"] = "FJERN VARE FRA SERVER",
["CarSelect"] = "Velg Bil",
["CarsForThisGarage"] = "BILER FOR DENNE GARASJEN",
["ImageUrl2"] = "BILDE-URL",


    -- NOTIFICATIONS
    ["BusinessCreatedAlready"] = "Denne virksomheten er allerede opprettet",
    ["NothingFound"] = " ble funnet i nærheten",
    ["Canceled"] = "Avbrutt..",
    ["NoSpaces"] = "Du kan ikke ha mellomrom i firmanavnet ditt...",
    ["CantSpamThis"] = "Du kan ikke spamme dette...",
    ["Canceled"] = "Avbrutt..",
    ["MissingItems"] = "Du mangler ",
    ["MissingPrice"] = "Du må angi en pris",
    ["MissingInput"] = "Inndata er nødvendig",
    ["MissingMoney"] = "Mangler $",
    ["CantChargeNothing"] = "Du kan ikke kreve $0",
    ["PayAtRegister"] = "Betal ved kassen $",
    
    ["CustomerCanPay"] = "Kassen er klar for at kunden kan betale",
["MissingUrlLink"] = "Du må angi en URL-lenke",
["NeedsToBePNG"] = "Bildet må ha .png eller .gif på slutten.",
["AlreadyPlacedProp"] = "Du har allerede plassert en ",
["MissingItemName"] = "Mangler Varenavn",
["MissingItemLabel"] = "Mangler Vareetikett",
["NoSpaces"] = "Varenavnet bør ikke inneholde mellomrom",
["MissingDescription"] = "Mangler Beskrivelse",
["MissingType"] = "Mangler Mat-/Vann-type",
["MissingIncrease"] = "Du må angi økning av mat/vann for varen",
["HaveNotChosesVehicle"] = "Har ikke valgt kjøretøy",
["HaveNotChosesItem"] = "Har ikke valgt vare",
["TheAreaIsNotClear"] = "Området er ikke ryddet",


    -- TARGETS
    ["ChargeCustomer"] = "Krev betaling fra kunde",
    ["Trash"] = "Søppel",
    ["Counter"] = "Disk",
    ["Storage"] = "Lagring",
    ["Sit"] = "Sett deg",
    ["ToggleDuty"] = "Vakt på/av",
    ["BossMenu"] = "Sjefsmeny",
    ["OpenLocker"] = "Åpne Skap",
    ["GrabSupplies"] = "Ta Forsyninger",
    ["ToggleBlip"] = "Veksle Blip",
    ["Emote"] = "Emote",
    ["CreateItem"] = "Lag Vare",
    ["BusinessGarage"] = "Bedrifts garasje",
    
}
------------------------------
Config.Color = {r = 0, g = 85, b = 204, a = 255} -- RGB Color of the line and ball that is displayed when editing a business
------------------------------
Config.Animations = { -- Animations that can be used for (registers, cookstations, supplies, trashcans, blips, duty, bossmenu, locker, animations, and peds options)
    [1] = {
        AnimDict = "timetable@ron@ig_3_couch",
        AnimAction = "base",
    },
    [2] = {
        AnimDict = "amb@prop_human_bbq@male@idle_a",
        AnimAction = "idle_b",
    },
    [3] = {
        AnimDict = "PROP_HUMAN_BUM_BIN",
        IsScenario = true, -- If the animation is a scenario make sure to put this. If its not a scenario make sure this isnt here.
    },
    [4] = {
        AnimDict = "PROP_HUMAN_ATM",
        IsScenario = true, -- If the animation is a scenario make sure to put this. If its not a scenario make sure this isnt here.
    },
    [5] = {
        AnimDict = "WORLD_HUMAN_CLIPBOARD",
        IsScenario = true, -- If the animation is a scenario make sure to put this. If its not a scenario make sure this isnt here.
    },
    [6] = {
        AnimDict = "clothingtie",
        AnimAction = "try_tie_positive_a",
    },
    [7] = {
        AnimDict = "mini@repair",
        AnimAction = "fixing_a_ped",
    },
    [8] = {
        AnimDict = "mini@strip_club@pole_dance@pole_dance1", -- Sripper dance needs to be a networked scene for its position to work properly for some reason.
        AnimAction = "pd_dance_01",
        IsNetWorkedScene = true,
    },
    [9] = {
        AnimDict = "mini@strip_club@private_dance@part1",
        AnimAction = "priv_dance_p1",
    },
    [10] = {
        AnimDict = "anim@heists@prison_heistig1_p1_guard_checks_bus",
        AnimAction = "loop",
    },
    [11] = {
        AnimDict = "WORLD_HUMAN_GUARD_STAND",
        IsScenario = true,
    },
    [12] = {
        AnimDict = "mp_common",
        AnimAction = "givetake1_a",
    },
}
------------------------------
Config.Props = { -- Prop options to be placed down in the props menu option
    "gr_prop_gr_bench_03a",
    "prop_roadpole_01b",
    "prop_fnccorgm_02pole",
    "prop_atm_01",
    "prop_atm_02",
    "prop_atm_03",
    "prop_fleeca_atm",
    "prop_food_bs_tray_01",
    "prop_food_tray_01",
    "p_till_01_s",
    "prop_till_03",
    "xm_prop_x17_computer_01",
    "prop_off_chair_01",
    "prop_off_chair_03",
    "prop_off_chair_04",
    "prop_off_chair_04b",
    "prop_off_chair_05",
    "lts_prop_lts_ramp_03",
    "prop_b_board_blank", -- This is the main image board prop. It cant be changed sorry.
    "prop_tv_flat_michael", -- This is the main tv prop. It cant be changed sorry.
    -- You can add as many props as you like here.
    "prop_tool_bench02",
    "prop_start_gate_01b",
    "prop_gate_cult_01_l",
    

}
------------------------------
Config.Peds = { -- Ped model options to be placed down in the peds menu option
    "csb_chef",
    'ig_trafficwarden',
    'ig_bankman',
    'ig_barry',
    'ig_bestmen',
    'ig_beverly',
    'ig_car3guy1',
    'ig_car3guy2',
    'ig_casey',
    'ig_chef',
    'ig_chengsr',
    'ig_chrisformage',
    'ig_clay',
    'ig_claypain',
    'ig_cletus',
    'ig_dale',
    'ig_dreyfuss',
    'ig_fbisuit_01',
    'ig_floyd',
    'ig_groom',
    'ig_hao',
    'ig_hunter',
    'csb_prolsec',
    'ig_jimmydisanto',
    'ig_joeminuteman',
    'ig_josef',
    'ig_josh',
    'ig_lamardavis',
    'ig_lazlow',
    'ig_lestercrest',
    'ig_lifeinvad_01',
    'ig_lifeinvad_02',
    'ig_manuel',
    'ig_milton',
    'ig_mrk',
    'ig_nervousron',
    'ig_nigel',
    'ig_old_man1a',
    'ig_old_man2',
    'ig_oneil',
    'ig_ortega',
    'ig_paper',
    'ig_priest',
    'ig_prolsec_02',
    'ig_ramp_gang',
    'ig_ramp_hic',
    'ig_ramp_hipster',
    'ig_ramp_mex',
    'ig_roccopelosi',
    'ig_russiandrunk',
    'ig_siemonyetarian',
    'ig_solomon',
    'ig_stevehains',
    'ig_stretch',
    'ig_talina',
    'ig_taocheng',
    'ig_taostranslator',
    'ig_tenniscoach',
    'ig_terry',
    'ig_tomepsilon',
    'ig_tylerdix',
    'ig_wade',
    'ig_zimbor',
    's_m_m_paramedic_01',
    'a_m_m_afriamer_01',
    'a_m_m_beach_01',
    'a_m_m_beach_02',
    'a_m_m_bevhills_01',
    'a_m_m_bevhills_02',
    'a_m_m_business_01',
    'a_m_m_eastsa_01',
    'a_m_m_eastsa_02',
    'a_m_m_farmer_01',
    'a_m_m_fatlatin_01',
    'a_m_m_genfat_01',
    'a_m_m_genfat_02',
    'a_m_m_golfer_01',
    'a_m_m_hasjew_01',
    'a_m_m_hillbilly_01',
    'a_m_m_hillbilly_02',
    'a_m_m_indian_01',
    'a_m_m_ktown_01',
    'a_m_m_malibu_01',
    'a_m_m_mexcntry_01',
    'a_m_m_mexlabor_01',
    'a_m_m_og_boss_01',
    'a_m_m_paparazzi_01',
    'a_m_m_polynesian_01',
    'a_m_m_prolhost_01',
    'a_m_m_rurmeth_01',
    'a_m_m_salton_01',
    'a_m_m_salton_02',
    'a_m_m_salton_03',
    'a_m_m_salton_04',
    'a_m_m_skater_01',
    'a_m_m_skidrow_01',
    'a_m_m_socenlat_01',
    'a_m_m_soucent_01',
    'a_m_m_soucent_02',
    'a_m_m_soucent_03',
    'a_m_m_soucent_04',
    'a_m_m_stlat_02',
    'a_m_m_tennis_01',
    'a_m_m_tourist_01',
    'a_m_m_trampbeac_01',
    'a_m_m_tramp_01',
    'a_m_m_tranvest_01',
    'a_m_m_tranvest_02',
    'a_m_o_beach_01',
    'a_m_o_genstreet_01',
    'a_m_o_ktown_01',
    'a_m_o_salton_01',
    'a_m_o_soucent_01',
    'a_m_o_soucent_02',
    'a_m_o_soucent_03',
    'a_m_o_tramp_01',
    'a_m_y_beachvesp_01',
    'a_m_y_beachvesp_02',
    'a_m_y_beach_01',
    'a_m_y_beach_02',
    'a_m_y_beach_03',
    'a_m_y_bevhills_01',
    'a_m_y_bevhills_02',
    'a_m_y_breakdance_01',
    'a_m_y_busicas_01',
    'a_m_y_business_01',
    'a_m_y_business_02',
    'a_m_y_business_03',
    'a_m_y_cyclist_01',
    'a_m_y_dhill_01',
    'a_m_y_downtown_01',
    'a_m_y_eastsa_01',
    'a_m_y_eastsa_02',
    'a_m_y_epsilon_01',
    'a_m_y_epsilon_02',
    'a_m_y_gay_01',
    'a_m_y_gay_02',
    'a_m_y_genstreet_01',
    'a_m_y_genstreet_02',
    'a_m_y_golfer_01',
    'a_m_y_hasjew_01',
    'a_m_y_hiker_01',
    'a_m_y_hipster_01',
    'a_m_y_hipster_02',
    'a_m_y_hipster_03',
    'a_m_y_indian_01',
    'a_m_y_jetski_01',
    'a_m_y_juggalo_01',
    'a_m_y_ktown_01',
    'a_m_y_ktown_02',
    'a_m_y_latino_01',
    'a_m_y_methhead_01',
    'a_m_y_mexthug_01',
    'a_m_y_motox_01',
    'a_m_y_motox_02',
    'a_m_y_musclbeac_01',
    'a_m_y_musclbeac_02',
    'a_m_y_polynesian_01',
    'a_m_y_roadcyc_01',
    'a_m_y_runner_01',
    'a_m_y_runner_02',
    'a_m_y_salton_01',
    'a_m_y_soucent_01',
    'a_m_y_soucent_02',
    'a_m_y_soucent_03',
    'a_m_y_soucent_04',
    'a_m_y_sunbathe_01',
    'a_m_y_surfer_01',
    'a_m_y_vindouche_01',
    'a_m_y_vinewood_01',
    'a_m_y_vinewood_02',
    'a_m_y_vinewood_03',
    'a_m_y_vinewood_04',
    'a_m_y_yoga_01',
    'g_m_m_armboss_01',
    'g_m_m_armgoon_01',
    'g_m_m_armlieut_01',
    'g_m_m_chemwork_01',
    'g_m_m_chiboss_01',
    'g_m_m_chicold_01',
    'g_m_m_korboss_01',
    'g_m_m_mexboss_01',
    'g_m_m_mexboss_02',
    'g_m_y_armgoon_02',
    'g_m_y_azteca_01',
    'g_m_y_ballaeast_01',
    'g_m_y_ballaorig_01',
    'g_m_y_ballasout_01',
    'g_m_y_famca_01',
    'g_m_y_famdnf_01',
    'g_m_y_famfor_01',
    'g_m_y_korean_01',
    'g_m_y_korean_02',
    'g_m_y_korlieut_01',
    'g_m_y_lost_01',
    'g_m_y_lost_02',
    'g_m_y_lost_03',
    'g_m_y_mexgang_01',
    'g_m_y_mexgoon_01',
    'g_m_y_mexgoon_02',
    'g_m_y_mexgoon_03',
    'g_m_y_pologoon_01',
    'g_m_y_pologoon_02',
    'g_m_y_salvaboss_01',
    'g_m_y_salvagoon_01',
    'g_m_y_salvagoon_02',
    'g_m_y_salvagoon_03',
    'g_m_y_strpunk_01',
    'g_m_y_strpunk_02',
    'mp_m_claude_01',
    'mp_m_exarmy_01',
    'mp_m_shopkeep_01',
    's_m_m_ammucountry',
    's_m_m_autoshop_01',
    's_m_m_autoshop_02',
    's_m_m_bouncer_01',
    's_m_m_chemsec_01',
    's_m_m_cntrybar_01',
    's_m_m_dockwork_01',
    's_m_m_doctor_01',
    's_m_m_fiboffice_01',
    's_m_m_fiboffice_02',
    's_m_m_gaffer_01',
    's_m_m_gardener_01',
    's_m_m_gentransport',
    's_m_m_hairdress_01',
    's_m_m_highsec_01',
    's_m_m_highsec_02',
    's_m_m_janitor',
    's_m_m_lathandy_01',
    's_m_m_lifeinvad_01',
    's_m_m_linecook',
    's_m_m_lsmetro_01',
    's_m_m_mariachi_01',
    's_m_m_marine_01',
    's_m_m_marine_02',
    's_m_m_migrant_01',
    's_m_m_movalien_01',
    's_m_m_movprem_01',
    's_m_m_movspace_01',
    's_m_m_pilot_01',
    's_m_m_pilot_02',
    's_m_m_postal_01',
    's_m_m_postal_02',
    's_m_m_scientist_01',
    's_m_m_security_01',
    's_m_m_strperf_01',
    's_m_m_strpreach_01',
    's_m_m_strvend_01',
    's_m_m_trucker_01',
    's_m_m_ups_01',
    's_m_m_ups_02',
    's_m_o_busker_01',
    's_m_y_airworker',
    's_m_y_ammucity_01',
    's_m_y_armymech_01',
    's_m_y_autopsy_01',
    's_m_y_barman_01',
    's_m_y_baywatch_01',
    's_m_y_blackops_01',
    's_m_y_blackops_02',
    's_m_y_busboy_01',
    's_m_y_chef_01',
    's_m_y_clown_01',
    's_m_y_construct_01',
    's_m_y_construct_02',
    's_m_y_cop_01',
    's_m_y_dealer_01',
    's_m_y_devinsec_01',
    's_m_y_dockwork_01',
    's_m_y_doorman_01',
    's_m_y_dwservice_01',
    's_m_y_dwservice_02',
    's_m_y_factory_01',
    's_m_y_garbage',
    's_m_y_grip_01',
    's_m_y_marine_01',
    's_m_y_marine_02',
    's_m_y_marine_03',
    's_m_y_mime',
    's_m_y_pestcont_01',
    's_m_y_pilot_01',
    's_m_y_prismuscl_01',
    's_m_y_prisoner_01',
    's_m_y_robber_01',
    's_m_y_shop_mask',
    's_m_y_strvend_01',
    's_m_y_uscg_01',
    's_m_y_valet_01',
    's_m_y_waiter_01',
    's_m_y_winclean_01',
    's_m_y_xmech_01',
    's_m_y_xmech_02',
    'u_m_m_aldinapoli',
    'u_m_m_bankman',
    'u_m_m_bikehire_01',
    'u_m_m_fibarchitect',
    'u_m_m_filmdirector',
    'u_m_m_glenstank_01',
    'u_m_m_griff_01',
    'u_m_m_jesus_01',
    'u_m_m_jewelsec_01',
    'u_m_m_jewelthief',
    'u_m_m_markfost',
    'u_m_m_partytarget',
    'u_m_m_prolsec_01',
    'u_m_m_promourn_01',
    'u_m_m_rivalpap',
    'u_m_m_spyactor',
    'u_m_m_willyfist',
    'u_m_o_finguru_01',
    'u_m_o_taphillbilly',
    'u_m_o_tramp_01',
    'u_m_y_abner',
    'u_m_y_antonb',
    'u_m_y_babyd',
    'u_m_y_baygor',
    'u_m_y_burgerdrug_01',
    'u_m_y_chip',
    'u_m_y_cyclist_01',
    'u_m_y_fibmugger_01',
    'u_m_y_guido_01',
    'u_m_y_gunvend_01',
    'u_m_y_imporage',
    'u_m_y_mani',
    'u_m_y_militarybum',
    'u_m_y_paparazzi',
    'u_m_y_party_01',
    'u_m_y_pogo_01',
    'u_m_y_prisoner_01',
    'u_m_y_proldriver_01',
    'u_m_y_rsranger_01',
    'u_m_y_tattoo_01',
    'u_m_y_zombie_01',
    'u_m_y_hippie_01',
    'a_m_y_hippy_01',
    'mp_f_freemode_01',
    'a_f_m_beach_01',
    'a_f_m_bevhills_01',
    'a_f_m_bevhills_02',
    'a_f_m_bodybuild_01',
    'a_f_m_business_02',
    'a_f_m_downtown_01',
    'a_f_m_eastsa_01',
    'a_f_m_eastsa_02',
    'a_f_m_fatbla_01',
    'a_f_m_fatcult_01',
    'a_f_m_fatwhite_01',
    'a_f_m_ktown_01',
    'a_f_m_ktown_02',
    'a_f_m_prolhost_01',
    'a_f_m_salton_01',
    'a_f_m_skidrow_01',
    'a_f_m_soucentmc_01',
    'a_f_m_soucent_01',
    'a_f_m_soucent_02',
    'a_f_m_tourist_01',
    'a_f_m_trampbeac_01',
    'a_f_m_tramp_01',
    'a_f_o_genstreet_01',
    'a_f_o_indian_01',
    'a_f_o_ktown_01',
    'a_f_o_salton_01',
    'a_f_o_soucent_01',
    'a_f_o_soucent_02',
    'a_f_y_beach_01',
    'a_f_y_bevhills_01',
    'a_f_y_bevhills_02',
    'a_f_y_bevhills_03',
    'a_f_y_bevhills_04',
    'a_f_y_business_01',
    'a_f_y_business_02',
    'a_f_y_business_03',
    'a_f_y_business_04',
    'a_f_y_eastsa_01',
    'a_f_y_eastsa_02',
    'a_f_y_eastsa_03',
    'a_f_y_epsilon_01',
    'a_f_y_fitness_01',
    'a_f_y_fitness_02',
    'a_f_y_genhot_01',
    'a_f_y_golfer_01',
    'a_f_y_hiker_01',
    'a_f_y_hipster_01',
    'a_f_y_hipster_02',
    'a_f_y_hipster_03',
    'a_f_y_hipster_04',
    'a_f_y_indian_01',
    'a_f_y_juggalo_01',
    'a_f_y_runner_01',
    'a_f_y_rurmeth_01',
    'a_f_y_scdressy_01',
    'a_f_y_skater_01',
    'a_f_y_soucent_01',
    'a_f_y_soucent_02',
    'a_f_y_soucent_03',
    'a_f_y_tennis_01',
    'a_f_y_tourist_01',
    'a_f_y_tourist_02',
    'a_f_y_vinewood_01',
    'a_f_y_vinewood_02',
    'a_f_y_vinewood_03',
    'a_f_y_vinewood_04',
    'a_f_y_yoga_01',
    'g_f_y_ballas_01',
    'g_f_y_families_01',
    'g_f_y_lost_01',
    'g_f_y_vagos_01',
    'mp_f_deadhooker',
    'mp_f_freemode_01',
    'mp_f_misty_01',
    'mp_s_m_armoured_01',
    's_f_m_fembarber',
    's_f_m_maid_01',
    's_f_m_shop_high',
    's_f_m_sweatshop_01',
    's_f_y_airhostess_01',
    's_f_y_bartender_01',
    's_f_y_baywatch_01',
    's_f_y_cop_01',
    's_f_y_factory_01',
    's_f_y_hooker_01',
    's_f_y_hooker_02',
    's_f_y_hooker_03',
    's_f_y_migrant_01',
    's_f_y_movprem_01',
    'ig_kerrymcintosh',
    'ig_janet',
    'ig_jewelass',
    'ig_magenta',
    'ig_marnie',
    'ig_patricia',
    'ig_screen_writer',
    'ig_tanisha',
    'ig_tonya',
    'ig_tracydisanto',
    'u_f_m_corpse_01',
    'u_f_m_miranda',
    'u_f_m_promourn_01',
    'u_f_o_moviestar',
    'u_f_o_prolhost_01',
    'u_f_y_bikerchic',
    'u_f_y_comjane',
    'u_f_y_corpse_01',
    'u_f_y_corpse_02',
    'u_f_y_hotposh_01',
    'u_f_y_jewelass_01',
    'u_f_y_mistress',
    'u_f_y_poppymich',
    'u_f_y_princess',
    'u_f_y_spyactress',
    'ig_amandatownley',
    'ig_ashley',
    'ig_andreas',
    'ig_ballasog',
    'ig_maude',
    'ig_michelle',
    'ig_mrs_thornhill',
    'ig_natalia',
    's_f_y_scrubs_01',
    's_f_y_sheriff_01',
    's_f_y_shop_low',
    's_f_y_shop_mid',
    's_f_y_stripperlite',
    's_f_y_stripper_01',
    's_f_y_stripper_02',
    'ig_mrsphillips',
    'ig_mrs_thornhill',
    'ig_molly',
    'ig_natalia',
    's_f_y_sweatshop_01',
    'ig_paige',
    'a_f_y_femaleagent',
    "a_c_boar",
    "a_c_cat_01",
    "a_c_chickenhawk",
    "a_c_chimp",
    "a_c_chop",
    "a_c_cormorant",
    "a_c_cow",
    "a_c_coyote",
    "a_c_crow",
    "a_c_deer",
    "a_c_dolphin",
    "a_c_fish",
    "a_c_hen",
    "a_c_humpback",
    "a_c_husky",
    "a_c_killerwhale",
    "a_c_mtlion",
    "a_c_pig",
    "a_c_pigeon",
    "a_c_poodle",
    "a_c_pug",
    "a_c_rabbit_01",
    "a_c_rat",
    "a_c_retriever",
    "a_c_rhesus",
    "a_c_rottweiler",
    "a_c_seagull",
    "a_c_sharkhammer",
    "a_c_sharktiger",
    "a_c_shepherd",
    "a_c_stingray",
    "a_c_westy",
}
------------------------------
------------------------------
--## DONT CHANGE ANY OF THESE ##--
Config.FrameworkFunctions = {
    -- Client-side trigger callback
    TriggerCallback = function(...)
        if Framework == 'QBCore' then
            FWork.Functions.TriggerCallback(...)
        else
            FWork.TriggerServerCallback(...)
        end
    end,

    -- Server-side register callback
    CreateCallback = function(...)
        if Framework == 'QBCore' then
            FWork.Functions.CreateCallback(...)
        else
            FWork.RegisterServerCallback(...)
        end
    end,

    -- Server-side Get All Players
    GetPlayers = function()
        if Framework == 'QBCore' then
            return FWork.Functions.GetPlayers()
        else
            return FWork.GetPlayers()
        end
    end,

    -- Server-side get player data
    GetPlayer = function(source,cid,client)
        if Framework == 'QBCore' then
            local self = {}
            local player = nil
            if cid then
                player = FWork.Functions.GetPlayerByCitizenId(source)
            elseif client then
                player = FWork.Functions.GetPlayerData()
            else
                player = FWork.Functions.GetPlayer(source)
            end

            if(player ~= nil) then
                self.source = source
                if client then
                    self.PlayerData = { charinfo = { citizenid = player.citizenid }, job = { name = player.job.name, onduty = player.job.onduty} }
                else
                    self.PlayerData = { charinfo = { firstname = player.PlayerData.charinfo.firstname }, items = player.PlayerData.items, money = { cash = player.PlayerData.money.cash, bank = player.PlayerData.money.bank}, job = {name = player.PlayerData.job.name}}
                end

                self.AddMoney = function(currency, amount) 
                    player.Functions.AddMoney(currency, amount)
                end
                self.RemoveMoney = function(currency, amount) 
                    player.Functions.RemoveMoney(currency, amount)
                end

                self.RemoveItem = function(item, amount) 
                    player.Functions.RemoveItem(item, amount, false)
                end

                self.AddItem = function(item, amount, bool, info) 
                    player.Functions.AddItem(item, amount, false, info)
                end


                return self
            end
        else
            local self = {}
            local player = nil
            if cid then
                player = PugFindPlayersByItentifier(source)
                self.PlayerData = { charinfo = { firstname = player.get('firstName')}, job = { name = player.job.name } }
                return self
            elseif client then
                player = FWork.GetPlayerData()
            else
                player = FWork.GetPlayerFromId(source)
            end

            if (player ~= nil) then
                self.source = source
                if client then
                    self.PlayerData = {  charinfo = { citizenid = player.identifier }, job = { name = player.job.name }}
                else
                    self.PlayerData = { charinfo = { firstname = player.get('firstName')}, money = {cash = player.getAccount('money').money, bank = player.getAccount('bank').money}, job = { name = player.job.name } }
                end
                self.AddMoney = function(currency, amount) 
                    player.addAccountMoney(currency, amount)
                end
                self.RemoveMoney = function(currency, amount) 
                    player.removeAccountMoney(currency, amount)
                end

                self.RemoveItem = function(item, amount) 
                    player.removeInventoryItem(item, amount)
                end

                self.AddItem = function(item, amount, bool, info)
                    player.addInventoryItem(item, amount, false, info)
                end

                return self
            end
        end

        return nil
    end,
}
-- This is for when new items are created. 
function RefreshFrameWrok()
    FWork = exports[Config.CoreName]:GetCoreObject()
end