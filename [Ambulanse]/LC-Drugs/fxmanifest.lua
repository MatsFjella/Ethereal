name "LC-Drugs"
author "LifeCore"
description "A Detailed Drug Script"
fx_version "cerulean"
game "gta5"
lua54 'yes'

dependencies {
    'qb-target',
}
shared_scripts {
    '@PolyZone/client.lua',
    '@PolyZone/CircleZone.lua',
}

client_scripts {
    'client/lsd.lua',
    'client/meth.lua',
    'client/heroin.lua',
    'client/cocaine.lua',
    'client/effects.lua',
}

server_script {
    'server/lsd.lua',
    'server/meth.lua',
    'server/heroin.lua',
    'server/cocaine.lua',
    'server/effects.lua',
    'server/UsableItems.lua',
    '@oxmysql/lib/MySQL.lua',
    'config.lua',
}

escrow_ignore {
    'config.lua',
  }
dependency '/assetpacks'