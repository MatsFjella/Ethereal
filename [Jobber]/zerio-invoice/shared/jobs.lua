Shared.Jobs = {
    -- The job name
    ["police"] = {
        -- The label of the job, does not have to be the same as in the jobs actual label in es_extended/qb-core
        label = "Oslo Politi",
        
        -- Permissions for different job grades
        -- For QBCore, use the rank number/index in the shared files
        -- For ESX, use the actual name of the rank (not label)
        permissions = {
            [0] = {
                sendInvoice = true,
                viewOverview = true,
                playerLookup = true,
                canPayInvoices = false
            },

            [1] = {
                sendInvoice = true,
                viewOverview = true,
                playerLookup = true,
                canPayInvoices = false
            },

            [2] = {
                sendInvoice = true,
                viewOverview = true,
                playerLookup = true,
                canPayInvoices = false
            },

            [3] = {
                sendInvoice = false,
                viewOverview = false,
                playerLookup = false,
                canPayInvoices = false
            },


            [4] = {
                sendInvoice = true,
                viewOverview = true,
                playerLookup = true,
                canPayInvoices = false
            },


            [5] = {
                sendInvoice = true,
                viewOverview = true,
                playerLookup = true,
                canPayInvoices = false
            },


            [6] = {
                sendInvoice = true,
                viewOverview = true,
                playerLookup = true,
                canPayInvoices = false
            },




            [7] = {
                sendInvoice = false,
                viewOverview = false,
                playerLookup = false,
                canPayInvoices = false
            },


            [8] = {
                sendInvoice = true,
                viewOverview = true,
                playerLookup = true,
                canPayInvoices = false
            },


            [9] = {
                sendInvoice = true,
                viewOverview = true,
                playerLookup = true,
                canPayInvoices = false
            },

            [10] = {
                sendInvoice = true,
                viewOverview = true,
                playerLookup = true,
                canPayInvoices = false
            },


            [11] = {
                sendInvoice = true,
                viewOverview = true,
                playerLookup = true,
                canPayInvoices = true
            },

            [12] = {
                sendInvoice = true,
                viewOverview = true,
                playerLookup = true,
                canPayInvoices = true
            },


            [13] = {
                sendInvoice = true,
                viewOverview = true,
                playerLookup = true,
                canPayInvoices = true
            },

            [14] = {
                sendInvoice = true,
                viewOverview = true,
                playerLookup = true,
                canPayInvoices = true
            },

           
        },

        -- List of different invoice categories, can be anything
        invoiceCategory = {
            "Faktura",
        },

        -- This list should contain all job names that this job can bill
        -- If set to "all", all jobs will be billable
        -- If set to "none", or removed, billing for jobs will be disabled
        allowedToBillJobs = {"mechanic", "cardealer"}
    },

    ["ambulance"] = {
        -- The label of the job, does not have to be the same as in the jobs actual label in es_extended/qb-core
        label = "AMK",
        
        -- Permissions for different job grades
        -- For QBCore, use the rank number/index in the shared files
        -- For ESX, use the actual name of the rank (not label)
        permissions = {
            [0] = {
                sendInvoice = false,
                viewOverview = false,
                playerLookup = false,
                canPayInvoices = false
            },

            [1] = {
                sendInvoice = false,
                viewOverview = false,
                playerLookup = false,
                canPayInvoices = false
            },

            [2] = {
                sendInvoice = false,
                viewOverview = false,
                playerLookup = false,
                canPayInvoices = false
            },

            [3] = {
                sendInvoice = false,
                viewOverview = false,
                playerLookup = false,
                canPayInvoices = false
            },


            [4] = {
                sendInvoice = false,
                viewOverview = false,
                playerLookup = false,
                canPayInvoices = false
            },


            [5] = {
                sendInvoice = false,
                viewOverview = false,
                playerLookup = false,
                canPayInvoices = false
            },


            [6] = {
                sendInvoice = false,
                viewOverview = false,
                playerLookup = false,
                canPayInvoices = false
            },




            [7] = {
                sendInvoice = false,
                viewOverview = false,
                playerLookup = false,
                canPayInvoices = false
            },


            [8] = {
                sendInvoice = false,
                viewOverview = false,
                playerLookup = false,
                canPayInvoices = false
            },


            [9] = {
                sendInvoice = true,
                viewOverview = true,
                playerLookup = true,
                canPayInvoices = true
            },

          
           
        },

        -- List of different invoice categories, can be anything
        invoiceCategory = {
            "Faktura",
        },

        -- This list should contain all job names that this job can bill
        -- If set to "all", all jobs will be billable
        -- If set to "none", or removed, billing for jobs will be disabled
        allowedToBillJobs = {"mechanic", "cardealer"}
    },


    ["mechanic"] = {
        -- The label of the job, does not have to be the same as in the jobs actual label in es_extended/qb-core
        label = "Mekken",
        
        -- Permissions for different job grades
        -- For QBCore, use the rank number/index in the shared files
        -- For ESX, use the actual name of the rank (not label)
        permissions = {
            [0] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = true,
                canPayInvoices = false
            },
            [1] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = true,
                canPayInvoices = false
            },
            [2] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = true,
                canPayInvoices = false
            },
            [3] = {
                sendInvoice = true,
                viewOverview = true,
                playerLookup = true,
                canPayInvoices = false
            },
            [4] = {
                sendInvoice = true,
                viewOverview = true,
                playerLookup = true,
                canPayInvoices = true
            },
        },

        -- List of different invoice categories, can be anything
        invoiceCategory = {
            "Faktura", "Reperasjon", "Annet"
        },

        -- This list should contain all job names that this job can bill
        -- If set to "all", all jobs will be billable
        -- If set to "none", or removed, billing for jobs will be disabled
        allowedToBillJobs = {"police", "bcso", "ambulance", "realestate", "taxi", "cardealer", "lawyer", "avisa", "tow", "vanilla", "kaffehjornet", "burgershot", "tequilala", "supermarket", "styrt", "vrrroom", "nails", "cityhall", "koi", "treys",}
    },

    ["cardealer"] = {
        -- The label of the job, does not have to be the same as in the jobs actual label in es_extended/qb-core
        label = "Cardealer",
        
        -- Permissions for different job grades
        -- For QBCore, use the rank number/index in the shared files
        -- For ESX, use the actual name of the rank (not label)
        permissions = {
            [0] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = false,
                canPayInvoices = false
            },
            [1] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = true,
                canPayInvoices = false
            },
            [2] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = true,
                canPayInvoices = false
            },
            [3] = {
                sendInvoice = true,
                viewOverview = true,
                playerLookup = true,
                canPayInvoices = false
            },
            [4] = {
                sendInvoice = true,
                viewOverview = true,
                playerLookup = true,
                canPayInvoices = true
            },
        },

        -- List of different invoice categories, can be anything
        invoiceCategory = {
            "Faktura", 
        },

        -- This list should contain all job names that this job can bill
        -- If set to "all", all jobs will be billable
        -- If set to "none", or removed, billing for jobs will be disabled
        allowedToBillJobs = {"police", "bcso", "ambulance", "realestate", "taxi",  "mechanic", "lawyer", "avisa", "tow", "vanilla", "kaffehjornet", "burgershot", "tequilala", "supermarket", "styrt", "vrrroom", "nails", "cityhall", "koi", "treys",}
    },

    ["realestate"] = {
        -- The label of the job, does not have to be the same as in the jobs actual label in es_extended/qb-core
        label = "Eiendomsmegleren",
        
        -- Permissions for different job grades
        -- For QBCore, use the rank number/index in the shared files
        -- For ESX, use the actual name of the rank (not label)
        permissions = {
            [0] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = false,
                canPayInvoices = false
            },
            [1] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = true,
                canPayInvoices = false
            },
            [2] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = true,
                canPayInvoices = false
            },
            [3] = {
                sendInvoice = true,
                viewOverview = true,
                playerLookup = true,
                canPayInvoices = false
            },
            [4] = {
                sendInvoice = true,
                viewOverview = true,
                playerLookup = true,
                canPayInvoices = true
            },
        },

        -- List of different invoice categories, can be anything
        invoiceCategory = {
            "Faktura", 
        },

        -- This list should contain all job names that this job can bill
        -- If set to "all", all jobs will be billable
        -- If set to "none", or removed, billing for jobs will be disabled
        allowedToBillJobs = {"police", "bcso", "ambulance",  "taxi", "cardealer", "mechanic", "lawyer", "avisa", "tow", "vanilla", "kaffehjornet", "burgershot", "tequilala", "supermarket", "styrt", "vrrroom", "nails", "cityhall", "koi", "treys",}
    },

    ["taxi"] = {
        -- The label of the job, does not have to be the same as in the jobs actual label in es_extended/qb-core
        label = "Midnattsoltaxi",
        
        -- Permissions for different job grades
        -- For QBCore, use the rank number/index in the shared files
        -- For ESX, use the actual name of the rank (not label)
        permissions = {
            [0] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = false,
                canPayInvoices = false
            },
            [1] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = true,
                canPayInvoices = false
            },
            [2] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = true,
                canPayInvoices = false
            },
            [3] = {
                sendInvoice = true,
                viewOverview = true,
                playerLookup = true,
                canPayInvoices = true
            },
          
        },

        -- List of different invoice categories, can be anything
        invoiceCategory = {
            "Faktura", 
        },

        -- This list should contain all job names that this job can bill
        -- If set to "all", all jobs will be billable
        -- If set to "none", or removed, billing for jobs will be disabled
        allowedToBillJobs = {"police", "bcso", "ambulance", "realestate", "cardealer", "mechanic", "lawyer", "avisa", "tow", "vanilla", "kaffehjornet", "burgershot", "tequilala", "supermarket", "styrt", "vrrroom", "nails", "cityhall", "koi", "treys",}
    },

    ["catcafe"] = {
        -- The label of the job, does not have to be the same as in the jobs actual label in es_extended/qb-core
        label = "Uwu",
        
        -- Permissions for different job grades
        -- For QBCore, use the rank number/index in the shared files
        -- For ESX, use the actual name of the rank (not label)
        permissions = {
            [0] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = false,
                canPayInvoices = false
            },
            [1] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = true,
                canPayInvoices = false
            },
            [2] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = true,
                canPayInvoices = false
            },
            [3] = {
                sendInvoice = true,
                viewOverview = true,
                playerLookup = true,
                canPayInvoices = true
            },

            [4] = {
                sendInvoice = true,
                viewOverview = true,
                playerLookup = true,
                canPayInvoices = true
            },
          
        },

        -- List of different invoice categories, can be anything
        invoiceCategory = {
            "Faktura", 
        },

        -- This list should contain all job names that this job can bill
        -- If set to "all", all jobs will be billable
        -- If set to "none", or removed, billing for jobs will be disabled
        allowedToBillJobs = {"police", "bcso", "ambulance", "realestate", "taxi", "cardealer", "mechanic", "lawyer", "avisa", "tow", "vanilla", "kaffehjornet", "burgershot", "tequilala", "supermarket", "styrt", "vrrroom", "nails", "cityhall", "koi", "treys",}
    },

    ["lawyer"] = {
        -- The label of the job, does not have to be the same as in the jobs actual label in es_extended/qb-core
        label = "Advokatkontoret",
        
        -- Permissions for different job grades
        -- For QBCore, use the rank number/index in the shared files
        -- For ESX, use the actual name of the rank (not label)
        permissions = {
            [0] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = false,
                canPayInvoices = false
            },
            [1] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = true,
                canPayInvoices = false
            },
            [2] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = true,
                canPayInvoices = false
            },

            [3] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = true,
                canPayInvoices = false
            },

            [4] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = true,
                canPayInvoices = false
            },

            [5] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = true,
                canPayInvoices = false
            },

            [6] = {
                sendInvoice = true,
                viewOverview = true,
                playerLookup = true,
                canPayInvoices = false
            },


            [7] = {
                sendInvoice = true,
                viewOverview = true,
                playerLookup = true,
                canPayInvoices = false
            },


            [8] = {
                sendInvoice = true,
                viewOverview = true,
                playerLookup = true,
                canPayInvoices = true
            },


          
          
        },

        -- List of different invoice categories, can be anything
        invoiceCategory = {
            "Faktura", 
        },

        -- This list should contain all job names that this job can bill
        -- If set to "all", all jobs will be billable
        -- If set to "none", or removed, billing for jobs will be disabled
        allowedToBillJobs = {"police", "bcso", "ambulance", "realestate", "taxi", "cardealer", "mechanic",  "avisa", "tow", "vanilla", "kaffehjornet", "burgershot", "tequilala", "supermarket", "styrt", "vrrroom", "nails", "cityhall", "koi", "treys",}
    },

    ["tow"] = {
        -- The label of the job, does not have to be the same as in the jobs actual label in es_extended/qb-core
        label = "Lillestrøm bilredning",
        
        -- Permissions for different job grades
        -- For QBCore, use the rank number/index in the shared files
        -- For ESX, use the actual name of the rank (not label)
        permissions = {
            [0] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = false,
                canPayInvoices = false
            },
            [1] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = true,
                canPayInvoices = false
            },
            [2] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = true,
                canPayInvoices = false
            },
            [3] = {
                sendInvoice = true,
                viewOverview = true,
                playerLookup = true,
                canPayInvoices = true
            },

          
        },

        -- List of different invoice categories, can be anything
        invoiceCategory = {
            "Faktura", 
        },

        -- This list should contain all job names that this job can bill
        -- If set to "all", all jobs will be billable
        -- If set to "none", or removed, billing for jobs will be disabled
        allowedToBillJobs = {"police", "bcso", "ambulance", "realestate", "taxi", "cardealer", "mechanic", "lawyer", "avisa", "vanilla", "kaffehjornet", "burgershot", "tequilala", "supermarket", "styrt", "vrrroom", "nails", "cityhall", "koi", "treys",}
    },

    ["vanilla"] = {
        -- The label of the job, does not have to be the same as in the jobs actual label in es_extended/qb-core
        label = "Club77",
        
        -- Permissions for different job grades
        -- For QBCore, use the rank number/index in the shared files
        -- For ESX, use the actual name of the rank (not label)
        permissions = {
            [0] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = false,
                canPayInvoices = false
            },
            [1] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = true,
                canPayInvoices = false
            },
            [2] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = true,
                canPayInvoices = false
            },
            [3] = {
                sendInvoice = true,
                viewOverview = true,
                playerLookup = true,
                canPayInvoices = true
            },

          
        },

        -- List of different invoice categories, can be anything
        invoiceCategory = {
            "Faktura", 
        },

        -- This list should contain all job names that this job can bill
        -- If set to "all", all jobs will be billable
        -- If set to "none", or removed, billing for jobs will be disabled
        allowedToBillJobs = {"police", "bcso", "ambulance", "realestate", "taxi", "cardealer", "mechanic", "lawyer", "avisa", "tow",  "kaffehjornet", "burgershot", "tequilala", "supermarket", "styrt", "vrrroom", "nails", "cityhall", "koi", "treys",}
    },

    ["kaffehjornet"] = {
        -- The label of the job, does not have to be the same as in the jobs actual label in es_extended/qb-core
        label = "Pond",
        
        -- Permissions for different job grades
        -- For QBCore, use the rank number/index in the shared files
        -- For ESX, use the actual name of the rank (not label)
        permissions = {
            [0] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = false,
                canPayInvoices = false
            },
            [1] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = true,
                canPayInvoices = false
            },
            [2] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = true,
                canPayInvoices = false
            },
            [3] = {
                sendInvoice = true,
                viewOverview = true,
                playerLookup = true,
                canPayInvoices = true
            },

          
        },

        -- List of different invoice categories, can be anything
        invoiceCategory = {
            "Faktura", 
        },

        -- This list should contain all job names that this job can bill
        -- If set to "all", all jobs will be billable
        -- If set to "none", or removed, billing for jobs will be disabled
        allowedToBillJobs = {"police", "bcso", "ambulance", "realestate", "taxi", "cardealer", "mechanic", "lawyer", "avisa", "tow", "vanilla", "burgershot", "tequilala", "supermarket", "styrt", "vrrroom", "nails", "cityhall", "koi", "treys",}
    },

    ["burgershot"] = {
        -- The label of the job, does not have to be the same as in the jobs actual label in es_extended/qb-core
        label = "Burgershot",
        
        -- Permissions for different job grades
        -- For QBCore, use the rank number/index in the shared files
        -- For ESX, use the actual name of the rank (not label)
        permissions = {
            [0] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = false,
                canPayInvoices = false
            },
            [1] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = true,
                canPayInvoices = false
            },
            [2] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = true,
                canPayInvoices = false
            },
            [3] = {
                sendInvoice = true,
                viewOverview = true,
                playerLookup = true,
                canPayInvoices = true
            },

          
        },

        -- List of different invoice categories, can be anything
        invoiceCategory = {
            "Faktura", 
        },

        -- This list should contain all job names that this job can bill
        -- If set to "all", all jobs will be billable
        -- If set to "none", or removed, billing for jobs will be disabled
        allowedToBillJobs = {"police", "bcso", "ambulance", "realestate", "taxi", "cardealer", "mechanic", "lawyer", "avisa", "tow", "vanilla", "kaffehjornet",  "tequilala", "supermarket", "styrt", "vrrroom", "nails", "cityhall", "koi", "treys",}
    },

    ["tequilala"] = {
        -- The label of the job, does not have to be the same as in the jobs actual label in es_extended/qb-core
        label = "Tequila-la",
        
        -- Permissions for different job grades
        -- For QBCore, use the rank number/index in the shared files
        -- For ESX, use the actual name of the rank (not label)
        permissions = {
            [0] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = false,
                canPayInvoices = false
            },
            [1] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = true,
                canPayInvoices = false
            },
            [2] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = true,
                canPayInvoices = false
            },
            [3] = {
                sendInvoice = true,
                viewOverview = true,
                playerLookup = true,
                canPayInvoices = true
            },

            [4] = {
                sendInvoice = true,
                viewOverview = true,
                playerLookup = true,
                canPayInvoices = true
            },

          
        },

        -- List of different invoice categories, can be anything
        invoiceCategory = {
            "Faktura", 
        },

        -- This list should contain all job names that this job can bill
        -- If set to "all", all jobs will be billable
        -- If set to "none", or removed, billing for jobs will be disabled
        allowedToBillJobs = {"police", "bcso", "ambulance", "realestate", "taxi", "cardealer", "mechanic", "lawyer", "avisa", "tow", "vanilla", "kaffehjornet", "burgershot",  "supermarket", "styrt", "vrrroom", "nails", "cityhall", "koi", "treys",}
    },

    ["tequilala"] = {
        -- The label of the job, does not have to be the same as in the jobs actual label in es_extended/qb-core
        label = "Tequila-la",
        
        -- Permissions for different job grades
        -- For QBCore, use the rank number/index in the shared files
        -- For ESX, use the actual name of the rank (not label)
        permissions = {
            [0] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = false,
                canPayInvoices = false
            },
            [1] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = true,
                canPayInvoices = false
            },
            [2] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = true,
                canPayInvoices = false
            },
            [3] = {
                sendInvoice = true,
                viewOverview = true,
                playerLookup = true,
                canPayInvoices = true
            },

            [4] = {
                sendInvoice = true,
                viewOverview = true,
                playerLookup = true,
                canPayInvoices = true
            },

          
        },

        -- List of different invoice categories, can be anything
        invoiceCategory = {
            "Faktura", 
        },

        -- This list should contain all job names that this job can bill
        -- If set to "all", all jobs will be billable
        -- If set to "none", or removed, billing for jobs will be disabled
        allowedToBillJobs = {"police", "bcso", "ambulance", "realestate", "taxi", "cardealer", "mechanic", "lawyer", "avisa", "tow", "vanilla", "kaffehjornet", "burgershot",  "supermarket", "styrt", "vrrroom", "nails", "cityhall", "koi", "treys",}
    },


    ["supermarket"] = {
        -- The label of the job, does not have to be the same as in the jobs actual label in es_extended/qb-core
        label = "Oslo Storsenter",
        
        -- Permissions for different job grades
        -- For QBCore, use the rank number/index in the shared files
        -- For ESX, use the actual name of the rank (not label)
        permissions = {
            [0] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = false,
                canPayInvoices = false
            },
            [1] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = true,
                canPayInvoices = false
            },
            [2] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = true,
                canPayInvoices = false
            },
            [3] = {
                sendInvoice = true,
                viewOverview = true,
                playerLookup = true,
                canPayInvoices = true
            },

            [4] = {
                sendInvoice = true,
                viewOverview = true,
                playerLookup = true,
                canPayInvoices = true
            },

          
        },

        -- List of different invoice categories, can be anything
        invoiceCategory = {
            "Faktura", 
        },

        -- This list should contain all job names that this job can bill
        -- If set to "all", all jobs will be billable
        -- If set to "none", or removed, billing for jobs will be disabled
        allowedToBillJobs = {"police", "bcso", "ambulance", "realestate", "taxi", "cardealer", "mechanic", "lawyer", "avisa", "tow", "vanilla", "kaffehjornet", "burgershot", "tequilala", "styrt", "vrrroom", "nails", "cityhall", "koi", "treys",}
    },

    ["styrt"] = {
        -- The label of the job, does not have to be the same as in the jobs actual label in es_extended/qb-core
        label = "Styrt",
        
        -- Permissions for different job grades
        -- For QBCore, use the rank number/index in the shared files
        -- For ESX, use the actual name of the rank (not label)
        permissions = {
            [0] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = false,
                canPayInvoices = false
            },
            [1] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = true,
                canPayInvoices = false
            },
            [2] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = true,
                canPayInvoices = false
            },
            [3] = {
                sendInvoice = true,
                viewOverview = true,
                playerLookup = true,
                canPayInvoices = true
            },


          
        },

        -- List of different invoice categories, can be anything
        invoiceCategory = {
            "Faktura", 
        },

        -- This list should contain all job names that this job can bill
        -- If set to "all", all jobs will be billable
        -- If set to "none", or removed, billing for jobs will be disabled
        allowedToBillJobs = {"police", "bcso", "ambulance", "realestate", "taxi", "cardealer", "mechanic", "lawyer", "avisa", "tow", "vanilla", "kaffehjornet", "burgershot", "tequilala", "supermarket", "vrrroom", "nails", "cityhall", "koi", "treys",}
    },

    ["vrrroom"] = {
        -- The label of the job, does not have to be the same as in the jobs actual label in es_extended/qb-core
        label = "Vrrroom",
        
        -- Permissions for different job grades
        -- For QBCore, use the rank number/index in the shared files
        -- For ESX, use the actual name of the rank (not label)
        permissions = {
            [0] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = false,
                canPayInvoices = false
            },
            [1] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = true,
                canPayInvoices = false
            },
            [2] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = true,
                canPayInvoices = false
            },
            [3] = {
                sendInvoice = true,
                viewOverview = true,
                playerLookup = true,
                canPayInvoices = true
            },


          
        },

        -- List of different invoice categories, can be anything
        invoiceCategory = {
            "Faktura", 
        },

        -- This list should contain all job names that this job can bill
        -- If set to "all", all jobs will be billable
        -- If set to "none", or removed, billing for jobs will be disabled
        allowedToBillJobs = {"police", "bcso", "ambulance", "realestate", "taxi", "cardealer", "mechanic", "lawyer", "avisa", "tow", "vanilla", "kaffehjornet", "burgershot", "tequilala", "supermarket", "styrt",  "nails", "cityhall", "koi", "treys",}
    },

    ["nails"] = {
        -- The label of the job, does not have to be the same as in the jobs actual label in es_extended/qb-core
        label = "Oslo Glam",
        
        -- Permissions for different job grades
        -- For QBCore, use the rank number/index in the shared files
        -- For ESX, use the actual name of the rank (not label)
        permissions = {
            [0] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = false,
                canPayInvoices = false
            },
            [1] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = true,
                canPayInvoices = false
            },
            [2] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = true,
                canPayInvoices = false
            },
            [3] = {
                sendInvoice = true,
                viewOverview = true,
                playerLookup = true,
                canPayInvoices = true
            },


          
        },

        -- List of different invoice categories, can be anything
        invoiceCategory = {
            "Faktura", 
        },

        -- This list should contain all job names that this job can bill
        -- If set to "all", all jobs will be billable
        -- If set to "none", or removed, billing for jobs will be disabled
        allowedToBillJobs = {"police", "bcso", "ambulance", "realestate", "taxi", "cardealer", "mechanic", "lawyer", "avisa", "tow", "vanilla", "kaffehjornet", "burgershot", "tequilala", "supermarket", "styrt", "vrrroom",  "cityhall", "koi", "treys",}
    },

    ["cityhall"] = {
        -- The label of the job, does not have to be the same as in the jobs actual label in es_extended/qb-core
        label = "Rådhuset",
        
        -- Permissions for different job grades
        -- For QBCore, use the rank number/index in the shared files
        -- For ESX, use the actual name of the rank (not label)
        permissions = {
            [0] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = false,
                canPayInvoices = false
            },
            [1] = {
                sendInvoice = true,
                viewOverview = true,
                playerLookup = true,
                canPayInvoices = true
            },
         


          
        },

        -- List of different invoice categories, can be anything
        invoiceCategory = {
            "Faktura", 
        },

        -- This list should contain all job names that this job can bill
        -- If set to "all", all jobs will be billable
        -- If set to "none", or removed, billing for jobs will be disabled
        allowedToBillJobs = {"police", "bcso", "ambulance", "realestate", "taxi", "cardealer", "mechanic", "lawyer", "avisa", "tow", "vanilla", "kaffehjornet", "burgershot", "tequilala", "supermarket", "styrt", "vrrroom", "nails",  "koi", "treys",}
    },

    ["koi"] = {
        -- The label of the job, does not have to be the same as in the jobs actual label in es_extended/qb-core
        label = "Koi Restaurant og Spa",
        
        -- Permissions for different job grades
        -- For QBCore, use the rank number/index in the shared files
        -- For ESX, use the actual name of the rank (not label)
        permissions = {
            [0] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = false,
                canPayInvoices = false
            },
            [1] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = true,
                canPayInvoices = false
            },
            [2] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = true,
                canPayInvoices = false
            },
            [3] = {
                sendInvoice = true,
                viewOverview = true,
                playerLookup = true,
                canPayInvoices = true
            },


          
        },

        -- List of different invoice categories, can be anything
        invoiceCategory = {
            "Faktura", 
        },

        -- This list should contain all job names that this job can bill
        -- If set to "all", all jobs will be billable
        -- If set to "none", or removed, billing for jobs will be disabled
        allowedToBillJobs = {"police", "bcso", "ambulance", "realestate", "taxi", "cardealer", "mechanic", "lawyer", "avisa", "tow", "vanilla", "kaffehjornet", "burgershot", "tequilala", "supermarket", "styrt", "vrrroom", "nails", "cityhall", "treys",}
    },

    ["treys"] = {
        -- The label of the job, does not have to be the same as in the jobs actual label in es_extended/qb-core
        label = "Pops diner",
        
        -- Permissions for different job grades
        -- For QBCore, use the rank number/index in the shared files
        -- For ESX, use the actual name of the rank (not label)
        permissions = {
            [0] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = false,
                canPayInvoices = false
            },
            [1] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = true,
                canPayInvoices = false
            },
            [2] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = true,
                canPayInvoices = false
            },
            [3] = {
                sendInvoice = true,
                viewOverview = true,
                playerLookup = true,
                canPayInvoices = true
            },


          
        },

        -- List of different invoice categories, can be anything
        invoiceCategory = {
            "Faktura", 
        },

        -- This list should contain all job names that this job can bill
        -- If set to "all", all jobs will be billable
        -- If set to "none", or removed, billing for jobs will be disabled
        allowedToBillJobs = {"police", "bcso", "ambulance", "realestate", "taxi", "cardealer", "mechanic", "lawyer", "avisa", "tow", "vanilla", "kaffehjornet", "burgershot", "tequilala", "supermarket", "styrt", "vrrroom", "nails", "cityhall", "koi", }
    },

    ["avisa"] = {
        -- The label of the job, does not have to be the same as in the jobs actual label in es_extended/qb-core
        label = "Avisa",
        
        -- Permissions for different job grades
        -- For QBCore, use the rank number/index in the shared files
        -- For ESX, use the actual name of the rank (not label)
        permissions = {
            [0] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = false,
                canPayInvoices = false
            },
            [1] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = true,
                canPayInvoices = false
            },
            [2] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = true,
                canPayInvoices = false
            },
            [3] = {
                sendInvoice = true,
                viewOverview = true,
                playerLookup = true,
                canPayInvoices = true
            },


          
        },

        -- List of different invoice categories, can be anything
        invoiceCategory = {
            "Faktura", 
        },

        -- This list should contain all job names that this job can bill
        -- If set to "all", all jobs will be billable
        -- If set to "none", or removed, billing for jobs will be disabled
        allowedToBillJobs = {"police", "bcso", "ambulance", "realestate", "taxi", "cardealer", "mechanic", "lawyer",  "tow", "vanilla", "kaffehjornet", "burgershot", "tequilala", "supermarket", "styrt", "vrrroom", "nails", "cityhall", "koi", "treys",}
    },

    ["bcso"] = {
        -- The label of the job, does not have to be the same as in the jobs actual label in es_extended/qb-core
        label = "Kripos",
        
        -- Permissions for different job grades
        -- For QBCore, use the rank number/index in the shared files
        -- For ESX, use the actual name of the rank (not label)
        permissions = {
            [0] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = false,
                canPayInvoices = false
            },
            [1] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = true,
                canPayInvoices = false
            },
            [2] = {
                sendInvoice = true,
                viewOverview = false,
                playerLookup = true,
                canPayInvoices = false
            },
            [3] = {
                sendInvoice = true,
                viewOverview = true,
                playerLookup = true,
                canPayInvoices = true
            },


          
        },

        -- List of different invoice categories, can be anything
        invoiceCategory = {
            "Faktura", 
        },

        -- This list should contain all job names that this job can bill
        -- If set to "all", all jobs will be billable
        -- If set to "none", or removed, billing for jobs will be disabled
        allowedToBillJobs = {"police",  "ambulance", "realestate", "taxi", "cardealer", "mechanic", "lawyer",  "tow", "vanilla", "kaffehjornet", "burgershot", "tequilala", "supermarket", "styrt", "vrrroom", "nails", "cityhall", "koi", "treys",}
    },

}