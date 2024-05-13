local Translations = {
    error = {
        ["missing_something"] = "Det ser ut som du mangler noe...",
        ["not_enough_police"] = "Ikke nok politi..",
        ["door_open"] = "Døra er allerede åpen..",
        ["cancelled"] = "Prosess kansellert..",
        ["didnt_work"] = "Det funket ikke..",
        ["emty_box"] = "Boksen er tom..",
        ["injail"] = "Du er i fengsel i %{Time} måneder..",
        ["item_missing"] = "Du mangler en gjenstand..",
        ["escaped"] = "Du rømte... kom deg bort herifra.!",
        ["do_some_work"] = "Gjør arbeid for å få redusert straff, jobb: %{currentjob} ",
        ["security_activated"] = "Høyeste sikkerhetsnivå er aktivt, hold deg i avdelinga di!"
    },
    success = {
        ["found_phone"] = "Du fant en telefon..",
        ["time_cut"] = "Du har jobbet av litt tid på staffen din.",
        ["free_"] = "Du er fri, nyt det! :)",
        ["timesup"] = "Tiden din er over! Sjekk deg ut på besøkssenteret",
    },
    info = {
        ["timeleft"] = "Du må fortsatt... %{JAILTIME} måneder",
        ["lost_job"] = "Du er arbeidsledig",
        ["job_interaction"] = "[E] Elektrisitetsarbeid",
        ["job_interaction_target"] = "Gjør %{job} arbeid",
        ["received_property"] = "Du har fått tilbake eiendommen din..",
        ["seized_property"] = "Eiendommen din er beslaglagt, du får alt tilbake når tiden er ute..",
        ["cells_blip"] = "Celler",
        ["freedom_blip"] = "Fengsel resepsjon",
        ["canteen_blip"] = "Kantine",
        ["work_blip"] = "Fengselsarbeid",
        ["target_freedom_option"] = "Sjekk tid",
        ["target_canteen_option"] = "Få mat",
        ["police_alert_title"] = "Ny samtale",
        ["police_alert_description"] = "Fengselsrømning",
        ["connecting_device"] = "Koble til enhet",
        ["working_electricity"] = "Koble ledninger"
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
