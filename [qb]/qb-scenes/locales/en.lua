local Translations = {
    notify = {
        ["laser_error"] = "Laser traff ikke noe.",
        ["scene_delete"] = "Scene slettet!",
        ["scene_error"] = "Ingen scene i nærheten.",
    }
}
Lang = Locale:new({phrases = Translations, warnOnMissing = true})
