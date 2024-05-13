local Translations = {
    error = {
        negative = 'Prøver å selge minus beløp?',
        no_melt = 'Du gidde meg ingenting å smelte...',
        no_items = 'Ikke nok gjenstander',
        inventory_full = 'Beholdningen er for full til å motta alle mulige varer. Prøv å sørge for at beholdningen ikke er full neste gang. Gjenstander tapt: %{value}'
    },
    success = {
        sold = 'Du har solgt %{value} x %{value2} for kr%{value3}',
        items_received = 'Du mottok %{value} x %{value2}',
    },
    info = {
        title = 'Pantesjappa',
        subject = 'Smelter gjenstander',
        message = 'Vi er ferdige med å smelte varene dine. Du kan komme og hente dem når som helst.',
        open_pawn = 'Åpne pantesjappa',
        sell = 'Selg gjenstander',
        sell_pawn = 'Selg gjenstander til pantesjappa',
        melt = 'Smelt gjenstander',
        melt_pawn = 'Åpne smelte sjappe',
        melt_pickup = 'Henting av smeltede gjenstander',
        pawn_closed = 'Pantelånerbutikken er stengt. Kom tilbake mellom %{value}:00  - %{value2}:00',
        sell_items = 'Salgspris kr%{value}',
        back = '⬅ Gå tilbake',
        melt_item = 'Smelt %{value}',
        max = 'Maks antall %{value}',
        submit = 'Smelt',
        melt_wait = 'Gi meg %{value} minutter, så får jeg tingene dine smeltet',
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
