local Translations = {
    error = {
        canceled = 'Kansellert',
        max_ammo = 'Maks ammunisjonskapasitet',
        no_weapon = 'Du har ikke noe våpen.',
        no_support_attachment = 'Dette våpenet støtter ikke denne attachmenten.',
        no_weapon_in_hand = 'Du har ikke ett våpen i hånda.',
        weapon_broken = 'Dette våpenet er ødelagt og kan ikke brukes.',
        no_damage_on_weapon = 'Dette våpenet er ikke skadet..',
        weapon_broken_need_repair = 'Våpenet ditt er ødelagt, du må reparere det før du kan bruke det igjen.',
        attachment_already_on_weapon = 'Du har allerede en %{value} på våpenet ditt.'
    },
    success = {
        reloaded = 'Laddet'
    },
    info = {
        loading_bullets = 'Ladder våpen',
        repairshop_not_usable = 'Verkstedet i dette øyeblikk er ~r~IKKE~w~ brukbart.',
        weapon_will_repair = 'Våpenet ditt vil bli reparert.',
        take_weapon_back = '[E] - Ta våpenet tilbake',
        repair_weapon_price = '[E] Reparasjonsvåpen, ~g~kr%{value}~w~',
        removed_attachment = 'Du fjernet %{value} fra våpenet ditt!',
        hp_of_weapon = 'Holdbarheten til våpenet ditt'
    },
    mail = {
        sender = 'Anonym',
        subject = 'Reperasjon',
        message = 'Din %{value} er reparert, du kan hente den her. <br><br> hadem'
    },
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
