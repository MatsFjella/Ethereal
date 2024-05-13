fx_version 'cerulean'
games { 'gta5' }
author 'JunkBox & DGVaniX'
version '1.0.0'
description 'Nails'

dependencies {
	"qb-core",
	"oxmysql"
}

lua54 'yes'

server_scripts {
	"server/main.lua"
}

client_scripts {
    'client/main.lua'
}

shared_scripts {
	"config.lua"
}

escrow_ignore {
	"config.lua"
}

ui_page('ui/ui.html')

files {
    'ui/ui.html',
    'ui/app.js',
    'ui/style.css',
	'ui/assets/logo.png',
	'ui/assets/loading.gif',
	
	'mp_f_freemode_01_nails.meta'
}

data_file 'SHOP_PED_APPAREL_META_FILE' 'mp_f_freemode_01_nails.meta'
dependency '/assetpacks'