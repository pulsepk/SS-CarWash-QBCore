fx_version 'cerulean'
game 'gta5'

author 'SIREC STUDIO'

--DISCORD https://discord.gg/XJrjmXc9hd ! For Support and Others !

lua54 'yes'



server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'locales/language.lua',
	'config.lua',
    "Server/Server.lua",
}

client_scripts {
	'locales/language.lua',
	'config.lua',
	'Client/Client.lua',
}
