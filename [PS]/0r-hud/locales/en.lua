return {
    ui = {
        settings_text_settings_menu = "Innstillinger",
        settings_text_change_your_settings = "Endre dine innstillinger",
        settings_text_save = "Lagre",
        settings_text_hud = "Hud",
        settings_text_settings = "Innstillinger",
        settings_text_map = "Kart",
        settings_text_open_map = "Åpne kart",
        settings_text_open_settings_menu = "Åpne innstillinger meny",
        settings_text_minimap_style = "Minimap stil",
        settings_text_choose_minimap_style = "Velg minimap stil",
        settings_text_minimap_square = "Firkant",
        settings_text_minimap_circle = "Sirkel",
        settings_text_speedometerFPS = "Speedometer FPS",
        settings_text_speedometer_desc = "Jo høyere jo mer krever det av PC'n din.",
        settings_text_health_icon = "Helse Ikon",
        settings_text_hideWhenMoreThen = "Skjul når det er mer enn...",
        settings_text_never_hide = "100 = Aldri skjul",
        settings_text_armor_icon = "Armor ikon",
        settings_text_hunger_icon = "Mat ikon",
        settings_text_thirst_icon = "Vann ikon",
        settings_text_oxygen_icon = "Oksygen ikon",
        settings_text_stamina_icon = "Kondisjon ikon",
        settings_text_stress_icon = "Stress ikon",
        settings_text_terminal_icon = "Terminal ikon",
        settings_text_leaf_icon = "Løv ikon",
        settings_text_compass_hud = "Kompass HUD",
        settings_text_compass_hud_onlyinvehicle = "Kompass kun i kjøretøy",
        settings_text_vehicle_hud = "Kjøretøy HUD",
        settings_text_color = "Farge",
        settings_text_j_type = "Type",
        settings_text_type_number = "Type: ",
        settings_text_bars = "Progressjonslinje",
        settings_text_desc_change_bar = "Endre progressjonslinje stil.",
        settings_text_vehicle_mode = "Girmodus",
        settings_text_desc_vehicle_mode = "Endre girmodus.",
        settings_text_manual_mode = "Manuell",
        settings_text_oto_mode = "Automatisk",
        settings_text_enginehealth_icon = "Motor helse",
        settings_text_vehicle_minimap_always_active = "Minimap vises alltid",
        settings_test_position_reset = "HUD posisjoner reset",
        settings_text_account_hud = "Konto HUD <Balanse>",
        settings_test_cinematicMode = "Kino modus"
    },
    hud = {
        settings = {
            saved = "Innstillinger lagret.",
            not_saved = "Klarte ikke lagre innstillinger."
        },
        commands = {
            hudsettings = {
                help = "Endre dine HUD innstillinger."
            },
            hudclose = {
                help = "Skjul HUD element.",
                arguments = {
                    code = {
                        help = "Element nummer"
                    }
                }
            },
            hudopen = {
                help = "Vis alle hud-elementer.",
                arguments = {
                    code = {
                        help = "Element nummer"
                    }
                }
            },
            toggleSeatBelt = "Ta på/av setebelte",
            toggleCruise = "Ta på/av cruise control",
        },
        export = {
            fuel_missing = "Konfigurer din egendefinerte drivstoffressurs på: client/utils.lua"
        },
    },
    notify = {
        low_fuel = "Lavt drivstoffnivå !",
        opened_manual_mode = "Manuell modus startet.",
        closed_manual_mode = "Manuell modus stoppet.",
        manual_mode_change_error = "Det kan du ikke gjøre i bilen.",
        hrsgears_script_error = "hrsgears har ikke startet.",
        seatbeltOn = "Setebelte PÅ",
        seatbeltOff = "Setebelte AV",
        cruiseControlOn = "Cruisecontrol PÅ",
        cruiseControlOff = "Cruisecontrol AV",
    }
}
