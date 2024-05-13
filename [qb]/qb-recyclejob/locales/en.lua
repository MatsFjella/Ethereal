local Translations = {
    success = {
        you_have_been_clocked_in = "Lykke til med møkka jobben",
    },
    text = {
        point_enter_warehouse = "[E] Entre varehus",
        enter_warehouse= "Entre varehus",
        exit_warehouse= "Forlat varehus",
        point_exit_warehouse = "[E] Exit Warehouse",
        clock_out = "[E] Er ikke alle som takler jobben",
        clock_in = "[E] Start jobben",
        hand_in_package = "Lever inn pakke",
        point_hand_in_package = "[E] Lever inn pakke",
        get_package = "Ta pakke",
        point_get_package = "[E] Ta pakke",
        picking_up_the_package = "Plukker opp pakken",
        unpacking_the_package = "Pakker ut pakken",
    },
    error = {
        you_have_clocked_out = "Dra hjem og dusj"
    },
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})