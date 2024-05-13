local Translations = {
    error = {
        not_in_range = 'For langt unna nav'
    },
    success = {
        recived_license = 'Du har mottatt %{value} for kr1000'
    },
    info = {
        new_job_app = 'Your application was sent to the boss of (%{job})',
        bilp_text = 'Bytjenester',
        city_services_menu = '~g~E~w~ - Meny',
        id_card = 'ID Kort',
        driver_license = 'Drivers License',
        weaponlicense = 'Firearms License',
        new_job = 'Congratulations with your new job! (%{job})',
    },
    email = {
        jobAppSender = "%{job}",
        jobAppSub = "Thank you for applying to %(job).",
        jobAppMsg = "Hello %{gender} %{lastname}<br /><br />%{job} has received your application.<br /><br />The boss is looking into your request and will reach out to you for an interview at their earliest convenience.<br /><br />Once again, thank you for your application.",
        mr = 'Mr',
        mrs = 'Mrs',
        sender = 'Township',
        subject = 'Driving lessons request',
        message = 'Hello %{gender} %{lastname}<br /><br />We have just received a message that someone wants to take driving lessons<br />If you are willing to teach, please contact us:<br />Name: <strong>%{firstname} %{lastname}</strong><br />Phone Number: <strong>%{phone}</strong><br/><br/>Kind regards,<br />Township Los Santos'
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
