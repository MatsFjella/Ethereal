local Translations = {
    success = {
        hunger_set = 'Fitbit: Mat varsel satt til %{hungervalue}%',
        thirst_set = 'Fitbit: Drikke varsel satt til %{thirstvalue}%',
    },
    warning = {
        hunger_warning = 'Mat er på %{hunger}%',
        thirst_warning = 'Drikke er på %{thirst}%'
    },
    info = {
        fitbit = 'FITBIT '
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
