-- change something		
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
	{Taunt = "vo/Citadel/br_mock09.wav", Name = "Breen 1", Price = 40000, Purchased = false},
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


local CanOpen = false
timer.Simple(15, function() CanOpen = true end)

local discounted = false
function CreateDerma()
	if not discounted then
		discounted = true

		if LocalPlayer():GetNWBool("donator") or LocalPlayer():IsAdmin() then
			for k, v in pairs(TrailList) do
				if v.Price and v.Price > 0 then
					v.Price = math.floor(v.Price * 0.7)
				end
			end
			for k, v in pairs(ModelList) do
				if v.Price and v.Price > 0 then
					v.Price = math.floor(v.Price * 0.7)
				end
			end
			for k, v in pairs(HatList) do
				if v.Price and v.Price > 0 then
					v.Price = math.floor(v.Price * 0.7)
				end
			end
			for k, v in pairs(TauntList) do
				if v.Price and v.Price > 0 then
					v.Price = math.floor(v.Price * 0.7)
				end
			end
			for k, v in pairs(TagList) do
				if v.Price and v.Price > 0 then
					v.Price = math.floor(v.Price * 0.7)
				end
			end
		end
	end

	surface.PlaySound("Friends/message.wav")
	local PRESSED = -1
	local PRESSED2 = -1
	local PRESSED3 = -1
	local PRESSED4 = -1
	local PRESSED5 = -1
	local PRESSED6 = -1
	local OPEN = 0
	
	DFrame = vgui.Create( "DFrame" )
	DFrame:SetSize( 465, 500 )
	DFrame:Center()
	DFrame:SetDeleteOnClose(true)
	DFrame:SetTitle( "Store" )
	DFrame:SetVisible( true )
	DFrame:SetDraggable( false )
	DFrame:ShowCloseButton( true )
	DFrame:MakePopup()
	
	local PropertySheet1 = vgui.Create( "DPropertySheet", DFrame)
	PropertySheet1:SetPos( 5, 27 )
	PropertySheet1:SetSize( 455, 468 )
	
	local DPanel1 = vgui.Create("DPanel", PropertySheet1)
	DPanel1:SetPos( 0,35 )
	DPanel1:SetSize( 455, 433 )
	DPanel1.Paint = function()
		surface.SetDrawColor( 150, 150, 150, 255 ) 
		surface.DrawRect( 0, 0, DPanel1:GetWide(), DPanel1:GetTall() )
	end
	
	local Label= vgui.Create("DLabel", DPanel1)
	Label:SetText("Select a Category")
	Label:SetSize(300, 20)
	Label:SetPos( 15, 411 )
	Label:SetTextColor( Color(25, 25, 25, 255) )
	
	local Button = vgui.Create( "DButton", DPanel1 )
	Button:SetSize( 100, 30 )
	Button:SetPos( 347, 407 )
	Button:SetText( "Purchase" )
	Button:SetDisabled(true)
	Button.DoClick = function( Button )
		if OPEN == 1 then
			if (PRESSED < 0) then
				Label:SetText("You haven't selected a model!")
			elseif tonumber(ModelList[PRESSED].Price) < 0 then
				if LocalPlayer():GetNWBool("donator") or LocalPlayer():IsAdmin() then
					Label:SetText("You already own this.")
				else
					Label:SetText("You have to donate to get this model.")
				end
			elseif tonumber(ModelList[PRESSED].Price) > tonumber(LocalPlayer():GetNWInt("money")) then
				Label:SetText("You do not have enough money!")
			elseif ModelList[PRESSED].Purchased == true then
				Label:SetText("You have already purchased this model!")
			else
				net.Start( "IncomingHook4" )
					net.WriteInt( tonumber(PRESSED), 32 )
					net.WriteString( "Model" )
				net.SendToServer()

				ModelList[PRESSED].Purchased = true
				DFrame:Close()
			end
		elseif OPEN == 2 then
			if (PRESSED < 0) then
				Label:SetText("You haven't selected a trail!")
			elseif tonumber(TrailList[PRESSED].Price) < 0 then
				if LocalPlayer():GetNWBool("donator") or LocalPlayer():IsAdmin() then
					Label:SetText("You already own this.")
				else
					Label:SetText("You have to donate to get this trail.")
				end
			elseif tonumber(TrailList[PRESSED].Price) > tonumber(LocalPlayer():GetNWInt("money")) then
				Label:SetText("You do not have enough money!")
			elseif TrailList[PRESSED].Purchased == true then
				Label:SetText("You have already purchased this trail!")
			else
				net.Start( "IncomingHook4" )
					net.WriteInt( tonumber(PRESSED), 32 )
					net.WriteString( "Trail" )
				net.SendToServer()
				TrailList[PRESSED].Purchased = true
				DFrame:Close()
			end
		elseif OPEN == 3 then
			if (PRESSED < 0) then
				Label:SetText("You haven't selected a taunt!")
			elseif tonumber(TauntList[PRESSED].Price) < 0 then
				if LocalPlayer():GetNWBool("donator") or LocalPlayer():IsAdmin() then
					Label:SetText("You already own this.")
				else
					Label:SetText("You have to donate to get this taunt.")
				end
			elseif tonumber(TauntList[PRESSED].Price) > tonumber(LocalPlayer():GetNWInt("money")) then
				Label:SetText("You do not have enough money!")
			elseif TauntList[PRESSED].Purchased == true then
				Label:SetText("You have already purchased this taunt!")
			else
				net.Start( "IncomingHook4" )
					net.WriteInt( tonumber(PRESSED), 32 )
					net.WriteString( "Taunt" )
				net.SendToServer()
				TauntList[PRESSED].Purchased = true
				DFrame:Close()
			end
		elseif OPEN == 4 then
			if (PRESSED < 0) then
				Label:SetText("You haven't selected a tag!")
			elseif tonumber(TagList[PRESSED].Price) < 0 then
				if LocalPlayer():GetNWBool("donator") or LocalPlayer():IsAdmin() then
					Label:SetText("You already own this.")
				else
					Label:SetText("You have to donate to get this tag.")
				end
			elseif tonumber(TagList[PRESSED].Price) > tonumber(LocalPlayer():GetNWInt("money")) then
				Label:SetText("You do not have enough money!")
			elseif TagList[PRESSED].Purchased == true then
				Label:SetText("You have already purchased this tag!")
			else
				net.Start( "IncomingHook4" )
					net.WriteInt( tonumber(PRESSED), 32 )
					net.WriteString( "Tag" )
				net.SendToServer()
				TagList[PRESSED].Purchased = true
				DFrame:Close()
			end
		elseif OPEN == 5 then
			if (PRESSED < 0) then
				Label:SetText("You haven't selected a hat!")
			elseif tonumber(HatList[PRESSED].Price) < 0 then
				if LocalPlayer():GetNWBool("donator") or LocalPlayer():IsAdmin() then
					Label:SetText("You already own this.")
				else
					Label:SetText("You have to donate to get this hat.")
				end
			elseif tonumber(HatList[PRESSED].Price) > tonumber(LocalPlayer():GetNWInt("money")) then
				Label:SetText("You do not have enough money!")
			elseif HatList[PRESSED].Purchased == true then
				Label:SetText("You have already purchased this hat!")
			else
				net.Start( "IncomingHook4" )
					net.WriteInt( tonumber(PRESSED), 32 )
					net.WriteString( "Hat" )
				net.SendToServer()
				HatList[PRESSED].Purchased = true
				DFrame:Close()
			end
		end
	end
	
	local Button3 = vgui.Create( "DButton", DPanel1 )
	Button3:SetSize( 100, 30 )
	Button3:SetPos( 247, 407 )
	Button3:SetText( "Sell" )
	Button3:SetDisabled(true)
	Button3.DoClick = function( Button3 )
		if OPEN == 1 then
			if (PRESSED < 0) then
				Label:SetText("You haven't selected a model!")
			elseif tonumber(ModelList[PRESSED].Price) < 0 then
				Label:SetText("You can't sell this model.")
			elseif ModelList[PRESSED].Purchased == false then
				Label:SetText("You don't own this model!")
			else
				net.Start( "SellHook" )
					net.WriteInt( tonumber(PRESSED), 32 )
					net.WriteString( "Model" )
				net.SendToServer()
				ModelList[PRESSED].Purchased = false
				DFrame:Close()
			end
		elseif OPEN == 2 then
			if (PRESSED < 0) then
				Label:SetText("You haven't selected a trail!")
			elseif tonumber(TrailList[PRESSED].Price) < 0 then
				Label:SetText("You can't sell this trail.")
			elseif TrailList[PRESSED].Purchased == false then
				Label:SetText("You don't own this trail!")
			else
				net.Start( "SellHook" )
					net.WriteInt( tonumber(PRESSED), 32 )
					net.WriteString( "Trail" )
				net.SendToServer()
				TrailList[PRESSED].Purchased = false
				DFrame:Close()
			end
		elseif OPEN == 3 then
			if (PRESSED < 0) then
				Label:SetText("You haven't selected a taunt!")
			elseif tonumber(TauntList[PRESSED].Price) < 0 then
				Label:SetText("You can't sell this taunt.")
			elseif TauntList[PRESSED].Purchased == false then
				Label:SetText("You don't own this taunt!")
			else
				net.Start( "SellHook" )
					net.WriteInt( tonumber(PRESSED), 32 )
					net.WriteString( "Taunt" )
				net.SendToServer()
				
				TauntList[PRESSED].Purchased = false
				DFrame:Close()
			end
		elseif OPEN == 4 then
			if (PRESSED < 0) then
				Label:SetText("You haven't selected a tag!")
			elseif tonumber(TagList[PRESSED].Price) < 0 then
				Label:SetText("You can't sell this tag.")
			elseif TagList[PRESSED].Purchased == false then
				Label:SetText("You don't own this tag!")
			else
				net.Start( "SellHook" )
					net.WriteInt( tonumber(PRESSED), 32 )
					net.WriteString( "Tag" )
				net.SendToServer()
				TagList[PRESSED].Purchased = false
				DFrame:Close()
			end
		elseif OPEN == 5 then
			if (PRESSED < 0) then
				Label:SetText("You haven't selected a hat!")
			elseif tonumber(HatList[PRESSED].Price) < 0 then
				Label:SetText("You can't sell this hat.")
			elseif HatList[PRESSED].Purchased == false then
				Label:SetText("You don't own this hat!")
			else
				net.Start( "SellHook" )
					net.WriteInt( tonumber(PRESSED), 32 )
					net.WriteString( "Hat" )
				net.SendToServer()
				HatList[PRESSED].Purchased = false
				DFrame:Close()
			end
		else
		
		end
	end
	
	local CollapsibleCategory = vgui.Create("DCollapsibleCategory", DPanel1)
	CollapsibleCategory:SetPos( 0,0 )
	CollapsibleCategory:SetSize( 435, 405 ) 
	CollapsibleCategory:SetLabel( "Models" )
	CollapsibleCategory:SetExpanded(false)
	
	DermaList = vgui.Create( "DPanelList", CollapsibleCategory )
	DermaList:SetPos( 5,5 )
	DermaList:SetSize( 445, 385 )
	DermaList:SetSpacing( 10 ) 
	DermaList:EnableHorizontal( false ) 
	DermaList:EnableVerticalScrollbar( true ) 
	
	local Grid = vgui.Create( "DGrid" )
	Grid:SetPos( 10, 10 )
	Grid:SetCols( 5 )
	Grid:SetColWide( 85 )
	Grid:SetRowHeight(  85 )
	
	local IconTable = {}
	local ImageTable = {}
	for k, v in pairs(ModelList) do
		if k<62 then
			IconTable[k] = vgui.Create( "SpawnIcon" )
			IconTable[k]:SetSize( 75, 75 )
			IconTable[k]:SetModel(ModelList[k].Model)
			if ModelList[k].Price >= 0 then
				IconTable[k]:SetToolTip(  ModelList[k].Name.." - $"..ModelList[k].Price )
			else
				IconTable[k]:SetToolTip(  ModelList[k].Name.." - Donation Only" )
			end
			if ModelList[k].Purchased == true then
				ImageTable[k] = vgui.Create("DImage", IconTable[k])
				ImageTable[k]:SetImage( "models/debug/debugwhite" )
				ImageTable[k]:SetImageColor(Color(50, 100, 50, 150))
				ImageTable[k]:SetSize(75, 75)
			elseif tonumber(ModelList[k].Price) > tonumber(LocalPlayer():GetNWInt("money")) or tonumber(ModelList[k].Price) < 0 then
				ImageTable[k] = vgui.Create("DImage", IconTable[k])
				ImageTable[k]:SetImage( "models/debug/debugwhite" )
				ImageTable[k]:SetImageColor(Color(100, 50, 50, 150))
				ImageTable[k]:SetSize(75, 75)
			end
			IconTable[k].OnMousePressed = function()
				if PRESSED > 0 then
					if ModelList[PRESSED].Purchased == true then
						ImageTable[PRESSED]:SetImageColor(Color(50, 100, 50, 150))
					elseif tonumber(ModelList[PRESSED].Price) > tonumber(LocalPlayer():GetNWInt("money")) or tonumber(ModelList[PRESSED].Price) < 0 then
						ImageTable[PRESSED]:SetImageColor(Color(100, 50, 50, 150))
					else
						ImageTable[PRESSED]:SetImageColor(Color(0, 0,0, 0))
					end
				end
				if ImageTable[k] == nil then
					ImageTable[k] = vgui.Create("DImage", IconTable[k])
				end
				ImageTable[k]:SetImage( "models/debug/debugwhite" )
				ImageTable[k]:SetImageColor(Color(50, 50, 100, 150))
				ImageTable[k]:SetSize(75, 75)
				PRESSED = k
				if ModelList[k].Price >=0 then
					Label:SetText("Name: "..ModelList[k].Name.." | Price: $"..ModelList[k].Price.." - Sell for: $"..(ModelList[k].Price/2))
				else
					Label:SetText("You can only get this model by donating to the server.")
				end
			end
			Grid:AddItem( IconTable[k] )
		end
	end
	
	DermaList:AddItem( Grid )
	
	CollapsibleCategory:SetContents( DermaList )
	
	local CollapsibleCategory2 = vgui.Create("DCollapsibleCategory", DPanel1)
	CollapsibleCategory2:SetPos( 0,20 )
	CollapsibleCategory2:SetSize( 435, 405 ) 
	CollapsibleCategory2:SetLabel( "Trails" )
	CollapsibleCategory2:SetExpanded(false)
	
	DermaList2 = vgui.Create( "DPanelList", CollapsibleCategory2 )
	DermaList2:SetPos( 5,5 )
	DermaList2:SetSize( 445, 385 )
	DermaList2:SetSpacing( 10 ) 
	DermaList2:EnableHorizontal( false ) 
	DermaList2:EnableVerticalScrollbar( true ) 
	
	local Grid2 = vgui.Create( "DGrid" )
	Grid2:SetPos( 10, 10 )
	Grid2:SetCols( 5 )
	Grid2:SetColWide( 85 )
	Grid2:SetRowHeight(  85 )
	
	local TrailTable = {}
	local ImageTable2 = {}
	for k, v in pairs(TrailList) do
		TrailTable[k] = vgui.Create( "DImage" )
		TrailTable[k]:SetSize( 75, 75 )
		TrailTable[k]:SetImage(string.gsub(TrailList[k].Trail, ".vtf", ""))
		if TrailList[k].Price >= 0 then
			TrailTable[k]:SetToolTip(  TrailList[k].Name.." - $"..TrailList[k].Price )
		else
			TrailTable[k]:SetToolTip(  TrailList[k].Name.." - Donation Only" )
		end
		if TrailList[k].Purchased == true then
			ImageTable2[k] = vgui.Create("DImage", TrailTable[k])
			ImageTable2[k]:SetImage( "models/debug/debugwhite" )
			ImageTable2[k]:SetImageColor(Color(50, 100, 50, 150))
			ImageTable2[k]:SetSize(75, 75)
		elseif tonumber(TrailList[k].Price) > tonumber(LocalPlayer():GetNWInt("money")) or tonumber(TrailList[k].Price) < 0 then
			ImageTable2[k] = vgui.Create("DImage", TrailTable[k])
			ImageTable2[k]:SetImage( "models/debug/debugwhite" )
			ImageTable2[k]:SetImageColor(Color(100, 50, 50, 150))
			ImageTable2[k]:SetSize(75, 75)
		end
		TrailTable[k].OnMousePressed = function()
			if PRESSED > 0 then
				if TrailList[PRESSED].Purchased == true then
					ImageTable2[PRESSED]:SetImageColor(Color(50, 100, 50, 150))
				elseif tonumber(TrailList[PRESSED].Price) > tonumber(LocalPlayer():GetNWInt("money")) or tonumber(TrailList[PRESSED].Price) < 0 then
					ImageTable2[PRESSED]:SetImageColor(Color(100, 50, 50, 150))
				else
					ImageTable2[PRESSED]:SetImageColor(Color(0, 0,0, 0))
				end
			end
			if ImageTable2[k] == nil then
				ImageTable2[k] = vgui.Create("DImage", TrailTable[k])
			end
			ImageTable2[k]:SetImage( "models/debug/debugwhite" )
			ImageTable2[k]:SetImageColor(Color(50, 50, 100, 150))
			ImageTable2[k]:SetSize(75, 75)
			PRESSED = k
			if TrailList[k].Price >=0 then
				Label:SetText("Name: "..TrailList[k].Name.." | Price: $"..TrailList[k].Price.." - Sell for: $"..(TrailList[k].Price/2))
			else
				Label:SetText("You can only get this trail by donating to the server.")
			end
		end
		Grid2:AddItem( TrailTable[k] )
	end
	
	DermaList2:AddItem( Grid2 )
	
	CollapsibleCategory2:SetContents( DermaList2 )
	
	local CollapsibleCategory3 = vgui.Create("DCollapsibleCategory", DPanel1)
	CollapsibleCategory3:SetPos( 0,40 )
	CollapsibleCategory3:SetSize( 435, 405 ) 
	CollapsibleCategory3:SetLabel( "Taunts" )
	CollapsibleCategory3:SetExpanded(false)
	
	DermaList3 = vgui.Create( "DPanelList", CollapsibleCategory3 )
	DermaList3:SetPos( 5,5 )
	DermaList3:SetSize( 445, 385 )
	DermaList3:SetSpacing( 10 ) 
	DermaList3:EnableHorizontal( false ) 
	DermaList3:EnableVerticalScrollbar( true ) 
	
	local Grid3 = vgui.Create( "DGrid" )
	Grid3:SetPos( 10, 10 )
	Grid3:SetCols( 5 )
	Grid3:SetColWide( 85 )
	Grid3:SetRowHeight(  85 )
	
	local TauntTable = {}
	local ImageTable3 = {}
	for k, v in pairs(TauntList) do
		TauntTable[k] = vgui.Create( "DImage" )
		TauntTable[k]:SetSize( 75, 75 )
		TauntTable[k]:SetImage("icon16/sound.png")
		if TauntList[k].Price >= 0 then
			TauntTable[k]:SetToolTip(  TauntList[k].Name.." - $"..TauntList[k].Price )
		else
			TauntTable[k]:SetToolTip(  TauntList[k].Name.." - Donation Only" )
		end
		if TauntList[k].Purchased == true then
			ImageTable3[k] = vgui.Create("DImage", TauntTable[k])
			ImageTable3[k]:SetImage( "models/debug/debugwhite" )
			ImageTable3[k]:SetImageColor(Color(50, 100, 50, 150))
			ImageTable3[k]:SetSize(75, 75)
		elseif tonumber(TauntList[k].Price) > tonumber(LocalPlayer():GetNWInt("money")) or tonumber(TauntList[k].Price) < 0 then
			ImageTable3[k] = vgui.Create("DImage", TauntTable[k])
			ImageTable3[k]:SetImage( "models/debug/debugwhite" )
			ImageTable3[k]:SetImageColor(Color(100, 50, 50, 150))
			ImageTable3[k]:SetSize(75, 75)
		end
		TauntTable[k].OnMousePressed = function()
			if PRESSED > 0 then
				if TauntList[PRESSED].Purchased == true then
					ImageTable3[PRESSED]:SetImageColor(Color(50, 100, 50, 150))
				elseif tonumber(TauntList[PRESSED].Price) > tonumber(LocalPlayer():GetNWInt("money")) or tonumber(TauntList[PRESSED].Price) < 0 then
					ImageTable3[PRESSED]:SetImageColor(Color(100, 50, 50, 150))
				else
					ImageTable3[PRESSED]:SetImageColor(Color(0, 0,0, 0))
				end
			end
			if ImageTable3[k] == nil then
				ImageTable3[k] = vgui.Create("DImage", TauntTable[k])
			end
			ImageTable3[k]:SetImage( "models/debug/debugwhite" )
			ImageTable3[k]:SetImageColor(Color(50, 50, 100, 150))
			ImageTable3[k]:SetSize(75, 75)
			PRESSED = k
			surface.PlaySound(TauntList[PRESSED].Taunt)
			if TauntList[k].Price >=0 then
				Label:SetText("Name: "..TauntList[k].Name.." | Price: $"..TauntList[k].Price.." - Sell for: $"..(TauntList[k].Price/2))
			else
				Label:SetText("You can only get this taunt by donating to the server.")
			end
		end
		Grid3:AddItem( TauntTable[k] )
	end
	
	DermaList3:AddItem( Grid3 )
	
	CollapsibleCategory3:SetContents( DermaList3 )
	
	local CollapsibleCategory4 = vgui.Create("DCollapsibleCategory", DPanel1)
	CollapsibleCategory4:SetPos( 0,60 )
	CollapsibleCategory4:SetSize( 435, 405 ) 
	CollapsibleCategory4:SetLabel( "Tags" )
	CollapsibleCategory4:SetExpanded(false)
	
	DermaList4 = vgui.Create( "DPanelList", CollapsibleCategory4 )
	DermaList4:SetPos( 5,5 )
	DermaList4:SetSize( 445, 385 )
	DermaList4:SetSpacing( 10 ) 
	DermaList4:EnableHorizontal( false ) 
	DermaList4:EnableVerticalScrollbar( true ) 
	
	local Grid4 = vgui.Create( "DGrid" )
	Grid4:SetPos( 10, 10 )
	Grid4:SetCols( 5 )
	Grid4:SetColWide( 85 )
	Grid4:SetRowHeight(  85 )
	
	local TagTable = {}
	local ImageTable4 = {}
	for k, v in pairs(TagList) do
		if (k<11 or k>14) and k!= 29 and k!= 36 and k!= 37 and k!=43 then
			TagTable[k] = vgui.Create( "DImage" )
			TagTable[k]:SetSize( 64, 32 )
			TagTable[k]:SetImage(string.gsub(TagList[k].Tag, ".vtf", ""))
			if TagList[k].Price >= 0 then
				TagTable[k]:SetToolTip(  TagList[k].Name.." - $"..TagList[k].Price )
			else
				TagTable[k]:SetToolTip(  TagList[k].Name.." - Donation Only" )
			end
			if TagList[k].Purchased == true then
				ImageTable4[k] = vgui.Create("DImage", TagTable[k])
				ImageTable4[k]:SetImage( "models/debug/debugwhite" )
				ImageTable4[k]:SetImageColor(Color(50, 100, 50, 150))
				ImageTable4[k]:SetSize(64, 32)
			elseif tonumber(TagList[k].Price) > tonumber(LocalPlayer():GetNWInt("money")) or tonumber(TagList[k].Price) < 0 then
				ImageTable4[k] = vgui.Create("DImage", TagTable[k])
				ImageTable4[k]:SetImage( "models/debug/debugwhite" )
				ImageTable4[k]:SetImageColor(Color(100, 50, 50, 150))
				ImageTable4[k]:SetSize(64, 32)
			end
			TagTable[k].OnMousePressed = function()
				if PRESSED > 0 then
					if TagList[PRESSED].Purchased == true then
						ImageTable4[PRESSED]:SetImageColor(Color(50, 100, 50, 150))
					elseif tonumber(TagList[PRESSED].Price) > tonumber(LocalPlayer():GetNWInt("money")) or tonumber(TagList[PRESSED].Price) < 0 then
						ImageTable4[PRESSED]:SetImageColor(Color(100, 50, 50, 150))
					else
						ImageTable4[PRESSED]:SetImageColor(Color(0, 0,0, 0))
					end
				end
				if ImageTable4[k] == nil then
					ImageTable4[k] = vgui.Create("DImage", TagTable[k])
				end
				ImageTable4[k]:SetImage( "models/debug/debugwhite" )
				ImageTable4[k]:SetImageColor(Color(50, 50, 100, 150))
				ImageTable4[k]:SetSize(64, 32)
				PRESSED = k
				if TagList[k].Price >=0 then
					Label:SetText("Name: "..TagList[k].Name.." | Price: $"..TagList[k].Price.." - Sell for: $"..(TagList[k].Price/2))
				else
					Label:SetText("You can only get this tag by donating to the server.")
				end
			end
			Grid4:AddItem( TagTable[k] )
		end
	end
	
	DermaList4:AddItem( Grid4 )
	
	CollapsibleCategory4:SetContents( DermaList4 )
	
	local CollapsibleCategory5 = vgui.Create("DCollapsibleCategory", DPanel1)
	CollapsibleCategory5:SetPos( 0,80 )
	CollapsibleCategory5:SetSize( 435, 405 ) 
	CollapsibleCategory5:SetLabel( "Hats" )
	CollapsibleCategory5:SetExpanded(false)
	
	DermaList5 = vgui.Create( "DPanelList", CollapsibleCategory5 )
	DermaList5:SetPos( 5,5 )
	DermaList5:SetSize( 445, 385 )
	DermaList5:SetSpacing( 10 ) 
	DermaList5:EnableHorizontal( false ) 
	DermaList5:EnableVerticalScrollbar( true ) 
	
	local Grid5 = vgui.Create( "DGrid" )
	Grid5:SetPos( 10, 10 )
	Grid5:SetCols( 5 )
	Grid5:SetColWide( 85 )
	Grid5:SetRowHeight(  85 )
	
	local HatTable = {}
	local ImageTable5 = {}
	for k, v in pairs(HatList) do
		HatTable[k] = vgui.Create( "SpawnIcon" )
		HatTable[k]:SetSize( 75, 75 )
		HatTable[k]:SetModel(HatList[k].Hat)
		if HatList[k].Price >= 0 then
			HatTable[k]:SetToolTip(  HatList[k].Name.." - $"..HatList[k].Price )
		else
			HatTable[k]:SetToolTip(  HatList[k].Name.." - Donation Only" )
		end
		if HatList[k].Purchased == true then
			ImageTable5[k] = vgui.Create("DImage", HatTable[k])
			ImageTable5[k]:SetImage( "models/debug/debugwhite" )
			ImageTable5[k]:SetImageColor(Color(50, 100, 50, 150))
			ImageTable5[k]:SetSize(75, 75)
		elseif tonumber(HatList[k].Price) > tonumber(LocalPlayer():GetNWInt("money")) or tonumber(HatList[k].Price) < 0 then
			ImageTable5[k] = vgui.Create("DImage", HatTable[k])
			ImageTable5[k]:SetImage( "models/debug/debugwhite" )
			ImageTable5[k]:SetImageColor(Color(100, 50, 50, 150))
			ImageTable5[k]:SetSize(75, 75)
		end
		HatTable[k].OnMousePressed = function()
			if PRESSED > 0 then
				if HatList[PRESSED].Purchased == true then
					ImageTable5[PRESSED]:SetImageColor(Color(50, 100, 50, 150))
				elseif tonumber(HatList[PRESSED].Price) > tonumber(LocalPlayer():GetNWInt("money")) or tonumber(HatList[PRESSED].Price) < 0 then
					ImageTable5[PRESSED]:SetImageColor(Color(100, 50, 50, 150))
				else
					ImageTable5[PRESSED]:SetImageColor(Color(0, 0,0, 0))
				end
			end
			if ImageTable5[k] == nil then
				ImageTable5[k] = vgui.Create("DImage", HatTable[k])
			end
			ImageTable5[k]:SetImage( "models/debug/debugwhite" )
			ImageTable5[k]:SetImageColor(Color(50, 50, 100, 150))
			ImageTable5[k]:SetSize(75, 75)
			PRESSED = k
			if HatList[k].Price >=0 then
				Label:SetText("Name: "..HatList[k].Name.." | Price: $"..HatList[k].Price.." - Sell for: $"..(HatList[k].Price/2))
			else
				Label:SetText("You can only get this hat by donating to the server.")
			end
		end
		Grid5:AddItem( HatTable[k] )
	end
	
	DermaList5:AddItem( Grid5 )
	
	CollapsibleCategory5:SetContents( DermaList5 )
	
	CollapsibleCategory.Header.OnMousePressed = function()
		CollapsibleCategory:Toggle()
		if CollapsibleCategory:GetExpanded( ) == true then
			Button:SetDisabled(false)
			Button3:SetDisabled(false)
			Label:SetText("Select a Model")
			OPEN = 1
			CollapsibleCategory2:Remove()
			CollapsibleCategory3:Remove()
			CollapsibleCategory4:Remove()
			CollapsibleCategory5:Remove()
		else
			DFrame:Close()
			CreateDerma()
		end
	end
	
	CollapsibleCategory2.Header.OnMousePressed = function()
		CollapsibleCategory2:Toggle()
		if CollapsibleCategory2:GetExpanded( ) == true then
			Button:SetDisabled(false)
			Button3:SetDisabled(false)
			CollapsibleCategory2:SetPos( 0,0 )
			Label:SetText("Select a Trail")
			OPEN = 2
			CollapsibleCategory:Remove()
			CollapsibleCategory3:Remove()
			CollapsibleCategory4:Remove()
			CollapsibleCategory5:Remove()
		else
			DFrame:Close()
			CreateDerma()
		end
	end
	
	CollapsibleCategory3.Header.OnMousePressed = function()
		CollapsibleCategory3:Toggle()
		if CollapsibleCategory3:GetExpanded( ) == true then
			Button:SetDisabled(false)
			Button3:SetDisabled(false)
			CollapsibleCategory3:SetPos( 0,0 )
			Label:SetText("Select a Taunt - Click a taunt to preview it.")
			OPEN = 3
			CollapsibleCategory:Remove()
			CollapsibleCategory2:Remove()
			CollapsibleCategory4:Remove()
			CollapsibleCategory5:Remove()
		else
			DFrame:Close()
			CreateDerma()
		end
	end
	
	CollapsibleCategory4.Header.OnMousePressed = function()
		CollapsibleCategory4:Toggle()
		if CollapsibleCategory4:GetExpanded( ) == true then
			Button:SetDisabled(false)
			Button3:SetDisabled(false)
			CollapsibleCategory4:SetPos( 0,0 )
			Label:SetText("Select a Tag.")
			OPEN = 4
			CollapsibleCategory:Remove()
			CollapsibleCategory2:Remove()
			CollapsibleCategory3:Remove()
			CollapsibleCategory5:Remove()
		else
			DFrame:Close()
			CreateDerma()
		end
	end
	
	CollapsibleCategory5.Header.OnMousePressed = function()
		CollapsibleCategory5:Toggle()
		if CollapsibleCategory5:GetExpanded( ) == true then
			Button:SetDisabled(false)
			Button3:SetDisabled(false)
			CollapsibleCategory5:SetPos( 0,0 )
			Label:SetText("Select a Hat.")
			OPEN = 5
			CollapsibleCategory:Remove()
			CollapsibleCategory2:Remove()
			CollapsibleCategory3:Remove()
			CollapsibleCategory4:Remove()
		else
			DFrame:Close()
			CreateDerma()
		end
	end
	
	local DPanel2 = vgui.Create("DPanel", PropertySheet1)
	DPanel2:SetPos( 0,35 )
	DPanel2:SetSize( 455, 433 )
	DPanel2.Paint = function()
		surface.SetDrawColor( 150, 150, 150, 255 ) 
		surface.DrawRect( 0, 0, DPanel2:GetWide(), DPanel2:GetTall() )
	end
	
	local MLabel= vgui.Create("DLabel", DPanel2)
	MLabel:SetText("Models")
	MLabel:SetSize(100, 20)
	MLabel:SetPos( 20, 20 )
	MLabel:SetTextColor( Color(25, 25, 25, 255) )
	
	local TLabel= vgui.Create("DLabel", DPanel2)
	TLabel:SetText("Trails")
	TLabel:SetSize(100, 20)
	TLabel:SetPos( 20, 56 )
	TLabel:SetTextColor( Color(25, 25, 25, 255) )
	
	local TaLabel= vgui.Create("DLabel", DPanel2)
	TaLabel:SetText("Taunts")
	TaLabel:SetSize(100, 20)
	TaLabel:SetPos( 20, 92 )
	TaLabel:SetTextColor( Color(25, 25, 25, 255) )
	
	local TagLabel= vgui.Create("DLabel", DPanel2)
	TagLabel:SetText("Tags")
	TagLabel:SetSize(100, 20)
	TagLabel:SetPos( 20, 128 )
	TagLabel:SetTextColor( Color(25, 25, 25, 255) )
	
	local HLabel= vgui.Create("DLabel", DPanel2)
	HLabel:SetText("Hats")
	HLabel:SetSize(100, 20)
	HLabel:SetPos( 20, 164 )
	HLabel:SetTextColor( Color(25, 25, 25, 255) )
	
	local PLabel= vgui.Create("DLabel", DPanel2)
	PLabel:SetText("Preview")
	PLabel:SetSize(100, 20)
	PLabel:SetPos( 310, 20 )
	PLabel:SetTextColor( Color(25, 25, 25, 255) )
	
	
	local List= vgui.Create( "DMultiChoice", DPanel2 )
	List:SetPos(20,38)
	List:SetSize( 100, 20 )
	List:SetEditable( false )
	for k, v in pairs(ModelList) do
		if ModelList[k].Purchased == true or ModelList[k].Price < 0 and (LocalPlayer():GetNWBool("donator") or LocalPlayer():IsAdmin()) then
			List:AddChoice(ModelList[k].Name)
		end
		if LocalPlayer():GetNWString("currmodel") == ModelList[k].Model then
			List:SetText(ModelList[k].Name)
			PRESSED2 = k
		end
	end
	
	local List2= vgui.Create( "DMultiChoice", DPanel2 )
	List2:SetPos(20,74)
	List2:SetSize( 100, 20 )
	List2:SetEditable( false )
	for k, v in pairs(TrailList) do
		if TrailList[k].Purchased == true then
			List2:AddChoice(TrailList[k].Name)
		end
		if LocalPlayer():GetNWString("currtrail") == TrailList[k].Trail then
			List2:SetText(TrailList[k].Name)
			PRESSED3 = k
		end
	end
	
	local List3= vgui.Create( "DMultiChoice", DPanel2 )
	List3:SetPos(20,110)
	List3:SetSize( 100, 20 )
	List3:SetEditable( false )
	for k, v in pairs(TauntList) do
		if TauntList[k].Purchased == true then
			List3:AddChoice(TauntList[k].Name)
		end
		if LocalPlayer():GetNWString("currtaunt") == TauntList[k].Taunt then
			List3:SetText(TauntList[k].Name)
			PRESSED4 = k
		end
	end
	
	local List4= vgui.Create( "DMultiChoice", DPanel2 )
	List4:SetPos(20,146)
	List4:SetSize( 100, 20 )
	List4:SetEditable( false )
	for k, v in pairs(TagList) do
		if TagList[k].Purchased == true then
			List4:AddChoice(TagList[k].Name)
		end
		if LocalPlayer():GetNWString("currtag") == TagList[k].Tag then
			List4:SetText(TagList[k].Name)
			PRESSED5 = k
		end
	end
	
	local List5= vgui.Create( "DMultiChoice", DPanel2 )
	List5:SetPos(20,182)
	List5:SetSize( 100, 20 )
	List5:SetEditable( false )
	for k, v in pairs(HatList) do
		if HatList[k].Purchased == true then
			List5:AddChoice(HatList[k].Name)
		end
		if LocalPlayer():GetNWString("currhat") == HatList[k].Hat then
			List5:SetText(HatList[k].Name)
			PRESSED6 = k
		end
	end
	
	local ModelP = vgui.Create( "DModelPanel", DPanel2 )
	ModelP:SetModel( ModelList[PRESSED2].Model ) 
	ModelP:SetSize( 200, 200 )
	ModelP:SetPos( 200, 38 )
	ModelP:SetCamPos( Vector( 50, 55, 40 ) )
	ModelP:SetLookAt( Vector( 40, 40, 39) )
	
	local TImage = vgui.Create("DImage", DPanel2)
	TImage:SetImage( string.gsub(TrailList[PRESSED3].Trail, ".vtf", "") )
	TImage:SetSize( 100, 100 )
	TImage:SetPos( 300, 250 )
	
	local TagImage = vgui.Create("DImage", DPanel2)
	TagImage:SetImage( string.gsub(TagList[PRESSED5].Tag, ".vtf", "") )
	TagImage:SetSize( 72, 36 )
	TagImage:SetPos( 300, 362 )
	
	local HatP = vgui.Create( "DModelPanel", DPanel2 )
	HatP:SetModel( HatList[PRESSED6].Hat ) 
	HatP:SetSize( 70, 70 )
	HatP:SetPos( 230, 38 )
	HatP:SetCamPos( Vector( 10, 10, 10 ) )
	HatP:SetLookAt( Vector( 9, 9, 9) )
	
	List.OnSelect = function(index,value,data)
		for k, v in pairs(ModelList) do
			if List:GetOptionText(value) == ModelList[k].Name then
				PRESSED2 = k
				ModelP:SetModel( ModelList[PRESSED2].Model )
				break
			end
		end
	end
	
	List2.OnSelect = function(index,value,data)
		for k, v in pairs(TrailList) do
			if List2:GetOptionText(value) == TrailList[k].Name then
				PRESSED3 = k
				TImage:SetImage( string.gsub(TrailList[PRESSED3].Trail, ".vtf", "") )
				break
			end
		end
	end
	
	List3.OnSelect = function(index,value,data)
		for k, v in pairs(TauntList) do
			if List3:GetOptionText(value) == TauntList[k].Name then
				PRESSED4 = k
				surface.PlaySound(TauntList[k].Taunt)
				break
			end
		end
	end
	
	List4.OnSelect = function(index,value,data)
		for k, v in pairs(TagList) do
			if List4:GetOptionText(value) == TagList[k].Name then
				PRESSED5 = k
				TagImage:SetImage( string.gsub(TagList[PRESSED5].Tag, ".vtf", "") )
				break
			end
		end
	end
	
	List5.OnSelect = function(index,value,data)
		for k, v in pairs(HatList) do
			if List5:GetOptionText(value) == HatList[k].Name then
				PRESSED6 = k
				HatP:SetModel( HatList[PRESSED6].Hat )
				break
			end
		end
	end
	
	local Label2= vgui.Create("DLabel", DPanel2)
	Label2:SetText("Set your character, then press 'Accept'.")
	Label2:SetSize(300, 20)
	Label2:SetPos( 15, 411 )
	Label2:SetTextColor( Color(25, 25, 25, 255) )
	
	local Button2 = vgui.Create( "DButton", DPanel2 )
	Button2:SetSize( 100, 30 )
	Button2:SetPos( 347, 407 )
	Button2:SetText( "Accept Changes" )
	Button2.DoClick = function( Button2 )
		if (PRESSED2 < 0) then
			Label2:SetText("You haven't selected a model!")
		end
		if (PRESSED3 < 0) then
			Label2:SetText("You haven't selected a trail!")
		end
		if (PRESSED4 < 0) then
			Label2:SetText("You haven't selected a taunt!")
		end
		if (PRESSED5 < 0) then
			Label2:SetText("You haven't selected a tag!")
		end
		if (PRESSED6 < 0) then
			Label2:SetText("You haven't selected a hat!")
		end
		if PRESSED2 >= 0 and PRESSED3 >= 0 and PRESSED4 >= 0 and PRESSED5 >= 0 and PRESSED6 >= 0 then
			net.Start( "IncomingHook7" )
				net.WriteInt( tonumber(PRESSED2), 32 )
				net.WriteInt( tonumber(PRESSED3), 32 )
				net.WriteInt( tonumber(PRESSED4), 32 )
				net.WriteInt( tonumber(PRESSED5), 32 )
				net.WriteInt( tonumber(PRESSED6), 32 )
			net.SendToServer()
			DFrame:Close()
		end
	end
		
	PropertySheet1:AddSheet("Store", DPanel1, "icon16/star.png", false, false, "Buy all your favorite things!")
	PropertySheet1:AddSheet("Settings", DPanel2, "icon16/wrench.png", false, false, "Set up your profile.")
	

end



function IncomingHook3( len )
	LocalPlayer():ChatPrint(net.ReadString())
end
net.Receive( "IncomingHook3", IncomingHook3 )


function IncomingHookModels( len )
	local tbl1 = net.ReadTable()

	for k, v in pairs(ModelList) do
		ModelList[k].Purchased = (tbl1["m"..tostring(k)] == "1")
	end
	
	LocalPlayer():ChatPrint("Loading store...")

end

net.Receive( "IncomingHookModels", IncomingHookModels )

function IncomingHookTrails( len )
	local tbl2 = net.ReadTable()
	PrintTable(tbl2)
	for k, v in pairs(TrailList) do
		TrailList[k].Purchased = (tbl2["m"..tostring(k)] == "1")
	end

end

net.Receive( "IncomingHookTrails", IncomingHookTrails )

function IncomingHookTaunts( len )
	local tbl3 = net.ReadTable()

	for k, v in pairs(TauntList) do
		TauntList[k].Purchased = (tbl3["m"..tostring(k)] == "1")
	end

end

net.Receive( "IncomingHookTaunts", IncomingHookTaunts )

function IncomingHookTags( len )
	local tbl4 = net.ReadTable()

	for k, v in pairs(TagList) do
		TagList[k].Purchased = (tbl4["m"..tostring(k)] == "1")
	end

end

net.Receive( "IncomingHookTags", IncomingHookTags )

function IncomingHookHats( len )
	local tbl5 = net.ReadTable()

	for k, v in pairs(HatList) do
		HatList[k].Purchased = (tbl5["m"..tostring(k)] == "1")
	end
	if CanOpen == true then
		CreateDerma()
	else
		LocalPlayer():ChatPrint("You must wait 15 seconds before you open the store.")
	end

end

net.Receive( "IncomingHookHats", IncomingHookHats )

function IncomingStore( len )

	if CanOpen == true then
		CreateDerma()
	else
		LocalPlayer():ChatPrint("You must wait 15 seconds before you open the store.")
	end
end

net.Receive( "IncomingStore", IncomingStore )

function MotdHook()
	MOTDFrame = vgui.Create( "DFrame" )
	MOTDFrame:SetSize( 465, 500 )
	MOTDFrame:Center()
	MOTDFrame:SetDeleteOnClose(true)
	MOTDFrame:SetTitle( "MOTD" )
	MOTDFrame:SetVisible( true )
	MOTDFrame:SetDraggable( false )
	MOTDFrame:ShowCloseButton( true )
	MOTDFrame:MakePopup()
	
	HTMLMOTD = vgui.Create("HTML", MOTDFrame)
	HTMLMOTD:SetPos(4, 22)
	HTMLMOTD:SetSize(461, 476)
	HTMLMOTD:SetVisible(true)
	HTMLMOTD:OpenURL("http://www.evoservers.net/forums/index.php/pages/purchasedonator")
end

net.Receive( "MotdHook", MotdHook )