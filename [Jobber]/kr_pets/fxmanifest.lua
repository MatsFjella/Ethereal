fx_version "cerulean"
game "gta5"
lua54 'yes'
version '3.3.2'

ui_page('html/index.html') 

files({
    'html/index.html',
    'html/scripts/*',
    'html/style.css',
    'html/img/*',
})
   
shared_scripts {
    "config/*.lua",
} 

client_scripts {
    "client/*.lua",
    "client/frameworks/*.lua",
}

server_scripts {
    "server/frameworks/*.lua",
    "server/*.lua",
    "@mysql-async/lib/MySQL.lua",
}

escrow_ignore {
    "config/config.lua",
    "client/*",
    "client/frameworks/*",
}
dependency '/assetpacks'