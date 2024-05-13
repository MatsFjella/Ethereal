fx_version 'cerulean'
game 'gta5'

version '1.0.0'

dependencies {
    'qb-target',
    'memorygame'
} 

shared_script 'config.lua'

client_scripts {
    '@PolyZone/client.lua',
    'client/main.lua'
}

server_scripts {
    'server/main.lua'
}

lua54 'yes'