
require("tmysql")
local TrailList = {}
TrailList = {
	"trails/plasma.vtf",
	"trails/angry.vtf",
	"trails/apple.vtf",
	"trails/arrow.vtf",
	"trails/auro.vtf",
	"trails/awesomeface.vtf",
	"trails/blacklaser.vtf",
	"trails/blacklaser2.vtf",
	"trails/bubbles2.vtf",
	"trails/bullseye.vtf",
	"trails/carebear.vtf",
	"trails/colourstrip.vtf",
	"trails/crazy3.vtf",
	"trails/crowbar.vtf",
	"trails/darksmoke.vtf",
	"trails/dash.vtf",
	"trails/dollarsign.vtf",
	"trails/dots.vtf",
	"trails/electric.vtf",
	"trails/endlessmap.vtf",
	"trails/epiclulz.vtf",
	"trails/exclamationmark2.vtf",
	"trails/fire.vtf",
	"trails/footprint.vtf",
	"trails/forbidden.vtf",
	"trails/gmod.vtf",
	"trails/goomba.vtf",
	"trails/handy.vtf",
	"trails/happy.vtf",
	"trails/i came.vtf",
	"trails/laser.vtf",
	"trails/linux.vtf",
	"trails/lol.vtf",
	"trails/love.vtf",
	"trails/luigi.vtf",
	"trails/mario.vtf",
	"trails/megaman.vtf",
	"trails/money.vtf",
	"trails/mudkip.vtf",
	"trails/mushroom.vtf",
	"trails/musicalnotes.vtf",
	"trails/pacman.vtf",
	"trails/pewpew3.vtf",
	"trails/physbeam.vtf",
	"trails/pikachu.vtf",
	"trails/pokeball.vtf",
	"trails/presents.vtf",
	"trails/qbox.vtf",
	"trails/qq2.vtf",
	"trails/rainbow.vtf",
	"trails/razor.vtf",
	"trails/road2.vtf",
	--"trails/shoop.vtf",
	"trails/smoke.vtf",
	"trails/smouch.vtf",
	"trails/snow.vtf",
	"trails/spaceinvader2.vtf",
	"trails/speed3.vtf",
	"trails/stars.vtf",
	"trails/stopsign3.vtf",
	"trails/traintrack.vtf",
	"trails/tube.vtf",
	"trails/windows.vtf",
	"trails/xmaslights.vtf",
	"trails/yingyang.vtf"
}

local ModelList = {}
ModelList = {
	"models/player/Group01/Male_02.mdl",
	"models/player/Group01/Male_01.mdl",
	"models/player/Group01/Male_03.mdl",
	"models/player/Group01/Male_04.mdl",
	"models/player/Group01/Male_05.mdl",
	"models/player/Group01/Male_06.mdl",
	"models/player/Group01/Male_07.mdl",
	"models/player/Group01/Male_08.mdl",
	"models/player/Group01/Male_09.mdl",
	"models/player/Group01/Female_01.mdl",
	"models/player/Group01/Female_02.mdl",
	"models/player/Group01/Female_03.mdl",
	"models/player/Group01/Female_04.mdl",
	"models/player/Group01/Female_06.mdl",
	"models/player/Group01/Female_07.mdl",
	"models/player/Group03/Male_01.mdl",
	"models/player/Group03/Male_02.mdl",
	"models/player/Group03/Male_03.mdl",
	"models/player/Group03/Male_04.mdl",
	"models/player/Group03/Male_05.mdl",
	"models/player/Group03/Male_06.mdl",
	"models/player/Group03/Male_07.mdl",
	"models/player/Group03/Male_08.mdl",
	"models/player/Group03/Male_09.mdl",
	"models/player/Group03/Female_01.mdl",
	"models/player/Group03/Female_02.mdl",
	"models/player/Group03/Female_03.mdl",
	"models/player/Group03/Female_04.mdl",
	"models/player/Group03/Female_06.mdl",
	"models/player/Group03/Female_07.mdl",
	"models/player/Police.mdl",
	"models/player/Combine_Soldier.mdl",
	"models/player/Combine_Soldier_PrisonGuard.mdl",
	"models/player/Combine_Super_Soldier.mdl",
	"models/player/classic.mdl",
	"models/player/zombiefast.mdl",
	"models/player/zombie_soldier.mdl",
	"models/player/Charple01.mdl",
	"models/player/corpse1.mdl",
	"models/player/soldier_stripped.mdl",
	"models/player/hostage/hostage_01.mdl",
	"models/player/hostage/hostage_02.mdl",
	"models/player/hostage/hostage_03.mdl",
	"models/player/hostage/hostage_04.mdl",
	"models/player/leet.mdl",
	"models/player/guerilla.mdl",
	"models/player/arctic.mdl",
	"models/player/phoenix.mdl",
	"models/player/urban.mdl",
	"models/player/gasmask.mdl",
	"models/player/riot.mdl",
	"models/player/swat.mdl",
	"models/player/alyx.mdl",
	"models/player/breen.mdl",
	"models/player/barney.mdl",
	"models/player/eli.mdl",
	"models/player/gman_high.mdl",
	"models/player/kleiner.mdl",
	"models/player/monk.mdl",
	"models/player/odessa.mdl",
	"models/player/magnusson.mdl",
	"models/player/gordon_classic.mdl",
	"models/Spiderman/spiderman.mdl",
	"",
	"",
	""
}

local TauntList = {}
TauntList = {
	"",
	"vo/taunts/demoman_taunts02.wav",
	"vo/taunts/demoman_taunts11.wav",
	"vo/taunts/engineer_taunts05.wav",
	"vo/taunts/engineer_taunts08.wav",
	"vo/taunts/heavy_taunts11.wav",
	"vo/taunts/heavy_taunts16.wav",
	"vo/taunts/medic_taunts03.wav",
	"vo/taunts/medic_taunts11.wav",
	"vo/pyro_battlecry01.wav",
	"vo/pyro_battlecry02.wav",
	"vo/taunts/scout_taunts01.wav",
	"vo/taunts/scout_taunts18.wav",
	"vo/taunts/sniper_taunts05.wav",
	"vo/taunts/sniper_taunts09.wav",
	"vo/taunts/soldier_taunts01.wav",
	"vo/taunts/soldier_taunts14.wav",
	"vo/taunts/spy_taunts03.wav",
	"vo/taunts/spy_taunts08.wav",
	"vo/taunts/demoman_taunts01.wav",
	"vo/announcer_you_failed.wav",
	"npc/antlion_guard/angry1.wav",
	"npc/dog/dog_growl2.wav",
	"npc/fast_zombie/fz_scream1.wav",
	"npc/metropolice/vo/pickupthecan2.wav",
	"npc/stalker/go_alert2.wav",
	"npc/strider/striderx_alert2.wav",
	"npc/zombie/zombie_voice_idle8.wav",
	"vo/Citadel/br_mock09.wav",
	"vo/trainyard/al_noyoudont.wav",
	"vo/npc/female01/doingsomething.wav",
	"vo/npc/female01/gordead_ques17.wav",
	"vo/npc/male01/gethellout.wav",
	"vo/npc/male01/gordead_ans07.wav",
	"vo/npc/vortigaunt/halt.wav",
	"woof.wav",
	"meow2.wav",
	"idea.wav",
	"boom.wav",
	"awesome.wav",
	"werg.wav",
	"stop.wav",
	"leeroy.wav",
	"spacemonkey2.wav",
	"doublerainbow.wav",
	"horse2.wav",
	"vo/Citadel/br_mock04.wav",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	""
}

local TagList = {}
TagList = {
	"tags/jonothingtag003.vtf",
	"tags/mgredtag001.vtf",
	"tags/mgblutag002.vtf",
	"tags/mgninjatag001.vtf",
	"tags/mgwintag001.vtf",
	"tags/mggaytag001.vtf",
	"tags/mgepictag001.vtf",
	"tags/mggirltag001.vtf",
	"tags/mgsexytag001.vtf",
	"tags/mgdonatortag001.vtf",
	"tags/mgjotag001.vtf",
	"tags/jopeztag006.vtf",
	"tags/mgadmintag001.vtf",
	"tags/mgdevtag001.vtf",
	"tags/mgawesometag001.vtf",
	"tags/mgweedtag001.vtf",
	"tags/mggmodtag001.vtf",
	"tags/mgtf2tag001.vtf",
	"tags/mgportaltag001.vtf",
	"tags/mgcsstag001.vtf",
	"tags/mgl4dtag001.vtf",
	"tags/mghl2tag001.vtf",
	"tags/mgdodtag001.vtf",
	"tags/mgsourcetag001.vtf",
	"tags/mgvalvetag001.vtf",
	"tags/mgsteamtag001.vtf",
	"tags/mgmw2tag001.vtf",
	"tags/mgshooptag001.vtf",
	"tags/mgsharkeytag001.vtf",
	"tags/mgbosstag001.vtf",
	"tags/mgcooltag002.vtf",
	"tags/mghottag001.vtf",
	"tags/mgfurrytag001.vtf",
	"tags/mgjeditag001.vtf",
	"tags/mgsuperdonatortag002.vtf",
	"tags/jozlabtag003.vtf",
	"tags/mgtauxtag002.vtf",
	"tags/mgdragontag001.vtf",
	"tags/mgcombinetag001.vtf",
	"tags/mgrebeltag001.vtf",
	"tags/mghackertag001.vtf",
	"tags/mgfailtag001.vtf",
	"tags/mgalterstag001.vtf",
	"tags/mglinkplay9tag001.vtf",
	"tags/mgcasatag001.vtf",
	"tags/mginoritag001.vtf",
	"tags/mghansontag001.vtf",
	"tags/mgcyborgtag001.vtf",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	""
}

local HatList = {}
HatList = {
	"",
	"models/props_junk/popcan01a.mdl",
	"models/props_lab/cactus.mdl",
	"models/gibs/hgibs.mdl",
	"models/props_interiors/pot02a.mdl",
	"models/props_junk/terracotta01.mdl",
	"models/props_wasteland/prison_lamp001c.mdl",
	"models/props_junk/trafficcone001a.mdl",
	"models/props_junk/sawblade001a.mdl",
	"models/props_vehicles/tire001c_car.mdl",
	"models/combine_helicopter/helicopter_bomb01.mdl",
	"models/props_lab/monitor01a.mdl",
	"models/roller.mdl",
	"models/props_combine/combine_mine01.mdl",
	"models/headcrabclassic.mdl",
	"models/props_junk/watermelon01.mdl",
	"models/props_phx/misc/soccerball.mdl",
	"models/noesis/donut.mdl",
	"models/ttt/deerstalker.mdl",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	""
}

function Initialize()
	tables_exist()
	timer.Create("moneytimer", 2, 0, function()
		local PlNum = 0
		for k, v in pairs(player.GetAll()) do
			PlNum = PlNum + 1
		end
		for k, v in pairs(player.GetAll()) do
			if v:Team() != 1 and v:Alive() and PlNum > 1 then
				v:SetNWInt("money", v:GetNWInt("money") + 1)
			end
			if (v:GetObserverMode()==OBS_MODE_IN_EYE or v:GetObserverMode()==OBS_MODE_CHASE) and v:GetObserverTarget()!= nil and v:GetObserverTarget():IsPlayer() and v:GetObserverTarget()!=v then
				v:SetPos(v:GetObserverTarget():GetPos())
			end
			if game.GetMap() == "mg_smashfloor_fix_b1" and v:Team() == 3 then
				v:SetHealth(v:Health()-1)
			end
		end
	end)
end

hook.Add( "Initialize", "Initialize", Initialize )
Msg("\nLoading tmysql module...\n")

require("tmysql")
if (tmysql) then      
	Msg("Loaded tmysql module... \n") 
else
    Msg("Failed to load tmysql module... \n")
end

local db, err = tmysql.initialize("localhost", "root", "|2n6\"!8[E~-6287=$.*7", "garrysmod", 3306);
      
if db then
          
    print("[MySQL] Connected to Database!\n")     
	SV_DATABASE = db
          
else
          
    print("[MySQL] Error connecting to Database\n")
    print(err)
          
end
      
db = nil
err = nil
     

function tables_exist()
	tmysql.query("CREATE TABLE IF NOT EXISTS player_info ( unique_id varchar(255), money int, purch_money int )");
	tmysql.query("CREATE TABLE IF NOT EXISTS player_stats ( unique_id varchar(255), curr_model int, m1 int, m2 int, m3 int, m4 int, m5 int, m6 int, m7 int, m8 int, m9 int, m10 int, m11 int, m12 int, m13 int, m14 int, m15 int, m16 int, m17 int, m18 int, m19 int, m20 int, m21 int, m22 int, m23 int, m24 int, m25 int, m26 int, m27 int, m28 int, m29 int, m30 int, m31 int, m32 int, m33 int, m34 int, m35 int, m36 int, m37 int, m38 int, m39 int, m40 int, m41 int, m42 int, m43 int, m44 int, m45 int, m46 int, m47 int, m48 int, m49 int, m50 int, m51 int, m52 int, m53 int, m54 int, m55 int, m56 int, m57 int, m58 int, m59 int, m60 int, m61 int, m62 int, m63 int, m64 int, m65 int, m66 int )");
	tmysql.query("CREATE TABLE IF NOT EXISTS player_trails ( unique_id varchar(255), curr_trail int, m1 int, m2 int, m3 int, m4 int, m5 int, m6 int, m7 int, m8 int, m9 int, m10 int, m11 int, m12 int, m13 int, m14 int, m15 int, m16 int, m17 int, m18 int, m19 int, m20 int, m21 int, m22 int, m23 int, m24 int, m25 int, m26 int, m27 int, m28 int, m29 int, m30 int, m31 int, m32 int, m33 int, m34 int, m35 int, m36 int, m37 int, m38 int, m39 int, m40 int, m41 int, m42 int, m43 int, m44 int, m45 int, m46 int, m47 int, m48 int, m49 int, m50 int, m51 int, m52 int, m53 int, m54 int, m55 int, m56 int, m57 int, m58 int, m59 int, m60 int, m61 int, m62 int, m63 int, m64 int, m65 int, m66 int )");
	tmysql.query("CREATE TABLE IF NOT EXISTS player_taunts ( unique_id varchar(255), curr_taunt int, m1 int, m2 int, m3 int, m4 int, m5 int, m6 int, m7 int, m8 int, m9 int, m10 int, m11 int, m12 int, m13 int, m14 int, m15 int, m16 int, m17 int, m18 int, m19 int, m20 int, m21 int, m22 int, m23 int, m24 int, m25 int, m26 int, m27 int, m28 int, m29 int, m30 int, m31 int, m32 int, m33 int, m34 int, m35 int, m36 int, m37 int, m38 int, m39 int, m40 int, m41 int, m42 int, m43 int, m44 int, m45 int, m46 int, m47 int, m48 int, m49 int, m50 int, m51 int, m52 int, m53 int, m54 int, m55 int, m56 int, m57 int, m58 int, m59 int, m60 int, m61 int, m62 int, m63 int, m64 int, m65 int, m66 int )");
	tmysql.query("CREATE TABLE IF NOT EXISTS player_tags ( unique_id varchar(255), curr_tag int, m1 int, m2 int, m3 int, m4 int, m5 int, m6 int, m7 int, m8 int, m9 int, m10 int, m11 int, m12 int, m13 int, m14 int, m15 int, m16 int, m17 int, m18 int, m19 int, m20 int, m21 int, m22 int, m23 int, m24 int, m25 int, m26 int, m27 int, m28 int, m29 int, m30 int, m31 int, m32 int, m33 int, m34 int, m35 int, m36 int, m37 int, m38 int, m39 int, m40 int, m41 int, m42 int, m43 int, m44 int, m45 int, m46 int, m47 int, m48 int, m49 int, m50 int, m51 int, m52 int, m53 int, m54 int, m55 int, m56 int, m57 int, m58 int, m59 int, m60 int, m61 int, m62 int, m63 int, m64 int, m65 int, m66 int )");
	tmysql.query("CREATE TABLE IF NOT EXISTS player_hats ( unique_id varchar(255), curr_hat int, m1 int, m2 int, m3 int, m4 int, m5 int, m6 int, m7 int, m8 int, m9 int, m10 int, m11 int, m12 int, m13 int, m14 int, m15 int, m16 int, m17 int, m18 int, m19 int, m20 int, m21 int, m22 int, m23 int, m24 int, m25 int, m26 int, m27 int, m28 int, m29 int, m30 int, m31 int, m32 int, m33 int, m34 int, m35 int, m36 int, m37 int, m38 int, m39 int, m40 int, m41 int, m42 int, m43 int, m44 int, m45 int, m46 int, m47 int, m48 int, m49 int, m50 int, m51 int, m52 int, m53 int, m54 int, m55 int, m56 int, m57 int, m58 int, m59 int, m60 int, m61 int, m62 int, m63 int, m64 int, m65 int, m66 int )");
	tmysql.query("CREATE TABLE IF NOT EXISTS player_donator ( unique_id varchar(255), donator int, voice int, filler int, filler2 int )");
end

function new_player( SteamID, ply )
	local steamID = SteamID
	local result = result
	tmysql.query( "INSERT INTO player_info (`unique_id`, `money`, `purch_money`)VALUES ('"..steamID.."', '1000', '0')" )
	tmysql.query( "SELECT unique_id, money FROM player_info WHERE unique_id = '"..steamID.."'", function ( result )
		if !(result) then
			Msg("Something went wrong with creating a players info !\n")
			Msg(result)
		else
			sql_value_stats(ply)
		end
	end)	
end
 
 function new_stats(SteamID, ply)
	local steamID = SteamID
	local result = result
	tmysql.query( "INSERT INTO player_stats (`unique_id`, `curr_model`, 'm1', 'm2', 'm3', 'm4', 'm5', 'm6', 'm7', 'm8', 'm9', 'm10', 'm11', 'm12', 'm13', 'm14', 'm15', 'm16', 'm17', 'm18', 'm19', 'm20', 'm21', 'm22', 'm23', 'm24', 'm25', 'm26', 'm27', 'm28', 'm29', 'm30', 'm31', 'm32', 'm33', 'm34', 'm35', 'm36', 'm37', 'm38', 'm39', 'm40', 'm41', 'm42', 'm43', 'm44', 'm45', 'm46', 'm47', 'm48', 'm49', 'm50', 'm51', 'm52', 'm53', 'm54', 'm55', 'm56', 'm57', 'm58', 'm59', 'm60', 'm61', 'm62', 'm63', 'm64', 'm65', 'm66')VALUES ('"..steamID.."', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0')" )
	tmysql.query( "SELECT unique_id, curr_model FROM player_stats WHERE unique_id = '"..steamID.."'", function ( result )
		if !(result) then
			Msg("Something went wrong with creating a players stats !\n")
			Msg(result)
		else
			sql_value_stats(ply)
		end
	end)
 end
 
  function new_trails(SteamID, ply)
	local steamID = SteamID
	local result = result
	tmysql.query( "INSERT INTO player_trails (`unique_id`, `curr_trail`, 'm1', 'm2', 'm3', 'm4', 'm5', 'm6', 'm7', 'm8', 'm9', 'm10', 'm11', 'm12', 'm13', 'm14', 'm15', 'm16', 'm17', 'm18', 'm19', 'm20', 'm21', 'm22', 'm23', 'm24', 'm25', 'm26', 'm27', 'm28', 'm29', 'm30', 'm31', 'm32', 'm33', 'm34', 'm35', 'm36', 'm37', 'm38', 'm39', 'm40', 'm41', 'm42', 'm43', 'm44', 'm45', 'm46', 'm47', 'm48', 'm49', 'm50', 'm51', 'm52', 'm53', 'm54', 'm55', 'm56', 'm57', 'm58', 'm59', 'm60', 'm61', 'm62', 'm63', 'm64', 'm65', 'm66')VALUES ('"..steamID.."', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0')" )
	tmysql.query( "SELECT unique_id, curr_trail FROM player_trails WHERE unique_id = '"..steamID.."'", function ( result )
		if !(result) then
			Msg("Something went wrong with creating a players trails !\n")
			Msg(result)
		else
			sql_value_stats(ply)
		end
	end)
 end
 
 function new_taunts(SteamID, ply)
	local steamID = SteamID
	local result = result
	tmysql.query( "INSERT INTO player_taunts (`unique_id`, `curr_taunt`, 'm1', 'm2', 'm3', 'm4', 'm5', 'm6', 'm7', 'm8', 'm9', 'm10', 'm11', 'm12', 'm13', 'm14', 'm15', 'm16', 'm17', 'm18', 'm19', 'm20', 'm21', 'm22', 'm23', 'm24', 'm25', 'm26', 'm27', 'm28', 'm29', 'm30', 'm31', 'm32', 'm33', 'm34', 'm35', 'm36', 'm37', 'm38', 'm39', 'm40', 'm41', 'm42', 'm43', 'm44', 'm45', 'm46', 'm47', 'm48', 'm49', 'm50', 'm51', 'm52', 'm53', 'm54', 'm55', 'm56', 'm57', 'm58', 'm59', 'm60', 'm61', 'm62', 'm63', 'm64', 'm65', 'm66')VALUES ('"..steamID.."', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0')" )
	tmysql.query( "SELECT unique_id, curr_taunt FROM player_taunts WHERE unique_id = '"..steamID.."'", function ( result )
		if !(result) then
			Msg("Something went wrong with creating a players taunts !\n")
			Msg(result)
		else
			sql_value_stats(ply)
		end
	end)
 end
 
  function new_tags(SteamID, ply)
	local steamID = SteamID
	tmysql.query( "INSERT INTO player_tags (`unique_id`, `curr_tag`, 'm1', 'm2', 'm3', 'm4', 'm5', 'm6', 'm7', 'm8', 'm9', 'm10', 'm11', 'm12', 'm13', 'm14', 'm15', 'm16', 'm17', 'm18', 'm19', 'm20', 'm21', 'm22', 'm23', 'm24', 'm25', 'm26', 'm27', 'm28', 'm29', 'm30', 'm31', 'm32', 'm33', 'm34', 'm35', 'm36', 'm37', 'm38', 'm39', 'm40', 'm41', 'm42', 'm43', 'm44', 'm45', 'm46', 'm47', 'm48', 'm49', 'm50', 'm51', 'm52', 'm53', 'm54', 'm55', 'm56', 'm57', 'm58', 'm59', 'm60', 'm61', 'm62', 'm63', 'm64', 'm65', 'm66')VALUES ('"..steamID.."', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0')" )
	tmysql.query( "SELECT unique_id, curr_tag FROM player_tags WHERE unique_id = '"..steamID.."'", function ( result )
		if !(result) then
			Msg("Something went wrong with creating a players tags !\n")
			Msg(result)
		else
			sql_value_stats(ply)
		end
	end)
 end
 
   function new_hats(SteamID, ply)
	local steamID = SteamID
	tmysql.query( "INSERT INTO player_hats (`unique_id`, `curr_hat`, 'm1', 'm2', 'm3', 'm4', 'm5', 'm6', 'm7', 'm8', 'm9', 'm10', 'm11', 'm12', 'm13', 'm14', 'm15', 'm16', 'm17', 'm18', 'm19', 'm20', 'm21', 'm22', 'm23', 'm24', 'm25', 'm26', 'm27', 'm28', 'm29', 'm30', 'm31', 'm32', 'm33', 'm34', 'm35', 'm36', 'm37', 'm38', 'm39', 'm40', 'm41', 'm42', 'm43', 'm44', 'm45', 'm46', 'm47', 'm48', 'm49', 'm50', 'm51', 'm52', 'm53', 'm54', 'm55', 'm56', 'm57', 'm58', 'm59', 'm60', 'm61', 'm62', 'm63', 'm64', 'm65', 'm66')VALUES ('"..steamID.."', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0')" )
	tmysql.query( "SELECT unique_id, curr_hat FROM player_tags WHERE unique_id = '"..steamID.."'", function ( result )
		if !(result) then
			Msg("Something went wrong with creating a players hats !\n")
			Msg(result)
		else
			sql_value_stats(ply)
		end
	end)
 end
 
   function new_donor(SteamID, ply)
	local steamID = SteamID
	local result = result
	tmysql.query( "INSERT INTO player_donator (`unique_id`, `donator`, `voice`, `filler`, `filler2`)VALUES ('"..steamID.."', '0', '0', '0', '0')" )
	tmysql.query( "SELECT unique_id, donator FROM player_donator WHERE unique_id = '"..steamID.."'", function ( result )
		if !(result) then
			Msg("Something went wrong with creating a players donor status !\n")
			Msg(result)
		else
			sql_value_stats(ply)
		end
	end)
 end
 
 function sql_value_stats ( ply )
	local steamID = ply:SteamID()
	
	tmysql.query("SELECT * FROM player_info WHERE unique_id = '"..steamID.."'", function ( info )
		ply:SetNWString("unique_id", info[1][1])
		money = tonumber(info[1][2])
		ply:SetNWInt("money", money)
		ply:SetNWInt("purchmoney", info[1][3])
	end)
	
	tmysql.query( "SELECT * FROM player_stats WHERE unique_id = '"..steamID.."'", function ( info2 )
		currmodel = tonumber(info2[1][2])
		ply:SetNWString("currmodel", ModelList[currmodel])
	end)
	
	tmysql.query( "SELECT * FROM player_trails WHERE unique_id = '"..steamID.."'", function ( info3 )
		currtrail = tonumber(info3[1][2])
		ply:SetNWString("currtrail", TrailList[currtrail])
	end)
		
	tmysql.query( "SELECT * FROM player_taunts WHERE unique_id = '"..steamID.."'", function ( info4 )
		currtaunt = tonumber(info4[1][2])
		ply:SetNWString("currtaunt", TauntList[currtaunt])
	end)
	
	tmysql.query( "SELECT * FROM player_tags WHERE unique_id = '"..steamID.."'", function ( info5 )
		currtag = tonumber(info5[1][2])
		ply:SetNWString("currtag", TagList[currtag])
	end)
	
	tmysql.query( "SELECT * FROM player_hats WHERE unique_id = '"..steamID.."'", function ( info6 )
		currhat = tonumber(info6[1][2])
		ply:SetNWString("currhat", HatList[currhat])
	end)
		
	
	--local currhat = tonumber(sql.QueryValue( "SELECT curr_hat FROM player_hats WHERE unique_id = '"..steamID.."'" ))
	--ply:SetNWString("currmodel", ModelList[currmodel])
	--ply:SetNWString("currtrail", TrailList[currtrail])
	--ply:SetNWString("currtaunt", TauntList[currtaunt])
	--ply:SetNWString("currtag", TagList[currtag])
	--ply:SetNWString("currhat", HatList[currhat])
	ply:SetNWInt("currtex", TagList[currtag])
	--ply:SetNWString("unique_id", unique_id)
	--ply:SetNWInt("money", money)
	--ply:SetNWInt("purchmoney", purchmoney)
	if ply:GetNWString("currmodel", "") ~= "" then
		ply:SetModel(ply:GetNWString("currmodel"))
	end
end

function saveStat ( ply )
	tmysql.query("UPDATE player_info SET money = "..ply:GetNWInt("money").." WHERE unique_id = '"..ply:GetNWString ("SteamID").."'")
end
 function GetDonor ( ply )
 
 	local steamID = ply:GetNWString("SteamID")
	tmysql.query( "SELECT donator FROM player_donator WHERE unique_id = '"..steamID.."'", function ( donator )
	donor = tonumber(donator[1][1])
	if donor == 1 then
		ply:SetNWBool("donator", true)
		tmysql.query("UPDATE player_tags SET m10 = 1 WHERE unique_id = '"..steamID.."'")
		tmysql.query("UPDATE player_trails SET m43 = 1 WHERE unique_id = '"..steamID.."'")
		tmysql.query("UPDATE player_trails SET m56 = 1 WHERE unique_id = '"..steamID.."'")
		tmysql.query("UPDATE player_trails SET m60 = 1 WHERE unique_id = '"..steamID.."'")
		tmysql.query("UPDATE player_stats SET m53 = 1 WHERE unique_id = '"..steamID.."'")
		tmysql.query("UPDATE player_stats SET m57 = 1 WHERE unique_id = '"..steamID.."'")
		tmysql.query("UPDATE player_taunts SET m20 = 1 WHERE unique_id = '"..steamID.."'")
		tmysql.query("UPDATE player_taunts SET m36 = 1 WHERE unique_id = '"..steamID.."'")
		tmysql.query("UPDATE player_taunts SET m37 = 1 WHERE unique_id = '"..steamID.."'")
		tmysql.query("UPDATE player_hats SET m18 = 1 WHERE unique_id = '"..steamID.."'")
		return true
	elseif donor != 1 then
		ply:SetNWBool("donator", false)
		return false
	end
	end)
end
 
  function GetVoice ( ply )
 
 	local steamID = ply:GetNWString("SteamID")
	tmysql.query( "SELECT voice FROM player_donator WHERE unique_id = '"..steamID.."'", function ( voices )
	voice = tonumber(voices[1][1])
	if voice == 1 then
		ply:SetNWBool("voicepriv", true)
		ply:SetNWBool("cantalk", true)
		return true
	elseif voice != 1 then
		ply:SetNWBool("voicepriv", false)
		ply:SetNWBool("cantalk", false)
		return false
	end
	end)
end
 
function player_exists( ply )
	
	local steamID = ply:GetNWString("SteamID")
 
	tmysql.query("SELECT unique_id, money FROM player_info WHERE unique_id = '"..steamID.."'", function ( result )
	if #result == 0 then 
		print("New_player")
		new_player( steamID, ply ) 
	end
	end)
	
	tmysql.query("SELECT unique_id, curr_model FROM player_stats WHERE unique_id = '"..steamID.."'", function ( result2 )
	if #result2 == 0 then 
		print("New_stats")
		new_stats( steamID, ply )
	end
	end)
	
	tmysql.query("SELECT unique_id, curr_trail FROM player_trails WHERE unique_id = '"..steamID.."'", function ( result3 )
	if #result3 == 0 then 
		print("New_trails")
		new_trails( steamID, ply )
	end
	end)
	
	tmysql.query("SELECT unique_id, curr_taunt FROM player_taunts WHERE unique_id = '"..steamID.."'", function ( result4 )
	if #result4 == 0 then 
		print("New_taunts")
		new_taunts( steamID, ply )
	end
	end)
	
	tmysql.query("SELECT unique_id, curr_tag FROM player_tags WHERE unique_id = '"..steamID.."'", function ( result5 )
	if #result5 == 0 then 
		print("New_tags")
		new_tags( steamID, ply )
	end	
	end)
	
	tmysql.query("SELECT unique_id, curr_hat FROM player_hats WHERE unique_id = '"..steamID.."'", function ( result6 )
	if #result6 == 0 then 
		print("New_hats")
		new_hats( steamID, ply )
	end
	end)
	
	tmysql.query("SELECT donator FROM player_donator WHERE unique_id = '"..steamID.."'", function ( result7 )
	if #result7 == 0 then 
		print("New_donor")
		new_donor( steamID, ply )
	end
	end)





	sql_value_stats(ply)
	if ply:GetNWBool("admin") == true then
		tmysql.query("UPDATE player_tags SET m13 = 1 WHERE unique_id = '"..steamID.."'")
		tmysql.query("UPDATE player_stats SET m62 = 1 WHERE unique_id = '"..steamID.."'")
	else
		tmysql.query("UPDATE player_tags SET curr_tag = 1 WHERE unique_id = '"..steamID.."'") 
		tmysql.query("UPDATE player_stats SET curr_model = 1 WHERE unique_id = '"..steamID.."'")
		tmysql.query("UPDATE player_tags SET m13 = 0 WHERE unique_id = '"..steamID.."'")
		tmysql.query("UPDATE player_stats SET m62 = 0 WHERE unique_id = '"..steamID.."'")
	end
	if string.find(file.Read("mg_dev.txt", "DATA") or "", ply:SteamID()) then
		tmysql.query("UPDATE player_tags SET m14 = 1 WHERE unique_id = '"..steamID.."'")
	end
	if string.find(file.Read("mg_donator.txt", "DATA") or "", ply:SteamID()) then
		tmysql.query("UPDATE player_tags SET m10 = 1 WHERE unique_id = '"..steamID.."'")
		tmysql.query("UPDATE player_trails SET m43 = 1 WHERE unique_id = '"..steamID.."'")
		tmysql.query("UPDATE player_trails SET m56 = 1 WHERE unique_id = '"..steamID.."'")
		tmysql.query("UPDATE player_trails SET m60 = 1 WHERE unique_id = '"..steamID.."'")
		tmysql.query("UPDATE player_stats SET m53 = 1 WHERE unique_id = '"..steamID.."'")
		tmysql.query("UPDATE player_stats SET m57 = 1 WHERE unique_id = '"..steamID.."'")
		tmysql.query("UPDATE player_taunts SET m20 = 1 WHERE unique_id = '"..steamID.."'")
		tmysql.query("UPDATE player_taunts SET m36 = 1 WHERE unique_id = '"..steamID.."'")
		tmysql.query("UPDATE player_taunts SET m37 = 1 WHERE unique_id = '"..steamID.."'")
		tmysql.query("UPDATE player_hats SET m18 = 1 WHERE unique_id = '"..steamID.."'")
		tmysql.query("UPDATE player_donator SET donator = 1 WHERE unique_id = '"..steamID.."'")
		ply:SetNWBool("donator", true)
	else
		ply:SetNWBool("donator", false)
	end
	
	GetDonor(ply) 
	GetVoice(ply) 
				
	if string.find(file.Read("mg_superdonator.txt", "DATA") or "", ply:SteamID()) then
		tmysql.query("UPDATE player_tags SET m35 = 1 WHERE unique_id = '"..steamID.."'")
	end
	
end

util.AddNetworkString( "IncomingHookModels" )
util.AddNetworkString( "IncomingHookTrails" )
util.AddNetworkString( "IncomingHookTaunts" )
util.AddNetworkString( "IncomingHookTags" )
util.AddNetworkString( "IncomingHookHats" )

function get_models(ply)
	local steamID = ply:SteamID()
	tmysql.query("SELECT * FROM player_info WHERE unique_id = '"..steamID.."'", function ( info1 )
		results1 = info1[1]
		purchmoney = tonumber(results1[3])
		ply:SetNWInt("purchmoney", purchmoney)
	end)
	tmysql.query( "SELECT * FROM player_stats WHERE unique_id = '"..steamID.."'", function ( info2 )
	net.Start( "IncomingHookModels" )
		net.WriteTable( info2[1] )
	net.Send( ply )
	end, QUERY_FLAG_ASSOC)
	timer.Simple(.1, function() get_trails( ply ) end)
end

function get_trails(ply)
	local steamID = ply:SteamID()
	tmysql.query( "SELECT * FROM player_trails WHERE unique_id = '"..steamID.."'", function ( info3 )
	net.Start( "IncomingHookTrails" )
		net.WriteTable( info3[1] )
	net.Send( ply )
	end, QUERY_FLAG_ASSOC)
	timer.Simple(.1, function() get_taunts( ply ) end)
end

function get_taunts(ply)
	local steamID = ply:SteamID()
	tmysql.query( "SELECT * FROM player_taunts WHERE unique_id = '"..steamID.."'" , function ( info4 )
	net.Start( "IncomingHookTaunts" )
		net.WriteTable( info4[1] )
	net.Send( ply )
	end, QUERY_FLAG_ASSOC)		
	timer.Simple(.1, function() get_tags( ply ) end)
end

function get_tags(ply)
	local steamID = ply:SteamID()
	tmysql.query( "SELECT * FROM player_tags WHERE unique_id = '"..steamID.."'", function ( info5 )
	net.Start( "IncomingHookTags" )
		net.WriteTable( info5[1] )
	net.Send( ply )
	end, QUERY_FLAG_ASSOC)	
	timer.Simple(.1, function() get_hats( ply ) end)
end

function get_hats(ply)
	local steamID = ply:SteamID()
	tmysql.query( "SELECT * FROM player_hats WHERE unique_id = '"..steamID.."'", function ( info6 )
	net.Start( "IncomingHookHats" )
		net.WriteTable( info6[1] )
	net.Send( ply )
	end, QUERY_FLAG_ASSOC)	
end

function Ihateyou(SteamID)
	for i = 2, 66 do 
		tmysql.query("UPDATE player_tags SET m"..i.." = 0 WHERE unique_id = '"..SteamID.."'") 
		tmysql.query("UPDATE player_hats SET m"..i.." = 0 WHERE unique_id = '"..SteamID.."'") 
		tmysql.query("UPDATE player_taunts SET m"..i.." = 0 WHERE unique_id = '"..SteamID.."'") 
		tmysql.query("UPDATE player_trails SET m"..i.." = 0 WHERE unique_id = '"..SteamID.."'") 
		tmysql.query("UPDATE player_stats SET m"..i.." = 0 WHERE unique_id = '"..SteamID.."'") 
	end 
	tmysql.query("UPDATE player_tags SET curr_tag = 1 WHERE unique_id = '"..SteamID.."'") 
	tmysql.query("UPDATE player_hats SET curr_hat = 1 WHERE unique_id = '"..SteamID.."'") 
	tmysql.query("UPDATE player_taunts SET curr_taunt = 1 WHERE unique_id = '"..SteamID.."'") 
	tmysql.query("UPDATE player_trails SET curr_trail = 1 WHERE unique_id = '"..SteamID.."'") 
	tmysql.query("UPDATE player_stats SET curr_model = 1 WHERE unique_id = '"..SteamID.."'")
end

function GiveMoney(SteamID, amount)
        tmysql.query("SELECT * FROM player_info WHERE unique_id = '"..SteamID.."'", function ( info )
			results = info[1]
			result = results[2]
			money = tonumber(result)
		end)
        tmysql.query("UPDATE player_info SET money = "..(money+amount).." WHERE unique_id = '"..SteamID.."'")
end
