local Translations = {
    error = {
        to_far_from_door = 'Du er for langt fra ringeklokken',
        nobody_home = 'Det er ingen hjemme..',
        nobody_at_door = 'Det er ingen på døra...'
    },
    success = {
        receive_apart = 'Du har en leilighet',
        changed_apart = 'Du flyttet leilighet',
    },
    info = {
        at_the_door = 'Noen er ved døra di!',
    },
    text = {
        options = '[E] Leilighetsinnstillinger',
        enter = 'Gå inn i leilighet',
        ring_doorbell = 'Ring på',
        logout = 'Logg ut',
        change_outfit = 'Bytt klær',
        open_stash = 'Åpne lager',
        move_here = 'Flytt hit',
        open_door = 'Åpne dør',
        leave = 'Forlat leilighet',
        close_menu = ' Lukk meny',
        tennants = 'Leietakere',
    },
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})