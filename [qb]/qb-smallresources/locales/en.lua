local Translations = {
    afk = {
        will_kick = 'Du er AFK og vil bli sparket om ',
        time_seconds = ' sekunder!',
        time_minutes = ' minutt(ser)!',
        kick_message = 'Du ble kicket for å være AFK',
    },
    wash = {
        in_progress = "Kjøretøyet blir vasket ..",
        wash_vehicle = "[E] Vask kjøretøy",
        wash_vehicle_target = "Vask kjøretøy",
        dirty = "Kjøretøyet er ikke skittent",
        cancel = "Vasking avbrutt ..",
    },
    consumables = {
        eat_progress = "Spiser..",
        drink_progress = "Drikker..",
        liqour_progress = "Drikker brennevin..",
        coke_progress = "Rask sniff..",
        crack_progress = "Røyker crack..",
        ecstasy_progress = "Tar piller",
        healing_progress = "Helbreder",
        meth_progress = "Røyker meth",
        joint_progress = "Fyrer på joint..",
        use_parachute_progress = "Tar på fallskjerm..",
        pack_parachute_progress = "Pakker fallskjerm..",
        no_parachute = "Du har ikke fallskjerm!",
        armor_full = "Du har allerede nok kevlar på!",
        armor_empty = "Du har ikke kevlar på..",
        armor_progress = "Tar på kevlar..",
        heavy_armor_progress = "Tar på kevlar..",
        remove_armor_progress = "Fjerner kevlar..",
        canceled = "Kansellert..",
    },
    cruise = {
        unavailable = "Cruisekontroll utilgjengelig",
        activated = "Cruise aktivert: ",
        deactivated = "Cruise deaktivert",
    },
    editor = {
        started = "Startet opptak!",
        save = "Lagret opptak!",
        delete = "Slettet opptak!",
        editor = "Hadem!"
    },
    firework = {
        place_progress = "Plassering av objekt..",
        canceled = "Kansellert..",
        time_left = "Fyrverkeri over ~r~"
    },
    seatbelt = {
        use_harness_progress = "Feste løpssele",
        remove_harness_progress = "Fjerning av racersele",
        no_car = "Du er ikke i en bil."
    },
    teleport = {
        teleport_default = 'Bruk heis'
    },
    pushcar = {
        stop_push = "[E] Slutt å skyve"
    }


}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})