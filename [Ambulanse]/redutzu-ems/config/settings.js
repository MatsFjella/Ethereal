var CONFIG = {
    CONSTANTS: { // Don't change these unless you know what you're doing
        FLAGS_API: 'https://www.countryflagicons.com/FLAT/32',
        MAP_API: 'https://www.gtamap.xyz/mapStyles/styleAtlas/{z}/{x}/{y}.jpg',
        CODE_FORMAT: {
            LABEL: 'd-ddd', // This is the format that will be displayed in the UI
            MASK: '#-###', // This should be the same as the LABEL but with # instead of d
            REGEX: /^\d-\d\d\d$/i // This is the regex that will be used to validate the input
        }
    },
    SETTINGS: {
        MAX_RESULTS: 30, // I suggest you don't go over 100
        MAX_SELECTED: 5, // Doesn't really matter if you set this to a higher number
        MAX_FORM_RESULTS: 5, // This will limit the amount of results in a input field
        FEATURES: {
            ALERTS: {
                ENABLED: true, // Enable alerts notifications
                WHILE_CLOSED: true // Show alerts while the UI is closed
            },
            TRANSPARENCY: { // This features allows you to make the UI transparent
                ENABLED: true, // Enable transparency
                KEY: 'F4', // Key to toggle transparency
                VALUE: 0.5 // How transparent the UI should be
            }
        }
    },
    DEFAULT_LOCALE: 'en-US', // en-US, fr-FR, de-DE, ro-RO, bg-BG, hu-HU, pl-PL, es-ES
    CURRENCY: 'EUR', // USD, GBP, EUR
    PAGES: [
        { id: '/', icon: 'fa-solid fa-table-cells-large', label: 'dashboard', disabled: false },
        { id: '/incidents', icon: 'fa-solid fa-suitcase-medical', label: 'incidents', disabled: false },
        { id: '/invoices', icon: 'fa-solid fa-money-bills', label: 'invoices', disabled: false },
        { id: '/codes', icon: 'fa-solid fa-clipboard-list', label: 'codes', disabled: false },
        { id: '/doctors', icon: 'fa-solid fa-users', label: 'doctors', disabled: false },
        { id: '/alerts', icon: 'fa-solid fa-mobile-screen', label: 'alerts', disabled: false },
        { id: '/citizens', icon: 'fa-solid fa-address-card', label: 'citizens', disabled: false },
        { id: '/config', icon: 'fa-solid fa-cogs', label: 'config', disabled: false }
    ],
    LANGUAGES: [
		{ value: 'en-US', label: 'English' },
        { value: 'fr-FR', label: 'French' },
        { value: 'de-DE', label: 'German' },
        { value: 'es-ES', label: 'Spanish' },
        { value: 'ro-RO', label: 'Romanian' },
        { value: 'bg-BG', label: 'Bulgarian' },
        { value: 'hu-HU', label: 'Hungarian' },
        { value: 'pl-PL', label: 'Polish' },
        { value: 'nb-NO', label: 'Norwegian' }
    ],
    COLORS: {
        main: '18, 18, 18',
        secondary: '25, 25, 25',
        third: '32, 32, 32',
        highlight: '42, 42, 42',
        contrast: '255, 0, 2',
        text: '117, 117, 117'
    }
};
