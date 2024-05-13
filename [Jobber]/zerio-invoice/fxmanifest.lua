fx_version "cerulean"
game "gta5"
lua54 "yes"

version "1.0.0"
author "Zerio#0880"
description "Beautiful and easy to use invoicing system"

escrow_ignore {
    "shared/*.lua",
    "shared/translations/*.lua",
    "client/functions.lua",
    "server/functions.lua"
}

shared_scripts {
    -- UNCOMMENT THIS LINE IF YOU HAVE ESX LEGACY 1.8.5+
    -- "@es_extended/imports.lua",

    "shared/main.lua",
    "shared/framework.lua",
    "shared/jobs.lua",
    "shared/admin.lua",
    "shared/themes.lua",

    "locale.lua",
    "shared/translations/*.lua"
}

client_scripts {
    "client/functions.lua",
    "client/main.lua"
}

server_scripts {
    -- UNCOMMENT THIS LINE IF YOU USE MYSQL-ASYNC
    -- "@mysql-async/lib/MySQL.lua",

    "server/functions.lua",
    "server/main.lua"
}

files {
    "html/index.html", 
    "html/assets/*.css", 
    "html/assets/*.png",
    "html/assets/*.js"
}

ui_page "html/index.html"
-- ui_page "http://localhost:5173" -- DO NOT UNCOMMENT

dependency '/assetpacks'