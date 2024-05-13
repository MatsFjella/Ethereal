fx_version 'cerulean'
games { 'gta5' }

author 'Grudge & Snipe'
description 'Script for realistic printing documents'
version '2.0.0'

lua54 'yes'

ui_page "html/index.html"

shared_scripts {
    '@ox_lib/init.lua',
	'config.lua'
}

client_scripts {
    'client/open/customise_client.lua',
    'client/encrypted/main.lua',
}

server_scripts {
    'server/main.lua',
}

files {
    '*.lua',
    'html/*.html',
    'html/*.js',
    'html/*.css',
    'html/*.png',
    'stream/clipboard.ytyp',
}

escrow_ignore{
    'config.lua',
    'client/open/customise_client.lua',
    'server/main.lua',
}

data_file 'DLC_ITYP_REQUEST' 'stream/clipboard.ytyp'
dependency '/assetpacks'