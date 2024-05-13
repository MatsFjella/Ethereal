local Translations = {
    notify = {
        ["no_money"] = "Du har ikke nok penger",
        ["refuel_cancel"] = "Drivstoffpåfylling avbrutt",
        ["jerrycan_full"] = "Denne jerryboksen er allerede full",
        ["jerrycan_empty"] = "Denne jerryboksen er tom",
        ["vehicle_full"] = "Dette kjøretøyet er allerede fullt",
        ["already_full"] = "Gassbeholderen er allerede full",
    },
    info = {
        ["refuel_vehicle"] = "Fyll drivstoff",
        ["take_nozzle"] = "Ta slangen",
        ["return_nozzle"] = "Returner slange",
        ["gas_station"] = "Bensinstasjon",
        ["total_can_cost"] = "Den totale kostnaden kommer til å være: %{value}kr inkludert avgifter",
        ["total_refuel_cost"] = "Den totale kostnaden for å fylle bensin på gassdunken vil være %{value}kr",
        ["buy_jerry_can"] = "Kjøp jerrikanne",
        ["refuel_jerry_can"] = "Fyll på jerrikanne",
        ["total_cost"] = "Den totale kostnaden kommer til å være: %{value}kr inkludert avgifter",
        ["refuel_from_jerry_can"] = "Fyll drivstoff fra jerrykanne",
        ["purchased_jerry_can"] = "Du kjøpte en jerryboks for %{value}kr",
    },
    error = {
        ["vehicle_already_full"] = "Kjøretøyet er allerede fullt",
        ["no_fuel_gas_can"] = "Ingen drivstoff i gassbeholder",
        ["not_enough_cash"] = "Du har ikke nok penger",
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
