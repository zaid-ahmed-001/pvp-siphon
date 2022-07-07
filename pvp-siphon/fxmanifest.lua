fx_version 'cerulean'
games { 'gta5' }
author 'Fubuki'
description 'Adds Health and Armor to Killer'
lua54 'yes'
dependencies 'baseevents' -- https://github.com/citizenfx/cfx-server-data/tree/master/resources/%5Bsystem%5D/baseevents

client_scripts {
    'config.lua',
    'client.lua'
}

server_script 'server.lua'
