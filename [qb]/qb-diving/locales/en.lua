local Translations = {
    error = {
        ["canceled"] = "Kansellert",
        ["911_chatmessage"] = "113 BESKJED",
        ["take_off"] = "/divingsuit for å ta av dykkerutstyr",
        ["not_wearing"] = "Du har ikke på deg dykkerutstyr ..",
        ["no_coral"] = "Du har ingen koraler å selge..",
        ["not_standing_up"] = "Du må stå for å ta på dykkerutstyr",
        ["need_otube"] = "Du trenger oksygen for å fylle på tanken",
        ["oxygenlevel"] = 'nivået er på %{oxygenlevel} må være 0%'
    },
    success = {
        ["took_out"] = "Du tok våtdrakt av",
        ["tube_filled"] = "Tanken er blitt fyllt på"
    },
    info = {
        ["collecting_coral"] = "Samler koraler",
        ["diving_area"] = "Dykke Område",
        ["collect_coral"] = "Samle koraler",
        ["collect_coral_dt"] = "[E] - Samle koral",
        ["checking_pockets"] = "Sjekker lommer for å selge koraler",
        ["sell_coral"] = "Selg koraler",
        ["sell_coral_dt"] = "[E] - Selg koraler",
        ["blip_text"] = "113 - Dykkested",
        ["put_suit"] = "Ta på dykkerutstyr",
        ["pullout_suit"] = "Ta ut en dykkerdrakt ..",
        ["cop_msg"] = "Denne koralen er blitt stjålen",
        ["cop_title"] = "Ulovlig dykkig",
        ["command_diving"] = "Ta av dykkerutstyr",
    },
    warning = {
        ["oxygen_one_minute"] = "Du har ett minutt med oksygen i tanken igjen",
        ["oxygen_running_out"] = "Tanken din er tom for oksygen snart",
    },
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})