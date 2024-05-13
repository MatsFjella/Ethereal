----------------------------------
--<!>-- BOII | DEVELOPMENT --<!>--
----------------------------------

Config = {}
-- Core settings; you can ignore these if you have not replaces any core info
Config.CoreSettings = {
    Core = 'QBCore', -- The name of your core. Default; QBCore
    CoreFolder = 'qb-core', -- The name of your core folder. Default; qb-core
    HudEvent = 'hud:client:UpdateNeeds', -- The name of your hud event. Default; 'hud:client:UpdateNeeds'
    AddStressEvent = 'hud:server:GainStress', -- Event to remove stress from player. Default; 'hud:server:GainStress'
    RemoveStressEvent = 'hud:server:RelieveStress', -- Event to remove stress from player. Default; 'hud:server:RelieveStress'
    EvidenceEvent = 'evidence:client:SetStatus', -- Event to set drunk evidence status for police. Default; 'evidence:client:SetStatus'
}

-- Consumables settings
Config.Consumables = {
    Alcohol = {
        ['beer'] = {
            alcoholcount = 1, -- Amount to increase alcohol count
            sickchance = math.random(5,10), -- Chance to be sick if risky = true
            removehealth = math.random(5, 8), -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(25,40), -- Amount of thirst to receive
            stress = math.random(3,6), -- Amount of stress to remove
            bartext = 'Drikker A.M..', -- Progress bar text
            bartime = math.random(2,5), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_glass_bottle', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_beer_amopen', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.09), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['vodka'] = {
            alcoholcount = 4, -- Amount to increase alcohol count
            sickchance = math.random(40,65), -- Chance to be sick if risky = true
            removehealth = math.random(11,19), -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(40,61), -- Amount of thirst to receive
            stress = math.random(6,8), -- Amount of stress to remove
            bartext = 'Drikker Vodka..', -- Progress bar text
            bartime = math.random(5,8), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_glass_bottle', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_vodka_bottle', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.09), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['casino_beer'] = {
            alcoholcount = 1, -- Amount to increase alcohol count
            sickchance = math.random(5,10), -- Chance to be sick if risky = true
            removehealth = math.random(5, 8), -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(25,40), -- Amount of thirst to receive
            stress = math.random(3,6), -- Amount of stress to remove
            bartext = 'Drikker...', -- Progress bar text
            bartime = math.random(2,5), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_glass_bottle', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_beer_amopen', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.09), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['beer_logger'] = {
            alcoholcount = 1, -- Amount to increase alcohol count
            sickchance = math.random(6,12), -- Chance to be sick if risky = true
            removehealth = math.random(4, 10), -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(21,36), -- Amount of thirst to receive
            stress = math.random(4,8), -- Amount of stress to remove
            bartext = 'Drikker Logger..', -- Progress bar text
            bartime = math.random(2,5), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_glass_bottle', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_beer_logger', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.09), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['beer_piss'] = {
            alcoholcount = 1, -- Amount to increase alcohol count
            sickchance = math.random(8,14), -- Chance to be sick if risky = true
            removehealth = math.random(5, 10), -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(28,43), -- Amount of thirst to receive
            stress = math.random(5,11), -- Amount of stress to remove
            bartext = 'Drikker Pisshwasser..', -- Progress bar text
            bartime = math.random(2,5), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_glass_bottle', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_beer_pissh', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.09), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['beer_dusche'] = {
            alcoholcount = 1, -- Amount to increase alcohol count
            sickchance = math.random(4,10), -- Chance to be sick if risky = true
            removehealth = math.random(2,12), -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(22,40), -- Amount of thirst to receive
            stress = math.random(6,8), -- Amount of stress to remove
            bartext = 'Drikker Dusche..', -- Progress bar text
            bartime = math.random(2,5), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_glass_bottle', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_beerdusche', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.09), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['beer_patriot'] = {
            alcoholcount = 1, -- Amount to increase alcohol count
            sickchance = math.random(5,10), -- Chance to be sick if risky = true
            removehealth = math.random(5, 8), -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(25,40), -- Amount of thirst to receive
            stress = math.random(3,6), -- Amount of stress to remove
            bartext = 'Drikker Patriot..', -- Progress bar text
            bartime = math.random(2,5), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_glass_bottle', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_beer_patriot', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.09), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['beer_stz'] = {
            alcoholcount = 1, -- Amount to increase alcohol count
            sickchance = math.random(8,14), -- Chance to be sick if risky = true
            removehealth = math.random(5, 10), -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(28,43), -- Amount of thirst to receive
            stress = math.random(5,11), -- Amount of stress to remove
            bartext = 'Drikker Stronzo..', -- Progress bar text
            bartime = math.random(2,5), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_glass_bottle', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_beer_stz', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.09), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['beer_pride'] = {
            alcoholcount = 1, -- Amount to increase alcohol count
            sickchance = math.random(4,10), -- Chance to be sick if risky = true
            removehealth = math.random(2,12), -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(22,40), -- Amount of thirst to receive
            stress = math.random(6,8), -- Amount of stress to remove
            bartext = 'Drikker Pride..', -- Progress bar text
            bartime = math.random(2,5), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_glass_bottle', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_beer_pride', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.09), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['beer_jakey'] = {
            alcoholcount = 1, -- Amount to increase alcohol count
            sickchance = math.random(5,10), -- Chance to be sick if risky = true
            removehealth = math.random(5, 8), -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(25,40), -- Amount of thirst to receive
            stress = math.random(3,6), -- Amount of stress to remove
            bartext = 'Drikker Jakeys..', -- Progress bar text
            bartime = math.random(2,5), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_glass_bottle', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_beer_jakey', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.09), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['beer_bar'] = {
            alcoholcount = 1, -- Amount to increase alcohol count
            sickchance = math.random(6,12), -- Chance to be sick if risky = true
            removehealth = math.random(4, 10), -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(21,36), -- Amount of thirst to receive
            stress = math.random(4,8), -- Amount of stress to remove
            bartext = 'Drikker Barracho..', -- Progress bar text
            bartime = math.random(2,5), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_glass_bottle', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_beer_bar', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.09), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['beer_blr'] = {
            alcoholcount = 1, -- Amount to increase alcohol count
            sickchance = math.random(4,10), -- Chance to be sick if risky = true
            removehealth = math.random(2,12), -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(22,40), -- Amount of thirst to receive
            stress = math.random(6,8), -- Amount of stress to remove
            bartext = 'Drikker Blarneys..', -- Progress bar text
            bartime = math.random(2,5), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_glass_bottle', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_beer_blr', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.09), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['whiskey_mount'] = {
            alcoholcount = 4, -- Amount to increase alcohol count
            sickchance = math.random(30,55), -- Chance to be sick if risky = true
            removehealth = math.random(9,14), -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(35,49), -- Amount of thirst to receive
            stress = math.random(6,8), -- Amount of stress to remove
            bartext = 'Drikker Mount Whiskey..', -- Progress bar text
            bartime = math.random(5,8), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_glass_bottle', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_whiskey_bottle', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.09), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['whiskey'] = {
            alcoholcount = 4, -- Amount to increase alcohol count
            sickchance = math.random(30,55), -- Chance to be sick if risky = true
            removehealth = math.random(9,14), -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(35,49), -- Amount of thirst to receive
            stress = math.random(6,8), -- Amount of stress to remove
            bartext = 'Drikker whiskey..', -- Progress bar text
            bartime = math.random(5,8), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_glass_bottle', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_whiskey_bottle', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.09), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['whiskey_macbeth'] = {
            alcoholcount = 3, -- Amount to increase alcohol count
            sickchance = math.random(23,45), -- Chance to be sick if risky = true
            removehealth = math.random(5,11), -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(35,49), -- Amount of thirst to receive
            stress = math.random(6,8), -- Amount of stress to remove
            bartext = 'Drikker Macbeth Whiskey..', -- Progress bar text
            bartime = math.random(5,8), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_glass_bottle', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_bottle_macbeth', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.09), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['whiskey_richards'] = {
            alcoholcount = 4, -- Amount to increase alcohol count
            sickchance = math.random(30,55), -- Chance to be sick if risky = true
            removehealth = math.random(9,14), -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(35,49), -- Amount of thirst to receive
            stress = math.random(6,8), -- Amount of stress to remove
            bartext = 'Drikker Richards Whiskey..', -- Progress bar text
            bartime = math.random(5,8), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_glass_bottle', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_bottle_richard', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.09), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['brandy_cardi'] = {
            alcoholcount = 3, -- Amount to increase alcohol count
            sickchance = math.random(20,45), -- Chance to be sick if risky = true
            removehealth = math.random(8,12), -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(29,46), -- Amount of thirst to receive
            stress = math.random(7,11), -- Amount of stress to remove
            bartext = 'Drikker Cardiaque Brandy..', -- Progress bar text
            bartime = math.random(5,8), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_glass_bottle', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_bottle_brandy', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.09), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['brandy_cognac'] = {
            alcoholcount = 3, -- Amount to increase alcohol count
            sickchance = math.random(20,45), -- Chance to be sick if risky = true
            removehealth = math.random(8,12), -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(29,46), -- Amount of thirst to receive
            stress = math.random(7,11), -- Amount of stress to remove
            bartext = 'Drikker Cognac Brandy..', -- Progress bar text
            bartime = math.random(5,8), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_glass_bottle', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_bottle_cognac', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.09), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['vodka'] = {
            alcoholcount = 4, -- Amount to increase alcohol count
            sickchance = math.random(40,65), -- Chance to be sick if risky = true
            removehealth = math.random(11,19), -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(40,61), -- Amount of thirst to receive
            stress = math.random(6,8), -- Amount of stress to remove
            bartext = 'Drikker Vodka..', -- Progress bar text
            bartime = math.random(5,8), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_glass_bottle', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_vodka_bottle', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.09), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['rum'] = {
            alcoholcount = 3, -- Amount to increase alcohol count
            sickchance = math.random(15,35), -- Chance to be sick if risky = true
            removehealth = math.random(5,8), -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(31,58), -- Amount of thirst to receive
            stress = math.random(6,12), -- Amount of stress to remove
            bartext = 'Drikker Ragga Rum..', -- Progress bar text
            bartime = math.random(5,8), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_glass_bottle', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_rum_bottle', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.09), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['tequila'] = {
            alcoholcount = 3, -- Amount to increase alcohol count
            sickchance = math.random(15,35), -- Chance to be sick if risky = true
            removehealth = math.random(5,8), -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(31,58), -- Amount of thirst to receive
            stress = math.random(6,12), -- Amount of stress to remove
            bartext = 'Drikker Tequilya..', -- Progress bar text
            bartime = math.random(5,8), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_glass_bottle', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_tequila_bottle', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.09), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['shots'] = {
            alcoholcount = 3, -- Amount to increase alcohol count
            sickchance = math.random(15,35), -- Chance to be sick if risky = true
            removehealth = math.random(5,8), -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(31,58), -- Amount of thirst to receive
            stress = math.random(6,12), -- Amount of stress to remove
            bartext = 'Drikker Tequilya..', -- Progress bar text
            bartime = math.random(5,8), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_glass_bottle', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_tequila_bottle', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.09), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['cocktail'] = {
            alcoholcount = 3, -- Amount to increase alcohol count
            sickchance = math.random(15,35), -- Chance to be sick if risky = true
            removehealth = math.random(5,8), -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(31,58), -- Amount of thirst to receive
            stress = math.random(6,12), -- Amount of stress to remove
            bartext = 'Drikker Tequilya..', -- Progress bar text
            bartime = math.random(5,8), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_glass_bottle', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_tequila_bottle', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.09), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['slush'] = {
            alcoholcount = 3, -- Amount to increase alcohol count
            sickchance = math.random(15,35), -- Chance to be sick if risky = true
            removehealth = math.random(5,8), -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(31,58), -- Amount of thirst to receive
            stress = math.random(6,12), -- Amount of stress to remove
            bartext = 'Drikker Tequilya..', -- Progress bar text
            bartime = math.random(5,8), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_glass_bottle', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_tequila_bottle', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.09), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['drinks'] = {
            alcoholcount = 3, -- Amount to increase alcohol count
            sickchance = math.random(15,35), -- Chance to be sick if risky = true
            removehealth = math.random(5,8), -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(31,58), -- Amount of thirst to receive
            stress = math.random(6,12), -- Amount of stress to remove
            bartext = 'Drikker Tequilya..', -- Progress bar text
            bartime = math.random(5,8), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_glass_bottle', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_tequila_bottle', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.09), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

     


        ['wine_red'] = {
            alcoholcount = 5, -- Amount to increase alcohol count
            sickchance = math.random(25,45), -- Chance to be sick if risky = true
            removehealth = math.random(5,8), -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(50,69), -- Amount of thirst to receive
            stress = math.random(6,12), -- Amount of stress to remove
            bartext = 'Drikker Red Wine..', -- Progress bar text
            bartime = math.random(5,8), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_glass_bottle', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_wine_bot_01', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.09), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['wine'] = {
            alcoholcount = 5, -- Amount to increase alcohol count
            sickchance = math.random(25,45), -- Chance to be sick if risky = true
            removehealth = math.random(5,8), -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(50,69), -- Amount of thirst to receive
            stress = math.random(6,12), -- Amount of stress to remove
            bartext = 'Drikker vin..', -- Progress bar text
            bartime = math.random(5,8), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_glass_bottle', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_wine_bot_01', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.09), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['wine_rose'] = {
            alcoholcount = 5, -- Amount to increase alcohol count
            sickchance = math.random(25,45), -- Chance to be sick if risky = true
            removehealth = math.random(5,8), -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(50,69), -- Amount of thirst to receive
            stress = math.random(6,12), -- Amount of stress to remove
            bartext = 'Drikker Rose Wine..', -- Progress bar text
            bartime = math.random(5,8), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_glass_bottle', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_wine_rose', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.09), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['wine_white'] = {
            alcoholcount = 5, -- Amount to increase alcohol count
            sickchance = math.random(25,45), -- Chance to be sick if risky = true
            removehealth = math.random(5,8), -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(50,69), -- Amount of thirst to receive
            stress = math.random(6,12), -- Amount of stress to remove
            bartext = 'Drikker White Wine..', -- Progress bar text
            bartime = math.random(5,8), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_glass_bottle', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_wine_bot_02', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.09), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
    },
    Drinks = {
        ['water_bottle'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(28,45), -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Drikker vann..', -- Progress bar text
            bartime = math.random(2,5), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_plastic_bottle', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'ba_prop_club_water_bottle', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['casino_coffee'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(28,45), -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Drikker..', -- Progress bar text
            bartime = math.random(2,5), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_plastic_bottle', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'ba_prop_club_water_bottle', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['casino_coke'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(28,45), -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Drikker..', -- Progress bar text
            bartime = math.random(2,5), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_plastic_bottle', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'ba_prop_club_water_bottle', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['casino_sprite'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(28,45), -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Drikker..', -- Progress bar text
            bartime = math.random(2,5), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_plastic_bottle', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'ba_prop_club_water_bottle', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['kakao'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(80,100), -- Amount of thirst to receive
            stress = math.random(6,11), -- Amount of stress to remove
            bartext = 'Drikker kaffe..', -- Progress bar text
            bartime = math.random(2,5), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_can', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_ld_can_01', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['hotcaramellfall'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(80,100), -- Amount of thirst to receive
            stress = math.random(6,11), -- Amount of stress to remove
            bartext = 'Drikker..', -- Progress bar text
            bartime = math.random(2,5), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_can', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_ld_can_01', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['hothearty'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(80,100), -- Amount of thirst to receive
            stress = math.random(6,11), -- Amount of stress to remove
            bartext = 'Drikker..', -- Progress bar text
            bartime = math.random(2,5), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_can', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_ld_can_01', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        
        ['berryblizzard'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(80,100), -- Amount of thirst to receive
            stress = math.random(6,11), -- Amount of stress to remove
            bartext = 'Drikker..', -- Progress bar text
            bartime = math.random(2,5), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_can', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_ld_can_01', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['mangoblizzard'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(80,100), -- Amount of thirst to receive
            stress = math.random(6,11), -- Amount of stress to remove
            bartext = 'Drikker..', -- Progress bar text
            bartime = math.random(2,5), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_can', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_ld_can_01', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
    
        ['kaffe'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(80,100), -- Amount of thirst to receive
            stress = math.random(6,11), -- Amount of stress to remove
            bartext = 'Drikker kaffe..', -- Progress bar text
            bartime = math.random(2,5), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_can', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_ld_can_01', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
    
        ['kaffelatte'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(80,100), -- Amount of thirst to receive
            stress = math.random(6,11), -- Amount of stress to remove
            bartext = 'Drikker kaffe..', -- Progress bar text
            bartime = math.random(2,5), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_can', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_ld_can_01', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
    
        ['iste'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(80,100), -- Amount of thirst to receive
            stress = math.random(6,11), -- Amount of stress to remove
            bartext = 'Drikker kaffe..', -- Progress bar text
            bartime = math.random(2,5), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_can', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_ld_can_01', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
    
        ['te'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(80,100), -- Amount of thirst to receive
            stress = math.random(6,11), -- Amount of stress to remove
            bartext = 'Drikker kaffe..', -- Progress bar text
            bartime = math.random(2,5), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_can', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_ld_can_01', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['kurkakola'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(80,100), -- Amount of thirst to receive
            stress = math.random(6,11), -- Amount of stress to remove
            bartext = 'Drikker coca-cola..', -- Progress bar text
            bartime = math.random(2,5), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_can', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_ecola_can', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['coffee'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(80,100), -- Amount of thirst to receive
            stress = math.random(6,11), -- Amount of stress to remove
            bartext = 'Drikker kaffe..', -- Progress bar text
            bartime = math.random(2,5), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_can', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_ld_can_01', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['bobatea'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(80,100), -- Amount of thirst to receive
            stress = math.random(6,11), -- Amount of stress to remove
            bartext = 'Drikker boba te..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'uwu_sml_drink', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['smoothie'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(80,100), -- Amount of thirst to receive
            stress = math.random(6,11), -- Amount of stress to remove
            bartext = 'Drikker smoothie..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'uwu_sml_drink', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['milkshake'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(80,100), -- Amount of thirst to receive
            stress = math.random(6,11), -- Amount of stress to remove
            bartext = 'Drikker milkshake..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'uwu_sml_drink', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['bbobatea'] = {
            risky = true, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = math.random(15,40), -- Chance to be sick if risky = true
            removehealth = math.random(5,10), -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(80,100), -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Drikker blå boba te..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'uwu_lrg_drink', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['gbobatea'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(80,100), -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Drikke grønn boba te..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'uwu_lrg_drink', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['pbobatea'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(80,100), -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Drikker rosa boba te..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'uwu_lrg_drink', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },


        ['obobatea'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(80,100), -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Drikker oransj boba te..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'uwu_lrg_drink', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['nekolatte'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(80,100), -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Drikker Uwu kaffe..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'uwu_mug', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['mocha'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(80,100), -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Drikker Mocha Meow..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'uwu_sml_drink', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },


        ['monster1'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(60,80), -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Drikker Monster..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_can', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'brum_can_mountaindew', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['monster2'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(60,80), -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Drikker Monster..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_can', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'brum_can_mountaindew', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['monster3'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(60,80), -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Drikker Monster..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_can', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'brum_can_mountaindew', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['monster4'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(60,80), -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Drikker Monster..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_can', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'brum_can_mountaindew', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['monster5'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(60,80), -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Drikker Monster..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_can', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'brum_can_mountaindew', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['monster6'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(60,80), -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Drikker Monster..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_can', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'brum_can_mountaindew', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['monster7'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(60,80), -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Drikker Monster..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_can', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'brum_can_mountaindew', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['monster8'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(60,80), -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Drikker Monster..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_can', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'brum_can_mountaindew', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['monster9'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(60,80), -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Drikker Monster..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_can', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'brum_can_mountaindew', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['monster10'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(60,80), -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Drikker Monster..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_can', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'brum_can_mountaindew', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['monster11'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(60,80), -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Drikker Monster..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_can', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'brum_can_mountaindew', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['monster12'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(60,80), -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Drikker Monster..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_can', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'brum_can_mountaindew', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['monster13'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(60,80), -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Drikker Monster..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_can', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'brum_can_mountaindew', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['monster14'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(60,80), -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Drikker Monster..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_can', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'brum_can_mountaindew', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['monster15'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(60,80), -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Drikker Monster..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_can', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'brum_can_mountaindew', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['powerade1'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(60,80), -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Drikker Powerade..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_can', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'brum_prime_blueraspberrry', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['powerade2'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(60,80), -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Drikker Powerade..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_can', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'brum_prime_blueraspberrry', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['powerade3'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(60,80), -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Drikker Powerade..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_can', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'brum_prime_blueraspberrry', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['redbull1'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(60,80), -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Drikker red bull..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_can', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'brum_can_redbull', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['redbull2'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(60,80), -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Drikker red bull..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_can', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'brum_can_redbull', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['redbull3'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(60,80), -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Drikker red bull..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_can', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'brum_can_redbullsugarfree', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },


        ['burgershot_colab'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(60,80), -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Drikker cola..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_can', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_ecola_can', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['burgershot_colas'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(30,50), -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Drikker Cola..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_can', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_ecola_can', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['burgershot_coffee'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(30,50), -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Drikker Kaffe..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_can', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'brum_slothbucks', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['caremel_frappucino'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(30,50), -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Drikker Frappucino..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'empty_can', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'brum_slothbucks', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['caremel_frappucino'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(30,50), -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Drikker Frappucino..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'brum_slothbucks', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['chocolate_frappuccino'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(30,50), -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Drikker Frappucino..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'brum_slothbucks', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['coffee_frappuccino'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(30,50), -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Drikker Frappucino..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'brum_slothbucks', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['cold_brew_coffee'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(30,50), -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Drikker kaffe..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'brum_slothbucks', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['cold_brew_latte'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(30,50), -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Drikker kaffe latte..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'brum_slothbucks', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['double_choc_frappuccino'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(30,50), -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Drikker frappuccino..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'brum_slothbucks', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['green_tea_lemonade'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(30,50), -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Drikker te..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'brum_slothbucks', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['iced_caffe'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = 0, -- Amount of hunger to receive
            thirst = math.random(30,50), -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Drikker is kaffe..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true
            dict = 'mp_player_intdrink', -- Animation dictionary
            animation = 'loop_bottle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'brum_slothbucks', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(0.0, 0.0, 0.05), -- Prop coords 1
            rotation = vector3(0.0, 0.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },



        
    },
    Food = {
        ['sandwich'] = {
            risky = true, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = math.random(5,10), -- Chance to be sick if risky = true
            removehealth = math.random(5, 8), -- Amount of health to remove if risky = true
            hunger = math.random(12,30), -- Amount of hunger to receive
            thirst = 0, -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Spiser smørbrød..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true       
            dict = 'mp_player_inteat@burger', -- Animation dictionary
            animation = 'mp_player_int_eat_burger_fp', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_sandwich_01', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
            rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['biffsnadder'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = math.random(0,0), -- Chance to be sick if risky = true
            removehealth = math.random(5, 8), -- Amount of health to remove if risky = true
            hunger = math.random(80,100), -- Amount of hunger to receive
            thirst = 0, -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Spiser biffsnadder..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true       
            dict = 'anim@scripted@island@special_peds@pavel@hs4_pavel_ig5_caviar_p1', -- Animation dictionary
            animation = 'base_idle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'uwu_ramen_bowl', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
            rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['kyllingogfries'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = math.random(0,0), -- Chance to be sick if risky = true
            removehealth = math.random(5, 8), -- Amount of health to remove if risky = true
            hunger = math.random(80,100), -- Amount of hunger to receive
            thirst = 0, -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Spiser kylling og fries..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true       
            dict = 'anim@scripted@island@special_peds@pavel@hs4_pavel_ig5_caviar_p1', -- Animation dictionary
            animation = 'base_idle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'uwu_ramen_bowl', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
            rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['eggogbacon'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = math.random(0,0), -- Chance to be sick if risky = true
            removehealth = math.random(5, 8), -- Amount of health to remove if risky = true
            hunger = math.random(80,100), -- Amount of hunger to receive
            thirst = 0, -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Spiser egg og bacon..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true       
            dict = 'anim@scripted@island@special_peds@pavel@hs4_pavel_ig5_caviar_p1', -- Animation dictionary
            animation = 'base_idle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'uwu_ramen_bowl', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
            rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['grillpolse'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = math.random(0,0), -- Chance to be sick if risky = true
            removehealth = math.random(5, 8), -- Amount of health to remove if risky = true
            hunger = math.random(80,100), -- Amount of hunger to receive
            thirst = 0, -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Spiser grill pølse..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true       
            dict = 'mp_player_inteat@burger', -- Animation dictionary
            animation = 'mp_player_int_eat_burger_fp', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_cs_hotdog_01', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
            rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['pannekaker'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = math.random(0,0), -- Chance to be sick if risky = true
            removehealth = math.random(5, 8), -- Amount of health to remove if risky = true
            hunger = math.random(80,100), -- Amount of hunger to receive
            thirst = 0, -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Spiser pannekaker..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true       
            dict = 'anim@scripted@island@special_peds@pavel@hs4_pavel_ig5_caviar_p1', -- Animation dictionary
            animation = 'base_idle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'uwu_ramen_bowl', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
            rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['donuts'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = math.random(0,0), -- Chance to be sick if risky = true
            removehealth = math.random(5, 8), -- Amount of health to remove if risky = true
            hunger = math.random(80,100), -- Amount of hunger to receive
            thirst = 0, -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Spiser donuts..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true       
            dict = 'mp_player_inteat@burger', -- Animation dictionary
            animation = 'mp_player_int_eat_burger_fp', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_donut_01', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
            rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['kebab'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = math.random(0,0), -- Chance to be sick if risky = true
            removehealth = math.random(5, 8), -- Amount of health to remove if risky = true
            hunger = math.random(80,100), -- Amount of hunger to receive
            thirst = 0, -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Spiser kebab..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true       
            dict = 'mp_player_inteat@burger', -- Animation dictionary
            animation = 'mp_player_int_eat_burger_fp', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_sandwich_01', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
            rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['casino_sandwitch'] = {
            risky = true, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = math.random(5,10), -- Chance to be sick if risky = true
            removehealth = math.random(5, 8), -- Amount of health to remove if risky = true
            hunger = math.random(12,30), -- Amount of hunger to receive
            thirst = 0, -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Spiser smørbrød..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true       
            dict = 'mp_player_inteat@burger', -- Animation dictionary
            animation = 'mp_player_int_eat_burger_fp', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_sandwich_01', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
            rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['casino_burger'] = {
            risky = true, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = math.random(5,10), -- Chance to be sick if risky = true
            removehealth = math.random(5, 8), -- Amount of health to remove if risky = true
            hunger = math.random(12,30), -- Amount of hunger to receive
            thirst = 0, -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Spiser..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true       
            dict = 'mp_player_inteat@burger', -- Animation dictionary
            animation = 'mp_player_int_eat_burger_fp', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_sandwich_01', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
            rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },


        ['tosti'] = {
            risky = true, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = math.random(5,10), -- Chance to be sick if risky = true
            removehealth = math.random(5, 8), -- Amount of health to remove if risky = true
            hunger = math.random(12,35), -- Amount of hunger to receive
            thirst = 0, -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Spiser ostesmørbrød..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true       
            dict = 'mp_player_inteat@burger', -- Animation dictionary
            animation = 'mp_player_int_eat_burger_fp', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_sandwich_01', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
            rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['twerks_candy'] = {
            risky = true, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = math.random(5,10), -- Chance to be sick if risky = true
            removehealth = math.random(5, 8), -- Amount of health to remove if risky = true
            hunger = math.random(12,30), -- Amount of hunger to receive
            thirst = 0, -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Spiser twix..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true       
            dict = 'mp_player_inteat@burger', -- Animation dictionary
            animation = 'mp_player_int_eat_burger_fp', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_choc_meto', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
            rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['snikkel_candy'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = math.random(12,30), -- Amount of hunger to receive
            thirst = 0, -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Spiser snickers..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'wrapper', -- Item to return if returns = true       
            dict = 'mp_player_inteat@burger', -- Animation dictionary
            animation = 'mp_player_int_eat_burger_fp', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_choc_meto', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
            rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['miso'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = math.random(60,80), -- Amount of hunger to receive
            thirst = 0, -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Spiser miso suppe..', -- Progress bar text
            bartime = math.random(5,12), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'wrapper', -- Item to return if returns = true       
            dict = 'anim@scripted@island@special_peds@pavel@hs4_pavel_ig5_caviar_p1', -- Animation dictionary
            animation = 'base_idle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'uwu_ramen_bowl', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
            rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['cake'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = math.random(60,80), -- Amount of hunger to receive
            thirst = 0, -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Spiser kake..', -- Progress bar text
            bartime = math.random(10,15), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true       
            dict = 'mp_player_inteat@burger', -- Animation dictionary
            animation = 'mp_player_int_eat_burger_fp', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'uwu_cupcake', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
            rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },


        ['bento'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = math.random(60,80), -- Amount of hunger to receive
            thirst = 0, -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Spiser bento..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true       
            dict = 'mp_player_inteat@burger', -- Animation dictionary
            animation = 'mp_player_int_eat_burger_fp', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'uwu_sushi', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
            rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['riceball'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = '', -- Chance to be sick if risky = true
            removehealth = '', -- Amount of health to remove if risky = true
            hunger = math.random(60,80), -- Amount of hunger to receive
            thirst = 0, -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Spiser neko onigiri..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true       
            dict = 'anim@scripted@island@special_peds@pavel@hs4_pavel_ig5_caviar_p1', -- Animation dictionary
            animation = 'base_idle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'uwu_salad_bowl', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
            rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['nekocookie'] = {
            risky = true, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = math.random(5,10), -- Chance to be sick if risky = true
            removehealth = math.random(5, 8), -- Amount of health to remove if risky = true
            hunger = math.random(40,60), -- Amount of hunger to receive
            thirst = 0, -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Spiser neko kjeks..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true       
            dict = 'mp_player_inteat@burger', -- Animation dictionary
            animation = 'mp_player_int_eat_burger_fp', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'uwu_cookie', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
            rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['nekodonut'] = {
            risky = true, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = math.random(5,10), -- Chance to be sick if risky = true
            removehealth = math.random(5, 8), -- Amount of health to remove if risky = true
            hunger = math.random(40,60), -- Amount of hunger to receive
            thirst = 0, -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Spiser donut..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true       
            dict = 'mp_player_inteat@burger', -- Animation dictionary
            animation = 'mp_player_int_eat_burger_fp', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_amb_donut', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
            rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['casino_donut'] = {
            risky = true, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = math.random(5,10), -- Chance to be sick if risky = true
            removehealth = math.random(5, 8), -- Amount of health to remove if risky = true
            hunger = math.random(40,60), -- Amount of hunger to receive
            thirst = 0, -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Spiser donut..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true       
            dict = 'mp_player_inteat@burger', -- Animation dictionary
            animation = 'mp_player_int_eat_burger_fp', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_amb_donut', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
            rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['bmochi'] = {
            risky = true, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = math.random(5,10), -- Chance to be sick if risky = true
            removehealth = math.random(5, 8), -- Amount of health to remove if risky = true
            hunger = math.random(40,60), -- Amount of hunger to receive
            thirst = 0, -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Spiser blå mochi..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true       
            dict = 'mp_player_inteat@burger', -- Animation dictionary
            animation = 'mp_player_int_eat_burger_fp', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'uwu_pdasik', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
            rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['pmochi'] = {
            risky = true, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = math.random(5,10), -- Chance to be sick if risky = true
            removehealth = math.random(5, 8), -- Amount of health to remove if risky = true
            hunger = math.random(40,60), -- Amount of hunger to receive
            thirst = 0, -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Spiser rosa mochi..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true       
            dict = 'mp_player_inteat@burger', -- Animation dictionary
            animation = 'mp_player_int_eat_burger_fp', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'uwu_pdasik', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
            rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['gmochi'] = {
            risky = true, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = math.random(5,10), -- Chance to be sick if risky = true
            removehealth = math.random(5, 8), -- Amount of health to remove if risky = true
            hunger = math.random(40,60), -- Amount of hunger to receive
            thirst = 0, -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Spiser grønn mochi..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true       
            dict = 'mp_player_inteat@burger', -- Animation dictionary
            animation = 'mp_player_int_eat_burger_fp', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'uwu_pdasik', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
            rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['omochi'] = {
            risky = true, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = math.random(5,10), -- Chance to be sick if risky = true
            removehealth = math.random(5, 8), -- Amount of health to remove if risky = true
            hunger = math.random(40,60), -- Amount of hunger to receive
            thirst = 0, -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Spiser oransj mochi..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true       
            dict = 'mp_player_inteat@burger', -- Animation dictionary
            animation = 'mp_player_int_eat_burger_fp', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'uwu_pdasik', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
            rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['cakepop'] = {
            risky = true, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = math.random(5,10), -- Chance to be sick if risky = true
            removehealth = math.random(5, 8), -- Amount of health to remove if risky = true
            hunger = math.random(40,60), -- Amount of hunger to receive
            thirst = 0, -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Spiser katte cake-pop..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true       
            dict = 'mp_player_inteat@burger', -- Animation dictionary
            animation = 'mp_player_int_eat_burger_fp', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'uwu_pdasik', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
            rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['pancake'] = {
            risky = true, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = math.random(5,10), -- Chance to be sick if risky = true
            removehealth = math.random(5, 8), -- Amount of health to remove if risky = true
            hunger = math.random(60,80), -- Amount of hunger to receive
            thirst = 0, -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Spiser katte cake-pop..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true       
            dict = 'mp_player_inteat@burger', -- Animation dictionary
            animation = 'mp_player_int_eat_burger_fp', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'uwu_pastry', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
            rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['pizza'] = {
            risky = true, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = math.random(5,10), -- Chance to be sick if risky = true
            removehealth = math.random(5, 8), -- Amount of health to remove if risky = true
            hunger = math.random(60,80), -- Amount of hunger to receive
            thirst = 0, -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Spiser pizza..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true       
            dict = 'anim@scripted@island@special_peds@pavel@hs4_pavel_ig5_caviar_p1', -- Animation dictionary
            animation = 'base_idle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'v_res_tt_pizzaplate', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
            rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['purrito'] = {
            risky = true, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = math.random(5,10), -- Chance to be sick if risky = true
            removehealth = math.random(5, 8), -- Amount of health to remove if risky = true
            hunger = math.random(60,80), -- Amount of hunger to receive
            thirst = 0, -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Spiser purrito..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true       
            dict = 'mp_player_inteat@burger', -- Animation dictionary
            animation = 'mp_player_int_eat_burger_fp', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'uwu_pastry', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
            rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['noodlebowl'] = {
            risky = true, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = math.random(5,10), -- Chance to be sick if risky = true
            removehealth = math.random(5, 8), -- Amount of health to remove if risky = true
            hunger = math.random(60,80), -- Amount of hunger to receive
            thirst = 0, -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Spiser nudler..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true       
            dict = 'anim@scripted@island@special_peds@pavel@hs4_pavel_ig5_caviar_p1', -- Animation dictionary
            animation = 'base_idle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'uwu_ramen_bowl', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
            rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['ramen'] = {
            risky = true, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = math.random(5,10), -- Chance to be sick if risky = true
            removehealth = math.random(5, 8), -- Amount of health to remove if risky = true
            hunger = math.random(60,80), -- Amount of hunger to receive
            thirst = 0, -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Spiser ramen..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true       
            dict = 'anim@scripted@island@special_peds@pavel@hs4_pavel_ig5_caviar_p1', -- Animation dictionary
            animation = 'base_idle', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'uwu_ramen_bowl', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
            rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },


        ['burgershot_bigking'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = math.random(5,10), -- Chance to be sick if risky = true
            removehealth = math.random(5, 8), -- Amount of health to remove if risky = true
            hunger = math.random(60,80), -- Amount of hunger to receive
            thirst = 0, -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Spiser hamburger..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true       
            dict = 'mp_player_inteat@burger', -- Animation dictionary
            animation = 'mp_player_int_eat_burger_fp', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_cs_burger_01', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
            rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['burgershot_bleeder'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = math.random(5,10), -- Chance to be sick if risky = true
            removehealth = math.random(5, 8), -- Amount of health to remove if risky = true
            hunger = math.random(60,80), -- Amount of hunger to receive
            thirst = 0, -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Spiser hamburger..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true       
            dict = 'mp_player_inteat@burger', -- Animation dictionary
            animation = 'mp_player_int_eat_burger_fp', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_cs_burger_01', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
            rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['burgershot_goatwrap'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = math.random(5,10), -- Chance to be sick if risky = true
            removehealth = math.random(5, 8), -- Amount of health to remove if risky = true
            hunger = math.random(60,80), -- Amount of hunger to receive
            thirst = 0, -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Spiser hamburger..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true       
            dict = 'mp_player_inteat@burger', -- Animation dictionary
            animation = 'mp_player_int_eat_burger_fp', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_food_bs_burger2', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
            rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['burgershot_macaroon'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = math.random(5,10), -- Chance to be sick if risky = true
            removehealth = math.random(5, 8), -- Amount of health to remove if risky = true
            hunger = math.random(60,80), -- Amount of hunger to receive
            thirst = 0, -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Spiser hamburger..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true       
            dict = 'mp_player_inteat@burger', -- Animation dictionary
            animation = 'mp_player_int_eat_burger_fp', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_donut_02', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
            rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['burgershot_patatob'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = math.random(5,10), -- Chance to be sick if risky = true
            removehealth = math.random(5, 8), -- Amount of health to remove if risky = true
            hunger = math.random(60,80), -- Amount of hunger to receive
            thirst = 0, -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Spiser pommes frites..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true       
            dict = 'mp_player_inteat@burger', -- Animation dictionary
            animation = 'mp_player_int_eat_burger_fp', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_food_chips', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
            rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['burgershot_patatos'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = math.random(5,10), -- Chance to be sick if risky = true
            removehealth = math.random(5, 8), -- Amount of health to remove if risky = true
            hunger = math.random(30,40), -- Amount of hunger to receive
            thirst = 0, -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Spiser pommes frites..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true       
            dict = 'mp_player_inteat@burger', -- Animation dictionary
            animation = 'mp_player_int_eat_burger_fp', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_food_chips', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
            rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['burgershot_shotnuggets'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = math.random(5,10), -- Chance to be sick if risky = true
            removehealth = math.random(5, 8), -- Amount of health to remove if risky = true
            hunger = math.random(30,40), -- Amount of hunger to receive
            thirst = 0, -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Spiser nuggets..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true       
            dict = 'mp_player_inteat@burger', -- Animation dictionary
            animation = 'mp_player_int_eat_burger_fp', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_food_chips', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
            rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['burgershot_shotrings'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = math.random(5,10), -- Chance to be sick if risky = true
            removehealth = math.random(5, 8), -- Amount of health to remove if risky = true
            hunger = math.random(30,40), -- Amount of hunger to receive
            thirst = 0, -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Spiser løkringer..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true       
            dict = 'mp_player_inteat@burger', -- Animation dictionary
            animation = 'mp_player_int_eat_burger_fp', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'prop_food_chips', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
            rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },
        ['burgershot_thesmurfsicecream'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = math.random(5,10), -- Chance to be sick if risky = true
            removehealth = math.random(5, 8), -- Amount of health to remove if risky = true
            hunger = math.random(30,40), -- Amount of hunger to receive
            thirst = 0, -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Spiser iskrem..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true       
            dict = 'mp_player_inteat@burger', -- Animation dictionary
            animation = 'mp_player_int_eat_burger_fp', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'brum_shake_bubblegum', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
            rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },


        ['burgershot_smurfetteicecream'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = math.random(5,10), -- Chance to be sick if risky = true
            removehealth = math.random(5, 8), -- Amount of health to remove if risky = true
            hunger = math.random(30,40), -- Amount of hunger to receive
            thirst = 0, -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Spiser iskrem..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true       
            dict = 'mp_player_inteat@burger', -- Animation dictionary
            animation = 'mp_player_int_eat_burger_fp', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'brum_shake_bubblegum', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
            rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['burgershot_matchaicecream'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = math.random(5,10), -- Chance to be sick if risky = true
            removehealth = math.random(5, 8), -- Amount of health to remove if risky = true
            hunger = math.random(30,40), -- Amount of hunger to receive
            thirst = 0, -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Spiser iskrem..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true       
            dict = 'mp_player_inteat@burger', -- Animation dictionary
            animation = 'mp_player_int_eat_burger_fp', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'brum_shake_bubblegum', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
            rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['burgershot_ubeicecream'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = math.random(5,10), -- Chance to be sick if risky = true
            removehealth = math.random(5, 8), -- Amount of health to remove if risky = true
            hunger = math.random(30,40), -- Amount of hunger to receive
            thirst = 0, -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Spiser iskrem..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true       
            dict = 'mp_player_inteat@burger', -- Animation dictionary
            animation = 'mp_player_int_eat_burger_fp', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'brum_shake_bubblegum', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
            rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['burgershot_unicornicecream'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = math.random(5,10), -- Chance to be sick if risky = true
            removehealth = math.random(5, 8), -- Amount of health to remove if risky = true
            hunger = math.random(30,40), -- Amount of hunger to receive
            thirst = 0, -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Spiser iskrem..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true       
            dict = 'mp_player_inteat@burger', -- Animation dictionary
            animation = 'mp_player_int_eat_burger_fp', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'brum_shake_bubblegum', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
            rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['burgershot_vanillaicecream'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = math.random(5,10), -- Chance to be sick if risky = true
            removehealth = math.random(5, 8), -- Amount of health to remove if risky = true
            hunger = math.random(30,40), -- Amount of hunger to receive
            thirst = 0, -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Spiser iskrem..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true       
            dict = 'mp_player_inteat@burger', -- Animation dictionary
            animation = 'mp_player_int_eat_burger_fp', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'brum_shake_bubblegum', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
            rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['burgershot_chocolateicecream'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = math.random(5,10), -- Chance to be sick if risky = true
            removehealth = math.random(5, 8), -- Amount of health to remove if risky = true
            hunger = math.random(30,40), -- Amount of hunger to receive
            thirst = 0, -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Spiser iskrem..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true       
            dict = 'mp_player_inteat@burger', -- Animation dictionary
            animation = 'mp_player_int_eat_burger_fp', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'brum_shake_bubblegum', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
            rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        ['burgershot_strawberryicecream'] = {
            risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
            sickchance = math.random(5,10), -- Chance to be sick if risky = true
            removehealth = math.random(5, 8), -- Amount of health to remove if risky = true
            hunger = math.random(30,40), -- Amount of hunger to receive
            thirst = 0, -- Amount of thirst to receive
            stress = math.random(5,9), -- Amount of stress to remove
            bartext = 'Spiser iskrem..', -- Progress bar text
            bartime = math.random(5,10), -- Progress bar time
            shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
            returnitem = 'cardboard', -- Item to return if returns = true       
            dict = 'mp_player_inteat@burger', -- Animation dictionary
            animation = 'mp_player_int_eat_burger_fp', -- Animation
            flags = 49, -- Animation flags
            dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
            prop = 'brum_shake_bubblegum', -- Prop 1
            bones = 60309, -- Bone index 1
            coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
            rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
            prop2 = '', -- Prop 2
            bones2 = '', -- Bone index 2
            coords2 = '', -- Prop coords 2
            rotation2 = '' -- Prop rotation 2
        },

        -- kaffehjornet & treys
    ['baguettostogskinke'] = {
        risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
        sickchance = '', -- Chance to be sick if risky = true
        removehealth = '', -- Amount of health to remove if risky = true
        hunger = math.random(80,100), -- Amount of hunger to receive
        thirst = 0, -- Amount of thirst to receive
        stress = math.random(5,9), -- Amount of stress to remove
        bartext = 'Spiser mat..', -- Progress bar text
        bartime = math.random(10,15), -- Progress bar time
        shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
        returnitem = 'cardboard', -- Item to return if returns = true       
        dict = 'mp_player_inteat@burger', -- Animation dictionary
        animation = 'mp_player_int_eat_burger_fp', -- Animation
        flags = 49, -- Animation flags
        dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
        prop = 'uwu_cupcake', -- Prop 1
        bones = 60309, -- Bone index 1
        coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
        rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
        prop2 = '', -- Prop 2
        bones2 = '', -- Bone index 2
        coords2 = '', -- Prop coords 2
        rotation2 = '' -- Prop rotation 2
    },

    ['kyllingbaguette'] = {
        risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
        sickchance = '', -- Chance to be sick if risky = true
        removehealth = '', -- Amount of health to remove if risky = true
        hunger = math.random(80,100), -- Amount of hunger to receive
        thirst = 0, -- Amount of thirst to receive
        stress = math.random(5,9), -- Amount of stress to remove
        bartext = 'Spiser mat..', -- Progress bar text
        bartime = math.random(10,15), -- Progress bar time
        shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
        returnitem = 'cardboard', -- Item to return if returns = true       
        dict = 'mp_player_inteat@burger', -- Animation dictionary
        animation = 'mp_player_int_eat_burger_fp', -- Animation
        flags = 49, -- Animation flags
        dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
        prop = 'prop_cs_burger_01', -- Prop 1
        bones = 60309, -- Bone index 1
        coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
        rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
        prop2 = '', -- Prop 2
        bones2 = '', -- Bone index 2
        coords2 = '', -- Prop coords 2
        rotation2 = '' -- Prop rotation 2
    },

    ['tacobaguette'] = {
        risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
        sickchance = '', -- Chance to be sick if risky = true
        removehealth = '', -- Amount of health to remove if risky = true
        hunger = math.random(80,100), -- Amount of hunger to receive
        thirst = 0, -- Amount of thirst to receive
        stress = math.random(5,9), -- Amount of stress to remove
        bartext = 'Spiser mat..', -- Progress bar text
        bartime = math.random(10,15), -- Progress bar time
        shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
        returnitem = 'cardboard', -- Item to return if returns = true       
        dict = 'mp_player_inteat@burger', -- Animation dictionary
        animation = 'mp_player_int_eat_burger_fp', -- Animation
        flags = 49, -- Animation flags
        dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
        prop = 'prop_cs_burger_01', -- Prop 1
        bones = 60309, -- Bone index 1
        coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
        rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
        prop2 = '', -- Prop 2
        bones2 = '', -- Bone index 2
        coords2 = '', -- Prop coords 2
        rotation2 = '' -- Prop rotation 2
    },

    ['musli'] = {
        risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
        sickchance = '', -- Chance to be sick if risky = true
        removehealth = '', -- Amount of health to remove if risky = true
        hunger = math.random(80,100), -- Amount of hunger to receive
        thirst = 0, -- Amount of thirst to receive
        stress = math.random(5,9), -- Amount of stress to remove
        bartext = 'Spiser mat..', -- Progress bar text
        bartime = math.random(10,15), -- Progress bar time
        shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
        returnitem = 'cardboard', -- Item to return if returns = true       
        dict = 'mp_player_inteat@burger', -- Animation dictionary
        animation = 'mp_player_int_eat_burger_fp', -- Animation
        flags = 49, -- Animation flags
        dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
        prop = 'uwu_ramen_bowl', -- Prop 1
        bones = 60309, -- Bone index 1
        coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
        rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
        prop2 = '', -- Prop 2
        bones2 = '', -- Bone index 2
        coords2 = '', -- Prop coords 2
        rotation2 = '' -- Prop rotation 2
    },

    ['pastasalat'] = {
        risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
        sickchance = '', -- Chance to be sick if risky = true
        removehealth = '', -- Amount of health to remove if risky = true
        hunger = math.random(80,100), -- Amount of hunger to receive
        thirst = 0, -- Amount of thirst to receive
        stress = math.random(5,9), -- Amount of stress to remove
        bartext = 'Spiser mat..', -- Progress bar text
        bartime = math.random(10,15), -- Progress bar time
        shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
        returnitem = 'cardboard', -- Item to return if returns = true       
        dict = 'mp_player_inteat@burger', -- Animation dictionary
        animation = 'mp_player_int_eat_burger_fp', -- Animation
        flags = 49, -- Animation flags
        dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
        prop = 'uwu_ramen_bowl', -- Prop 1
        bones = 60309, -- Bone index 1
        coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
        rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
        prop2 = '', -- Prop 2
        bones2 = '', -- Bone index 2
        coords2 = '', -- Prop coords 2
        rotation2 = '' -- Prop rotation 2
    },

    ['sjokoladekake'] = {
        risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
        sickchance = '', -- Chance to be sick if risky = true
        removehealth = '', -- Amount of health to remove if risky = true
        hunger = math.random(80,100), -- Amount of hunger to receive
        thirst = 0, -- Amount of thirst to receive
        stress = math.random(5,9), -- Amount of stress to remove
        bartext = 'Spiser mat..', -- Progress bar text
        bartime = math.random(10,15), -- Progress bar time
        shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
        returnitem = 'cardboard', -- Item to return if returns = true       
        dict = 'mp_player_inteat@burger', -- Animation dictionary
        animation = 'mp_player_int_eat_burger_fp', -- Animation
        flags = 49, -- Animation flags
        dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
        prop = 'uwu_cupcake', -- Prop 1
        bones = 60309, -- Bone index 1
        coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
        rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
        prop2 = '', -- Prop 2
        bones2 = '', -- Bone index 2
        coords2 = '', -- Prop coords 2
        rotation2 = '' -- Prop rotation 2
    },

    ['eplekake'] = {
        risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
        sickchance = '', -- Chance to be sick if risky = true
        removehealth = '', -- Amount of health to remove if risky = true
        hunger = math.random(80,100), -- Amount of hunger to receive
        thirst = 0, -- Amount of thirst to receive
        stress = math.random(5,9), -- Amount of stress to remove
        bartext = 'Spiser mat..', -- Progress bar text
        bartime = math.random(10,15), -- Progress bar time
        shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
        returnitem = 'cardboard', -- Item to return if returns = true       
        dict = 'mp_player_inteat@burger', -- Animation dictionary
        animation = 'mp_player_int_eat_burger_fp', -- Animation
        flags = 49, -- Animation flags
        dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
        prop = 'uwu_cupcake', -- Prop 1
        bones = 60309, -- Bone index 1
        coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
        rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
        prop2 = '', -- Prop 2
        bones2 = '', -- Bone index 2
        coords2 = '', -- Prop coords 2
        rotation2 = '' -- Prop rotation 2
    },

    ['skillingsbolle'] = {
        risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
        sickchance = '', -- Chance to be sick if risky = true
        removehealth = '', -- Amount of health to remove if risky = true
        hunger = math.random(80,100), -- Amount of hunger to receive
        thirst = 0, -- Amount of thirst to receive
        stress = math.random(5,9), -- Amount of stress to remove
        bartext = 'Spiser mat..', -- Progress bar text
        bartime = math.random(10,15), -- Progress bar time
        shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
        returnitem = 'cardboard', -- Item to return if returns = true       
        dict = 'mp_player_inteat@burger', -- Animation dictionary
        animation = 'mp_player_int_eat_burger_fp', -- Animation
        flags = 49, -- Animation flags
        dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
        prop = 'uwu_cupcake', -- Prop 1
        bones = 60309, -- Bone index 1
        coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
        rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
        prop2 = '', -- Prop 2
        bones2 = '', -- Bone index 2
        coords2 = '', -- Prop coords 2
        rotation2 = '' -- Prop rotation 2
    },

    ['kanelsnurr'] = {
        risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
        sickchance = '', -- Chance to be sick if risky = true
        removehealth = '', -- Amount of health to remove if risky = true
        hunger = math.random(80,100), -- Amount of hunger to receive
        thirst = 0, -- Amount of thirst to receive
        stress = math.random(5,9), -- Amount of stress to remove
        bartext = 'Spiser mat..', -- Progress bar text
        bartime = math.random(10,15), -- Progress bar time
        shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
        returnitem = 'cardboard', -- Item to return if returns = true       
        dict = 'mp_player_inteat@burger', -- Animation dictionary
        animation = 'mp_player_int_eat_burger_fp', -- Animation
        flags = 49, -- Animation flags
        dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
        prop = 'uwu_cupcake', -- Prop 1
        bones = 60309, -- Bone index 1
        coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
        rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
        prop2 = '', -- Prop 2
        bones2 = '', -- Bone index 2
        coords2 = '', -- Prop coords 2
        rotation2 = '' -- Prop rotation 2
    },

    ['skolebolle'] = {
        risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
        sickchance = '', -- Chance to be sick if risky = true
        removehealth = '', -- Amount of health to remove if risky = true
        hunger = math.random(80,100), -- Amount of hunger to receive
        thirst = 0, -- Amount of thirst to receive
        stress = math.random(5,9), -- Amount of stress to remove
        bartext = 'Spiser mat..', -- Progress bar text
        bartime = math.random(10,15), -- Progress bar time
        shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
        returnitem = 'cardboard', -- Item to return if returns = true       
        dict = 'mp_player_inteat@burger', -- Animation dictionary
        animation = 'mp_player_int_eat_burger_fp', -- Animation
        flags = 49, -- Animation flags
        dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
        prop = 'uwu_cupcake', -- Prop 1
        bones = 60309, -- Bone index 1
        coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
        rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
        prop2 = '', -- Prop 2
        bones2 = '', -- Bone index 2
        coords2 = '', -- Prop coords 2
        rotation2 = '' -- Prop rotation 2
    },

    ['fruktblanding'] = {
        risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
        sickchance = '', -- Chance to be sick if risky = true
        removehealth = '', -- Amount of health to remove if risky = true
        hunger = math.random(80,100), -- Amount of hunger to receive
        thirst = 0, -- Amount of thirst to receive
        stress = math.random(5,9), -- Amount of stress to remove
        bartext = 'Spiser mat..', -- Progress bar text
        bartime = math.random(10,15), -- Progress bar time
        shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
        returnitem = 'cardboard', -- Item to return if returns = true       
        dict = 'mp_player_inteat@burger', -- Animation dictionary
        animation = 'mp_player_int_eat_burger_fp', -- Animation
        flags = 49, -- Animation flags
        dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
        prop = 'uwu_ramen_bowl', -- Prop 1
        bones = 60309, -- Bone index 1
        coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
        rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
        prop2 = '', -- Prop 2
        bones2 = '', -- Bone index 2
        coords2 = '', -- Prop coords 2
        rotation2 = '' -- Prop rotation 2
    },

    ['baconlover'] = {
        risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
        sickchance = '', -- Chance to be sick if risky = true
        removehealth = '', -- Amount of health to remove if risky = true
        hunger = math.random(80,100), -- Amount of hunger to receive
        thirst = 0, -- Amount of thirst to receive
        stress = math.random(5,9), -- Amount of stress to remove
        bartext = 'Spiser mat..', -- Progress bar text
        bartime = math.random(10,15), -- Progress bar time
        shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
        returnitem = 'cardboard', -- Item to return if returns = true       
        dict = 'mp_player_inteat@burger', -- Animation dictionary
        animation = 'mp_player_int_eat_burger_fp', -- Animation
        flags = 49, -- Animation flags
        dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
        prop = 'prop_sandwich_01', -- Prop 1
        bones = 60309, -- Bone index 1
        coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
        rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
        prop2 = '', -- Prop 2
        bones2 = '', -- Bone index 2
        coords2 = '', -- Prop coords 2
        rotation2 = '' -- Prop rotation 2
    },

    ['cheesyheaven'] = {
        risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
        sickchance = '', -- Chance to be sick if risky = true
        removehealth = '', -- Amount of health to remove if risky = true
        hunger = math.random(80,100), -- Amount of hunger to receive
        thirst = 0, -- Amount of thirst to receive
        stress = math.random(5,9), -- Amount of stress to remove
        bartext = 'Spiser mat..', -- Progress bar text
        bartime = math.random(10,15), -- Progress bar time
        shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
        returnitem = 'cardboard', -- Item to return if returns = true       
        dict = 'mp_player_inteat@burger', -- Animation dictionary
        animation = 'mp_player_int_eat_burger_fp', -- Animation
        flags = 49, -- Animation flags
        dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
        prop = 'prop_sandwich_01', -- Prop 1
        bones = 60309, -- Bone index 1
        coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
        rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
        prop2 = '', -- Prop 2
        bones2 = '', -- Bone index 2
        coords2 = '', -- Prop coords 2
        rotation2 = '' -- Prop rotation 2
    },

    ['caramelprince'] = {
        risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
        sickchance = '', -- Chance to be sick if risky = true
        removehealth = '', -- Amount of health to remove if risky = true
        hunger = math.random(80,100), -- Amount of hunger to receive
        thirst = 0, -- Amount of thirst to receive
        stress = math.random(5,9), -- Amount of stress to remove
        bartext = 'Spiser mat..', -- Progress bar text
        bartime = math.random(10,15), -- Progress bar time
        shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
        returnitem = 'cardboard', -- Item to return if returns = true       
        dict = 'mp_player_inteat@burger', -- Animation dictionary
        animation = 'mp_player_int_eat_burger_fp', -- Animation
        flags = 49, -- Animation flags
        dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
        prop = 'uwu_cupcake', -- Prop 1
        bones = 60309, -- Bone index 1
        coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
        rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
        prop2 = '', -- Prop 2
        bones2 = '', -- Bone index 2
        coords2 = '', -- Prop coords 2
        rotation2 = '' -- Prop rotation 2
    },

    ['princessofsweets'] = {
        risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
        sickchance = '', -- Chance to be sick if risky = true
        removehealth = '', -- Amount of health to remove if risky = true
        hunger = math.random(80,100), -- Amount of hunger to receive
        thirst = 0, -- Amount of thirst to receive
        stress = math.random(5,9), -- Amount of stress to remove
        bartext = 'Spiser mat..', -- Progress bar text
        bartime = math.random(10,15), -- Progress bar time
        shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
        returnitem = 'cardboard', -- Item to return if returns = true       
        dict = 'mp_player_inteat@burger', -- Animation dictionary
        animation = 'mp_player_int_eat_burger_fp', -- Animation
        flags = 49, -- Animation flags
        dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
        prop = 'uwu_cupcake', -- Prop 1
        bones = 60309, -- Bone index 1
        coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
        rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
        prop2 = '', -- Prop 2
        bones2 = '', -- Bone index 2
        coords2 = '', -- Prop coords 2
        rotation2 = '' -- Prop rotation 2
    },

    ['dukeofapples'] = {
        risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
        sickchance = '', -- Chance to be sick if risky = true
        removehealth = '', -- Amount of health to remove if risky = true
        hunger = math.random(80,100), -- Amount of hunger to receive
        thirst = 0, -- Amount of thirst to receive
        stress = math.random(5,9), -- Amount of stress to remove
        bartext = 'Spiser mat..', -- Progress bar text
        bartime = math.random(10,15), -- Progress bar time
        shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
        returnitem = 'cardboard', -- Item to return if returns = true       
        dict = 'mp_player_inteat@burger', -- Animation dictionary
        animation = 'mp_player_int_eat_burger_fp', -- Animation
        flags = 49, -- Animation flags
        dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
        prop = 'uwu_cupcake', -- Prop 1
        bones = 60309, -- Bone index 1
        coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
        rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
        prop2 = '', -- Prop 2
        bones2 = '', -- Bone index 2
        coords2 = '', -- Prop coords 2
        rotation2 = '' -- Prop rotation 2
    },

    ['queenofdelicious'] = {
        risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
        sickchance = '', -- Chance to be sick if risky = true
        removehealth = '', -- Amount of health to remove if risky = true
        hunger = math.random(80,100), -- Amount of hunger to receive
        thirst = 0, -- Amount of thirst to receive
        stress = math.random(5,9), -- Amount of stress to remove
        bartext = 'Spiser mat..', -- Progress bar text
        bartime = math.random(10,15), -- Progress bar time
        shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
        returnitem = 'cardboard', -- Item to return if returns = true       
        dict = 'mp_player_inteat@burger', -- Animation dictionary
        animation = 'mp_player_int_eat_burger_fp', -- Animation
        flags = 49, -- Animation flags
        dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
        prop = 'uwu_cupcake', -- Prop 1
        bones = 60309, -- Bone index 1
        coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
        rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
        prop2 = '', -- Prop 2
        bones2 = '', -- Bone index 2
        coords2 = '', -- Prop coords 2
        rotation2 = '' -- Prop rotation 2
    },

    ['buddharolls'] = {
        risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
        sickchance = '', -- Chance to be sick if risky = true
        removehealth = '', -- Amount of health to remove if risky = true
        hunger = math.random(80,100), -- Amount of hunger to receive
        thirst = 0, -- Amount of thirst to receive
        stress = math.random(5,9), -- Amount of stress to remove
        bartext = 'Spiser mat..', -- Progress bar text
        bartime = math.random(10,15), -- Progress bar time
        shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
        returnitem = 'cardboard', -- Item to return if returns = true       
        dict = 'mp_player_inteat@burger', -- Animation dictionary
        animation = 'mp_player_int_eat_burger_fp', -- Animation
        flags = 49, -- Animation flags
        dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
        prop = 'uwu_ramen_bowl', -- Prop 1
        bones = 60309, -- Bone index 1
        coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
        rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
        prop2 = '', -- Prop 2
        bones2 = '', -- Bone index 2
        coords2 = '', -- Prop coords 2
        rotation2 = '' -- Prop rotation 2
    },

    
    ['genkirolls'] = {
        risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
        sickchance = '', -- Chance to be sick if risky = true
        removehealth = '', -- Amount of health to remove if risky = true
        hunger = math.random(80,100), -- Amount of hunger to receive
        thirst = 0, -- Amount of thirst to receive
        stress = math.random(5,9), -- Amount of stress to remove
        bartext = 'Spiser mat..', -- Progress bar text
        bartime = math.random(10,15), -- Progress bar time
        shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
        returnitem = 'cardboard', -- Item to return if returns = true       
        dict = 'mp_player_inteat@burger', -- Animation dictionary
        animation = 'mp_player_int_eat_burger_fp', -- Animation
        flags = 49, -- Animation flags
        dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
        prop = 'uwu_ramen_bowl', -- Prop 1
        bones = 60309, -- Bone index 1
        coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
        rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
        prop2 = '', -- Prop 2
        bones2 = '', -- Bone index 2
        coords2 = '', -- Prop coords 2
        rotation2 = '' -- Prop rotation 2
    },

    ['californiarolls'] = {
        risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
        sickchance = '', -- Chance to be sick if risky = true
        removehealth = '', -- Amount of health to remove if risky = true
        hunger = math.random(80,100), -- Amount of hunger to receive
        thirst = 0, -- Amount of thirst to receive
        stress = math.random(5,9), -- Amount of stress to remove
        bartext = 'Spiser mat..', -- Progress bar text
        bartime = math.random(10,15), -- Progress bar time
        shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
        returnitem = 'cardboard', -- Item to return if returns = true       
        dict = 'mp_player_inteat@burger', -- Animation dictionary
        animation = 'mp_player_int_eat_burger_fp', -- Animation
        flags = 49, -- Animation flags
        dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
        prop = 'uwu_ramen_bowl', -- Prop 1
        bones = 60309, -- Bone index 1
        coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
        rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
        prop2 = '', -- Prop 2
        bones2 = '', -- Bone index 2
        coords2 = '', -- Prop coords 2
        rotation2 = '' -- Prop rotation 2
    },

    ['futospicytempuramaki'] = {
        risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
        sickchance = '', -- Chance to be sick if risky = true
        removehealth = '', -- Amount of health to remove if risky = true
        hunger = math.random(80,100), -- Amount of hunger to receive
        thirst = 0, -- Amount of thirst to receive
        stress = math.random(5,9), -- Amount of stress to remove
        bartext = 'Spiser mat..', -- Progress bar text
        bartime = math.random(10,15), -- Progress bar time
        shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
        returnitem = 'cardboard', -- Item to return if returns = true       
        dict = 'mp_player_inteat@burger', -- Animation dictionary
        animation = 'mp_player_int_eat_burger_fp', -- Animation
        flags = 49, -- Animation flags
        dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
        prop = 'uwu_ramen_bowl', -- Prop 1
        bones = 60309, -- Bone index 1
        coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
        rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
        prop2 = '', -- Prop 2
        bones2 = '', -- Bone index 2
        coords2 = '', -- Prop coords 2
        rotation2 = '' -- Prop rotation 2
    },

    ['nigiribrett'] = {
        risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
        sickchance = '', -- Chance to be sick if risky = true
        removehealth = '', -- Amount of health to remove if risky = true
        hunger = math.random(80,100), -- Amount of hunger to receive
        thirst = 0, -- Amount of thirst to receive
        stress = math.random(5,9), -- Amount of stress to remove
        bartext = 'Spiser mat..', -- Progress bar text
        bartime = math.random(10,15), -- Progress bar time
        shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
        returnitem = 'cardboard', -- Item to return if returns = true       
        dict = 'mp_player_inteat@burger', -- Animation dictionary
        animation = 'mp_player_int_eat_burger_fp', -- Animation
        flags = 49, -- Animation flags
        dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
        prop = 'uwu_ramen_bowl', -- Prop 1
        bones = 60309, -- Bone index 1
        coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
        rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
        prop2 = '', -- Prop 2
        bones2 = '', -- Bone index 2
        coords2 = '', -- Prop coords 2
        rotation2 = '' -- Prop rotation 2
    },

    ['sashimi'] = {
        risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
        sickchance = '', -- Chance to be sick if risky = true
        removehealth = '', -- Amount of health to remove if risky = true
        hunger = math.random(80,100), -- Amount of hunger to receive
        thirst = 0, -- Amount of thirst to receive
        stress = math.random(5,9), -- Amount of stress to remove
        bartext = 'Spiser mat..', -- Progress bar text
        bartime = math.random(10,15), -- Progress bar time
        shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
        returnitem = 'cardboard', -- Item to return if returns = true       
        dict = 'mp_player_inteat@burger', -- Animation dictionary
        animation = 'mp_player_int_eat_burger_fp', -- Animation
        flags = 49, -- Animation flags
        dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
        prop = 'uwu_ramen_bowl', -- Prop 1
        bones = 60309, -- Bone index 1
        coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
        rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
        prop2 = '', -- Prop 2
        bones2 = '', -- Bone index 2
        coords2 = '', -- Prop coords 2
        rotation2 = '' -- Prop rotation 2
    },

      -- snus og tobakk

      ['skruf'] = {
        risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
        sickchance = math.random(5,10), -- Chance to be sick if risky = true
        removehealth = math.random(5, 8), -- Amount of health to remove if risky = true
        hunger = math.random(0,0), -- Amount of hunger to receive
        thirst = 0, -- Amount of thirst to receive
        stress = math.random(5,9), -- Amount of stress to remove
        bartext = 'Åpner snusboks..', -- Progress bar text
        bartime = math.random(5,10), -- Progress bar time
        shouldreturn = true, -- Toggle if item should be returned; false = no return item; true = return item
        returnitem = 'snus', -- Item to return if returns = true       
        dict = 'missmic4', -- Animation dictionary
        animation = 'michael_tux_fidget', -- Animation
        flags = 49, -- Animation flags
        dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
        prop = '', -- Prop 1
        bones = 60309, -- Bone index 1
        coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
        rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
        prop2 = '', -- Prop 2
        bones2 = '', -- Bone index 2
        coords2 = '', -- Prop coords 2
        rotation2 = '' -- Prop rotation 2
    },

    ['snus'] = {
        risky = false, -- Toggle chance to be sick; false = no sickness, true = chance to be sick
        sickchance = math.random(5,10), -- Chance to be sick if risky = true
        removehealth = math.random(5, 8), -- Amount of health to remove if risky = true
        hunger = math.random(0,0), -- Amount of hunger to receive
        thirst = 0, -- Amount of thirst to receive
        stress = math.random(10,20), -- Amount of stress to remove
        bartext = 'Tar snus under leppa..', -- Progress bar text
        bartime = math.random(5,10), -- Progress bar time
        shouldreturn = false, -- Toggle if item should be returned; false = no return item; true = return item
        returnitem = 'cardboard', -- Item to return if returns = true       
        dict = 'clothingtie', -- Animation dictionary
        animation = 'try_tie_positive_a', -- Animation
        flags = 49, -- Animation flags
        dualprops = false, -- Toggle use of 2 props; false = 1 prop, true = 2 props
        prop = '', -- Prop 1
        bones = 60309, -- Bone index 1
        coords = vector3(-0.005, 0.00, -0.01), -- Prop coords 1
        rotation = vector3(175.0, 160.0, 0.0), -- Prop rotation 1
        prop2 = '', -- Prop 2
        bones2 = '', -- Bone index 2
        coords2 = '', -- Prop coords 2
        rotation2 = '' -- Prop rotation 2
    },

    




   
        
        
        
        
    }
}