fx_version 'cerulean'
game 'gta5'

author 'Flek'
description 'FlekDev Licenses'
version '1.0.1'

client_scripts {
	'client/*'
}

server_scripts {
	'server/*'
}

shared_scripts {
    '@qb-core/shared/locale.lua',
	'shared/*',
}

escrow_ignore{
	'client/*.*',
	'shared/*.*',
	'server/*.*',
	'html/*.*',
	'img/*.*',
	'*.*',
}

ui_page 'html/index.html'

files {
	'html/*',
}

lua54 'yes'
dependency '/assetpacks'