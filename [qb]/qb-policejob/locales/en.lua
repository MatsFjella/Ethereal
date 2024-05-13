local Translations = {
    error = {
        license_already = 'Spilleren har allerede en lisens',
        error_license = 'Spilleren har ikke den lisensen',
        no_camera = 'Kameraet finnes ikke',
        blood_not_cleared = 'Blodet er IKKE fjernet',
        bullet_casing_not_removed = 'Hylser IKKE Fjernet',
        none_nearby = 'Ingen i nærheten!',
        canceled = 'Avbrutt..',
        time_higher = 'Tiden må være høyere enn 0',
        amount_higher = 'Mengden må være høyere enn 0',
        vehicle_cuff = 'Du kan ikke håndjern noen i et kjøretøy',
        no_cuff = 'Du har ikke håndjern på deg',
        no_impound = 'Det er ingen beslaglagte kjøretøy',
        no_spikestripe = 'Kan ikke plassere flere spikermatter',
        error_license_type = 'Ugyldig lisens type',
        rank_license = 'Du er ikke høyt nok gradert til å gi en lisens',
        revoked_license = 'Du har fått en lisens tilbakekalt',
        rank_revoke = 'Du er ikke høyt nok gradert til å tilbakekalle en lisens',
        on_duty_police_only = 'Kun for politi på vakt',
        vehicle_not_flag = 'Kjøretøy ikke merket',
        not_towdriver = 'Ikke en tauebilfører',
        not_lawyer = 'Personen er ikke advokat',
        no_anklet = 'Denne personen har ikke en fotlenke på.',
        have_evidence_bag = 'Du må ha en tom bevispose med deg',
        no_driver_license = 'Ingen førerkort',
        not_cuffed_dead = 'Sivilisten er ikke håndjernet eller død',
        fine_yourself = 'Du Kan Ikke Bøtelegge Deg Selv',
        not_online = 'Denne personen er ikke online'
        
    },
    success = {
        uncuffed = 'Du har blitt løslatt fra håndjern',
        granted_license = 'Du har blitt tildelt en lisens',
        grant_license = 'Du tildelte en lisens',
        revoke_license = 'Du tilbakekalte en lisens',
        tow_paid = 'Du har fått betalt $500',
        blood_clear = 'Blod Fjernet',
        bullet_casing_removed = 'Hylser Fjernet...',
        anklet_taken_off = 'Din fotlenke er tatt av.',
        took_anklet_from = 'Du tok av %{firstname} %{lastname}s sporer',
        put_anklet = 'Du satte på en fotlenke.',
        put_anklet_on = 'Du satte en fotlenke på %{firstname} %{lastname}',
        vehicle_flagged = 'Kjøretøy %{plate} har blitt merket for %{reason}',
        impound_vehicle_removed = 'Kjøretøy tatt ut av beslag!',
        impounded = 'Kjøretøy beslaglagt',
        
    },
    info = {
        mr = 'Herr',
        mrs = 'Fru',
        impound_price = 'Pris spilleren betaler for å få kjøretøy ut fra beslag (kan være 0)',
        plate_number = 'Registreringsnummer',
        flag_reason = 'Årsak til merking av kjøretøy',
        camera_id = 'Kamera-ID',
        callsign_name = 'Navn på kallesignal',
        poobject_object = 'Objekttype å opprette eller \'slett\' for å slette',
        player_id = 'Spiller-ID',
        citizen_id = 'Borger-ID for spiller',
        dna_sample = 'DNA-prøve',
        jail_time = 'Tid de må være i fengsel',
        jail_time_no = 'Fengselstid må være høyere enn 0',
        license_type = 'Lisenstype (fører/våpen)',
        ankle_location = 'Fotlenkens plassering',
        cuff = 'Du er håndjernet!',
        cuffed_walk = 'Du er håndjernet, men du kan gå',
        vehicle_flagged = 'Kjøretøy %{vehicle} er merket for: %{reason}',
        unflag_vehicle = 'Kjøretøy %{vehicle} er ikke lenger merket',
        tow_driver_paid = 'Du betalte tauebilføreren',
        paid_lawyer = 'Du betalte en advokat',
        vehicle_taken_depot = 'Kjøretøy tatt inn til depot for $%{price}',
        vehicle_seized = 'Kjøretøy beslaglagt',
        stolen_money = 'Du har stjålet $%{stolen}',
        cash_robbed = 'Du har blitt ranet for $%{money}',
        driving_license_confiscated = 'Ditt førerkort har blitt konfiskert',
        cash_confiscated = 'Dine kontanter ble konfiskert',
        being_searched = 'Du blir søkt',
        cash_found = 'Funnet $%{cash} på sivilisten',
        sent_jail_for = 'Du sendte personen til fengsel for %{time} måneder',
        fine_received = 'Du mottok en bot på $%{fine}',
        blip_text = 'Politialarm - %{value}',
        jail_time_input = 'Fengselstid',
        submit = 'Send inn',
        time_months = 'Tid i Måneder',
        bill = 'Regning',
        amount = 'Beløp',
        police_plate = 'LSPD', -- Bør kun være 4 tegn lang
        vehicle_info = 'Motor: %{value} % | Drivstoff: %{value2} %',
        evidence_stash_prompt = 'Bevislager',
        evidence_stash = 'Bevislager | %{value}',
        slot = 'Spor nr. (1,2,3)',
        current_evidence = '%{value} | Skuff %{value2}',
        on_duty = '[E] - Gå på vakt',
        off_duty = '[E] - Gå av vakt',
        onoff_duty = '~g~På~s~/~r~Av~s~ Vakt',
        stash = 'Lager %{value}',
        delete_spike = '[~r~E~s~] Fjern Spikermatte',
        close_camera = 'Lukk Kamera',
        bullet_casing = '[~g~G~s~] Patronhylse %{value}',
        casing = 'Patronhylse',
        blood = 'Blod',
        blood_text = '[~g~G~s~] Blod %{value}',
        fingerprint_text = '[G] Fingeravtrykk',
        fingerprint = 'Fingeravtrykk',
        store_heli = '[E] Lagre Helikopter',
        take_heli = '[E] Ta ut Helikopter',
        impound_veh = '[E] - Beslaglegg Kjøretøy',
        store_veh = '[E] - Lagre Kjøretøy',
        armory = 'Våpenlager',
        enter_armory = '[E] Våpenlager',
        finger_scan = 'Fingeravtrykkskanning',
        scan_fingerprint = '[E] Skann Fingeravtrykk',
        trash = 'Søppel',
        trash_enter = '[E] Søppelbøtte',
        stash_enter = '[E] Åpne Skap',
        target_location = 'Plasseringen av %{firstname} %{lastname} er merket på kartet ditt',
        anklet_location = 'Fotlenkeplassering',
        new_call = 'Ny Samtale',
        officer_down = 'Offiser %{lastname} | %{callsign} Nede',
        fine_issued = 'Bot er utstedt til lovbryteren vellykket',
        received_fine = 'Statsgjeldsinnkreving har automatisk innkrevd bøtene skyldt...',
        camera_speed = 'Fartskamera #%{radarid} - Merket kjøretøy'
        

    },
    evidence = {
        red_hands = 'Røde hender',
        wide_pupils = 'Store pupiller',
        red_eyes = 'Røde øyne',
        weed_smell = 'Lukter som weed',
        gunpowder = 'Krutt i klær',
        chemicals = 'lukter kjemisk',
        heavy_breathing = 'Puster tungt',
        sweat = 'Svetter mye',
        handbleed = 'Blod på hender',
        confused = 'Forvirret',
        alcohol = 'Lukter som alkohol',
        heavy_alcohol = 'Lukter veldig mye som alkohol',
        agitated = 'Urolig - Tegn på Metamfetaminbruk',
        serial_not_visible = 'Serienummer ikke synlig...',
        
    },
    menu = {
        garage_title = 'Politiets Kjøretøy',
close = '⬅ Lukk Meny',
impound = 'Beslaglagte Kjøretøy',
pol_impound = 'Politiets Beslag',
pol_garage = 'Politiets Garasje',
pol_armory = 'Politiets Våpenlager',

    },
    email = {
        sender = 'Sentral Innkrevingsetat',
        subject = 'Gjeldsinnkreving',
        message = 'Kjære %{value}. %{value2}, <br /><br />Sentral Innkrevingsetat (SIE) har belastet bøtene du mottok fra politiet.<br />Det er <strong>$%{value3}</strong> trukket fra kontoen din.<br /><br />Med vennlig hilsen,<br />Herr I.K. Graai',
        
    },
    commands = {
        place_spike = 'Plasser Spikermatte (Kun Politiet)',
        license_grant = 'Gi en lisens til noen',
        license_revoke = 'Tilbakekall en lisens fra noen',
        place_object = 'Plasser/Slett Et Objekt (Kun Politiet)',
        cuff_player = 'Håndjern Spiller (Kun Politiet)',
        escort = 'Eskorter Spiller',
        callsign = 'Gi Deg Selv Et Kallesignal',
        clear_casign = 'Rydd Området for Hylser (Kun Politiet)',
        jail_player = 'Fengsle Spiller (Kun Politiet)',
        unjail_player = 'Løslate Spiller Fra Fengsel (Kun Politiet)',
        clearblood = 'Rens Området for Blod (Kun Politiet)',
        seizecash = 'Beslaglegg Kontanter (Kun Politiet)',
        softcuff = 'Myke Håndjern (Kun Politiet)',
        camera = 'Se Sikkerhetskamera (Kun Politiet)',
        flagplate = 'Merke En Nummerplate (Kun Politiet)',
        unflagplate = 'Fjerne Merking Av Nummerplate (Kun Politiet)',
        plateinfo = 'Sjekk En Nummerplate (Kun Politiet)',
        depot = 'Beslag Med Pris (Kun Politiet)',
        impound = 'Beslaglegg Et Kjøretøy (Kun Politiet)',
        paytow = 'Betal Tauebilfører (Kun Politiet)',
        paylawyer = 'Betal Advokat (Kun Politiet, Dommer)',
        anklet = 'Fest Sporing Fotlenke (Kun Politiet)',
        ankletlocation = 'Få plasseringen av en persons fotlenke',
        removeanklet = 'Fjern Sporing Fotlenke (Kun Politiet)',
        drivinglicense = 'Beslaglegg Førerkort (Kun Politiet)',
        takedna = 'Ta en DNA-prøve fra en person (tomt bevispose nødvendig) (Kun Politiet)',
        police_report = 'Politi Rapport',
        message_sent = 'Melding som skal sendes',
        civilian_call = 'Sivil Samtale',
        emergency_call = 'Ny 911 Samtale',
        fine = 'Bøtelegg En Person'
        
    },
    progressbar = {
        blood_clear = 'Renser Blod...',
        bullet_casing = 'Fjerner patronhylser..',
        robbing = 'Raner Person...',
        place_object = 'Plasserer objekt..',
        remove_object = 'Fjerner objekt..',
        impound = 'Beslaglegger Kjøretøy..',
        
    },
    target = {
        sign_in = 'Logg Inn/Ut tjeneste',
        open_personal_stash = 'Åpne Personlig Lager',
        open_trash = 'Åpne Søppel',
        open_fingerprint = 'Åpne Fingeravtrykk',
        open_armory = 'Åpne Våpenlager',
        open_evidence_stash = 'Åpne Bevislager',
        
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})