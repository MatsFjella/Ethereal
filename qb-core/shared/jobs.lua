QBShared = QBShared or {}
QBShared.ForceJobDefaultDutyAtLogin = true -- true: Force duty state to jobdefaultDuty | false: set duty state from database last saved
QBShared.QBJobsStatus = false -- true: integrate qb-jobs into the whole of qb-core | false: treat qb-jobs as an add-on resource.
QBShared.Jobs = {} -- All of below has been migrated into qb-jobs
if QBShared.QBJobsStatus then return end
QBShared.Jobs = {
	['unemployed'] = {
		label = 'Arbeidsledig',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Arbeidsøker',
                payment = 400
            },
        },
	},
	['police'] = {
		label = 'POLITIET',
        type = "leo",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'PHS-Student',
                payment = 1800
            },
			['1'] = {
                name = 'Politibetjent 1',
                payment = 2000
            },
			['2'] = {
                name = 'Politibetjent 2',
                payment = 2200
            },
			['3'] = {
                name = 'Politibetjent 3',
                payment = 2400
            },
            ['4'] = {
                name = 'Politiførstebetjent',
                payment = 2600
            },
            ['5'] = {
                name = 'Politioverbetjent',
                payment = 2800
            },
            ['6'] = {
                name = 'Politistasjonssjef',
                payment = 3000
            },
            ['7'] = {
                name = 'Politifullmektig',
                payment = 3200
            },
            ['8'] = {
                name = 'Politiadvokat',
                payment = 3400
            },
            ['9'] = {
                name = 'Politiinspektør',
                payment = 3600
            },
            ['10'] = {
                name = 'Driftsenhetsleder',
                isboss = true,
                payment = 3800
            },
            ['11'] = {
                name = 'Visepolitimester',
                isboss = true,
                payment = 4000
            },
            ['12'] = {
                name = 'Politimester',
                isboss = true,
                payment = 4200
            },
            ['13'] = {
                name = 'Assisterende Politidirektør',
                isboss = true,
                payment = 4400
            },
            ['14'] = {
                name = 'Politidirektør',
                isboss = true,
                payment = 4600
            },
        },
	},


    ['bcso'] = {
		label = 'Kripos',
        type = "leo",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Kripos Førstebetjent',
                payment = 2800
            },
			['1'] = {
                name = 'Kripos Overbetjent',
                payment = 4000
            },
			['2'] = {
                name = 'Kripos Stasjonssjef',
                payment = 4200,
                isboss = true,
            },
			['3'] = {
                name = 'Kripos Visepolitimester',
                payment = 4400,
                isboss = true,
            },
            ['4'] = {
                name = 'Kripos Politimester',
                payment = 4600,
                isboss = true,
            },
           
        },
           
    },

	['ambulance'] = {
		label = 'AMK',
        type = 'ems',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Lærling',
                payment = 2800
            },
			['1'] = {
                name = 'Paramedic',
                payment = 3000
            },
            ['2'] = {
                name = 'Lege',
                payment = 3200
            },
            ['3'] = {
                name = 'Overlege',
                payment = 3400
            },
            ['4'] = {
                name = 'Assisterende Stasjonleder',
                payment = 3600
            },
            ['5'] = {
                name = 'Stasjonleder',
                payment = 3800
            },
            ['6'] = {
                name = 'Regionleder',
                payment = 4000
            },
            ['7'] = {
                name = 'Helseinspektør',
                payment = 4200
            },
            ['8'] = {
                name = 'Assisterende Helsesjef',
                isboss = true,
                payment = 4400
            },
            ['9'] = {
                name = 'Helsesjef',
                isboss = true,
                payment = 4600
            },
        },
	},
	['realestate'] = {
		label = 'Eiendomsmegler',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Lærling',
                payment = 1400
            },
			['1'] = {
                name = 'Selger',
                payment = 1600
            },
			['2'] = {
                name = 'Avdelingsleder',
                payment = 1800
            },
			['3'] = {
                name = 'Direktør',
                isboss = true,
                payment = 2000
            },
			['4'] = {
                name = 'Eier',
				isboss = true,
                payment = 2200
            },
        },
	},
	['taxi'] = {
		label = 'Taxi',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Lærling',
                payment = 1600
            },
			['1'] = {
                name = 'Sjåfør',
                payment = 1800
            },
			['2'] = {
                name = 'Avdelingsleder',
                payment = 2000,
                isboss = true,
            },
			['3'] = {
                name = 'Eier',
                payment = 2200,
                isboss = true,
                
            },
        },
	},

    ['casino'] = {
		label = 'casino',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Lærling',
                payment = 1600
            },
			['1'] = {
                name = 'Sjåfør',
                payment = 1800
            },
			['2'] = {
                name = 'Avdelingsleder',
                payment = 2000,
                isboss = true,
            },
			['3'] = {
                name = 'Eier',
                payment = 2200,
                isboss = true,
                
            },
        },
	},
  

    ['catcafe'] = {
		label = 'Uwu',
		defaultDuty = true,
		grades = {
            ['0'] = { name = 'Lærling', payment = 1400 },
			['1'] = { name = 'Medarbeider', payment = 1600 },
			['2'] = { name = 'Avdelingsleder', payment = 1800 },
			['3'] = { name = 'Daglig leder', isboss = true, payment = 2000 },
			['4'] = { name = 'Eier', isboss = true, payment = 2200 },
        },
	},

  

	['cardealer'] = {
		label = 'Biltrend',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Lærling',
                payment = 1400
            },
			['1'] = {
                name = 'Selger',
                payment = 1600
            },
			['2'] = {
                name = 'Avdelingsleder',
                payment = 1800
            },
			['3'] = {
                name = 'Daglig Leder',
                isboss = true,
                payment = 2000
            },
			['4'] = {
                name = 'Eier',
				isboss = true,
                payment = 2200
            },
        },
	},
	['mechanic'] = {
		label = 'Bennys',
        type = "mechanic",
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Lærling',
                payment = 1400
            },
			['1'] = {
                name = 'Mekaniker',
                payment = 1600
            },
			['2'] = {
                name = 'Faglært Mekaniker',
                payment = 1800
            },
			['3'] = {
                name = 'Daglig Leder',
                isboss = true,
                payment = 2000
            },
			['4'] = {
                name = 'Eier',
				isboss = true,
                payment = 2200
            },
        },
	},

    ['fixern'] = {
		label = 'Fixern',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Lærling',
                payment = 1400
            },
			['1'] = {
                name = 'Mekaniker',
                payment = 1600
            },
			['2'] = {
                name = 'Faglært Mekaniker',
                payment = 1800
            },
			['3'] = {
                name = 'Daglig Leder',
                isboss = true,
                payment = 2000
            },
			['4'] = {
                name = 'Eier',
				isboss = true,
                payment = 2200
            },
        },
	},
	['judge'] = {
		label = 'Dommer',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Dommer',
                payment = 4000
            },
        },
	},
	['lawyer'] = {
		label = 'Oslo Advokatbyrå',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Resepsjonist',
                payment = 1400
            },
            ['1'] = {
                name = 'Administrasjon 1',
                payment = 1600
            },
            ['2'] = {
                name = 'Advokatsekretær',
                payment = 1800
            },

            ['3'] = {
                name = 'Advokatfullmektig',
                payment = 2000
            },

            ['4'] = {
                name = 'Junior Partner',
                payment = 2200
            },

            ['5'] = {
                name = 'Partner',
                payment = 2400
            },

            ['6'] = {
                name = 'Administrasjon 2',
                payment = 2600
            },

            ['7'] = {
                name = 'Deleier',
                payment = 2800
            },
            ['8'] = {
                name = 'Eier',
                isboss = true,
                payment = 3000
            },
        },
	},

    ['key'] = {
		label = 'Key Advokatbyrå',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Resepsjonist',
                payment = 1400
            },
            ['1'] = {
                name = 'Administrasjon 1',
                payment = 1600
            },
            ['2'] = {
                name = 'Advokatsekretær',
                payment = 1800
            },

            ['3'] = {
                name = 'Advokatfullmektig',
                payment = 2000
            },

            ['4'] = {
                name = 'Junior Partner',
                payment = 2200
            },

            ['5'] = {
                name = 'Partner',
                payment = 2400
            },

            ['6'] = {
                name = 'Administrasjon 2',
                payment = 2600
            },

            ['7'] = {
                name = 'Deleier',
                payment = 2800
            },
            ['8'] = {
                name = 'Eier',
                isboss = true,
                payment = 3000
            },
        },
	},
	['reporter'] = {
		label = 'Avisa',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Lærling',
                payment = 1600
            },
            ['1'] = {
                name = 'Journalist',
                payment = 1800
            },
            ['2'] = {
                name = 'Avdelingsleder',
                isboss = true,
                payment = 2000
            },
            ['3'] = {
                name = 'Sjef',
                isboss = true,
                payment = 2200
            },
        },
	},


	['tow'] = {
		label = 'Lillestrøm Bilredning',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Lærling',
                payment = 1200
            },
            ['1'] = {
                name = 'Ansatt',
                payment = 1800
            },
            ['2'] = {
                name = 'Daglig leder',
                isboss = true,
                payment = 2000
            },
            ['3'] = {
                name = 'Eier',
                isboss = true,
                payment = 2200
            },
        },
	},
	

    ['vanilla'] = {
        label = 'Vanilla',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Lærling',
                payment = 1200
            },
            ['1'] = {
                name = 'Ansatt',
                payment = 1600
            },
            ['2'] = {
                name = 'Daglig leder',
                payment = 2000
            },
            ['3'] = {
                name = 'Eier',
                isboss = true,
                payment = 2200
            },
        },
    },

    ['club77'] = {
        label = 'Club77',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Lærling',
                payment = 1200
            },
            ['1'] = {
                name = 'Ansatt',
                payment = 1600
            },
            ['2'] = {
                name = 'Daglig leder',
                payment = 2000
            },
            ['3'] = {
                name = 'Eier',
                isboss = true,
                payment = 2200
            },
        },
    },

    ['kaffehjornet'] = {
        label = 'Pond',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Lærling',
                payment = 1200
            },
            ['1'] = {
                name = 'Ansatt',
                payment = 1600
            },
            ['2'] = {
                name = 'Daglig leder',
                payment = 2000
            },
            ['3'] = {
                name = 'Eier',
                isboss = true,
                payment = 2200
            },
        },
    },


  

    ['bennys'] = {
		label = 'Oslo Bruktbil',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Lærling',
                payment = 1200
            },
            ['1'] = {
                name = 'Ansatt',
                payment = 1600
            },
            ['2'] = {
                name = 'Avdelingsleder',
                payment = 2000
            },
            ['3'] = {
                name = 'Eier',
                isboss = true,
                payment = 2200
            },
        },
	},

    ['burgershot'] = {
		label = 'Burgershot',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Lærling',
                payment = 1200
            },
            ['1'] = {
                name = 'Ansatt',
                payment = 1600
            },
            ['2'] = {
                name = 'Avdelingsleder',
                payment = 2000
            },
            ['3'] = {
                name = 'Eier',
                isboss = true,
                payment = 2200
            },
        },
	},

    ['tequilala'] = {
		label = 'Tequila-La-La',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Lærling',
                payment = 1200 -- PAYMENT FOR THIS GRADE ( EVERY 30 MINS OR ACCORDING TO YOUR loops.lua)
            },
            ['1'] = {
                name = 'Sikkerhetsvakt',
                payment = 1400,
            },
            ['2'] = {
                name = 'Bartender',
                payment = 1600,
            },
            ['3'] = {
                name = 'Daglig leder',
                isboss = true,
                payment = 2000,
            },
            ['4'] = {
                name = 'Eier',
                isboss = true,
                payment = 2200,
            },
        },
	},

    ['supermarket'] = {
        label = 'Super Market',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Lærling',
                payment = 600
            },
            ['1'] = {
                name = 'Ansatt',
                isboss = true,
                payment = 800
            },

            ['2'] = {
                name = 'Avdelingsleder',
                isboss = true,
                payment = 1000
            },

            ['3'] = {
                name = 'Daglig leder',
                isboss = true,
                payment = 1200
            },

            ['4'] = {
                name = 'Eier',
                isboss = true,
                payment = 1400
            },
        },
    },


    ['tattooshop'] = {
        label = 'Tattoveringssjappe',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Lærling',
                payment = 600
            },
            ['1'] = {
                name = 'Ansatt',
                isboss = true,
                payment = 800
            },

            ['2'] = {
                name = 'Avdelingsleder',
                isboss = true,
                payment = 1000
            },

            ['3'] = {
                name = 'Daglig leder',
                isboss = true,
                payment = 1200
            },

            ['4'] = {
                name = 'Eier',
                isboss = true,
                payment = 1400
            },
        },
    },

    ['firefighter'] = {
        label = 'Brann og redning',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Lærling',
                payment = 600
            },
            ['1'] = {
                name = 'Ansatt',
                payment = 800
            },
            ['2'] = {
                name = 'Avdelingsleder',
                payment = 1000
            },
            ['3'] = {
                name = 'Kaptein',
                isboss = true, 
                bankAuth = true,
                payment = 1400
            },
        },
    },

    ['styrt'] = {
        label = 'Styrt ',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Lærling',
                payment = 1600
            },
            ['1'] = {
                name = 'Ansatt',
                payment = 1800
            },
            ['2'] = {
                name = 'Avdelingsleder',
                payment = 2000
            },
            ['3'] = {
                name = 'Daglig leder',
                isboss = true, 
                bankAuth = true,
                payment = 2200
            },
        },
    },

    ['vrrroom'] = {
        label = 'Vrrroom ',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Lærling',
                payment = 1200
            },
            ['1'] = {
                name = 'Ansatt',
                payment = 1800
            },
            ['2'] = {
                name = 'Avdelingsleder',
                payment = 2000
            },
            ['3'] = {
                name = 'Daglig leder',
                isboss = true, 
                bankAuth = true,
                payment = 2200
            },
        },
    },

    ['nails'] = {
        label = 'Oslo Glam ',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Lærling',
                payment = 600
            },
            ['1'] = {
                name = 'Ansatt',
                payment = 800
            },
            ['2'] = {
                name = 'Avdelingsleder',
                payment = 1000
            },
            ['3'] = {
                name = 'Daglig leder',
                isboss = true, 
                bankAuth = true,
                payment = 1400
            },
        },
    },

    ['cityhall'] = {
        label = 'Kommunen',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Sekretær',
				isboss = false,
                payment = 3000
            },
			['1'] = {
                name = 'Ordfører',
				isboss = true,
                payment = 4400
            },
		},
    },

    ['koi'] = {
        label = 'Koi Restaurant og Spa ',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Lærling',
                payment = 1200
            },
            ['1'] = {
                name = 'Ansatt',
                payment = 1800
            },
            ['2'] = {
                name = 'Avdelingsleder',
                payment = 2000
            },
            ['3'] = {
                name = 'Daglig leder',
                isboss = true, 
                bankAuth = true,
                payment = 2200
            },
        },
    },

    ['treys'] = {
        label = 'Pops Diner ',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Lærling',
                payment = 1200
            },
            ['1'] = {
                name = 'Ansatt',
                payment = 1800
            },
            ['2'] = {
                name = 'Avdelingsleder',
                payment = 2000
            },
            ['3'] = {
                name = 'Daglig leder',
                isboss = true, 
                bankAuth = true,
                payment = 2200
            },
        },
    },

    ['avisa'] = {
        label = 'Avisa ',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Lærling',
                payment = 1200
            },
            ['1'] = {
                name = 'Ansatt',
                payment = 1800
            },
            ['2'] = {
                name = 'Avdelingsleder',
                payment = 2000
            },
            ['3'] = {
                name = 'Daglig leder',
                isboss = true, 
                bankAuth = true,
                payment = 2200
            },
        },
    },

    ['dyreparken'] = {
        label = 'Dyreparken ',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Lærling',
                payment = 1200
            },
            ['1'] = {
                name = 'Ansatt',
                payment = 1800
            },
            ['2'] = {
                name = 'Avdelingsleder',
                payment = 2000
            },
            ['3'] = {
                name = 'Daglig leder',
                isboss = true, 
                bankAuth = true,
                payment = 2200
            },
        },
    },

    ['boats'] = {
        label = 'Oslo Båtbutikk ',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Lærling',
                payment = 1200
            },
            ['1'] = {
                name = 'Ansatt',
                payment = 1800
            },
            ['2'] = {
                name = 'Daglig leder',
                payment = 2000
            },
            ['3'] = {
                name = 'Eier',
                isboss = true, 
                bankAuth = true,
                payment = 2200
            },
        },
    },

    ['bruktbil'] = {
        label = 'Oslo Bruktbil ',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Lærling',
                payment = 1200
            },
            ['1'] = {
                name = 'Ansatt',
                payment = 1800
            },
            ['2'] = {
                name = 'Daglig leder',
                payment = 2000
            },
            ['3'] = {
                name = 'Eier',
                isboss = true, 
                bankAuth = true,
                payment = 2200
            },
        },
    },

    ['sikkerhet'] = {
        label = 'Oslo Sikkerhet ',
        type = "leo",
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Lærling',
                payment = 1200
            },
            ['1'] = {
                name = 'Ansatt',
                payment = 1800
            },
            ['2'] = {
                name = 'Daglig leder',
                payment = 2000
            },
            ['3'] = {
                name = 'Eier',
                isboss = true, 
                bankAuth = true,
                payment = 2200
            },
        },
    },

    ['kirke'] = {
        label = 'Kirke ',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Altergutt',
                payment = 1200
            },
            ['1'] = {
                name = 'Assistent',
                payment = 1800
            },
            ['2'] = {
                name = 'Prest',
                payment = 2800
            },
            ['3'] = {
                name = 'Erkeprest',
                isboss = true, 
                bankAuth = true,
                payment = 3500
            },
        },
    },

    ['goldenpub'] = {
        label = 'Golden pub ',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Lærling',
                payment = 1200
            },
            ['1'] = {
                name = 'Ansatt',
                payment = 1800
            },
            ['2'] = {
                name = 'Daglig leder',
                payment = 2800
            },
            ['3'] = {
                name = 'Eier',
                isboss = true, 
                bankAuth = true,
                payment = 3500
            },
        },
    },

    ['kebab'] = {
        label = 'Grønland kebab ',
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Lærling',
                payment = 1200
            },
            ['1'] = {
                name = 'Ansatt',
                payment = 1800
            },
            ['2'] = {
                name = 'Daglig leder',
                payment = 2800
            },
            ['3'] = {
                name = 'Eier',
                isboss = true, 
                bankAuth = true,
                payment = 3500
            },
        },
    },

  

}


            -- Jobs Creator integration (jobs_creator)
            RegisterNetEvent("jobs_creator:injectJobs", function(jobs)
                QBShared.Jobs = jobs
            end)
        