util.AddNetworkString( "IncomingHook4" )
util.AddNetworkString( "IncomingHook3" )
util.AddNetworkString( "IncomingHook7" )
util.AddNetworkString( "SellHook" )
local TrailList = {}
TrailList = {
	{Trail = "trails/plasma.vtf", Name = "Plasma", Price = 0, Purchased = false},
	{Trail = "trails/angry.vtf", Name = "Angry", Price = 1000, Purchased = false},
	{Trail = "trails/apple.vtf", Name = "Apple", Price = 10000, Purchased = false},
	{Trail = "trails/arrow.vtf", Name = "Arrow", Price = 1500, Purchased = false},
	{Trail = "trails/auro.vtf", Name = "Auro", Price = 1500, Purchased = false},
	{Trail = "trails/awesomeface.vtf", Name = "Awesome", Price = 60000, Purchased = false},
	{Trail = "trails/blacklaser.vtf", Name = "Black Laser", Price = 1500, Purchased = false},
	{Trail = "trails/blacklaser2.vtf", Name = "Black Laser 2", Price = 1500, Purchased = false},
	{Trail = "trails/bubbles2.vtf", Name = "Bubbles", Price = 2000, Purchased = false},
	{Trail = "trails/bullseye.vtf", Name = "Bullseye", Price = 2000, Purchased = false},
	{Trail = "trails/carebear.vtf", Name = "Carebear", Price = 50000, Purchased = false},
	{Trail = "trails/colourstrip.vtf", Name = "Colors", Price = 3000, Purchased = false},
	{Trail = "trails/crazy3.vtf", Name = "Crazy", Price = 10000, Purchased = false},
	{Trail = "trails/crowbar.vtf", Name = "Crowbar", Price = 4000, Purchased = false},
	{Trail = "trails/darksmoke.vtf", Name = "Dark Smoke", Price = 3000, Purchased = false},
	{Trail = "trails/dash.vtf", Name = "Dash", Price = 1000, Purchased = false},
	{Trail = "trails/dollarsign.vtf", Name = "Dollar", Price = 100000, Purchased = false},
	{Trail = "trails/dots.vtf", Name = "Dots", Price = 4000, Purchased = false},
	{Trail = "trails/electric.vtf", Name = "Electric", Price = 4000, Purchased = false},
	{Trail = "trails/endlessmap.vtf", Name = "Map", Price = 4000, Purchased = false},
	{Trail = "trails/epiclulz.vtf", Name = "Epic Lulz", Price = 4000, Purchased = false},
	{Trail = "trails/exclamationmark2.vtf", Name = "!", Price = 2000, Purchased = false},
	{Trail = "trails/fire.vtf", Name = "Fire", Price = 10000, Purchased = false},
	{Trail = "trails/footprint.vtf", Name = "Footprints", Price = 4000, Purchased = false},
	{Trail = "trails/forbidden.vtf", Name = "Forbidden", Price = 4000, Purchased = false},
	{Trail = "trails/gmod.vtf", Name = "G", Price = 20000, Purchased = false},
	{Trail = "trails/goomba.vtf", Name = "Goomba", Price = 10000, Purchased = false},
	{Trail = "trails/handy.vtf", Name = "Handicap", Price = 1000, Purchased = false},
	{Trail = "trails/happy.vtf", Name = "Happy", Price = 1000, Purchased = false},
	{Trail = "trails/i came.vtf", Name = "I Came", Price = 40000, Purchased = false},
	{Trail = "trails/laser.vtf", Name = "Laser", Price = 4000, Purchased = false},
	{Trail = "trails/linux.vtf", Name = "Linux", Price = 15000, Purchased = false},
	{Trail = "trails/lol.vtf", Name = "LOL", Price = 8000, Purchased = false},
	{Trail = "trails/love.vtf", Name = "Love", Price = 10000, Purchased = false},
	{Trail = "trails/luigi.vtf", Name = "Luigi", Price = 20000, Purchased = false},
	{Trail = "trails/mario.vtf", Name = "Mario", Price = 20000, Purchased = false},
	{Trail = "trails/megaman.vtf", Name = "Megaman", Price = 20000, Purchased = false},
	{Trail = "trails/money.vtf", Name = "Money", Price = 200000, Purchased = false},
	{Trail = "trails/mudkip.vtf", Name = "Mudkips", Price = 30000, Purchased = false},
	{Trail = "trails/mushroom.vtf", Name = "Shroom", Price = 10000, Purchased = false},
	{Trail = "trails/musicalnotes.vtf", Name = "Notes", Price = 3000, Purchased = false},
	{Trail = "trails/pacman.vtf", Name = "Pac-Man", Price = -2, Purchased = false},
	{Trail = "trails/pewpew3.vtf", Name = "Pew", Price = 6000, Purchased = false},
	{Trail = "trails/physbeam.vtf", Name = "Physbeam", Price = 2000, Purchased = false},
	{Trail = "trails/pikachu.vtf", Name = "Pikachu", Price = 30000, Purchased = false},
	{Trail = "trails/pokeball.vtf", Name = "Pokeball", Price = 20000, Purchased = false},
	{Trail = "trails/presents.vtf", Name = "Presents", Price = 4000, Purchased = false},
	{Trail = "trails/qbox.vtf", Name = "?", Price = 6000, Purchased = false},
	{Trail = "trails/qq2.vtf", Name = "QQ", Price = 4000, Purchased = false},
	{Trail = "trails/rainbow.vtf", Name = "Rainbow", Price = 10000, Purchased = false},
	{Trail = "trails/razor.vtf", Name = "Razor", Price = 10000, Purchased = false},
	{Trail = "trails/road2.vtf", Name = "Highway", Price = 2000, Purchased = false},
	--{Trail = "trails/shoop.vtf", Name = "Shoop", Price = 30000, Purchased = false},
	{Trail = "trails/smoke.vtf", Name = "Smoke", Price = 4000, Purchased = false},
	{Trail = "trails/smouch.vtf", Name = "Trevor", Price = -2, Purchased = false},
	{Trail = "trails/snow.vtf", Name = "Snow", Price = 3000, Purchased = false},
	{Trail = "trails/spaceinvader2.vtf", Name = "Space Invader", Price = 20000, Purchased = false},
	{Trail = "trails/speed3.vtf", Name = "Speed", Price = 3000, Purchased = false},
	{Trail = "trails/stars.vtf", Name = "Stars", Price = -2, Purchased = false},
	{Trail = "trails/stopsign3.vtf", Name = "Stop", Price = 4000, Purchased = false},
	{Trail = "trails/traintrack.vtf", Name = "Train Track", Price = 4000, Purchased = false},
	{Trail = "trails/tube.vtf", Name = "Tube", Price = 20000, Purchased = false},
	{Trail = "trails/windows.vtf", Name = "Windows", Price = 20000, Purchased = false},
	{Trail = "trails/xmaslights.vtf", Name = "X-Mas Lights", Price = 10000, Purchased = false},
	{Trail = "trails/yingyang.vtf", Name = "Ying-Yang", Price = 4000, Purchased = false}
}

local ModelList = {}
ModelList = {
	{Model = "models/player/Group01/Male_02.mdl", Name = "Male 02", Price = 0, Purchased = false},
	{Model = "models/player/Group01/Male_01.mdl", Name = "Male 01", Price = 1000, Purchased = false},
	{Model = "models/player/Group01/Male_03.mdl", Name = "Male 03", Price = 1000, Purchased = false},
	{Model = "models/player/Group01/Male_04.mdl", Name = "Male 04", Price = 2000, Purchased = false},
	{Model = "models/player/Group01/Male_05.mdl", Name = "Male 05", Price = 1000, Purchased = false},
	{Model = "models/player/Group01/Male_06.mdl", Name = "Male 06", Price = 1000, Purchased = false},
	{Model = "models/player/Group01/Male_08.mdl", Name = "Male 08", Price = 1000, Purchased = false},
	{Model = "models/player/Group01/Male_09.mdl", Name = "Male 08", Price = 1000, Purchased = false},
	{Model = "models/player/Group01/Female_01.mdl", Name = "Female 01", Price = 2000, Purchased = false},
	{Model = "models/player/Group01/Female_02.mdl", Name = "Female 02", Price = 2000, Purchased = false},
	{Model = "models/player/Group01/Female_03.mdl", Name = "Female 03", Price = 2000, Purchased = false},
	{Model = "models/player/Group01/Female_04.mdl", Name = "Female 04", Price = 2500, Purchased = false},
	{Model = "models/player/Group01/Female_06.mdl", Name = "Female 06", Price = 2000, Purchased = false},
	{Model = "models/player/Group03/Male_01.mdl", Name = "Rebel Male 01", Price = 5000, Purchased = false},
	{Model = "models/player/Group03/Male_02.mdl", Name = "Rebel Male 02", Price = 4000, Purchased = false},
	{Model = "models/player/Group03/Male_03.mdl", Name = "Rebel Male 03", Price = 5000, Purchased = false},
	{Model = "models/player/Group03/Male_04.mdl", Name = "Rebel Male 04", Price = 7500, Purchased = false},
	{Model = "models/player/Group03/Male_05.mdl", Name = "Rebel Male 05", Price = 5000, Purchased = false},
	{Model = "models/player/Group03/Male_06.mdl", Name = "Rebel Male 06", Price = 5000, Purchased = false},
	{Model = "models/player/Group03/Male_07.mdl", Name = "Rebel Male 07", Price = 10000, Purchased = false},
	{Model = "models/player/Group03/Male_08.mdl", Name = "Rebel Male 08", Price = 5000, Purchased = false},
	{Model = "models/player/Group03/Male_09.mdl", Name = "Rebel Male 09", Price = 5000, Purchased = false},
	{Model = "models/player/Group03/Female_01.mdl", Name = "Rebel Female 01", Price = 6000, Purchased = false},
	{Model = "models/player/Group03/Female_02.mdl", Name = "Rebel Female 02", Price = 6000, Purchased = false},
	{Model = "models/player/Group03/Female_03.mdl", Name = "Rebel Female 03", Price = 6000, Purchased = false},
	{Model = "models/player/Group03/Female_04.mdl", Name = "Rebel Female 04", Price = 7500, Purchased = false},
	{Model = "models/player/Group03/Female_06.mdl", Name = "Rebel Female 06", Price = 6000, Purchased = false},
	{Model = "models/player/Police.mdl", Name = "Metro Cop", Price = 12500, Purchased = false},
	{Model = "models/player/Combine_Soldier.mdl", Name = "Combine Soldier", Price = 25000, Purchased = false},
	{Model = "models/player/Combine_Soldier_PrisonGuard.mdl", Name = "Prison Guard", Price = 20000, Purchased = false},
	{Model = "models/player/Combine_Super_Soldier.mdl", Name = "Combine Elite", Price = 30000, Purchased = false},
	{Model = "models/player/classic.mdl", Name = "Zombie", Price = 25000, Purchased = false},
	{Model = "models/player/zombiefast.mdl", Name = "Fast Zombie", Price = 30000, Purchased = false},
	{Model = "models/player/zombie_soldier.mdl", Name = "Zombine", Price = 40000, Purchased = false},
	{Model = "models/player/Charple01.mdl", Name = "Burnt", Price = 50000, Purchased = false},
	{Model = "models/player/corpse1.mdl", Name = "Corpse", Price = 50000, Purchased = false},
	{Model = "models/player/soldier_stripped.mdl", Name = "Stripped", Price = 50000, Purchased = false},
	{Model = "models/player/hostage/hostage_01.mdl", Name = "Hostage 01", Price = 15000, Purchased = false},
	{Model = "models/player/hostage/hostage_02.mdl", Name = "Hostage 02", Price = 15000, Purchased = false},
	{Model = "models/player/hostage/hostage_03.mdl", Name = "Hostage 03", Price = 15000, Purchased = false},
	{Model = "models/player/hostage/hostage_04.mdl", Name = "Hostage 04", Price = 15000, Purchased = false},
	{Model = "models/player/leet.mdl", Name = "Leet", Price = 50000, Purchased = false},
	{Model = "models/player/guerilla.mdl", Name = "Guerilla", Price = 50000, Purchased = false},
	{Model = "models/player/arctic.mdl", Name = "Arctic", Price = 50000, Purchased = false},
	{Model = "models/player/phoenix.mdl", Name = "Phoenix", Price = 50000, Purchased = false},
	{Model = "models/player/urban.mdl", Name = "Urban", Price = 50000, Purchased = false},
	{Model = "models/player/gasmask.mdl", Name = "Gasmask", Price = 50000, Purchased = false},
	{Model = "models/player/riot.mdl", Name = "Riot", Price = 50000, Purchased = false},
	{Model = "models/player/swat.mdl", Name = "SWAT", Price = 50000, Purchased = false},
	{Model = "models/player/alyx.mdl", Name = "Alyx", Price = -2, Purchased = false},
	{Model = "models/player/breen.mdl", Name = "Breen", Price = 200000, Purchased = false},
	{Model = "models/player/barney.mdl", Name = "Barney", Price = 150000, Purchased = false},
	{Model = "models/player/eli.mdl", Name = "Eli", Price = 150000, Purchased = false},
	{Model = "models/player/gman_high.mdl", Name = "Gman", Price = -2, Purchased = false},
	{Model = "models/player/kleiner.mdl", Name = "Kleiner", Price = 100000, Purchased = false},
	{Model = "models/player/monk.mdl", Name = "Grigori", Price = 100000, Purchased = false},
	{Model = "models/player/odessa.mdl", Name = "Odessa", Price = -2, Purchased = false},
	{Model = "models/player/magnusson.mdl", Name = "Magnusson", Price = 75000, Purchased = false},
	{Model = "models/player/gordon_classic.mdl", Name = "Gordon", Price = -2, Purchased = false},
	{Model = "models/Spiderman/spiderman.mdl", Name = "Piderman", Price = -2, Purchased = false}
}

local TauntList = {}
TauntList = {
	{Taunt = "", Name = "None", Price = 0, Purchased = false},
	{Taunt = "vo/taunts/demoman_taunts02.wav", Name = "Demoman 1", Price = 20000, Purchased = false},
	{Taunt = "vo/taunts/demoman_taunts11.wav", Name = "Demoman 2", Price = 20000, Purchased = false},
	{Taunt = "vo/taunts/engineer_taunts05.wav", Name = "Engie 1", Price = 20000, Purchased = false},
	{Taunt = "vo/taunts/engineer_taunts08.wav", Name = "Engie 2", Price = 20000, Purchased = false},
	{Taunt = "vo/taunts/heavy_taunts11.wav", Name = "Heavy 1", Price = 20000, Purchased = false},
	{Taunt = "vo/taunts/heavy_taunts16.wav", Name = "Heavy 2", Price = 20000, Purchased = false},
	{Taunt = "vo/taunts/medic_taunts03.wav", Name = "Medic 1", Price = 20000, Purchased = false},
	{Taunt = "vo/taunts/medic_taunts11.wav", Name = "Medic 2", Price = 20000, Purchased = false},
	{Taunt = "vo/pyro_battlecry01.wav", Name = "Pyro 1", Price = 20000, Purchased = false},
	{Taunt = "vo/pyro_battlecry02.wav", Name = "Pyro 2", Price = 20000, Purchased = false},
	{Taunt = "vo/taunts/scout_taunts01.wav", Name = "Scout 1", Price = 20000, Purchased = false},
	{Taunt = "vo/taunts/scout_taunts18.wav", Name = "Scout 2", Price = 20000, Purchased = false},
	{Taunt = "vo/taunts/sniper_taunts05.wav", Name = "Sniper 1", Price = 20000, Purchased = false},
	{Taunt = "vo/taunts/sniper_taunts09.wav", Name = "Sniper 2", Price = 20000, Purchased = false},
	{Taunt = "vo/taunts/soldier_taunts01.wav", Name = "Soldier 1", Price = 20000, Purchased = false},
	{Taunt = "vo/taunts/soldier_taunts14.wav", Name = "Soldier 2", Price = 20000, Purchased = false},
	{Taunt = "vo/taunts/spy_taunts03.wav", Name = "Spy 1", Price = 20000, Purchased = false},
	{Taunt = "vo/taunts/spy_taunts08.wav", Name = "Spy 2", Price = 20000, Purchased = false},
	{Taunt = "vo/taunts/demoman_taunts01.wav", Name = "Demoman 3", Price = -2, Purchased = false},
	{Taunt = "vo/announcer_you_failed.wav", Name = "Announcer", Price = 30000, Purchased = false},
	{Taunt = "npc/antlion_guard/angry1.wav", Name = "Antlion", Price = 10000, Purchased = false},
	{Taunt = "npc/dog/dog_growl2.wav", Name = "D0g", Price = 10000, Purchased = false},
	{Taunt = "npc/fast_zombie/fz_scream1.wav", Name = "Fast Zombie", Price = 15000, Purchased = false},
	{Taunt = "npc/metropolice/vo/pickupthecan2.wav", Name = "Metrocop", Price = 15000, Purchased = false},
	{Taunt = "npc/stalker/go_alert2.wav", Name = "Stalker", Price = 10000, Purchased = false},
	{Taunt = "npc/strider/striderx_alert2.wav", Name = "Strider", Price = 10000, Purchased = false},
	{Taunt = "npc/zombie/zombie_voice_idle8.wav", Name = "Zombie", Price = 10000, Purchased = false},
	{Taunt = "vo/Citadel/br_mock09.wav", Name = "Breen", Price = 40000, Purchased = false},
	{Taunt = "vo/trainyard/al_noyoudont.wav", Name = "Alyx", Price = 400000, Purchased = false},
	{Taunt = "vo/npc/female01/doingsomething.wav", Name = "Female 1", Price = 30000, Purchased = false},
	{Taunt = "vo/npc/female01/gordead_ques17.wav", Name = "Female 2", Price = 30000, Purchased = false},
	{Taunt = "vo/npc/male01/gethellout.wav", Name = "Male 1", Price = 30000, Purchased = false},
	{Taunt = "vo/npc/male01/gordead_ans07.wav", Name = "Male 2", Price = 30000, Purchased = false},
	{Taunt = "vo/npc/vortigaunt/halt.wav", Name = "Vortigaunt", Price = 20000, Purchased = false},
	{Taunt = "woof.wav", Name = "Woof", Price = -2, Purchased = false},
	{Taunt = "meow2.wav", Name = "Meow", Price = -2, Purchased = false},
	{Taunt = "idea.wav", Name = "Idea", Price = 100000, Purchased = false},
	{Taunt = "boom.wav", Name = "Boom Headshot", Price = 50000, Purchased = false},
	{Taunt = "awesome.wav", Name = "Awesome", Price = 50000, Purchased = false},
	{Taunt = "werg.wav", Name = "Werg", Price = 50000, Purchased = false},
	{Taunt = "stop.wav", Name = "Stop!", Price = 50000, Purchased = false},
	{Taunt = "leeroy.wav", Name = "Leeroy Jenkins", Price = 250000, Purchased = false},
	{Taunt = "spacemonkey2.wav", Name = "Space Monkey", Price = 75000, Purchased = false},
	{Taunt = "doublerainbow.wav", Name = "Double Rainbow", Price = 100000, Purchased = false},
	{Taunt = "horse2.wav", Name = "Horse", Price = 100000, Purchased = false},
	{Taunt = "vo/Citadel/br_mock04.wav", Name = "Breen 2", Price = 40000, Purchased = false}
}

local TagList = {}
TagList  = {
	{Tag = "tags/jonothingtag003.vtf", Name = "None", Price = 0, Purchased = false},
	{Tag = "tags/mgredtag001.vtf", Name = "Red", Price = 10000, Purchased = false},
	{Tag = "tags/mgblutag002.vtf", Name = "Blue", Price = 10000, Purchased = false},
	{Tag = "tags/mgninjatag001.vtf", Name = "Ninja", Price = 25000, Purchased = false},
	{Tag = "tags/mgwintag001.vtf", Name = "Win", Price = 30000, Purchased = false},
	{Tag = "tags/mggaytag001.vtf", Name = "Gay", Price = 25000, Purchased = false},
	{Tag = "tags/mgepictag001.vtf", Name = "Epic", Price = 50000, Purchased = false},
	{Tag = "tags/mggirltag001.vtf", Name = "Girl", Price = 30000, Purchased = false},
	{Tag = "tags/mgsexytag001.vtf", Name = "Sexy", Price = 50000, Purchased = false},
	{Tag = "tags/mgdonatortag001.vtf", Name = "Donator", Price = -2, Purchased = false},
	{Tag = "tags/mgjotag001.vtf", Name = "Jo", Price = -2, Purchased = false},
	{Tag = "tags/jopeztag006.vtf", Name = "Pez", Price = -2, Purchased = false},
	{Tag = "tags/mgadmintag001.vtf", Name = "Admin", Price = -2, Purchased = false},
	{Tag = "tags/mgdevtag001.vtf", Name = "Dev", Price = -2, Purchased = false},
	{Tag = "tags/mgawesometag001.vtf", Name = "Awesome", Price = 50000, Purchased = false},
	{Tag = "tags/mgweedtag001.vtf", Name = "Weed", Price = 20000, Purchased = false},
	{Tag = "tags/mggmodtag001.vtf", Name = "Gmod", Price = 30000, Purchased = false},
	{Tag = "tags/mgtf2tag001.vtf", Name = "TF2", Price = 25000, Purchased = false},
	{Tag = "tags/mgportaltag001.vtf", Name = "Portal", Price = 25000, Purchased = false},
	{Tag = "tags/mgcsstag001.vtf", Name = "CS:S", Price = 25000, Purchased = false},
	{Tag = "tags/mgl4dtag001.vtf", Name = "L4D", Price = 25000, Purchased = false},
	{Tag = "tags/mghl2tag001.vtf", Name = "HL2", Price = 30000, Purchased = false},
	{Tag = "tags/mgdodtag001.vtf", Name = "DoD:S", Price = 25000, Purchased = false},
	{Tag = "tags/mgsourcetag001.vtf", Name = "Source", Price = 30000, Purchased = false},
	{Tag = "tags/mgvalvetag001.vtf", Name = "Valve", Price = 30000, Purchased = false},
	{Tag = "tags/mgsteamtag001.vtf", Name = "Steam", Price = 30000, Purchased = false},
	{Tag = "tags/mgmw2tag001.vtf", Name = "MW2", Price = 30000, Purchased = false},
	{Tag = "tags/mgshooptag001.vtf", Name = "Shoop", Price = 50000, Purchased = false},
	{Tag = "tags/mgsharkeytag001.vtf", Name = "Sharkey", Price = -2, Purchased = false},
	{Tag = "tags/mgbosstag001.vtf", Name = "Boss", Price = 40000, Purchased = false},
	{Tag = "tags/mgcooltag002.vtf", Name = "Cool", Price = 40000, Purchased = false},
	{Tag = "tags/mghottag001.vtf", Name = "Hot", Price = 40000, Purchased = false},
	{Tag = "tags/mgfurrytag001.vtf", Name = "Furry", Price = 50000, Purchased = false},
	{Tag = "tags/mgjeditag001.vtf", Name = "Jedi", Price = 50000, Purchased = false},
	{Tag = "tags/mgsuperdonatortag002.vtf", Name = "Donator 2", Price = -2, Purchased = false},
	{Tag = "tags/jozlabtag003.vtf", Name = "ZLab", Price = -2, Purchased = false},
	{Tag = "tags/mgtauxtag002.vtf", Name = "Taux", Price = -2, Purchased = false},
	{Tag = "tags/mgdragontag001.vtf", Name = "Dragon", Price = 50000, Purchased = false},
	{Tag = "tags/mgcombinetag001.vtf", Name = "Combine", Price = 30000, Purchased = false},
	{Tag = "tags/mgrebeltag001.vtf", Name = "Rebel", Price = 30000, Purchased = false},
	{Tag = "tags/mghackertag001.vtf", Name = "Hacker", Price = 50000, Purchased = false},
	{Tag = "tags/mgfailtag001.vtf", Name = "Fail", Price = 30000, Purchased = false},
	{Tag = "tags/mgalterstag001.vtf", Name = "Alters", Price = -2, Purchased = false},
	{Tag = "tags/mglinkplay9tag001.vtf", Name = "LinkTag", Price = -2, Purchased = false},
	{Tag = "tags/mgcasatag001.vtf", Name = "Casa", Price = -2, Purchased = false},
	{Tag = "tags/mginoritag001.vtf", Name = "Inori", Price = -2, Purchased = false},
	{Tag = "tags/mghansontag001.vtf", Name = "Hanson", Price = -2, Purchased = false},
	{Tag = "tags/mgcyborgtag001.vtf", Name = "Cyborg", Price = -2, Purchased = false}
	
}

local HatList = {}
HatList = {
	{Hat= "", Name = "Nothing", Price = 0, Purchased = true},
	{Hat= "models/props_junk/popcan01a.mdl", Name = "Soda", Price = 75000, Purchased = false},
	{Hat= "models/props_lab/cactus.mdl", Name = "Cactus", Price = 75000, Purchased = false},
	{Hat= "models/gibs/hgibs.mdl", Name = "Skull", Price = 90000, Purchased = false},
	{Hat= "models/props_interiors/pot02a.mdl", Name = "Pot Head", Price = 90000, Purchased = false},
	{Hat= "models/props_junk/terracotta01.mdl", Name = "Flowepot", Price = 90000, Purchased = false},
	{Hat= "models/props_wasteland/prison_lamp001c.mdl", Name = "Lamp", Price = 90000, Purchased = false},
	{Hat= "models/props_junk/trafficcone001a.mdl", Name = "Cone", Price = 125000, Purchased = false},
	{Hat= "models/props_junk/sawblade001a.mdl", Name = "Saw", Price = 125000, Purchased = false},
	{Hat= "models/props_vehicles/tire001c_car.mdl", Name = "Tire", Price = 100000, Purchased = false},
	{Hat= "models/combine_helicopter/helicopter_bomb01.mdl", Name = "Bomb", Price = 100000, Purchased = false},
	{Hat= "models/props_lab/monitor01a.mdl", Name = "Monitor", Price = 150000, Purchased = false},
	{Hat= "models/roller.mdl", Name = "Roller", Price = 150000, Purchased = false},
	{Hat= "models/props_combine/combine_mine01.mdl", Name = "Mine", Price = 150000, Purchased = false},
	{Hat= "models/headcrabclassic.mdl", Name = "Headcrab", Price = 200000, Purchased = false},
	{Hat= "models/props_junk/watermelon01.mdl", Name = "Melon", Price = 200000, Purchased = false},
	{Hat= "models/props_phx/misc/soccerball.mdl", Name = "Soccer", Price = 200000, Purchased = false},
	{Hat= "models/noesis/donut.mdl", Name = "Donut", Price = -2, Purchased = false},
	{Hat= "models/ttt/deerstalker.mdl", Name = "Hunting Hat", Price = 175000, Purchased = false}
}

--[[function Initialize()
	    Msg("Loading tmysql module...\n");
    require("tmysql4");
     
    if (tmysql) then
        Msg("Loaded tmysql module... \n");
    else
        Msg("Failed to load tmysql module... \n");
    end
     
    local db, err = tmysql.initialize("localhost", "root", "|2n6\"!8[E~-6287=$.*7", "garrysmod", 3306);
     
    if db then
         
        print("[MySQL] Connected to SV_DATABASE!\n")
        SV_DATABASE = db
         
    else
         
        print("[MySQL] Error connecting to SV_DATABASE:\n")
        print(err)
         
    end
     
    db = nil
    err = nil 
end

hook.Add( "Initialize", "Initialize", Initialize )]]

concommand.Add("addpoints", function(sender, command, arguments)
	if not sender:IsAdmin() then return end

	local plid = tonumber(arguments[1])
	local money = tonumber(arguments[2])
	if not plid or not money then return end

	local pl
	for _, e in pairs(player.GetAll()) do
		if e:UserID() == plid then
			pl = e
			break
		end
	end

	if not pl then return end

	money = math.floor(money)

	pl:SetNWInt("money", pl:GetNWInt("money") + money)
	tmysql.query("UPDATE player_info SET money = "..pl:GetNWInt("money").." WHERE unique_id = '"..pl:GetNWString("unique_id").."'")
end)

function IncomingHook4( len, pl )

	local PRESSED = net.ReadInt( 32 )
	local TYPE = net.ReadString()

	local discount = (pl:GetNWBool("donator") or pl:IsAdmin()) and 0.7 or 1
	
	if TYPE == "Model" then
		pl:SetNWInt("money", pl:GetNWInt("money") - ModelList[PRESSED].Price * discount)
		tmysql.query("UPDATE player_stats SET m"..PRESSED.." = 1 WHERE unique_id = '"..pl:GetNWString("unique_id").."'")
		tmysql.query("UPDATE player_info SET money = "..pl:GetNWInt("money").." WHERE unique_id = '"..pl:GetNWString("unique_id").."'")
		net.Start( "IncomingHook3" )
			net.WriteString( "Model purchased successfully! Go to the settings tab to switch to it." )
		net.Send( pl )
	elseif TYPE == "Trail" then
		pl:SetNWInt("money", pl:GetNWInt("money") - TrailList[PRESSED].Price * discount)
		tmysql.query("UPDATE player_trails SET m"..PRESSED.." = 1 WHERE unique_id = '"..pl:GetNWString("unique_id").."'")
		tmysql.query("UPDATE player_info SET money = "..pl:GetNWInt("money").." WHERE unique_id = '"..pl:GetNWString("unique_id").."'")
		net.Start( "IncomingHook3" )
			net.WriteString( "Trail purchased successfully! Go to the settings tab to switch to it." )
		net.Send( pl )
	elseif TYPE == "Taunt" then
		pl:SetNWInt("money", pl:GetNWInt("money") - TauntList[PRESSED].Price * discount)
		tmysql.query("UPDATE player_taunts SET m"..PRESSED.." = 1 WHERE unique_id = '"..pl:GetNWString("unique_id").."'")
		tmysql.query("UPDATE player_info SET money = "..pl:GetNWInt("money").." WHERE unique_id = '"..pl:GetNWString("unique_id").."'")
		net.Start( "IncomingHook3" )
			net.WriteString( "Taunt purchased successfully! Go to the settings tab to switch to it." )
		net.Send( pl )
	elseif TYPE == "Tag" then
		pl:SetNWInt("money", pl:GetNWInt("money") - TagList[PRESSED].Price * discount)
		tmysql.query("UPDATE player_tags SET m"..PRESSED.." = 1 WHERE unique_id = '"..pl:GetNWString("unique_id").."'")
		tmysql.query("UPDATE player_info SET money = "..pl:GetNWInt("money").." WHERE unique_id = '"..pl:GetNWString("unique_id").."'")
		
		net.Start( "IncomingHook3" )
			net.WriteString( "Tag purchased successfully! Go to the settings tab to switch to it." )
		net.Send( pl )
	elseif TYPE == "Hat" then
		pl:SetNWInt("money", pl:GetNWInt("money") - HatList[PRESSED].Price * discount)
		tmysql.query("UPDATE player_hats SET m"..PRESSED.." = 1 WHERE unique_id = '"..pl:GetNWString("unique_id").."'")
		tmysql.query("UPDATE player_info SET money = "..pl:GetNWInt("money").." WHERE unique_id = '"..pl:GetNWString("unique_id").."'")
		
		net.Start( "IncomingHook3" )
			net.WriteString( "Hat purchased successfully! Go to the settings tab to switch to it." )
		net.Send( pl )
	end
end

net.Receive( "IncomingHook4", IncomingHook4 )

function IncomingHook7( len, pl )

	PRESSED = net.ReadInt( 32 )
	PRESSED2 = net.ReadInt( 32 )
	PRESSED3 = net.ReadInt( 32 )
	PRESSED4 = net.ReadInt( 32 )
	PRESSED5 = net.ReadInt( 32 )
	
	pl:SetNWString("currmodel", ModelList[PRESSED].Model)
	pl:SetNWString("currtrail", TrailList[PRESSED2].Trail)
	pl:SetNWString("currtaunt", TauntList[PRESSED3].Taunt)
	pl:SetNWString("currtag", TagList[PRESSED4].Tag)
	pl:SetNWString("currhat", HatList[PRESSED5].Hat)
	tmysql.query("UPDATE player_stats SET curr_model = "..PRESSED.." WHERE unique_id = '"..pl:GetNWString("unique_id").."'")
	tmysql.query("UPDATE player_trails SET curr_trail = "..PRESSED2.." WHERE unique_id = '"..pl:GetNWString("unique_id").."'")
	tmysql.query("UPDATE player_taunts SET curr_taunt = "..PRESSED3.." WHERE unique_id = '"..pl:GetNWString("unique_id").."'")
	tmysql.query("UPDATE player_tags SET curr_tag = "..PRESSED4.." WHERE unique_id = '"..pl:GetNWString("unique_id").."'")
	tmysql.query("UPDATE player_hats SET curr_hat = "..PRESSED5.." WHERE unique_id = '"..pl:GetNWString("unique_id").."'")
	net.Start( "IncomingHook3" )
		net.WriteString( "Your loadout has been updated successfully!" )
	net.Send( pl )
	pl:SetModel(pl:GetNWString("currmodel"))
	
end

net.Receive( "IncomingHook7", IncomingHook7 )

function SellHook( len, pl )

	local PRESSED = net.ReadInt( 32 )
	local TYPE = net.ReadString()
	
	if TYPE == "Model" then
		pl:SetNWInt("money", pl:GetNWInt("money") + (ModelList[PRESSED].Price/2))
		tmysql.query("UPDATE player_stats SET m"..PRESSED.." = 0 WHERE unique_id = '"..pl:GetNWString("unique_id").."'")
		tmysql.query("UPDATE player_info SET money = "..pl:GetNWInt("money").." WHERE unique_id = '"..pl:GetNWString ("SteamID").."'")
		if pl:GetNWString("currmodel") == ModelList[PRESSED].Model then
			pl:SetNWString("currmodel", ModelList[1].Model)
			tmysql.query("UPDATE player_stats SET curr_model = 1 WHERE unique_id = '"..pl:GetNWString("unique_id").."'")
		end
		net.Start( "IncomingHook3" )
			net.WriteString( "Model sold successfully!" )
		net.Send( pl )
	elseif TYPE == "Trail" then
		pl:SetNWInt("money", pl:GetNWInt("money") + (TrailList[PRESSED].Price/2))
		tmysql.query("UPDATE player_trails SET m"..PRESSED.." = 0 WHERE unique_id = '"..pl:GetNWString("unique_id").."'")
		tmysql.query("UPDATE player_info SET money = "..pl:GetNWInt("money").." WHERE unique_id = '"..pl:GetNWString ("SteamID").."'")
		if pl:GetNWString("currtrail") == TrailList[PRESSED].Trail then
			pl:SetNWString("currtrail", TrailList[1].Trail)
			tmysql.query("UPDATE player_trails SET curr_trail = 1 WHERE unique_id = '"..pl:GetNWString("unique_id").."'")
		end
		net.Start( "IncomingHook3" )
			net.WriteString( "Trail sold successfully!" )
		net.Send( pl )
	elseif TYPE == "Taunt" then
		pl:SetNWInt("money", pl:GetNWInt("money") + (TauntList[PRESSED].Price/2))
		tmysql.query("UPDATE player_taunts SET m"..PRESSED.." = 0 WHERE unique_id = '"..pl:GetNWString("unique_id").."'")
		tmysql.query("UPDATE player_info SET money = "..pl:GetNWInt("money").." WHERE unique_id = '"..pl:GetNWString ("SteamID").."'")
		if pl:GetNWString("currtaunt") == TauntList[PRESSED].Taunt then
			pl:SetNWString("currtaunt", TauntList[1].Taunt)
			tmysql.query("UPDATE player_taunts SET curr_taunt = 1 WHERE unique_id = '"..pl:GetNWString("unique_id").."'")
		end
		net.Start( "IncomingHook3" )
			net.WriteString( "Taunt sold successfully!" )
		net.Send( pl )
	elseif TYPE == "Tag" then
		pl:SetNWInt("money", pl:GetNWInt("money") + (TagList[PRESSED].Price/2))
		tmysql.query("UPDATE player_tags SET m"..PRESSED.." = 0 WHERE unique_id = '"..pl:GetNWString("unique_id").."'")
		tmysql.query("UPDATE player_info SET money = "..pl:GetNWInt("money").." WHERE unique_id = '"..pl:GetNWString ("SteamID").."'")
		if pl:GetNWString("currtag") == TagList[PRESSED].Tag then
			pl:SetNWString("currtag", TagList[1].Tag)
			tmysql.query("UPDATE player_tags SET curr_tag = 1 WHERE unique_id = '"..pl:GetNWString("unique_id").."'")
		end
		net.Start( "IncomingHook3" )
			net.WriteString( "Tag sold successfully!" )
		net.Send( pl )
	elseif TYPE == "Hat" then
		pl:SetNWInt("money", pl:GetNWInt("money") + (HatList[PRESSED].Price/2))
		tmysql.query("UPDATE player_hats SET m"..PRESSED.." = 0 WHERE unique_id = '"..pl:GetNWString("unique_id").."'")
		tmysql.query("UPDATE player_info SET money = "..pl:GetNWInt("money").." WHERE unique_id = '"..pl:GetNWString ("SteamID").."'")
		if pl:GetNWString("currhat") == HatList[PRESSED].Hat then
			pl:SetNWString("currhat", HatList[1].Hat)
			tmysql.query("UPDATE player_hats SET curr_hat = 1 WHERE unique_id = '"..pl:GetNWString("unique_id").."'")
		end
		net.Start( "IncomingHook3" )
			net.WriteString( "Hat sold successfully!" )
		net.Send( pl )
	end
end

net.Receive( "SellHook", SellHook )
