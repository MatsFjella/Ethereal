local Translations = {
    error = {
        finish_work = "Fullfør alt arbeidet ditt først",
        vehicle_not_correct = "Dette er ikke riktig kjøretøy",
        failed = "Du har mislyktes",
        not_towing_vehicle = "Du må være i slepekjøretøyet",
        too_far_away = "Du er for langt unna",
        no_work_done = "Du har ikke gjort noe arbeid ennå",
        no_deposit = "kr%{value} Innskudd kreves",
    },
    success = {
        paid_with_cash = "kr%{value} Innskudd betalt med kontanter",
        paid_with_bank = "kr%{value} Innskudd betalt fra banken",
        refund_to_cash = "kr%{value} Innskudd betalt med kontanter",
        you_earned = "Du tjente %{value} kr",
    },
    menu = {
        header = "Tilgjengelige lastebiler",
        close_menu = "⬅ Lukk menyen",
    },
    mission = {
        delivered_vehicle = "Du har levert et kjøretøy",
        get_new_vehicle = "Et nytt kjøretøy kan hentes",
        towing_vehicle = "Heising av kjøretøyet...",
        goto_depot = "Ta kjøretøyet til Hayes Depot",
        vehicle_towed = "Kjøretøy slept",
        untowing_vehicle = "Fjern kjøretøyet",
        vehicle_takenoff = "Kjøretøy tatt av",
    },
    info = {
        tow = "Plasser en bil på baksiden av plansengen din",
        toggle_npc = "Slå på NPC-jobb",
        skick = "Forsøk på misbruk",
    },
    label = {
        payslip = "Lønnslipp",
        vehicle = "Kjøretøy",
        npcz = "NPCZone",
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
