local Translations ={
    ["not_on_radio"] = "Du er ikke tilkoblet et signal",
    ["on_radio"] = "Du er allerede tilkoblet dette signalet",
    ["joined_to_radio"] = "Du er tilkoblet: %{channel}",
    ["restricted_channel_error"] = "Du kan ikke koble til dette signalet!",
    ["invalid_radio"] = "Denne frekvensen er ikke tilgjengelig.",
    ["you_on_radio"] = "Du er allerede tilkoblet denne kanalen",
    ["you_leave"] = "Du forlot kanalen.",
    ['volume_radio'] = 'Ny volum %{value}',
    ['decrease_radio_volume'] = 'Radioen er allerede satt til maksimalt volum',
    ['increase_radio_volume'] = 'Radioen er allerede satt til laveste volum',
    ['increase_decrease_radio_channel'] = 'Ny kanal %{value}',
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})