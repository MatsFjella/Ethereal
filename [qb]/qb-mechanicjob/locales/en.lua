local Translations = {
    labels = {
        engine = 'Motor',
        bodsy = 'Karosseri',
        radiator = 'Radiator',
        axle = 'Drivaksel',
        brakes = 'Bremser',
        clutch = 'Kløtsj',
        fuel = 'Bensintank',
        sign_in = 'Logg inn',
        sign_off = 'Logg av',
        o_stash = '[E] Åpne lager',
        h_vehicle = '[E] Gjem kjøretøy',
        g_vehicle = '[E] Hent kjøretøy',
        o_menu = '[E] Åpne meny',
        work_v = '[E] Jobb på kjøretøy',
        progress_bar = 'Reparerer...',
        veh_status = 'Kjøretøystatus:',
        job_blip = 'Autocare mekaniker',
    },

    lift_menu = {
        header_menu = 'Alternativer for kjøretøy',
        header_vehdc = 'Koble fra kjøretøyet',
        desc_vehdc = 'Koble fra kjøretøy i heis',
        header_stats = 'Sjekk status',
        desc_stats = 'Sjekk kjøretøystatus',
        header_parts = 'Kjøretøy deler',
        desc_parts = 'Reparer kjøretøydeler',
        c_menu = '⬅ Lukk menyen'
    },

    parts_menu = {
        status = 'Status: ',
        menu_header = 'Delmeny',
        repair_op = 'Reparere:',
        b_menu = '⬅ Tilbake-menyen',
        d_menu = 'Tilbake til delemenyen',
        c_menu = '⬅ Lukk menyen'
    },

    nodamage_menu = {
        header = 'Ingen skade',
        bh_menu = 'Tilbake-menyen',
        bd_menu = 'Det er ingen skade på denne delen!',
        c_menu = '⬅ Lukk menyen'
    },

    notifications = {
        not_enough = 'Du har ikke nok',
        not_have = 'Det har du ikke',
        not_materials = 'Det er ikke nok materialer i safen',
        rep_canceled = 'Reparasjon kansellert',
        repaired = 'har blitt reparert!',
        uknown = 'Status ukjent',
        not_valid = 'Ikke gyldig kjøretøy',
        not_close = 'Du er ikke nær nok kjøretøyet',
        veh_first = 'Du må være i kjøretøyet først',
        outside = 'Du må være utenfor kjøretøyet',
        wrong_seat = 'You are not the driver or on a bicycle',
        not_vehicle = 'Du er ikke i et kjøretøy',
        progress_bar = 'Reparerer kjøretøy..',
        process_canceled = 'Reparerer kjøretøy',
        not_part = 'Ikke en gyldig del',
        partrep ='%{value} er reparert!',
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})