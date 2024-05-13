fx_version 'cerulean'
game 'gta5'
author 'CodeStudio'
version '1.0'

ui_page 'ui/index.html'

shared_scripts {
  'config/config.lua',
  'config/language.lua',
  'main/function.lua',
  '@ox_lib/init.lua'
}

client_scripts {'main/client.lua',}

server_script {'@oxmysql/lib/MySQL.lua','main/server.lua','config/server_function.lua'}

files {'ui/**'}

escrow_ignore {'config/*.lua'}

dependencies {
	'oxmysql',
  'ox_lib',
	'screenshot-basic',
}

lua54 'yes'
dependency '/assetpacks'