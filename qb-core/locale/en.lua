local Translations = {
    error = {
        not_online = 'Spiller ikke online',
        wrong_format = 'Feil format',
        missing_args = 'Ikke alle argumenter er lagt inn (x, y, z)',
        missing_args2 = 'Alle argumenter må fylles ut!',
        no_access = 'Ingen tilgang til denne kommandoen',
        company_too_poor = 'Arbeidsgiveren din er blakk',
        item_not_exist = 'Elementet finnes ikke',
        too_heavy = 'Beholdningen er for full',
        location_not_exist = 'Plassering finnes ikke',
        duplicate_license = 'Duplikat Rockstar-lisens funnet',
        no_valid_license  = 'Ingen gyldig Rockstar-lisens funnet',
        not_whitelisted = 'Du er ikke hvitelistet for denne serveren',
        server_already_open = 'Serveren er allerede åpen',
        server_already_closed = 'Serveren er allerede stengt',
        no_permission = 'Du har ikke tillatelser for dette..',
        no_waypoint = 'Ingen veipunkt satt.',
        tp_error = 'Feil under teleportering.',
        connecting_database_error = 'Det oppstod en databasefeil under tilkobling til serveren. (Er SQL-serveren på?)',
        connecting_database_timeout = 'Tilkoblingen til databasen ble tidsavbrutt. (Er SQL-serveren på?)',
    },
    success = {
        server_opened = 'Serveren er åpnet',
        server_closed = 'Serveren er stengt',
        teleported_waypoint = 'Teleportert til veipunkt.',
    },
    info = {
        received_paycheck = 'Du mottok lønnsslippen din på %{value}kr',
        job_info = 'Jobb: %{value} | Karakter: %{value2} | Vakt: %{value3}',
        gang_info = 'Gjeng: %{value} | Grad: %{value2}',
        on_duty = 'Du er nå på vakt!',
        off_duty = 'Du er nå av vakt!',
        checking_ban = 'Hei %s. Vi sjekker om du er utestengt.',
        join_server = 'Velkommen %s til {Server Name}.',
        checking_whitelisted = 'Hei %s. Vi sjekker whitelisten din.',
        exploit_banned = 'Du har blitt utestengt for juks. Sjekk vår Discord for mer informasjon: %{discord}',
        exploit_dropped = 'Du har blitt sparket for utnyttelse',
    },
    command = {
        tp = {
            help = 'TP til spiller eller koordinater (kun admin)',
            params = {
                x = { name = 'id/x', help = 'ID of player or X position'},
                y = { name = 'y', help = 'Y position'},
                z = { name = 'z', help = 'Z position'},
            },
        },
        tpm = { help = 'TP To Marker (Admin Only)' },
        togglepvp = { help = 'Toggle PVP on the server (Admin Only)' },
        addpermission = {
            help = 'Give Player Permissions (God Only)',
            params = {
                id = { name = 'id', help = 'ID of player' },
                permission = { name = 'permission', help = 'Permission level' },
            },
        },
        removepermission = {
            help = 'Remove Player Permissions (God Only)',
            params = {
                id = { name = 'id', help = 'ID of player' },
                permission = { name = 'permission', help = 'Permission level' },
            },
        },
        openserver = { help = 'Open the server for everyone (Admin Only)' },
        closeserver = {
            help = 'Close the server for people without permissions (Admin Only)',
            params = {
                reason = { name = 'reason', help = 'Årsak til stenging (valgfritt)' },
            },
        },
        car = {
            help = 'Spawn Vehicle (Admin Only)',
            params = {
                model = { name = 'model', help = 'Modellnavn på kjøretøyet' },
            },
        },
        dv = { help = 'Delete Vehicle (Admin Only)' },
        givemoney = {
            help = 'Give A Player Money (Admin Only)',
            params = {
                id = { name = 'id', help = 'Player ID' },
                moneytype = { name = 'moneytype', help = 'Type penger (kontanter, bank, krypto)' },
                amount = { name = 'amount', help = 'Mengde penger' },
            },
        },
        setmoney = {
            help = 'Set Players Money Amount (Admin Only)',
            params = {
                id = { name = 'id', help = 'Spiller ID' },
                moneytype = { name = 'moneytype', help = 'Type penger (kontanter, bank, krypto)' },
                amount = { name = 'amount', help = 'Mengde penger' },
            },
        },
        job = { help = 'Check Your Job' },
        setjob = {
            help = 'Set A Players Job (Admin Only)',
            params = {
                id = { name = 'id', help = 'Spiller ID' },
                job = { name = 'job', help = 'Jobb navn' },
                grade = { name = 'grade', help = 'Jobb grad' },
            },
        },
        gang = { help = 'Sjekk gjengen din' },
        setgang = {
            help = 'Set A Players Gang (Admin Only)',
            params = {
                id = { name = 'id', help = 'Spiller ID' },
                gang = { name = 'gang', help = 'Gjengnavn' },
                grade = { name = 'grade', help = 'Gjeng grad' },
            },
        },
        ooc = { help = 'UAK Chat melding' },
        me = {
            help = 'Vis lokal beskjed',
            params = {
                message = { name = 'message', help = 'Melding å sende' }
            },
        },
    },
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
