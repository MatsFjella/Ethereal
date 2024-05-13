local Translations = {
    error = {
        no_people_nearby = "Ingen personer i nærheten",
        no_vehicle_found = "Ingen kjøretøy funnet",
        extra_deactivated = "Ekstra %{extra} har blitt deaktivert",
        extra_not_present = "Ekstra %{extra} er ikke tilgjengelig på dette kjøretøyet",
        not_driver = "Du er ikke sjoføren av kjøretøyet",
        vehicle_driving_fast = "Kjøretøyet går for fort",
        seat_occupied = "Dette setet er okkupert",
        race_harness_on = "Du har en løpssele på, du kan ikke bytte",
        obj_not_found = "Kunne ikke opprette det forespurte objektet",
        not_near_ambulance = "Du er ikke i nærheten av en ambulanse",
        far_away = "Du er for langt unna",
        stretcher_in_use = "Denne båren er allerede i bruk",
        not_kidnapped = "Du kidnappet ikke denne personen",
        trunk_closed = "Bagasjerommet er lukket",
        cant_enter_trunk = "Du kommer ikke inn i denne bagasjerommet",
        already_in_trunk = "Du er allerede i bagasjerommet",
        someone_in_trunk = "Noen er allerede i bagasjerommet"
    },
    progress = {
        flipping_car = "Flipp kjøretøy.."
    },
    success = {
        extra_activated = "Ekstra %{extra} er aktivert",
        entered_trunk = "Du er i bagasjerommet"
    },
    info = {
        no_variants = "Det ser ikke ut til å være noen varianter for dette",
        wrong_ped = "Denne ped-modellen tillater ikke dette alternativet",
        nothing_to_remove = "Du ser ikke ut til å ha noe å fjerne",
        already_wearing = "Den har du allerede på deg",
        switched_seats = "Du har byttet sete"
    },
    general = {
        command_description = "Åpne Radial Meny",
        push_stretcher_button = "[E] - Skyv båre",
        stop_pushing_stretcher_button = "~g~E~w~ - Slutt å skyve",
        lay_stretcher_button = "[G] - Ligg på båre",
        push_position_drawtext = "Trykk her",
        get_off_stretcher_button = "[G] - Gå av båren",
        get_out_trunk_button = "[E] Kom deg ut av bagasjerommet",
        close_trunk_button = "[G] Lukk bagasjerommet",
        open_trunk_button = "[G] Åpne bagasjerommet",
        getintrunk_command_desc = "Gå inn i bagasjerommet",
        putintrunk_command_desc = "Sett personen i bagasjerommet"
    },
    options = {
        emergency_button = "Nødknapp",
        driver_seat = "Sjoførsetet",
        passenger_seat = "Passasjer sete",
        other_seats = "Andre sete",
        rear_left_seat = "Bakre venstre sete",
        rear_right_seat = "Høyre baksete"
    },
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
