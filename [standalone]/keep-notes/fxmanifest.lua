--                _
--               | |
--   _____      _| | _____  ___ _ __
--  / __\ \ /\ / / |/ / _ \/ _ \ '_ \
--  \__ \\ V  V /|   <  __/  __/ |_) |
--  |___/ \_/\_/ |_|\_\___|\___| .__/
--                             | |
--                             |_|
-- https://github.com/swkeep

fx_version 'cerulean'
games { 'gta5' }

name 'keep-notes'
description 'This script allows players to keep track of their notes in the game. With this Notepad script, players can save and access their notes whenever they want.'
version '1.0.0'
author "Swkeep#7049"
repository 'https://swkeep.tebex.io'

shared_scripts {}

client_scripts {
    'lua/client/client.core.lua',
}

server_script {
    '@oxmysql/lib/MySQL.lua',
    'config.lua',
    'lua/server/classes/notepad.lua',
    'lua/server/classes/note.lua',
    'lua/server/classes/paperBox.lua',
    'lua/server/items/items.lua',
    'lua/server/server.lua',
}

escrow_ignore {
    'config.lua',
}

files {
    'build/assets/*.*',
    'build/sfx/*.*',
    'build/index.html',
}

ui_page 'build/index.html'

dependencies {
    '/server:5848',
    '/onesync',
    'oxmysql',
    'keep-harmony',
}

lua54 'yes'

dependency '/assetpacks'