lua54 "yes"
fx_version "cerulean"
game "gta5"

version '1.0.4'

escrow_ignore {
    "locale.lua", "locales/*.lua", "config.lua", "server/functions.lua",
    "client/functions.lua", "html/libs/vue/script.js",
    "html/libs/sweetalert2/script.js", "html/libs/sweetalert2/style.css",
    "html/images/categories/*.png", "html/images/categories/*.jpg",
    "html/images/cars/*.png", "html/images/cars/*.jpg", "html/style.css",
    "html/index.html"
}

client_scripts {
    "locale.lua", "locales/*.lua", "config.lua", "client/functions.lua",
    "client/main.lua", "client/debug.lua"
}

server_scripts {
    "locale.lua", "locales/*.lua", "config.lua", "server/functions.lua",
    "server/main.lua", "server/versioncheck.lua", "server/debug.lua"
}

files {
    "html/libs/vue/script.js", "html/libs/sweetalert2/script.js",
    "html/libs/sweetalert2/style.css", "html/images/categories/*.png",
    "html/images/categories/*.jpg", "html/images/cars/*.png",
    "html/images/cars/*.jpg", "html/style.css", "html/index.html"
}

ui_page "html/index.html"

dependency '/assetpacks'