fx_version 'cerulean'
game 'gta5'
name 'BestPixel - Flitspalen'
description 'BestPixel - Flitspalen'
author 'MeistroBurger'

-- Map
this_is_a_map 'yes'

-- Load Files
files {
	'stream/*.ydt',
	'stream/*.ydr',
	'stream/*.ymap',
}

-- Load Scripts
client_scripts {
  '@PolyZone/client.lua',
  '@PolyZone/BoxZone.lua',
  '@PolyZone/EntityZone.lua',
  '@PolyZone/CircleZone.lua',
  '@PolyZone/ComboZone.lua',
  'client.lua'
}

server_scripts {
	'server.lua'
}