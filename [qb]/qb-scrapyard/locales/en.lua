local Translations = {
    error = {
        smash_own = "Du kan ikke knuse et kjøretøy som eier det.",
        cannot_scrap = "Dette kjøretøyet kan ikke skrotes.",
        not_driver = "Du er ikke sjåføren",
        demolish_vehicle = "Du har ikke lov til å ødelegge kjøretøy nå",
        canceled = "Avbrutt",
    },
    text = {
        scrapyard = 'Skraphandel',
        disassemble_vehicle = '[E] - Demonter kjøretøy',
        disassemble_vehicle_target = 'Demonter kjøretøy',
        email_list = "[E] - E-post kjøretøyliste",
        email_list_target = "E-post kjøretøyliste",
        demolish_vehicle = "Ødelegg kjøretøy",
    },
    email = {
        sender = "Turners Bilopphugging",
        subject = "Kjøretøyliste",
        message = "Du kan kun ødelegge et antall kjøretøy.Du kan beholde alt du ødelegger for deg selv så lenge du ikke bryr meg.Kjøretøyliste:",
    },
    
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
