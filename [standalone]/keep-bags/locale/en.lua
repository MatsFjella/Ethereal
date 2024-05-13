-- do not change anything in this file if you don't know what are you doing
local Shared = exports['keep-harmony']:Shared()

Locale = Shared.Locale.new {
    menu = {
        close = "Lukk",
        lockpick_header = "Dirk",
        lockpick_item_header = "%s [slot: %s]",
    },
    input = {
        enter_password = "Skriv passord",
        set_password = "Sett Passord",
        password_title = "Skriv inn passord",
    },

    -- notifications
    success = {
        package_opened_successfully = 'Åpnet pakke',
        password_set = "Passord har blitt satt",
    },
    info = {
        package_items_left = 'Det er ting inne',
        inventory_space_needed = 'Rydd plass i lommene dine for ha plass'
    },
    progress = {
        lockpicking = "Lockpicking [slot: %s]",
    },
    errors = {
        cancelled = "Kansellert",
        try_better_password = "Prøv ett bedre passord",
        wrong_password = "Feil passord",
        process_already_started = 'Prosess allerede startet',
        max_backpacks = 'Du kan ikke bære mer enn %s ryggsekk',
        multiple_backpacks = 'Kan ikke gjøre det når du har flere ryggsekker!',
        backpack_self_insertion = 'Du kan ikke pytte ryggsekk inni ryggsekken, luring.',
        backpack_rule_breaker = "Du kan ikke putte en ryggsekk i en anna ryggsekk, tulling.",
        backpack_crammed = "Er det lurt å putte %s inni?"
    },
}
