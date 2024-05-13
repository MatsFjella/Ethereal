local Translations = {
    error = {
        ["failed_notification"] = "Mislyktes!",
        ["not_near_veh"] = "Du er ikke i nærheten av et kjøretøy!",
        ["out_range_veh"] = "Du er for langt fra kjøretøyet!",
        ["inside_veh"] = "Du kan ikke reparere en motor fra innsiden!",
        ["healthy_veh"] = "Kjøretøyet er i for god tilstand, prøv avansert repkit!",
        ["inside_veh_req"] = "Du må være i et kjøretøy for å reparere det!",
        ["roadside_avail"] = "Det er veihjelp tilgjengelig, ring det via telefonen din!",
        ["no_permission"] = "Du har ikke tillatelse til å reparere kjøretøy",
        ["fix_message"] = "%{message}, og nå gå til en garasje!",
        ["veh_damaged"] = "Kjøretøyet ditt er for skadet!",
        ["nofix_message_1"] = "Du så på oljenivået ditt, og dette så normalt ut",
        ["nofix_message_2"] = "Du så på sykkelen din, og ingenting ser feil ut",
        ["nofix_message_3"] = "Du så på duck-tapen på oljeslangen din og virket fin",
        ["nofix_message_4"] = "Du skrudde opp radioen. Den rare motorlyden er nå borte",
        ["nofix_message_5"] = "Rustfjerneren du brukte hadde ingen effekt",
        ["nofix_message_6"] = "Prøv aldri å lage noe som ikke er ødelagt, men du lyttet ikke",
    },
    success = {
        ["cleaned_veh"] = "Kjøretøy rengjort!",
        ["repaired_veh"] = "Kjøretøy reparert!",
        ["fix_message_1"] = "Du sjekket oljenivået",
        ["fix_message_2"] = "Du lukket oljeutslippet med tyggegummi",
        ["fix_message_3"] = "Du har laget oljeslangen med tape",
        ["fix_message_4"] = "Du har midlertidig stoppet oljelekkasjen",
        ["fix_message_5"] = "Du sparket på sykkelen og den fungerer igjen",
        ["fix_message_6"] = "Du har fjernet noe rust",
        ["fix_message_7"] = "Du kjeftet på bilen din, og den fungerer igjen",
    },
    progress = {
        ["clean_veh"] = "Rengjøring av bilen...",
        ["repair_veh"] = "Reparerer kjøretøy..",

    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
