Config = Config or {}

Config.UsingPsHousing = false
Config.UsingDefaultQBApartments = true
Config.OnlyShowOnDuty = true
Config.UseCQCMugshot = true

-- Front, Back Side. Use 4 for both sides, we recommend leaving at 1 for default.
Config.MugPhotos = 1

-- If set to true = Fine gets automatically removed from bank automatically charging the player.
-- If set to false = The fine gets sent as an Invoice to their phone and it us to the player to pay for it, can remain unpaid and ignored.
Config.BillVariation = true

-- If set to false (default) = The fine amount is just being removed from the player's bank account
-- If set to true = The fine amount is beeing added to the society account after being removed from the player's bank account
Config.QBBankingUse = false

-- Set up your inventory to automatically retrieve images when a weapon is registered at a weapon shop or self-registered.
-- If you're utilizing qb-inventory's latest version from GitHub, no further modifications are necessary. 
-- However, if you're using a different inventory system, please refer to the "Inventory Edit | Automatic Add Weapons with images" section in ps-mdt's README.
Config.InventoryForWeaponsImages = "qb-inventory"

-- "ps-fuel", "lj-fuel", "ps-fuel"
Config.Fuel = "ps-fuel"

-- Google Docs Link
Config.sopLink = {
    ['police'] = 'https://docs.google.com/spreadsheets/d/1x59mmpm--KyoKtiVmWhs4lNlnaHUHIllOCkN2icU_H4/edit#gid=0',
    ['ambulance'] = '',
    ['bcso'] = 'https://docs.google.com/spreadsheets/d/1x59mmpm--KyoKtiVmWhs4lNlnaHUHIllOCkN2icU_H4/edit#gid=0',
    ['doj'] = '',
    ['sast'] = '',
    ['sasp'] = '',
    ['doc'] = '',
    ['lssd'] = '',
    ['sapr'] = '',
}

-- Google Docs Link
Config.RosterLink = {
    ['police'] = 'https://docs.google.com/spreadsheets/d/1ccC1mzlmFcs3Uvcr7Wpch8PNkA1UgoPHaUdLOWOlNoE/edit#gid=1899866523',
    ['ambulance'] = 'https://docs.google.com/spreadsheets/d/1nv8zQOBu3LriEjhkwwN08qilyIsoMiafYv819iJpSec/edit?usp=sharing',
    ['bcso'] = 'https://docs.google.com/spreadsheets/d/1ccC1mzlmFcs3Uvcr7Wpch8PNkA1UgoPHaUdLOWOlNoE/edit#gid=1899866523',
    ['doj'] = '',
    ['sast'] = '',
    ['sasp'] = '',
    ['doc'] = '',
    ['lssd'] = '',
    ['sapr'] = '',	
}

Config.PoliceJobs = {
    ['police'] = true,
    ['lspd'] = true,
    ['bcso'] = true,
    ['sast'] = true,
    ['sasp'] = true,
    ['doc'] = true,
    ['lssd'] = true,
    ['sapr'] = true,
    ['pa'] = true
}

Config.AmbulanceJobs = {
    ['ambulance'] = false,
    ['doctor'] = true
}

Config.DojJobs = {
    ['lawyer'] = false,
    ['judge'] = true
}

-- This is a workaround solution because the qb-menu present in qb-policejob fills in an impound location and sends it to the event. 
-- If the impound locations are modified in qb-policejob, the changes must also be implemented here to ensure consistency.

Config.ImpoundLocations = {
    [1] = vector4(436.68, -1007.42, 27.32, 180.0),
    [2] = vector4(-436.14, 5982.63, 31.34, 136.0),
}

-- Support for Wraith ARS 2X. 

Config.UseWolfknightRadar = false
Config.WolfknightNotifyTime = 5000 -- How long the notification displays for in milliseconds (30000 = 30 seconds)
Config.PlateScanForDriversLicense = false -- If true, plate scanner will check if the owner of the scanned vehicle has a drivers license

-- IMPORTANT: To avoid making excessive database queries, modify this config to true 'CONFIG.use_sonorancad = true' setting in the configuration file located at 'wk_wars2x/config.lua'. 
-- Enabling this setting will limit plate checks to only those vehicles that have been used by a player.

Config.LogPerms = {
	['ambulance'] = {
		[4] = true,
	},
	['police'] = {
		[4] = true,
	},
    ['bcso'] = {
		[4] = true,
	},
    ['sast'] = {
		[4] = true,
	},
    ['sasp'] = {
		[4] = true,
	},
    ['sapr'] = {
		[4] = true,
	},
    ['doc'] = {
		[4] = true,
	},
    ['lssd'] = {
		[4] = true,
	},
}

Config.RemoveIncidentPerms = {
	['ambulance'] = {
		[4] = true,
	},
	['police'] = {
		[4] = true,
	},
    ['bcso'] = {
		[4] = true,
	},
    ['sast'] = {
		[4] = true,
	},
    ['sasp'] = {
		[4] = true,
	},
    ['sapr'] = {
		[4] = true,
	},
    ['doc'] = {
		[4] = true,
	},
    ['lssd'] = {
		[4] = true,
	},
}

Config.RemoveReportPerms = {
	['ambulance'] = {
		[4] = true,
	},
	['police'] = {
		[4] = true,
	},
    ['bcso'] = {
		[4] = true,
	},
    ['sast'] = {
		[4] = true,
	},
    ['sasp'] = {
		[4] = true,
	},
    ['sapr'] = {
		[4] = true,
	},
    ['doc'] = {
		[4] = true,
	},
    ['lssd'] = {
		[4] = true,
	},
}

Config.RemoveWeaponsPerms = {
	['ambulance'] = {
		[4] = true,
	},
	['police'] = {
		[4] = true,
	},
    ['bcso'] = {
		[4] = true,
	},
    ['sast'] = {
		[4] = true,
	},
    ['sasp'] = {
		[4] = true,
	},
    ['sapr'] = {
		[4] = true,
	},
    ['doc'] = {
		[4] = true,
	},
    ['lssd'] = {
		[4] = true,
	},
}

Config.PenalCodeTitles = {

    [1] = 'Kapittel 3 og 14. Grunnvilkår for Straffansvar og fellesregler for reaksjonsfastsettelsen',
    [2] = 'Kapittel 18. Terrorhandlinger og terrorrelaterte handlinger',
    [3] = 'Kapittel 19. Vern av offentlig myndighet og tilliten til den',
    [4] = 'Kapittel 20. Vern av ro, orden og sikkerhet',
    [5] = 'Kapittel 21. Vern av informasjon og informasjonsutveksling',
    [6] = 'Kapittel 22. Uriktig forklaring og anklage',
    [7] = 'Kapittel 23. Vern av folkehelsen og det ytre miljø',
    [8] = 'Kapittel 24. Vern av den personlige frihet og fred',
    [9] = 'Kapittel 25. Voldsbrudd',
    [10] = 'Kapittel 27. Vinningslovbrudd og lignende krenkelser av eiendomsretten',
    [11] = 'Kapittel 28. Skadeverk og fremkalling av fare for allmennheten',
    [12] = 'Kapittel 29. Vern av tilliten til penger og visse dokumenter',
    [13] = 'Kapittel 30. Vegtrafikkloven og transport',
}

Config.PenalCode = {
    
    [1] = {
        [1] = {title = '§ 21. Medvirkning',                                                                                 class = 'Forbrytelse', id = '',     months = 0,   fine = 0,  color = 'red',    description = ' Straffeloven 1902 inneholder ingen generelle bestemmelser om medvirkning. Loven bestemmer i det enkelte straffebud om medvirkning skal være straffbart. Ved de fleste alvorlige lovbrudd er medvirkning uttrykkelig belagt med straff. Hovedmannen og medvirkeren straffes da på lik linje. Hvis medvirkning ikke er nevnt i straffebudet, rammes bare dem som direkte omfattes av gjerningsbeskrivelsen. Rettspraksis har fastsatt at det er en tolkning av vedkommende straffebud i hvert enkelt tilfelle som avgjør om en person som har medvirket, bør rammes av straff.'},
        [2] = {title = '§ 22. Forsøk',                                                                                      class = 'Forbrytelse', id = '',     months = 0,   fine = 0,  color = 'red',    description = ' Den som har forsett om å fullbyrde et lovbrudd som kan medføre fengsel i 1 år eller mer, og som foretar noe som leder direkte mot utføringen, straffes for forsøk, når ikke annet er bestemt.Den som frivillig avstår fra å fullbyrde lovbruddet eller avverger at det blir fullbyrdet, straffes likevel ikke for forsøk..'},
        [3] = {title = '§ 23. Nødrett',                                                                                     class = 'Forbrytelse', id = '',     months = 0,   fine = 0,  color = 'green',    description = ' En handling som ellers ville være straffbar, er lovlig når. a)        den blir foretatt for å redde liv, helse, eiendom eller en annen interesse fra en fare for skade som ikke kan avverges på annen rimelig måte, og . b)        denne skaderisikoen er langt større enn skaderisikoen ved handlingen..'},
        [4] = {title = '§ 24. Nødverge',                                                                                    class = 'Forbrytelse', id = '',     months = 0,   fine = 0,   color = 'green',    description = ' En handling som ellers ville være straffbar, er lovlig når den. a)        blir foretatt for å avverge et ulovlig angrep,. b)        ikke går lenger enn nødvendig, og. c)        ikke går åpenbart ut over hva som er forsvarlig under hensyn til hvor farlig angrepet er, hva slags interesse som angrepet krenker, og angriperens skyld. Regelen i første ledd gjelder tilsvarende for den som iverksetter en lovlig pågripelse eller søker å hindre at noen unndrar seg varetektsfengsling eller gjennomføring av frihetsstraff. Utøving av offentlig myndighet kan bare møtes med nødverge når myndighetsutøvingen er ulovlig, og den som gjennomfører den, opptrer forsettlig eller grovt uaktsomt..'},
        [5] = {title = '§ 25. Skjerpende omstendigheter',                                                                   class = 'Forbrytelse', id = '',     months = 0,   fine = 0,   color = 'red', description = ' Skjerpende omstendigheter ved en straffbar handling kan føre til at et lovbrudd straffes strengere enn det ellers ville ha gjort, enten ved at domstolen innenfor lovbestemt strafferamme kan utmåle strengere straff eller at loven inneholder regler om at maksimumsstraffen er høyere. .'},
        [6] = {title = '§ 26. Formildende omstendigheter',                                                                  class = 'Forbrytelse', id = '',     months = 0,   fine = 0,   color = 'green',    description = 'Ved straffutmålingen skal det i formildende retning især tas i betraktning at: b)        lovbryteren har forebygget, gjenopprettet eller begrenset skaden eller velferdstapet voldt ved lovbruddet, eller søkt å gjøre det, c)        lovbruddet i betydelig grad er foranlediget av den skadelidtes forhold, d)        lovbryteren på handlingstidspunktet har redusert evne til realistisk å vurdere sitt forhold til omverdenen på grunn av psykisk lidelse, psykisk utviklingshemming, bevissthetsforstyrrelse som ikke er en følge av selvforskyldt rus, eller en sterk sinnsbevegelse, e)        det har gått lang tid siden lovbruddet, eller saksbehandlingen har tatt lengre tid enn rimelig ut fra lovbruddets art, uten at lovbryteren kan lastes for dette, f)        lovbryteren har avgitt en uforbeholden tilståelse, eller i vesentlig grad bidratt til oppklaring av andre lovbrudd, g)        lovbryteren selv er hardt rammet av lovbruddet, eller straffreaksjonen vil bli en sterk belastning på grunn av høy alder, sykdom eller andre omstendigheter, h)        det er gode utsikter til rehabilitering, i)        lovbryteren var under 18 år på handlingstidspunktet.'},
        [3] = {title = '§ 27. fastsetting av straff under minstestraffen eller mildere straffeart',                         class = 'Forbrytelse', id = '',     months = 0,   fine = 0,  color = 'green',    description = ' Straffen kan settes under minstestraffen i straffebudet eller til en mildere straffart når lovbryteren. a)       1.        uten å vite at han er mistenkt i vesentlig grad har forebygget eller gjenopprettet skaden ved lovbruddet, eller 2.        har avlagt en uforbeholden tilståelse, b)        dømmes for forsøk, c)      1.        har handlet på grunn av avhengighetsforhold til en annen deltaker, eller2.        har deltatt bare i liten grad, d)        har overskredet grensene for1.        nødrett (jf. § 23),2.        nødverge (jf. § 24), e)        har handlet i berettiget harme, under tvang eller under overhengende fare,f)        på handlingstidspunktet har en alvorlig psykisk lidelse med en betydelig svekket evne til realistisk å vurdere sitt forhold til omverdenen, men ikke er psykotisk,g)        på handlingstidspunktet er psykisk utviklingshemmet i lettere grad,h)    på handlingstidspunktet har en noe mindre sterk bevissthetsforstyrrelse enn den som fritar for straff etter § 20 bokstav d. Er bevissthetsforstyrrelsen en følge av selvforskyldt rus, gjelder dette likevel bare når særdeles formildende omstendigheter tilsier det, i)        på handlingstidspunktet er under 18 år, eller. j)        har handlet i uaktsom rettsuvitenhet ved overtredelser av straffebud som krever forsett eller grov uaktsomhet. .'},
        [3] = {title = '§ 28. forhold som kan føre til straffefritak',                                                      class = 'Forbrytelse', id = '',     months = 0,   fine = 0,  color = 'green',    description = 'Retten kan frifinne den som. a)        uten å vite at han er mistenkt, i vesentlig grad har forebygget eller gjenopprettet skaden ved et lovbrudd som kan straffes med bot, eller. b)        har overskredet grensene for 1.        nødrett (jf. § 17), 2.        nødverge (jf. § 18), eller 3.        selvtekt (jf. § 19), og særlige grunner tilsier frifinnelse.'},
        [3] = {title = '§ 29. varetektsfradrag',                                                                            class = 'Forbrytelse', id = '',     months = 0,   fine = 0,  color = 'green',    description = 'Den tiden den siktede har vært berøvet friheten i anledning av saken, kommer til fradrag i straffen etter reglene i denne paragraf. Ved idømming av fengselsstraff og bot gis varetektsfradraget først i fengselsstraffen. Ved idømming av forvaring gis varetektsfradraget fullt ut både i minstetiden og i tidsrammen. Ved idømming av samfunnsstraff gis varetektsfradraget i den subsidiære fengselsstraffen samtidig som antallet timer samfunnsstraff og gjennomføringstiden reduseres forholdsmessig. I samarbeid med kriminalomsorgen vil dette kunne utføres. Å de vil kunne reddusere soning i henhold til sine rettningslinjer .'},

    },



    [2] = {
        [1] = {title = '§ 131. Terrorhandlinger',                                                                           class = 'Forbrytelse', id = '',     months = 400,   fine = 400000,  color = 'red',    description = 'En straffbar handling som nevnt i §§ 138 til 141, § 142 første ledd, §§ 143-144, 192, 238, 239, 240, 255, 257, 274, 275 og 355, anses som terrorhandling og straffes med fengsel inntil 21 år dersom den er begått med terrorhensikt som nevnt i annet ledd. Terrorhensikt foreligger dersom en handling som nevnt i første ledd begås i den hensikt å forstyrre alvorlig en funksjon av grunnleggende betydning i samfunnet, som for eksempel lovgivende, utøvende eller dømmende myndighet, energiforsyning, sikker forsyning av mat eller vann, bank- og pengevesen eller helseberedskap og smittevern, å skape alvorlig frykt i en befolkning, eller urettmessig å tvinge offentlige myndigheter eller en mellomstatlig organisasjon til å gjøre, tåle eller unnlate noe av vesentlig betydning for landet eller organisasjonen, eller for et annet land eller en mellomstatlig organisasjon. Den som har forsett om å fullbyrde et lovbrudd som nevnt i første ledd eller § 132, og foretar handlinger som legger til rette for og peker mot gjennomføringen, straffes for forsøk. Forsøket straffes mildere enn fullbyrdet overtredelse. § 16 annet ledd gjelder tilsvarende. Straffen kan ikke settes under minstestraffen i bestemmelsene som er nevnt i første ledd.'},
        [2] = {title = '§ 132. Grov Terrorhandling',                                                                        class = 'Forbrytelse', id = '',     months = 800,   fine = 800000,  color = 'red',    description = 'Grov overtredelse av § 131 straffes med fengsel inntil 30 år. Ved avgjørelsen av om terrorhandlingen er grov, skal det særlig legges vekt på om den  har medført tap av flere menneskeliv eller svært omfattende ødeleggelse av eiendom eller miljø, eller særlig nærliggende fare for det, er utført med særlig skadelige midler, er begått av en person som i kraft av sin stilling nyter en særlig tillit som kan utnyttes til å gjennomføre en terrorhandling.'},
        [3] = {title = '§ 133. Terrorforbund',                                                                              class = 'Forbrytelse', id = '',     months = 100,   fine = 100000,  color = 'red',    description = 'Med fengsel inntil 10 år straffes den som planlegger eller forbereder en terrorhandling ved å inngå forbund med noen om å begå en straffbar handling som nevnt i §§ 131, 138, 139, 141, 141 a, 142, 143 eller 144. Med fengsel inntil 3 år straffes den som inngår forbund med noen om å begå en straffbar handling som nevnt i §§ 137 eller 140.'},
        [4] = {title = '§ 134. Terrortrusler',                                                                              class = 'Forbrytelse', id = '',     months = 50,    fine = 50000,   color = 'red',    description = 'Den som truer med å begå en handling som nevnt i § 131 eller §§ 137 til 144, straffes med fengsel inntil 10 år. Dersom trusselen leder til en følge som nevnt i § 131 annet ledd, straffes handlingen med fengsel inntil 21 år.'},
        [5] = {title = '§ 139. Kapring av luftfartøy og skip mv.',                                                          class = 'Forbrytelse', id = '',     months = 23,    fine = 40000,   color = 'orange', description = 'Den som ved vold, trusler, teknologi eller på annen ulovlig måte tiltvinger seg kontroll over et luftfartøy i tjeneste eller et skip, eller på annen måte oppnår kontroll over eller griper inn i en flygning eller seilas, straffes med fengsel inntil 21 år. På samme måte straffes den som med slike midler tiltvinger seg kontroll over innretninger eller anlegg på kontinentalsokkelen.'},
        [6] = {title = '§ 143. Gisseltaking i terrorøyemed',                                                                class = 'Forbrytelse', id = '',     months = 30,    fine = 26000,   color = 'red',    description = 'Med fengsel inntil 12 år straffes den som berøver noen friheten og som truer med å drepe eller skade gisselet eller med å fortsette å holde gisselet frihetsberøvet, med forsett om å tvinge en annen til å gjøre, tåle eller unnlate noe'},
     
    },
    [3] = {
        [1] = {title = '§ 5. Plikten til å følge politiets pålegg',                                                         class = 'Overtredelse', id = '',    months = 7,     fine = 7500,    color = 'orange', description = 'Enhver plikter straks å rette seg etter de pålegg, tegn eller øvrige signaler som politiet gir i medhold av bestemmelsene i kapittel II i denne lov. (Lyd eller Lys signal)'},
        [2] = {title = '§ 151 Stemmekjøp og utilbørlig stemmepåvirkning',                                                   class = 'Overtredelse', id = '',    months = 7,     fine = 7500,    color = 'orange', description = 'Med bot eller fengsel inntil 2 år straffes den som ved et offentlig valg ved trussel eller andre ulovlige midler søker å påvirke noens avgivelse av stemme, ved å gi et gode eller inngå avtale om det søker å oppnå at noen forplikter seg til å stemme på en bestemt måte eller unnlate å stemme, opptrer slik at noen utilsiktet unnlater å stemme, eller stemmer annerledes enn tilsiktet. Med offentlig valg menes folkeavstemning, valg etter lov 28. juni 2002 nr. 57 om valg til Stortinget, fylkesting og kommunestyrer og valg etter lov 12. juni 1987 nr. 56 om Sametinget og andre samiske rettsforhold kapittel 2. 20 000kr ELLER 15 Måneder'},
        [3] = {title = '§ 152 Stemmesalg',                                                                                  class = 'Overtredelse', id = '',    months = 7,     fine = 7500,    color = 'orange', description = 'Den som i et offentlig valg på grunn av et mottatt gode eller avtale om dette gir løfte om å stemme på en bestemt måte, eller om å unnlate å stemme, straffes med bot eller fengsel inntil 6 måneder. 10 000kr ELLER 6 Måneder'},
        [4] = {title = '§ 155. Vold eller trusler mot offentlig tjenestemann',                                              class = 'Forbrytelse', id = '',     months = 15,    fine = 17500,   color = 'orange', description = 'Den som ved vold eller trusler påvirker en offentlig tjenestemann til å foreta eller unnlate å foreta en tjenestehandling, eller søker å oppnå dette, straffes med bot eller fengsel inntil 3 år.'},
        [5] = {title = '§ 156. Hindring av offentlig tjenestemann / kriminalomsorgen',                                      class = 'Forbrytelse', id = '',     months = 5,     fine = 12500,   color = 'orange', description = 'Den som hindrer en offentlig tjenestemann i å utføre en tjenestehandling, for eksempel ved å nekte adgang til steder hvor han har berettiget tilgang, straffes med bot eller fengsel inntil 6 måneder.'},
        [6] = {title = '§ 157. Motarbeiding av rettsvesen',                                                                 class = 'Forbrytelse', id = '',     months = 15,    fine = 10000,   color = 'orange', description = 'Den som hindrer en offentlig tjenestemann i å utføre en tjenestehandling, for eksempel ved å nekte adgang til steder hvor han har berettiget tilgang, straffes med bot eller fengsel inntil 6 måneder.'},
        [7] = {title = '§ 157a. Grov motarbeiding av rettsvesen',                                                           class = 'Forbrytelse', id = '',     months = 25,    fine = 27500,   color = 'red',    description = 'Med fengsel inntil 6 år straffes den som ved vold, trusler, skadeverk eller annen rettsstridig atferd overfor en aktør i rettsvesenet eller noen av hans nærmeste opptrer slik at det er egnet til å påvirke aktøren til å foreta eller unnlate en handling, et arbeid eller en tjeneste i forbindelse med en straffesak eller en sivil sak, eller gjengjelder en handling, et arbeid eller en tjeneste som aktøren har utført i forbindelse med en straffesak eller en sivil sak.'},
        [8] = {title = '§ 160. Bevispåvirkning og unndraging fra strafforfølgning av regelbudd',                            class = 'Overtredelse', id = '',    months = 10,    fine = 10000,   color = 'green',  description = 'Den som motarbeider en offentlig undersøkelse av et lovbrudd ved å bidra til at gjenstander som kan ha betydning som bevis tilintetgjøres, fjernes, ødelegges, endres, plantes eller fabrikkeres, eller på annen måte utsletter sporene etter handlingen, straffes med bot eller fengsel inntil 2 år.'},
        [9] = {title = '§ 161. Unndragning fra idømt straff',                                                               class = 'Forbrytelse', id = '',     months = 20,    fine = 12500,   color = 'red',    description = 'Den som medvirker til at noen som er idømt frihetsstraff eller en særreaksjon, unndrar seg gjennomføringen av reaksjonen, straffes med bot eller fengsel inntil 3 år.'},
        [10] = {title = '§ 162. Brudd på identifikasjonsplikten',                                                           class = 'Overtredelse', id = '',    months = 0,     fine = 6500,    color = 'green',  description = 'Den som ikke oppgir sitt navn, fødselsdato, fødselsår, stilling eller bopel til et stevnevitne, en polititjenestemann eller annen offentlig myndighet som ber om opplysningen som ledd i tjenesteutøvelsen, straffes med bot. På samme måte straffes den som oppgir uriktige slike opplysninger om seg selv eller andre.'},
        [11] = {title = '§ 164. Ulovlig myndighetsutøving',                                                                 class = 'Forbrytelse', id = '',     months = 10,    fine = 10000,   color = 'orange', description = 'Den som uhjemlet utøver offentlig myndighet, eller som foretar handlinger som bare kan utøves av offentlige tjenestemenn, straffes med bot eller fengsel inntil 1 år.'},
        [12] = {title = '§ 165. Misbruk av offentlig uniform, kjennetegn eller tittel',                                     class = 'overtredelse', id = '',    months = 10,    fine = 12000,   color = 'green',  description = 'Med bot eller fengsel inntil 6 måneder straffes den som ved uhjemlet bruk av uniform eller på annen måte offentlig utgir seg for å ha offentlig myndighet på en slik måte at det er egnet til å skape uleilighet for noen eller svekke tilliten til den offentlige myndigheten.'},
        [13] = {title = '§ 171. Tjenestefeil',                                                                              class = 'Forbrytelse', id = '',     months = 0,     fine = 25000,   color = 'orange', description = 'Med bot eller fengsel inntil 1 år straffes en tjenestefeil.'},
        [14] = {title = '§ 172. Grov uaktsom tjenestefeil',                                                                 class = 'Forbrytelse', id = '',     months = 50,    fine = 50000,   color = 'red',    description = 'Med bot eller fengsel inntil 2 år straffes den som utøver eller bistår ved utøving av offentlig myndighet, og grovt bryter sin tjenesteplikt.'},
        [15] = {title = '§ 174. Tortur',                                                                                    class = 'Forbrytelse', id = '',     months = 90,    fine = 50000,   color = 'red',    description = 'Ved avgjørelsen av om torturen er grov, skal det særlig legges vekt på om den har ført til tap eller fare for tap av menneskeliv.'},
    },
    [4] = {
        [1] = {title = '§ 181. Ordensforstyrrelse',                                                                         class = 'Overtredelse', id = '', months = 5, fine = 10000, color = 'green', description = 'Med bot eller fengsel inntil 6 måneder straffes den som ved slagsmål, støy eller annen utilbørlig atferd forstyrrer den alminnelige fred og orden, lovlig ferdsel, omgivelsenes nattero, eller omgivelsene på et sted hvor han uberettiget forblir tross pålegg om å fjerne seg På samme måte straffes den som i selvforskyldt rus forulemper eller volder fare for andre.'},
        [2] = {title = '§ 182. Opptøyer',                                                                                   class = 'Overtredelse', id = '', months = 7, fine = 8500, color = 'orange', description = 'Den som offentlig oppfordrer noen til å iverksette en straffbar handling, straffes med bot eller fengsel inntil 3 år.'},
        [3] = {title = '§ 183. Oppfordring til en straffbar handling',                                                      class = 'Overtredelse', id = '', months = 0, fine = 7500, color = 'green', description = 'Den som offentlig oppfordrer noen til å iverksette en straffbar handling, straffes med bot eller fengsel inntil 3 år.'},
        [4] = {title = '§ 34-2 Rømningsforsøk',                                                                             class = 'Forbrytelse', id = '', months = 25, fine = 25000, color = 'red', description = 'En innsatt som har rømt eller gjort forsøk på å rømme, bør som regel refses med et av de strengeste refselsesmidler, hvis å ikke hans helsetilstand eller andre særlige grunner taler imot det. De utgifter som påløper ved anstaltens ettersøkning, pågripelse og transport, dekkes under kap. 414 Undersøkelses- og domsutgifter og anvises av fylkesmannen.'},
        [5] = {title = '§ 34-2a Bistå rømningsforsøk',                                                                      class = 'Forbrytelse', id = '', months = 15, fine = 15000, color = 'orange', description = 'En innsatt som har rømt eller gjort forsøk på å rømme, bør som regel refses med et av de strengeste refselsesmidler, hvis å ikke hans helsetilstand eller andre særlige grunner taler imot det. De utgifter som påløper ved anstaltens ettersøkning, pågripelse og transport, dekkes under kap. 414 Undersøkelses- og domsutgifter og anvises av fylkesmannen. Dette gjelder også for de som bistår.'},
        [6] = {title = '§ 187. Falsk alarm',                                                                                class = 'Overtredelse', id = '', months = 10, fine = 10000, color = 'green', description = 'Med bot eller fengsel inntil 6 måneder straffes den som ved en uriktig melding, et ugrunnet rop om hjelp, misbruk av nødsignal eller liknende forsettlig eller grovt uaktsomt volderutrykning av politi, brannvesen, ambulanse, lege eller forsvaret utrykning som skjer etter anmodning fra en hovedredningssentral eller lokal redningssentral, sammenstimling av eller skrekk blant et større antall mennesker.'},
        [7] = {title = '§ 188. Uforsiktig omgang med skytevåpen eller eksplosiver',                                         class = 'Forbrytelse', id = '', months = 8, fine = 10000, color = 'red', description = 'Med bot eller fengsel inntil 1 år straffes den som fremstiller, tilvirker, bruker, behandler eller oppbevarer skytevåpen, ammunisjon, sprengstoff eller et annet eksplosjonsfarlig stoff på en uforsiktig måte som er egnet til å volde fare for andres liv eller helse.'},
        [8] = {title = '§ 189. Ulovlig bevæpning på offentlig sted',                                                        class = 'Forbrytelse', id = '', months = 10, fine = 10000, color = 'orange', description = 'Med bot eller fengsel inntil 1 år straffes den som på et offentlig sted forsettlig eller grovt uaktsomt har med skytevåpen, luft- og fjærvåpen, våpenetterligninger som lett kan forveksles med skytevåpen, eller skytevåpen som er deaktivert etter våpenlova 20. april 2018 nr. 7 § 27. På samme måte straffes den som på et offentlig sted bærer kniv eller lignende skarpt redskap som er egnet til å påføre noen en kroppskrenkelse.'},
        [9] = {title = '§ 189 a. Grov ulovlig bevæpning med skytevåpen på offentlig sted',                                  class = 'Forbrytelse', id = '', months = 12, fine = 15000, color = 'red', description = 'Grov ulovlig bevæpning med skytevåpen på offentlig sted straffes med bot eller fengsel inntil 3 år. Ved avgjørelsen av om bevæpningen er grov, skal det særlig legges vekt på hvilken type våpen overtredelsen gjelder, om våpenet er ladd eller lett kan lades, og om bevæpningen av andre grunner er særlig farlig eller samfunnsskadelig.'},
        [10] = {title = '§ 191 a. Befatning med skytevåpen eller eksplosiver i den hensikt å begå en straffbar handling',   class = 'Overtredelse', id = '', months = 15, fine = 10000, color = 'green', description = 'Med fengsel inntil 6 år straffes den som i hensikt å begå en straffbar handling, anskaffer, tilvirker eller oppbevarer - a.        skytevåpen, våpendeler, ammunisjon eller sprengstoff, eller b.   bestanddeler, utstyr eller andre gjenstander som alene eller samlet er av vesentlig betydning for å tilvirke eller anvende gjenstander som nevnt i bokstav a.'},
        [11] = {title = '§ 191 b. Befatning med skytevåpen mv. i den hensikt å begå en grov straffbar handling',            class = 'Overtredelse', id = '', months = 15, fine = 15000, color = 'green', description = 'Grov overtredelse av § 191 a straffes med fengsel inntil 10 år. Ved avgjørelsen av om overtredelsen er grov, skal det særlig legges vekt på om den straffbare handling nevnt i § 191 a som befatningen tok sikte på a.        ville volde fare for betydelig skade på kropp, eiendom eller miljø, og b.        ville være særlig farlig eller samfunnsskadelig. Når den straffbare handling som nevnt i § 191 a kan straffes med fengsel i 10 år eller mer, skal overtredelsen alltid anses som grov.'},
        [12] = {title = '§ 192. Anslag mot infrastrukturen',                                                                class = 'Overtredelse', id = '', months = 10, fine = 10000, color = 'green', description = 'Med fengsel inntil 10 år straffes den som volder omfattende forstyrrelse i den offentlige forvaltning eller i samfunnslivet for øvrig ved å ødelegge, skade eller sette ut av virksomhet en informasjonssamling, eller et anlegg for energiforsyning, kringkasting, elektronisk kommunikasjon eller samferdsel.'},
        [13] = {title = '§ 195. Likskjending',                                                                              class = 'Overtredelse', id = '', months = 25, fine = 15000, color = 'green', description = 'Med bot eller fengsel inntil 2 år straffes den soma.        mishandler et lik, b.        uberettiget fjerner et lik fra en annens varetekt, eller c.        uten hjemmel graver opp eller borttar et begravd lik. Den som borttar et lik eller en gjenstand fra et lik, en grav eller et gravminne med forsett om vinning, straffes etter kapittel 27 uten hensyn til om liket eller gjenstanden er i noens eie.'},
        [14] = {title = '§ 196. Plikt til å avverge et straffbart forhold',                                                 class = 'Overtredelse', id = '', months = 7, fine = 10000, color = 'green', description = 'Med bot eller fengsel inntil 1 år straffes den som unnlater gjennom anmeldelse eller på annen måte å søke å avverge et lovbrudd eller følgene av det, på et tidspunkt da dette fortsatt er mulig, og det fremstår som sikkert eller mest sannsynlig at lovbruddet er eller vil bli begått.'},
        [15] = {title = '§ 198. Forbund om alvorlig organisert kriminalitet',                                               class = 'Overtredelse', id = '', months = 15, fine = 20000, color = 'red', description = 'Den som inngår forbund med noen om å begå en handling som kan straffes med fengsel i minst 3 år, og som skal begås som ledd i aktivitetene til en organisert kriminell gruppe, straffes med fengsel inntil 3 år, med mindre forholdet går inn under en strengere straffebestemmelse. Forhøyelse av maksimumsstraffen ved gjentakelse eller sammenstøt av lovbrudd kommer ikke i betraktning.'},
    },
    [5] = {
        [1] = {title = '§ 201. Uberettiget befatning med tilgangsdata, dataprogram mv.',                                    class = 'Overtredelse', id = '', months = 10, fine = 15000, color = 'orange', description = 'Dataprogram eller annet som er særlig egnet som middel til å begå straffbare handlinger som retter seg mot databasert informasjon eller datasystem. På samme måte straffes den som uten forsett om å begå en straffbar handling besitter et selvspredende dataprogram, og besittelsen skyldes uberettiget fremstilling eller anskaffelse av programmet.'},
        [2] = {title = '§ 202. Identitetskrenkelse',                                                                        class = 'Overtredelse', id = '', months = 20, fine = 22500, color = 'green', description = 'Med bot eller fengsel inntil 2 år straffes den som uberettiget setter seg i besittelse av en annens identitetsbevis, eller opptrer med en annens identitet eller med en identitet som er lett å forveksle med en annens identitet, med forsett om å oppnå en uberettiget vinning for seg eller en annen, eller påføre en annen tap eller ulempe.'},
        [3] = {title = '§ 209. Brudd på taushetsplikt',                                                                     class = 'Overtredelse', id = '', months = 30, fine = 30000, color = 'red', description = 'Med bot eller fengsel inntil 1 år straffes den som krenker taushetsplikt som han eller hun har i henhold til lovbestemmelse eller forskrift, eller utnytter en opplysning han eller hun har taushetsplikt om med forsett om å skaffe seg eller andre en uberettiget vinning.'},
    },
    [6] = {
        [1] = {title = '§ 221. Uriktig forklaring',                                                                         class = 'Overtredelse', id = '', months = 10, fine = 10000, color = 'green', description = 'Med bot eller fengsel inntil 2 år straffes den som skriftlig eller muntlig gir uriktig opplysning til retten, offentlig myndighet under forklaringsplikt, offentlig myndighet når forklaringen er bestemt til å avgi bevis, EFTA-domstolen, eller Den internasjonale straffedomstolen. Straff etter første ledd kommer ikke til anvendelse mot en mistenkt som forklarer seg uriktig om det forhold mistanken mot ham gjelder.'},
        [2] = {title = '§ 222. Uriktig anklage',                                                                            class = 'Overtredelse', id = '', months = 10, fine = 10000, color = 'green', description = 'Med bot eller fengsel inntil 3 år straffes den som ved å gi uriktig opplysning til retten, politiet eller annen offentlig myndighet, ved å fabrikere bevis eller ved annen atferd skaper et uriktig grunnlag for straffansvar, og derved pådrar noen en siktelse eller domfellelse.'},
        [3] = {title = '§ 225. Anklage om oppdiktet straffbar handling',                                                    class = 'Overtredelse', id = '', months = 10, fine = 10000, color = 'green', description = 'Med bot eller fengsel inntil 1 år straffes den som for retten, påtalemyndigheten eller en annen offentlig myndighet anmelder en straffbar handling som ikke er begått, eller foretar noe for å vekke mistanke om at en straffbar handling er begått, uten at den er det.'},
    },
    [7] = {
        [1] = {title = '§ 231. Narkotikaovertredelse',                                                                      class = 'Forbrytelse', id = '', months = 7, fine = 12000, color = 'orange', description = 'Med bot eller fengsel inntil 2 år straffes den som ulovlig tilvirker, innfører, utfører, erverver, oppbevarer, sender eller overdrar stoff som etter regler med hjemmel i legemiddelloven § 22 er å anse som narkotika. Uaktsom narkotikaovertredelse straffes med bot eller fengsel inntil 1 år. 10 poser eller mindre.'},
        [2] = {title = '§ 232. Grov narkotikaovertredelse',                                                                 class = 'Forbrytelse', id = '', months = 17, fine = 15000, color = 'red', description = 'Grov narkotikaovertredelse straffes med fengsel inntil 10 år. Ved avgjørelsen av om overtredelsen er grov skal det særlig legges vekt på hva slags stoff den gjelder, mengden, og overtredelsens karakter. Overtredelser som omfatter en meget betydelig mengde, straffes med fengsel fra 3 år inntil 15 år. Under særdeles skjerpende omstendigheter kan fengsel inntil 21 år idømmes. Uaktsom grov narkotikaovertredelse straffes med fengsel inntil 6 år. 15 poser eller mer.'},
    },
    [8] = {
        [1] = {title = '§ 251. Tvang',                                                                                      class = 'Forbrytelse', id = '', months = 15, fine = 20000, color = 'orange', description = 'Med bot eller fengsel inntil 2 år straffes den som ved straffbar eller annen urettmessig atferd eller ved å true med slik atferd tvinger noen til å gjøre, tåle eller unnlate noe. Den som ved å true med anklage eller anmeldelse for en straffbar handling eller med å sette frem en skadelig opplysning eller krenkende beskyldning rettsstridig tvinger noen til å gjøre, tåle eller unnlate noe, straffes med bot eller fengsel inntil 1 år.'},
        [2] = {title = '§ 252. Grov tvang',                                                                                 class = 'Forbrytelse', id = '', months = 30, fine = 27500, color = 'red', description = 'Grov tvang straffes med fengsel inntil 6 år. Ved avgjørelsen av om tvangen er grov skal det særlig legges vekt på om den er begått mot en forsvarsløs person, om den er utøvd av flere i fellesskap, og om den har karakter av mishandling.'},
        [3] = {title = '§ 254. Frihetsberøvelse',                                                                           class = 'Forbrytelse', id = '', months = 15, fine = 15000, color = 'orange', description = 'Den som ved innesperring, bortføring eller på annen måte rettsstridig fratar noen friheten, straffes med bot eller fengsel inntil 3 år.'},
        [4] = {title = '§ 255. Grov frihetsberøvelse',                                                                      class = 'Forbrytelse', id = '', months = 30, fine = 22500, color = 'red', description = 'Grov frihetsberøvelse straffes med fengsel inntil 10 år. Ved avgjørelsen av om frihetsberøvelsen er grov skal det særlig legges vekt på dens varighet, om den har voldt ualminnelige lidelser, død eller hatt betydelig skade på kropp eller helse til følge.'},
        [5] = {title = '§ 263. Trusler',                                                                                    class = 'Overtredelse', id = '', months = 0, fine = 7500, color = 'green', description = 'Den som i ord eller handling truer med straffbar atferd under slike omstendigheter at trusselen er egnet til å fremkalle alvorlig frykt, straffes med bot eller fengsel inntil 1 år.'},
        [6] = {title = '§ 264. Grove trusler',                                                                              class = 'Overtredelse', id = '', months = 0, fine = 20000, color = 'red', description = 'Grove trusler straffes med fengsel inntil 3 år. Ved avgjørelsen av om trusselen er grov skal det særlig legges vekt på om den er rettet mot en forsvarsløs person, om den er fremsatt uprovosert eller av flere i fellesskap og om den er motivert av fornærmedes hudfarge, nasjonale eller etniske opprinnelse, religion, livssyn, seksuelle orientering, kjønnsidentitet eller kjønnsuttrykk eller nedsatte funksjonsevne.'},
        [7] = {title = '§ 266. Hensynsløs atferd',                                                                          class = 'Overtredelse', id = '', months = 10, fine = 10000, color = 'green', description = 'Den som ved skremmende eller plagsom opptreden eller annen hensynsløs atferd forfølger en person eller på annen måte krenker en annens fred, straffes med bot eller fengsel inntil 2 år.'},
        [8] = {title = '§ 266 a. Alvorlig personforfølgelse',                                                               class = 'Overtredelse', id = '', months = 12, fine = 12000, color = 'orange', description = 'Den som gjentatte ganger truer, følger etter, iakttar, kontakter eller gjennom andre sammenlignbare handlinger forfølger en annen på en måte som er egnet til å fremkalle frykt eller engstelse, straffes med fengsel inntil 4 år.'},
        [9] = {title = '§ 268. Uberettiget adgang eller opphold',                                                           class = 'Overtredelse', id = '', months = 10, fine = 10000, color = 'green', description = 'Den som uberettiget skaffer seg adgang til en annens hus eller et annet sted som ikke er fritt tilgjengelig, eller som uberettiget forblir på et slikt sted, straffes med bot eller fengsel inntil 2 år. Den som uberettiget oppholder seg på fremmed grunn til tross for oppfordring om å forlate stedet, straffes med bot.'},
    },
    [9] = {
        [1] = {title = '§ 271. Kroppskrenkelse',                                                                            class = 'Forbrytelse', id = '', months = 30, fine = 30000, color = 'orange', description = 'Med bot eller fengsel inntil 1 år straffes den som øver vold mot en annen person eller på annen måte krenker ham fysisk. En kroppskrenkelse kan gjøres straffri dersom den er gjengjeldt med en kroppskrenkelse eller kroppsskade, eller den gjengjelder en forutgående kroppskrenkelse, kroppsskade eller særlig provoserende ytring.'},
        [2] = {title = '§ 272. Grov kroppskrenkelse',                                                                       class = 'Forbrytelse', id = '', months = 60, fine = 60000, color = 'red', description = 'Grov kroppskrenkelse straffes med fengsel inntil 6 år. Ved avgjørelsen av om kroppskrenkelsen er grov skal det særlig legges vekt på om den har hatt til følge sterk smerte, skade eller død, og for øvrig om den har skjedd uten foranledning og har karakter av overfall, er begått mot en forsvarsløs person, har karakter av mishandling, er begått av flere i fellesskap'},
        [3] = {title = '§ 273. Kroppsskade',                                                                                class = 'Forbrytelse', id = '', months = 30, fine = 30000, color = 'red', description = 'Med fengsel inntil 6 år straffes den som skader en annens kropp eller helse, gjør en annen fysisk maktesløs eller fremkaller bevisstløshet eller liknende tilstand hos en annen.'},
        [4] = {title = '§ 274. Grov kroppsskade',                                                                           class = 'Forbrytelse', id = '', months = 60, fine = 60000, color = 'red', description = 'Grov kroppsskade straffes med fengsel inntil 10 år. Ved avgjørelsen av om kroppsskaden er grov skal det særlig legges vekt på om den har hatt til følge uhelbredelig lyte eller skade, sykdom eller arbeidsudyktighet av noen varighet eller sterk smerte, betydelig skade eller død, og for øvrig om den a.    har skjedd uten foranledning og har karakter av overfall, b.    er begått mot en forsvarsløs person, c.    har karakter av mishandling, d.    er begått av flere i fellesskap, e.    er motivert av fornærmedes hudfarge, nasjonale eller etniske opprinnelse, religion, livssyn, seksuelle orientering, kjønnsidentitet eller kjønnsuttrykk eller nedsatte funksjonsevne, eller f.    er forøvd ved bruk av kniv eller annet særlig farlig redskap.'},
        [5] = {title = '§ 275. Drap',                                                                                       class = 'Forbrytelse', id = '', months = 400, fine = 400000, color = 'red', description = 'Den som dreper en annen, straffes med fengsel fra 8 inntil 21 år.'},
        [6] = {title = '§ 281. Uaktsom forvoldelse av død',                                                                 class = 'Forbrytelse', id = '', months = 120, fine = 90000, color = 'red', description = 'Med fengsel inntil 6 år straffes den som uaktsomt forvolder en annens død.'},
        [7] = {title = '§ 286. Vold mot særskilt utsatte yrkesgrupper',                                                     class = 'Forbrytelse', id = '', months = 25, fine = 25000, color = 'orange', description = 'Den som ved vold søker å påvirke yrkesutøvelsen til en person fra en særskilt utsatt yrkesgruppe, straffes med bot eller fengsel inntil 3 år. Med særskilt utsatt yrkesgruppe forstås helsepersonell som yter medisinsk begrunnet helsehjelp, og brann- og redningspersonell som yter innsats i oppdrag.'},
        [8] = {title = '§ 287. Forsømmelse av hjelpeplikt',                                                                 class = 'Forbrytelse', id = '', months = 10, fine = 25000, color = 'green', description = 'Med bot eller fengsel inntil 6 måneder straffes den som unnlate etter evne å hjelpe en person som er i åpenbar fare for å miste livet eller bli påført betydelig skade på kropp eller helse, eller ved anmeldelse eller på annen måte etter evne å avverge brann, oversvømmelse, sprengning eller lignende ulykke som medfører fare for menneskeliv eller betydelig skade på kropp og helse.'},
        [9] = {title = '§ 288. Hensettelse i hjelpeløs tilstand mv.',                                                       class = 'Forbrytelse', id = '', months = 15, fine = 25000, color = 'orange', description = 'Med fengsel inntil 3 år straffes den som hensetter en annen i hjelpeløs tilstand med fare for liv, kropp eller helse. På samme måte straffes den som unnlater å gi hjelp til noen i hjelpeløs tilstand som vedkommende har en plikt til å dra omsorg for.'},
    },
    [10] = {
        [1] = {title = '§ 321. Tyveri',                                                                                     class = 'Forbrytelse', id = '', months = 5, fine = 10000, color = 'orange', description = 'For tyveri straffes den som tar en gjenstand som tilhører en annen, med forsett om å skaffe seg eller andre en uberettiget vinning ved å selge, forbruke eller på annen måte tilegne seg den. Straffen for tyveri er bot eller fengsel inntil 2 år.'},
        [2] = {title = '§ 322. Grovt tyveri',                                                                               class = 'Forbrytelse', id = '', months = 15, fine = 15000, color = 'red', description = 'Grovt tyveri straffes med bot eller fengsel inntil 6 år. Ved avgjørelsen av om tyveriet er grovt skal det særlig legges vekt på om det gjaldt en betydelig verdi, gjerningspersonen har tatt seg inn i bolig eller fritidshus, det har et profesjonelt preg, eller det av andre grunner er av en særlig farlig eller samfunnsskadelig art.'},
        [3] = {title = '§ 327. Ran',                                                                                        class = 'Forbrytelse', id = '', months = 15, fine = 20000, color = '', description = 'For ran straffes den som med forsett om å skaffe seg eller andre en uberettiget vinning øver vold mot en person, setter ham ute av stand til forsvar eller ved trusler fremkaller alvorlig frykt for vold mot noen, og derved bemektiger seg en gjenstand som tilhører en annen, eller tvinger noen til å handle slik at det medfører tap eller fare for tap for ham eller den han handler for. Straffen for ran er fengsel inntil 6 år.'},
        [4] = {title = '§ 328 a. Grovt ran',                                                                                class = 'Forbrytelse', id = '', months = 25, fine = 25000, color = 'red', description = 'Grovt ran straffes med fengsel inntil 15 år. Ved avgjørelsen av om ranet er grovt skal det særlig legges vekt på om det er brukt grov vold, det er truet med skytevåpen eller annet særlig farlig redskap, ranet er nøye planlagt, foretatt overfor en forsvarsløs person, eller det gjaldt en betydelig verdi.'},
        [5] = {title = '§ 330. Utpressing',                                                                                 class = 'Forbrytelse', id = '', months = 20, fine = 25000, color = 'orange', description = 'For utpressing straffes den som med forsett om å skaffe seg eller andre en uberettiget vinning tvinger noen til å handle slik at det medfører tap eller fare for tap for ham eller den han handler for, ved annen ulovlig atferd enn den som rammes av § 327 første ledd, eller utilbørlig å true med anklage eller anmeldelse for noe straffbart, eller med å sette frem en skadelig opplysning. Straffen for utpressing er bot eller fengsel inntil 3 år.'},
        [6] = {title = '§ 332. Heleri',                                                                                     class = 'Forbrytelse', id = '', months = 10, fine = 10000, color = 'orange', description = 'For heleri straffes den som mottar eller skaffer seg eller andre del i utbytte av en straffbar handling. Likestilt med utbytte er en gjenstand, fordring eller tjeneste som trer istedenfor det. Heleri straffes selv om ingen kan straffes for handlingen som utbyttet stammer fra på grunn av utilregnelighet, jf. § 20. Første ledd anvendes ikke på den som mottar utbyttet til vanlig underhold av seg eller andre fra en som plikter å yte slikt underhold, eller den som mottar utbytte som normalt vederlag for vanlige forbruksvarer, bruksting eller tjenester. Straffen for heleri er bot eller fengsel inntil 2 år.'},
        [7] = {title = '§ 333. Grovt Heleri',                                                                               class = 'Forbrytelse', id = '', months = 15, fine = 15000, color = 'orange', description = 'Grovt heleri straffes med fengsel inntil 6 år. Ved avgjørelsen av om heleriet er grovt skal det særlig legges vekt på hva slags handling utbyttet stammer fra, om fordelen gjerningspersonen har skaffet seg er betydelig, og om den skyldige har drevet heleri regelmessig. Gjelder heleriet utbytte av narkotikalovbrudd, skal det også legges vekt på arten og mengden av det stoffet utbyttet knytter seg til. Dersom utbyttet stammer fra grovt ran, grov menneskehandel eller særlig grov narkotikaovertredelse, er straffen fengsel inntil 15 år'},
        [8] = {title = '§ 337. Hvitvasking',                                                                                class = 'Forbrytelse', id = '', months = 20, fine = 20000, color = 'orange', description = ''},
        [9] = {title = '§ 338. Grov hvitvasking',                                                                           class = 'Forbrytelse', id = '', months = 35, fine = 35000, color = 'red', description = ''},
        [10] = {title = '§ 342. Brukstyveri av motorvogn mv.',                                                              class = 'Forbrytelse', id = '', months = 5, fine = 7500, color = 'orange', description = 'For brukstyveri av motorvogn straffes den som uten å ha rett til det tar en motorvogn og bruker eller forføyer over den. Den som tilhører husstanden til eller er i tjeneste hos den som har rett til bilen, straffes likevel ikke for slikt brukstyveri. Med motorvogn menes kjøretøy som blir drevet frem med motor. Straffen for brukstyveri av motorvogn er bot eller fengsel inntil 2 år.  På samme måte straffes brukstyveri av fartøy som har motor til fremdrift, og av luftfartøy.'},
        [11] = {title = '§ 342 a. Brukstyveri av utrykkkningskjøretøy',                                                     class = 'Forbrytelse', id = '', months = 12, fine = 12000, color = 'orange', description = 'For brukstyveri av utrykkningskjøretøy straffes den som uten å ha rett til det tar et utrykkningskjøretøy og bruker eller forføyer over den. Med utrykkningskjøretøy menes kjøretøy som blir drevet frem med motor og tilhører ambulanse, brannvesen, forsvaret eller politi. Straffen for brukstyveri av utrykkningskjøretøyer bot og fengsel inntil 5 år.'},
        [12] = {title = '§ 328 b. Forbund om Ran',                                                                          class = 'Forbrytelse', id = '', months = 30, fine = 45000, color = 'orange', description = 'Med forbund om ran menes at to eller flere personer blir enige om å begå eller medvirke til å begå et ran.Presisering: Denne paragraf skal KUN brukes i forbindelse med ran av storbank og oljerigg'},
        [12] = {title = '§ 328 c. Forbund om Grovt Ran',                                                                    class = 'Forbrytelse', id = '', months = 60, fine = 75000, color = 'orange', description = 'Med forbund om ran menes at to eller flere personer blir enige om å begå eller medvirke til å begå et grovt ran. Presisering: Denne paragraf skal KUN brukes i forbindelse med ran av bobcat og casino! '},
        [13] = {title = '§ 393. Grov Økonomisk Kriminalitet ',                                                              class = 'Forbrytelse', id = '', months = 36, fine = 50000, color = 'orange', description = ' Den som bruker en bedrift eller foretak til å fremme kriminalitet hvor motivet er penger. Eksempel på dette kan være foretak som brukes som skalkeskjul for kriminelle handlinger på en måte som gjør at omsetningen fremstår som legitim og lovlig. Annet kan være bedrifter som brukes som verktøy til å renvaske penger, eller som brukes til å skape transaksjoner som skal skjule annen kriminalitet, herunder heleri eller hvitvasking. Denne lovparagrafen kan komme i tillegg til andre paragrafer som heleri, korrupsjon eller hvitvasking. '},



    },
    [11] = {
        [1] = {title = '§ 351. Skadeverk',                                                                                  class = 'Forbrytelse', id = '', months = 10, fine = 10000, color = 'green', description = 'Med bot eller fengsel inntil 1 år straffes den som skader, ødelegger, gjør ubrukelig eller forspiller en gjenstand som helt eller delvis tilhører en annen. For skadeverk straffes også den som uberettiget endrer, gjør tilføyelser til, ødelegger, sletter eller skjuler andres data.'},
        [2] = {title = '§ 352. Grovt skadeverk',                                                                            class = 'Forbrytelse', id = '', months = 20, fine = 20000, color = 'red', description = 'Grovt skadeverk straffes med bot eller fengsel inntil 6 år. Ved avgjørelsen av om skadeverket er grovt skal det særlig legges vekt på skadeverkets art og objekt, for eksempel om det er rettet mot gjenstander til alminnelig nytte eller pryd, eller som har historisk, nasjonal eller religiøs verdi, om skaden er av et stort omfang, om det var motivert av fornærmedes hudfarge, nasjonale eller etniske opprinnelse.'},
        [3] = {title = '§ 357. Forbund om fremkalling av fare for allmennheten',                                            class = 'Overtredelse', id = '', months = 20, fine = 20000, color = 'green', description = 'Den som inngår forbund om å begå en handling som nevnt i § 355, straffes med fengsel inntil 6 år.'},
        [4] = {title = '§ 389. Alvorlig miljøkriminalitet',                                                                 class = 'Overtredelse', id = '', months = 12, fine = 25000, color = 'green', description = ' Med fengsel inntil 6 år straffes den som forsettlig eller grovt uaktsomt. a.    minsker en naturlig bestand av fredede organismer som nasjonalt eller internasjonalt er truet av utryddelse, eller. b.    påfører betydelig skade på område som er vernet ved vedtak med hjemmel i naturmangfoldloven kapittel V eller eldre vernevedtak som nevnt i naturmangfoldloven § 77 '},
        [5] = {title = '§ 390. Forsøpling',                                                                                 class = 'Overtredelse', id = '', months = 0, fine = 5000, color = 'green', description = 'Den som slenger fra seg ting eller etterlater ting på bakken som naturlig hører hjemme i en søppelbøtte..'},
        [6] = {title = '§ 391. Dyremishandling',                                                                            class = 'Overtredelse', id = '', months = 12, fine = 8000, color = 'green', description = 'Den som utøver vold eller på annet vis skader eller tar livet av et dyr.'},


    },
    [12] = {
        [1] = {title = '§ 361. Dokumentforfalskning',                                                                       class = 'Forbrytelse', id = '',             months = 30,    fine = 30000,   color = 'red',      description = 'Med bot eller fengsel inntil 2 år straffes den som ettergjør eller forfalsker et dokument, eller anskaffer et ettergjort eller forfalsket dokument med forsett om bruke det eller la det fremstå som ekte eller uforfalsket, rettsstridig bruker et dokument som nevnt i bokstav a og lar det fremstå som ekte eller uforfalsket, eller utsteder et dokument og uriktig tillegger seg en stilling som er av vesentlig betydning for dokumentets bevisverdi, og lar dokumentet fremstå som riktig.'},
        [2] = {title = '§ 362. Mindre Dokumentforfalskning',                                                                class = 'Forbrytelse', id = '',             months = 10,    fine = 15000,   color = 'orange',   description = 'Når straffverdigheten er liten, straffes dokumentfalsk med bot. Ved denne avgjørelsen skal det særlig legges vekt på a.        hvilken verdi handlingen gjelder, b.        om den har hatt til følge skade eller uleilighet for noen, c.        i hvilken utstrekning den er resultat av planlegging.'},
        [3] = {title = '§ 365. Uriktig erklæring bestemt til bruk som bevis',                                               class = 'Overtredelse', id = '',            months = 25,    fine = 20000,   color = 'orange',   description = 'Med bot eller fengsel inntil 2 år straffes den som i et dokument utstedt som ledd i forvaltningens virksomhet, i rettspleie eller i en helseattest gir en uriktig erklæring som er bestemt til å brukes som bevis, bruker som riktig en slik erklæring, eller forsettlig eller grovt uaktsomt utferdiger uriktig dokument som er egnet som bevis for å oppnå skatte- eller avgiftsmessige fordeler.'},
        [4] = {title = '§ 387. Korrupsjon',                                                                                 class = 'Forbrytelse', id = '',             months = 50,    fine = 50000,   color = 'orange',   description = 'Med bot eller fengsel inntil 3 år straffes den som for seg eller andre krever, mottar eller aksepterer et tilbud om en utilbørlig fordel i anledning av utøvelsen av stilling, verv eller utføringen av oppdrag, eller gir eller tilbyr noen en utilbørlig fordel i anledning av utøvelsen av stilling, verv eller utføringen av oppdrag. Med stilling, verv eller oppdrag i første ledd menes også stilling, verv eller oppdrag i utlandet.'},
        [5] = {title = '§ 388. Grov korrupsjon',                                                                            class = 'Forbrytelse', id = '',             months = 100,   fine = 100000,  color = 'red',      description = 'Grov korrupsjon straffes med fengsel inntil 10 år. Ved avgjørelsen av om korrupsjonen er grov skal det særlig legges vekt på om handlingen er forøvd av eller overfor en offentlig tjenestemann eller noen annen ved brudd på den særlige tillit som følger med hans stilling, verv eller oppdrag, om den har eller kunne ha hatt til følge betydelig økonomisk fordel, om det forelå risiko for betydelig skade av økonomisk eller annen art, og om det er registrert uriktige regnskapsopplysninger.'},
    },
    [13] = {
        [1] = {title = '§ 1v. Farstovertredelse i  80 km/t sone',                                                                                                  class = 'Overtredelse', id = '', months = 0, fine = 5000, color = 'green', description = 'Fartsovertredelse med -- a) 5-10kmt over fartsgrense = 70% avslag av bot b) 11-20kmt over fartsgrense = 60% avslag av bot  c) 21-30kmt over fartsgrense = 30% avslag av bot D) 31-80kmt over fartsgrense = 0% avslag i bot pluss førerkortbeslag E) 81+ kmt over fartsgrense = Er uaktsom kjøring og straffes deretter'},
        [2] = {title = '§ 2v. Farstovertredelse i  100 km/t sone',                                                                                                 class = 'Overtredelse', id = '', months = 0, fine = 7500, color = 'green', description = 'Fartsovertredelse med -- a) 5-10kmt over fartsgrense = 70% avslag av bot b) 11-20kmt over fartsgrense = 60% avslag av bot  c) 21-30kmt over fartsgrense = 30% avslag av bot D) 31-80kmt over fartsgrense = 0% avslag i bot pluss førerkortbeslag E) 81+ kmt over fartsgrense = Er uaktsom kjøring og straffes deretter'},
        [3] = {title = '§ 3v. Farstovertredelse i  110 km/t sone',                                                                                                 class = 'Overtredelse', id = '', months = 0, fine = 10000, color = 'green', description = 'Fartsovertredelse med -- a) 5-10kmt over fartsgrense = 70% avslag av bot b) 11-20kmt over fartsgrense = 60% avslag av bot  c) 21-30kmt over fartsgrense = 30% avslag av bot D) 31-80kmt over fartsgrense = 0% avslag i bot pluss førerkortbeslag E) 81+ kmt over fartsgrense = Er uaktsom kjøring og straffes deretter'},
        [4] = {title = '§ 4v a. Uforsvalig kjøring',                                                                                                               class = 'Overtredelse', id = '', months = 6, fine = 5000, color = 'green', description = 'Uforsvarlig kjøring av en sånn art at kjøringen er fare for enten seg selv, andre eller på områder ikke angitt/egnet for kjøring.'},
        [5] = {title = '§ 4v b. Uaktsom kjøring',                                                                                                                  class = 'Overtredelse', id = '', months = 12, fine = 10000, color = 'green', description = 'Uaktsom kjøring av en sånn art at kjøringen er fare for enten seg selv, andre eller på områder ikke angitt/egnet for kjøring. Og er et ledd i flere lovbrudd.'},
        [6] = {title = '§ 4v c. Grov uaktsom kjøring',                                                                                                             class = 'Overtredelse', id = '', months = 20, fine = 20000, color = 'green', description = 'Grov uaktsom kjøring av en sånn art at kjøringen er stor fare for enten seg selv, andre eller på områder ikke angitt/egnet for kjøring. Straffen for grov uaktsom kjøring er dersom kjøringen har hatt resultat til følge død eller betydelig skade på kropp eller helse, og lovbryteren har utvist uaktsomhet med hensyn til følgen eller kunne ha innsett muligheten for den.'},
        [7] = {title = '§ 5v. Kjøring i påvirket tilstand',                                                                                                        class = 'Overtredelse', id = '', months = 7, fine = 10000, color = 'green', description = 'I Norge er det ulovlig å kjøre bil med over 0,2 i promille. Å kjøre bil etter at man har drukket alkohol er både livsfarlig og dyrt. Ikke så lenge etter at man har drukket alkohol vil de fleste av oss kjenne at alkohol påvirker kroppen vår. Alkoholen blir tatt opp i blodet, og man kan måle om man har promille. Eller påvirket av andre rusmidler eller legemidler som ikke er egnet til det traffikale bildet'},
        [8] = {title = '§ 6v. Mangel på førerkort eller kompetansebevis',                                                                                          class = 'Overtredelse', id = '', months = 0, fine = 4000, color = 'green', description = 'Den som skal føre motorvogn må ha førerett og ha ervervet førerkort der dette kreves,  samt eventuelt gyldig kompetansebevis, for vedkommende gruppe av motorvogner.  Under kjøring skal fører alltid ha førerkort og kompetansebevis med seg.'},
        [9] = {title = '§ 7v. Alminnelige regler om førerett / førerkort / kompetansebevis',                                                                       class = 'Overtredelse', id = '', months = 0, fine = 8000, color = 'green', description = 'Den som har kjørt motorvogn uten å ha førerett for den aktuelle førerkortklassen, kan ikke få slik førerett første gang før det er gått 6 måneder siden den ulovlige kjøringen fant sted. Er han yngre enn den lovlige minstealderen for slik førerett, løper sperrefristen til det er gått 6 måneder fra den dagen han oppnår minstealderen. Er det voldt større skade ved kjøringen, skal sperrefristen etter første og andre punktum være ett år.'},
        [10] = {title = '§ 8v. Parkeringsovertredelser',                                                                                                           class = 'Overtredelse', id = '', months = 0, fine = 1500, color = 'green', description = 'Hvis en parkerer på ikke egnede områder, til hinder for normal traffikk og utrykknings kjøretøy straffes med bøter'},
        [11] = {title = '§ 9v. Grov parkeringsovertredelser',                                                                                                      class = 'Overtredelse', id = '', months = 0, fine = 3000, color = 'green', description = 'Hvis en ved gjentatte hendelser parkerer på ikke egnede områder, til hinder for normal traffikk og utrykknings kjøretøy og fare for andre straffes med bøter eller fengsel og kan risikere av gitte kjøretøy blir for en periode konfiskert av politet'},
        [12] = {title = '§ 10v. Kjøretøyet har vesentlige feil eller mangler',                                                                                     class = 'Overtredelse', id = '', months = 0, fine = 3000, color = 'green', description = 'Gjelder kjøretøy som har mulighet til å skade mye trafikkanter (Knuste ruter, skarpe kanter, mangel på lys osv) Mangler bakluke'},
        [13] = {title = '§ 11b. Uaktsom ferdsel med båt, vannscooter eller annet flytende fartøy drevet med motor',                                                class = 'Overtredelse', id = '', months = 12, fine = 15000, color = 'green', description = 'Den som ikke ferdes hensynsfullt, aktpågivende eller varsomt på vannet, og opptrer på en måte slik at det oppstår fare og/eller annen ferdsel blir unødvendig hindret eller forstyrret.'},
        [14] = {title = '§ 18b. Grov uaktsom ferdsel med båt, vannscooter eller annet flytende fartøy drevet med motor',                                           class = 'Overtredelse', id = '', months = 20, fine = 25000, color = 'green', description = ' Den som ikke ferdes hensynsfullt, aktpågivende eller varsomt på vannet, og opptrer på en måte slik at det oppstår fare og/eller annen ferdsel blir unødvendig hindret eller forstyrret. Ved avgjørelse om overtredelsen er grov skal det vektlegges om den har hatt til følge stor skade eller død, eller om potensialet var stor skade eller død. .'},
        [15] = {title = '§ 19b. Manglende tilgang eller bruk av sikringsutstyr',                                                                                   class = 'Overtredelse', id = '', months = 0, fine = 5000, color = 'green', description = 'Alle som ferdes på vann må ha på seg egnet flyteutstyr.'},
        [16] = {title = '§ 20b. Føring av båt, vannscooter eller annet flytende fartøy drevet med motor i beruset tilstand',                                       class = 'Overtredelse', id = '', months = 7, fine = 10000, color = 'green', description = 'Å føre båt, vannscooter eller annet flytende fartøy drevet med motor i ruspåvirket tilstand med over 0.8 i promille eller andre rusmidler slik at dette går utover konsentrasjon og aktsomhet hos fører..'},
        [17] = {title = '§ 12f. Føring av fly, helikopter eller annet fartøy drevet med motorer beregnet for ferdsel i lufta uten gyldig lisens.',                 class = 'Overtredelse', id = '', months = 0, fine = 25000, color = 'green', description = 'Den som fører fly, helikopter eller annet fartøy drevet med motorer beregnet for ferdsel i lufta uten gyldig lisens'},
        [18] = {title = '§ 13f. Uaktsom ferdsel med fly, helikopter eller annet fartøy drevet med motorer beregnet for ferdsel i lufta',                           class = 'Overtredelse', id = '', months = 20, fine = 35000, color = 'green', description = 'Den som ikke ferdes hensynsfullt, aktpågivende eller varsomt i lufta, og opptrer på en måte slik at det oppstår fare og/eller annen ferdsel blir unødvendig hindret eller forstyrret.'},
        [19] = {title = '§ 14f. Grov uaktsom ferdsel med fly, helikopter eller annet fartøy drevet med motorer beregnet for ferdsel i lufta(førerkortbeslag).',    class = 'Overtredelse', id = '', months = 45, fine = 50000, color = 'green', description = 'Den som ikke ferdes hensynsfullt, aktpågivende eller varsomt i lufta, og opptrer på en måte slik at det oppstår fare og/eller annen ferdsel blir unødvendig hindret eller forstyrret. Ved avgjørelse om overtredelsen er grov skal det vektlegges om den har hatt til følge stor skade eller død, eller om potensialet var stor skade eller død.'},
        [20] = {title = '§ 15f. Manglende tilgang eller bruk av sikringsutstyr.',                                                                                  class = 'Overtredelse', id = '', months = 0, fine = 5000, color = 'green', description = 'Alle som ferdes i lufta må ha på seg egnet sikringsutstyr.'},
        [21] = {title = '§ 16f. Føring av fly, helikopter eller annet fartøy drevet med motorer beregnet for ferdsel i lufta i beruset tilstand.',                 class = 'Overtredelse', id = '', months = 30, fine = 35700, color = 'green', description = ' Å føre fly, helikopter eller annet fartøy drevet med motorer beregnet for ferdsel i lufta i ruspåvirket tilstand med over 0.0 i promille eller andre rusmidler slik at dette går utover konsentrasjon og aktsomhet hos fører. '},
        [22] = {title = '§ 17f. Ulovlig ferdsel i kontrollert luftrom .',                                                                                          class = 'Overtredelse', id = '', months = 45, fine = 65000, color = 'green', description = ' Den som ferdes uten gyldig tillatelse i kontrollert luftrom. Kontrollert luftrom består av kontrollområder og kontrollsoner.gjelder da stedet som: politistasjon, sykehus, romerike fengsel, militærbase, flyplass, under 100 m fra bakken,  '},
    }
}

Config.AllowedJobs = {}
for index, value in pairs(Config.PoliceJobs) do
    Config.AllowedJobs[index] = value
end
for index, value in pairs(Config.AmbulanceJobs) do
    Config.AllowedJobs[index] = value
end
for index, value in pairs(Config.DojJobs) do
    Config.AllowedJobs[index] = value
end

Config.ColorNames = {
    [0] = "Metallic Black",
    [1] = "Metallic Graphite Black",
    [2] = "Metallic Black Steel",
    [3] = "Metallic Dark Silver",
    [4] = "Metallic Silver",
    [5] = "Metallic Blue Silver",
    [6] = "Metallic Steel Gray",
    [7] = "Metallic Shadow Silver",
    [8] = "Metallic Stone Silver",
    [9] = "Metallic Midnight Silver",
    [10] = "Metallic Gun Metal",
    [11] = "Metallic Anthracite Grey",
    [12] = "Matte Black",
    [13] = "Matte Gray",
    [14] = "Matte Light Grey",
    [15] = "Util Black",
    [16] = "Util Black Poly",
    [17] = "Util Dark silver",
    [18] = "Util Silver",
    [19] = "Util Gun Metal",
    [20] = "Util Shadow Silver",
    [21] = "Worn Black",
    [22] = "Worn Graphite",
    [23] = "Worn Silver Grey",
    [24] = "Worn Silver",
    [25] = "Worn Blue Silver",
    [26] = "Worn Shadow Silver",
    [27] = "Metallic Red",
    [28] = "Metallic Torino Red",
    [29] = "Metallic Formula Red",
    [30] = "Metallic Blaze Red",
    [31] = "Metallic Graceful Red",
    [32] = "Metallic Garnet Red",
    [33] = "Metallic Desert Red",
    [34] = "Metallic Cabernet Red",
    [35] = "Metallic Candy Red",
    [36] = "Metallic Sunrise Orange",
    [37] = "Metallic Classic Gold",
    [38] = "Metallic Orange",
    [39] = "Matte Red",
    [40] = "Matte Dark Red",
    [41] = "Matte Orange",
    [42] = "Matte Yellow",
    [43] = "Util Red",
    [44] = "Util Bright Red",
    [45] = "Util Garnet Red",
    [46] = "Worn Red",
    [47] = "Worn Golden Red",
    [48] = "Worn Dark Red",
    [49] = "Metallic Dark Green",
    [50] = "Metallic Racing Green",
    [51] = "Metallic Sea Green",
    [52] = "Metallic Olive Green",
    [53] = "Metallic Green",
    [54] = "Metallic Gasoline Blue Green",
    [55] = "Matte Lime Green",
    [56] = "Util Dark Green",
    [57] = "Util Green",
    [58] = "Worn Dark Green",
    [59] = "Worn Green",
    [60] = "Worn Sea Wash",
    [61] = "Metallic Midnight Blue",
    [62] = "Metallic Dark Blue",
    [63] = "Metallic Saxony Blue",
    [64] = "Metallic Blue",
    [65] = "Metallic Mariner Blue",
    [66] = "Metallic Harbor Blue",
    [67] = "Metallic Diamond Blue",
    [68] = "Metallic Surf Blue",
    [69] = "Metallic Nautical Blue",
    [70] = "Metallic Bright Blue",
    [71] = "Metallic Purple Blue",
    [72] = "Metallic Spinnaker Blue",
    [73] = "Metallic Ultra Blue",
    [74] = "Metallic Bright Blue",
    [75] = "Util Dark Blue",
    [76] = "Util Midnight Blue",
    [77] = "Util Blue",
    [78] = "Util Sea Foam Blue",
    [79] = "Uil Lightning blue",
    [80] = "Util Maui Blue Poly",
    [81] = "Util Bright Blue",
    [82] = "Matte Dark Blue",
    [83] = "Matte Blue",
    [84] = "Matte Midnight Blue",
    [85] = "Worn Dark blue",
    [86] = "Worn Blue",
    [87] = "Worn Light blue",
    [88] = "Metallic Taxi Yellow",
    [89] = "Metallic Race Yellow",
    [90] = "Metallic Bronze",
    [91] = "Metallic Yellow Bird",
    [92] = "Metallic Lime",
    [93] = "Metallic Champagne",
    [94] = "Metallic Pueblo Beige",
    [95] = "Metallic Dark Ivory",
    [96] = "Metallic Choco Brown",
    [97] = "Metallic Golden Brown",
    [98] = "Metallic Light Brown",
    [99] = "Metallic Straw Beige",
    [100] = "Metallic Moss Brown",
    [101] = "Metallic Biston Brown",
    [102] = "Metallic Beechwood",
    [103] = "Metallic Dark Beechwood",
    [104] = "Metallic Choco Orange",
    [105] = "Metallic Beach Sand",
    [106] = "Metallic Sun Bleeched Sand",
    [107] = "Metallic Cream",
    [108] = "Util Brown",
    [109] = "Util Medium Brown",
    [110] = "Util Light Brown",
    [111] = "Metallic White",
    [112] = "Metallic Frost White",
    [113] = "Worn Honey Beige",
    [114] = "Worn Brown",
    [115] = "Worn Dark Brown",
    [116] = "Worn straw beige",
    [117] = "Brushed Steel",
    [118] = "Brushed Black steel",
    [119] = "Brushed Aluminium",
    [120] = "Chrome",
    [121] = "Worn Off White",
    [122] = "Util Off White",
    [123] = "Worn Orange",
    [124] = "Worn Light Orange",
    [125] = "Metallic Securicor Green",
    [126] = "Worn Taxi Yellow",
    [127] = "police car blue",
    [128] = "Matte Green",
    [129] = "Matte Brown",
    [130] = "Worn Orange",
    [131] = "Matte White",
    [132] = "Worn White",
    [133] = "Worn Olive Army Green",
    [134] = "Pure White",
    [135] = "Hot Pink",
    [136] = "Salmon pink",
    [137] = "Metallic Vermillion Pink",
    [138] = "Orange",
    [139] = "Green",
    [140] = "Blue",
    [141] = "Mettalic Black Blue",
    [142] = "Metallic Black Purple",
    [143] = "Metallic Black Red",
    [144] = "Hunter Green",
    [145] = "Metallic Purple",
    [146] = "Metaillic V Dark Blue",
    [147] = "MODSHOP BLACK1",
    [148] = "Matte Purple",
    [149] = "Matte Dark Purple",
    [150] = "Metallic Lava Red",
    [151] = "Matte Forest Green",
    [152] = "Matte Olive Drab",
    [153] = "Matte Desert Brown",
    [154] = "Matte Desert Tan",
    [155] = "Matte Foilage Green",
    [156] = "DEFAULT ALLOY COLOR",
    [157] = "Epsilon Blue",
    [158] = "Unknown",
}

Config.ColorInformation = {
    [0] = "black",
    [1] = "black",
    [2] = "black",
    [3] = "darksilver",
    [4] = "silver",
    [5] = "bluesilver",
    [6] = "silver",
    [7] = "darksilver",
    [8] = "silver",
    [9] = "bluesilver",
    [10] = "darksilver",
    [11] = "darksilver",
    [12] = "matteblack",
    [13] = "gray",
    [14] = "lightgray",
    [15] = "black",
    [16] = "black",
    [17] = "darksilver",
    [18] = "silver",
    [19] = "utilgunmetal",
    [20] = "silver",
    [21] = "black",
    [22] = "black",
    [23] = "darksilver",
    [24] = "silver",
    [25] = "bluesilver",
    [26] = "darksilver",
    [27] = "red",
    [28] = "torinored",
    [29] = "formulared",
    [30] = "blazered",
    [31] = "gracefulred",
    [32] = "garnetred",
    [33] = "desertred",
    [34] = "cabernetred",
    [35] = "candyred",
    [36] = "orange",
    [37] = "gold",
    [38] = "orange",
    [39] = "red",
    [40] = "mattedarkred",
    [41] = "orange",
    [42] = "matteyellow",
    [43] = "red",
    [44] = "brightred",
    [45] = "garnetred",
    [46] = "red",
    [47] = "red",
    [48] = "darkred",
    [49] = "darkgreen",
    [50] = "racingreen",
    [51] = "seagreen",
    [52] = "olivegreen",
    [53] = "green",
    [54] = "gasolinebluegreen",
    [55] = "mattelimegreen",
    [56] = "darkgreen",
    [57] = "green",
    [58] = "darkgreen",
    [59] = "green",
    [60] = "seawash",
    [61] = "midnightblue",
    [62] = "darkblue",
    [63] = "saxonyblue",
    [64] = "blue",
    [65] = "blue",
    [66] = "blue",
    [67] = "diamondblue",
    [68] = "blue",
    [69] = "blue",
    [70] = "brightblue",
    [71] = "purpleblue",
    [72] = "blue",
    [73] = "ultrablue",
    [74] = "brightblue",
    [75] = "darkblue",
    [76] = "midnightblue",
    [77] = "blue",
    [78] = "blue",
    [79] = "lightningblue",
    [80] = "blue",
    [81] = "brightblue",
    [82] = "mattedarkblue",
    [83] = "matteblue",
    [84] = "matteblue",
    [85] = "darkblue",
    [86] = "blue",
    [87] = "lightningblue",
    [88] = "yellow",
    [89] = "yellow",
    [90] = "bronze",
    [91] = "yellow",
    [92] = "lime",
    [93] = "champagne",
    [94] = "beige",
    [95] = "darkivory",
    [96] = "brown",
    [97] = "brown",
    [98] = "lightbrown",
    [99] = "beige",
    [100] = "brown",
    [101] = "brown",
    [102] = "beechwood",
    [103] = "beechwood",
    [104] = "chocoorange",
    [105] = "yellow",
    [106] = "yellow",
    [107] = "cream",
    [108] = "brown",
    [109] = "brown",
    [110] = "brown",
    [111] = "white",
    [112] = "white",
    [113] = "beige",
    [114] = "brown",
    [115] = "brown",
    [116] = "beige",
    [117] = "steel",
    [118] = "blacksteel",
    [119] = "aluminium",
    [120] = "chrome",
    [121] = "wornwhite",
    [122] = "offwhite",
    [123] = "orange",
    [124] = "lightorange",
    [125] = "green",
    [126] = "yellow",
    [127] = "blue",
    [128] = "green",
    [129] = "brown",
    [130] = "orange",
    [131] = "white",
    [132] = "white",
    [133] = "darkgreen",
    [134] = "white",
    [135] = "pink",
    [136] = "pink",
    [137] = "pink",
    [138] = "orange",
    [139] = "green",
    [140] = "blue",
    [141] = "blackblue",
    [142] = "blackpurple",
    [143] = "blackred",
    [144] = "darkgreen",
    [145] = "purple",
    [146] = "darkblue",
    [147] = "black",
    [148] = "purple",
    [149] = "darkpurple",
    [150] = "red",
    [151] = "darkgreen",
    [152] = "olivedrab",
    [153] = "brown",
    [154] = "tan",
    [155] = "green",
    [156] = "silver",
    [157] = "blue",
    [158] = "black",
}

Config.ClassList = {
    [0] = "Compact",
    [1] = "Sedan",
    [2] = "SUV",
    [3] = "Coupe",
    [4] = "Muscle",
    [5] = "Sport Classic",
    [6] = "Sport",
    [7] = "Super",
    [8] = "Motorbike",
    [9] = "Off-Road",
    [10] = "Industrial",
    [11] = "Utility",
    [12] = "Van",
    [13] = "Bike",
    [14] = "Boat",
    [15] = "Helicopter",
    [16] = "Plane",
    [17] = "Service",
    [18] = "Emergency",
    [19] = "Military",
    [20] = "Commercial",
    [21] = "Train"
}

function GetJobType(job)
	if Config.PoliceJobs[job] then
		return 'police'
	elseif Config.AmbulanceJobs[job] then
		return 'ambulance'
	elseif Config.DojJobs[job] then
		return 'doj'
	else
		return nil
	end
end
