local Translations = {
    info = {
        open_shop = "[E] Butikk",
        sell_chips = "[E] Selg chips"
    },
    error = {
        dealer_decline = "The dealer declines to show you firearms",
        talk_cop = "Speak with law enforcement to get a firearms license"
    },
    success = {
        dealer_verify = "The dealer verifies your license"
    },
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
