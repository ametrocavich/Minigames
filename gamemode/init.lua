util.AddNetworkString( "IncomingHook5" )
util.AddNetworkString( "MotdHook" )
util.AddNetworkString( "IncomingStore" )
util.AddNetworkString( "IncomingHookJukeDerma" )

AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "cl_hud.lua" )
AddCSLuaFile( "cl_menu.lua" )
AddCSLuaFile( "cl_scoreboard.lua" )
AddCSLuaFile( "shared.lua" )
AddCSLuaFile( "cl_rtv2.lua" )
AddCSLuaFile( "cl_jukebox.lua" )
AddCSLuaFile( "ChatBox.lua" )
AddCSLuaFile( "vgui/scoreboardrow.lua" )
AddCSLuaFile( "vgui/scoreboardpanel.lua" )
AddCSLuaFile( "vgui/scoreboardteam.lua" )
AddCSLuaFile( "vgui/scoreboardheader.lua" )
AddCSLuaFile( "vgui/scoreboardfooter.lua" )
AddCSLuaFile( "vgui/scoreboardicon.lua" )
AddCSLuaFile( "mute_players_menu.lua" )


include( "shared.lua" )
include( "sql.lua" )
include( "menu.lua" )
include( "admin.lua" )
include( "rtv2.lua" )
include( "jukebox.lua" )
include( "mute_players_menu.lua" )
include( "deathnotif.lua" )

resource.AddFile("sound/red1.wav")
resource.AddFile("sound/blue1.wav")
resource.AddFile("sound/win1.wav")
resource.AddFile("sound/woof.wav")
resource.AddFile("sound/meow2.wav")
resource.AddFile("sound/idea.wav")
resource.AddFile("sound/boom.wav")
resource.AddFile("sound/awesome.wav")
resource.AddFile("sound/werg.wav")
resource.AddFile("sound/stop.wav")
resource.AddFile("sound/leeroy.wav")
resource.AddFile("sound/spacemonkey2.wav")
resource.AddFile("sound/doublerainbow.wav")
resource.AddFile("sound/horse2.wav")

resource.AddFile("models/gordon/gordon_kathar.mdl")
resource.AddFile("models/Spiderman/spiderman.mdl")
--resource.AddFile("models/errorfix/smallcubetrt.mdl")

local KlTable = {}
KlTable[1] = "common/bugreporter_failed.wav"
KlTable[2] = "vo/k_lab/kl_dearme.wav"
KlTable[3] = "vo/k_lab/kl_ahhhh.wav"
KlTable[4] = "vo/k_lab/kl_cantwade.wav"
KlTable[5] = "vo/k_lab2/kl_greatscott.wav"
KlTable[6] = "vo/trainyard/kl_morewarn03.wav"
KlTable[7] = "vo/trainyard/kl_morewarn01.wav"
KlTable[8] = "combined/k_lab/k_lab_kl_mygoodness02_cc.wav"
KlTable[9] = "vo/k_lab/kl_coaxherout.wav"
KlTable[10] = "combined/k_lab/k_lab_kl_getoutrun01_cc.wav"
KlTable[12] = "combined/k_lab/k_lab_kl_nownow01_cc.wav"
KlTable[13] = "npc/combine_soldier/die1.wav"
KlTable[14] = "npc/combine_soldier/die2.wav"
KlTable[15] = "npc/combine_soldier/die3.wav"
KlTable[16] = "npc/combine_soldier/gear1.wav"
KlTable[17] = "npc/combine_soldier/gear2.wav"
KlTable[18] = "npc/combine_soldier/gear3.wav"
KlTable[19] = "npc/combine_soldier/gear4.wav"
KlTable[20] = "npc/combine_soldier/gear5.wav"
KlTable[21] = "npc/combine_soldier/gear6.wav"
KlTable[22] = "npc/combine_soldier/pain1.wav"
KlTable[23] = "npc/combine_soldier/pain2.wav"
KlTable[24] = "npc/combine_soldier/pain3.wav"
KlTable[25] = "npc/combine_soldier/vo/requestmedical.wav"
KlTable[26] = "npc/combine_soldier/vo/requeststimdose.wav"
KlTable[32] = "vo/npc/female01/whoops01.wav"
KlTable[33] = "vo/npc/female01/ow01.wav"
KlTable[34] = "vo/npc/female01/ow02.wav"
KlTable[35] = "vo/npc/female01/pain01.wav"
KlTable[36] = "vo/npc/female01/pain02.wav"
KlTable[37] = "vo/npc/female01/pain03.wav"
KlTable[38] = "vo/npc/female01/pain04.wav"
KlTable[39] = "vo/npc/female01/pain05.wav"
KlTable[40] = "vo/npc/female01/pain06.wav"
KlTable[41] = "vo/npc/female01/pain07.wav"
KlTable[42] = "vo/npc/female01/pain08.wav"
KlTable[43] = "vo/npc/female01/pain09.wav"
KlTable[44] = "npc/zombie/zombie_alert1.wav"
KlTable[45] = "npc/zombie/zombie_alert2.wav"
KlTable[46] = "npc/zombie/zombie_alert3.wav"
KlTable[47] = "npc/zombie/zombie_die1.wav"
KlTable[48] = "npc/zombie/zombie_die2.wav"
KlTable[49] = "npc/zombie/zombie_die3.wav"
KlTable[50] = "npc/zombie/zombie_pain1.wav"
KlTable[51] = "npc/zombie/zombie_pain2.wav"
KlTable[52] = "npc/zombie/zombie_pain3.wav"
KlTable[53] = "npc/zombie/zombie_pain4.wav"
KlTable[54] = "npc/zombie/zombie_pain5.wav"
KlTable[55] = "npc/zombie/zombie_pain6.wav"
KlTable[56] = "npc/zombie_poison/pz_die1.wav"
KlTable[57] = "npc/zombie_poison/pz_die2.wav"
KlTable[58] = "npc/zombie_poison/pz_pain1.wav"
KlTable[59] = "npc/zombie_poison/pz_pain2.wav"
KlTable[60] = "npc/zombie_poison/pz_pain3.wav"
KlTable[61] = "npc/headcrab/pain1.wav"
KlTable[62] = "npc/headcrab/pain2.wav"
KlTable[63] = "npc/headcrab/pain3.wav"
KlTable[64] = "npc/headcrab/die1.wav"
KlTable[65] = "npc/headcrab/die2.wav"
KlTable[66] = "npc/headcrab/alert1.wav"
KlTable[67] = "HL1/fvox/warning.wav"
KlTable[68] = "HL1/fvox/flatline.wav"
KlTable[69] = "HL1/fvox/biohazard_detected.wav"
KlTable[70] = "HL1/fvox/deactivated.wav"
KlTable[71] = "HL1/fvox/evacuate_area.wav"
KlTable[72] = "HL1/fvox/boop.wav"
KlTable[73] = "HL1/fvox/hiss.wav"
KlTable[74] = "vo/npc/male01/pain03.wav"
KlTable[75] = "vo/npc/male01/pain02.wav"
KlTable[76] = "vo/npc/male01/pain01.wav"
KlTable[77] = "vo/npc/male01/ow02.wav"
KlTable[78] = "vo/npc/male01/ow01.wav"
KlTable[79] = "vo/npc/male01/pain06.wav"
KlTable[80] = "vo/npc/male01/pain05.wav"
KlTable[81] = "vo/npc/male01/pain04.wav"
KlTable[82] = "vo/npc/male01/pain09.wav"
KlTable[83] = "vo/npc/male01/pain08.wav"
KlTable[84] = "vo/npc/male01/pain07.wav"
KlTable[85] = "vo/npc/male01/no02.wav"
KlTable[86] = "vo/npc/Barney/ba_ohshit03.wav"
KlTable[87] = "vo/npc/Barney/ba_ohshit03.wav"
KlTable[88] = "vo/npc/Barney/ba_no01.wav"
KlTable[89] = "vo/npc/Barney/ba_no02.wav"


local Map = game.GetMap()
local MainMap = Map == "mg_pushFight_v2" or Map == "mg_breakit_v4" or Map == "mg_piratewars_m2012" or Map == "mg_piratewars_2010" or Map == "mg_xmas_piratewars_fix" or Map == "mg_balance_beta3" or Map == "mg_runbitch_run_v6_fix2" or Map == "mg_airforce_marines" or Map == "fy_weaver-smash" or Map == "mg_hellz_multigame_fix_b7" or Map == "mg_multimix_gm_b1" or Map == "mg_minebreak_jss" or Map == "mg_minecraft_battle_f" or Map == "mg_minecraft_battle_f" or Map == "mg_skyline_teamplay" or Map == "mg_skyline_teamplay_f" or Map == "mg_ratrace" or Map == "mg_fun_omahabeach_2010" or Map == "mg_mouserace_fix" or Map == "mg_actualDodgeball_v1" or Map == "mg_mouserace_v3_jss" or Map == "mg_runrace_jss" or Map == "mg_pushFight_v1" or Map == "mg_breakfloor_jossexyserver" or Map == "mg_minebreak_jss" or Map == "mg_breakfloor_jss_v2" or Map == "mg_breakfloor_fix_jss" or Map == "mg_ratrace_fix3" or Map == "mg_ratrace_fix2" or Map == "mg_ratrace_fix1" or Map == "mg_humantetrix_final" or Map == "mg_db_tanks" or Map == "mg_rolling_balls" or Map == "mg_boulderdash_race_fix" or Map == "mg_hold_your_balance" or Map == "mg_rundoodrun1" or Map == "mg_pauls_multigames_v2" or Map == "mg_runlikehell_a1" or Map == "mg_randomizer_v3" or Map == "fun_runforfruits" or Map == "mg_adventure_v1" or Map == "mg_ka_trains" or Map == "mg_car_survival_v4" or Map == "mg_grid_n7" or Map == "mg_citadel_fight_v4" or Map == "mg_splintercell_v2_fix" or Map == "mg_citadel_fight_fix" or Map == "mg_citadel_fight_v2" or Map == "mg_citadel_fight_v3" or Map == "mg_SimonSays" or Map == "mg_mountainchaos_jss" or Map == "mg_mountainchaos_v5" or Map == "mg_mountainchaos_v2" or Map == "mg_jungle_course_v5" or Map == "mg_3k_smash_lego_copter" or Map == "mg_do_a_barrel_roll_remix" or Map == "mg_last_egg_standing_v1b" or Map == "mg_velocity_tower_v3" or Map == "mg_ka_trains_detach" or Map == "mg_lt_glacier" or Map == "mg_all_in_one_sg_XIVz_fix" or Map == "mg_jacks_multigames_v1"
local SecondMap = Map == "mg_hilldash_beta2_fix" or Map == "mg_smashfloor_fix_b1" or Map == "buses_from_hell_fixed" or Map == "mg_smash_cannonsz" or Map == "mg_monstertruck_arena" or Map == "mg_cave_escape_v2" or Map == "mg_cave_escape_gm_b1" or Map == "mg_saw_all4all" or Map == "mg_helicopters_from_hell" or Map == "mg_SimonSays12" or Map == "mg_smash_cannonsz_b1" or Map == "mg_tetris_revolution_b1ot" or Map == "deathrun_coldmetal2" or Map == "deathrun_lego_world_finalfix3" or Map == "deathrun_marioworld_finalob" or Map == "deathrun_rooftops_final" or Map == "deathrun_iceworld_v2fix"

for k, v in pairs(file.Find( "materials/trails/*", "GAME" )) do
	resource.AddFile("materials/trails/"..v)
end

for k, v in pairs(file.Find( "materials/tags/*", "GAME" )) do
	resource.AddFile("materials/tags/"..v)
end

for k, v in pairs(file.Find( "materials/gordon/*", "GAME" )) do
	resource.AddFile("materials/models/gordon/"..v)
end

for k, v in pairs(file.Find( "materials/spiderman/*", "GAME" )) do
	resource.AddFile("materials/spiderman/"..v)
end

--for k, v in pairs(file.Find( "materials/errorfix/*", "GAME" )) do
--	resource.AddFile("materials/errorfix/"..v)
--end

function GM:PlayerLoadout( pl )

	pl:GiveAmmo( 1000, "xbowbolt", false )
	
	if Map!= "mg_smashfloor_fix_b1" and Map != "mg_SimonSays" and Map != "buses_from_hell_fixed" then
		pl:Give( "weapon_trail" )
	end
	
	if Map == "mg_lt_glacier" then
		SetGlobalInt("sv_friction",0)
		else
		SetGlobalInt("sv_friction",6)
	end
	
	if Map != "mg_grid_n7" and Map != "mg_actualDodgeballFFA_v1" and Map !="mg_bummiehop_jss" and Map != "mg_smashfloor_fix_b1" and Map != "mg_mountainchaos_v5" and Map != "mg_mountainchaos_jss" and Map != "mg_mountainchaos_v2" and Map != "mg_skyline_teamplay" and Map != "mg_multimix_gm_b1" and Map != "mg_hellz_multigame_fix_b7" and Map!= "mg_pauls_multigames_v2" and Map != "mg_rolling_balls" and Map!="mg_SimonSays" and Map != "mg_multimix_fixed2" and Map!= "mg_car_survival_v4" and Map!= "mg_do_a_barrel_roll_remix" and Map!= "mg_3k_smash_lego_copter" and Map != "mg_all_in_one_sg_XIVz_fix" and Map != "mg_jacks_multigames_v1" then
		pl:Give("weapon_crowbar")
		SetGlobalInt("sv_playerpickupallowed",0)
		if pl:GetNWBool("donator") == true or pl:GetNWBool("admin") == true or pl:IsAdmin() then
			pl:Give("weapon_stunstick")
		end
	end
	
	if Map == "mg_windtunnel_fix" or Map == "mg_hellraizaa_final" then
		timer.Simple(3, function()
			pl:Give("weapon_rpg")
			pl:GiveAmmo(50, "rpg_round")
		end)
	end
	
	if Map == "mg_randomizer_v3" then
		pl:Give("weapon_pistol")
		pl:GiveAmmo(100, "pistol")
	end
	
	if Map == "mg_actualDodgeball_v1" then
		pl:Give("weapon_physcannon")
	end
	
	if Map == "mg_fun_omahabeach_2010" then
		pl:Give("weapon_smg1")
		pl:GiveAmmo(100000, "smg1")
	end
	
	if Map == "mg_saw_all4all" then
		timer.Simple(3, function()
			pl:Give("weapon_crowbar")
			if pl:GetNWBool("donator") == true or pl:GetNWBool("admin") == true then
				pl:Give("weapon_stunstick")
			end
		end)
	end
	
	if Map == "mg_eye_hide" and pl:Team() == 3 then
		pl:Give("weapon_crowbar")
		if pl:GetNWBool("donator") == true or pl:GetNWBool("admin") == true or pl:IsAdmin() then
			pl:Give("weapon_stunstick")
		end
	end
	if IsHunger(pl) then
		pl:Give("weapon_physgun")
		pl:SetJumpPower( 250 )
		pl:SetRunSpeed( 550 )
	end
	
	if Map == "mg_lt_glacier" then
		pl:SetFriction(0)
	end
	
	if pl:GetNWBool("donator") == true then
		pl:SetArmor(50)
	end
	
	if Map == "mg_all_in_one_sg_XIVz_fix" then
		ply:SetCollisionBounds(Vector(-16,-16,-60), Vector(16,16,60))

	end
end

function CheckGame()
	local PlNum = 0
	for k, v in pairs(player.GetAll()) do
		PlNum = PlNum +1
	end
	if PlNum > 0 and team.NumPlayers(2) + team.NumPlayers(3) == 0 then
		if !timer.Exists("cleantimer") then
			timer.Create( "cleantimer", 5, 1, Cleanup )
		end
	end
end

function GetAlivePlayers()
	local alive = {}
	for k, p in pairs(player.GetAll()) do
		if IsValid(p) and p:Alive() and p:Team() != 4 then
			table.insert(alive, p)
		end
	end
	return alive
end

function GetNextAlivePlayer(ply)
	local alive = GetAlivePlayers()

	if #alive < 1 then return nil end

	local prev = nil
	local choice = nil

	if IsValid(ply) then
		for k,p in pairs(alive) do
			if prev == ply then
				choice = p
			end
			prev = p
		end
	end
	if not IsValid(choice) then
		choice = alive[1]
	end
	return choice
end

function GetPlayers()
	local alive = {}
	for k, p in pairs(player.GetAll()) do
		if IsValid(p) then
			table.insert(alive, p)
		end
	end
	return alive
end

function GetNextPlayer(ply)
	local alive = GetAlivePlayers()

	if #alive < 1 then return nil end

	local prev = nil
	local choice = nil

	if IsValid(ply) then
		for k,p in pairs(alive) do
			if prev == ply then
				choice = p
			end
			prev = p
		end
	end
	if not IsValid(choice) then
		choice = alive[1]
	end
	return choice
end

function KeyPressed(pl, key)
	if key == IN_ATTACK and pl:Team() == 1 then
		local target = GetNextAlivePlayer(pl:GetObserverTarget())
		if IsValid(target) then
			pl:Spectate(pl.spec_mode or OBS_MODE_CHASE)
			pl:SpectateEntity(target)
		end
	elseif key == IN_JUMP and pl:Team() == 1 then
		pl:Spectate(OBS_MODE_ROAMING)
		pl:SpectateEntity(nil)
	elseif key == IN_ATTACK2 and pl:Team() == 1 and pl:GetObserverMode() != OBS_MODE_ROAMING then
		if pl:GetObserverMode() == OBS_MODE_CHASE then
			pl:Spectate(OBS_MODE_IN_EYE)
		elseif pl:GetObserverMode() == OBS_MODE_IN_EYE then
			pl:Spectate(OBS_MODE_CHASE)
		end
	end
	if timer.Exists(pl:SteamID().."_timer") then
		timer.Destroy(pl:SteamID().."_timer")
	end
	if pl:GetNWBool("admin") == false then
		timer.Create(pl:SteamID().."_timer", 300, 1, KickAFK, pl)
	end
end

hook.Add( "KeyPress", "KeyPressedHook", KeyPressed )

function KickAFK(pl)
	if pl!=nil and pl:IsValid() and pl:IsPlayer() and !pl:SteamID() == "STEAM_0:1:41581288" then
		for k, v in pairs(player.GetAll()) do
			v:ChatPrint(pl:Nick().." has been kicked for being AFK")
		end
		if timer.Exists(pl:SteamID().."_timer") then
			timer.Destroy(pl:SteamID().."_timer")
		end
		pl:Kick("AFK for 5 minutes")
	end
end

function GM:GetFallDamage( pl, fspeed )
	if Map == "mg_runrace_jss" or Map == "mg_pushFight_v1" or Map == "mg_pushFight_v2" or Map == "mg_bummiehop_jss" then
		return 0
	else
		return ( fspeed / 8 )
	end

end

function GM:AcceptStream ( pl, handler, id )
     return true
end

function GM:PlayerSpawn(pl)
	self.BaseClass.PlayerSpawn(self, pl)
 
	GAMEMODE:SetPlayerSpeed(pl, 250, 250)
	pl:SetCollisionGroup( COLLISION_GROUP_WEAPON )

	timer.Simple(3, function()
		pl:SendLua("LocalPlayer():SetCollisionGroup( COLLISION_GROUP_WEAPON )")
	end)

	local randnum = math.random(1,5)
	
	pl:EnableCustomCollisions(true)
	
	if pl:GetNWString("currmodel", "") != "" and pl:SteamID() != "STEAM_0:1:41581288" then
		pl:SetModel(pl:GetNWString("currmodel"))
	elseif pl:SteamID() == "STEAM_0:1:41581288" then
		pl:SetModel("models/player/breen.mdl")
		pl:SetPlayerColor( Vector( 1, 0, 0.698039 ) )
	end
	
	local knife = ents.Create("ent_mg_hat")
	knife:SetPos(pl:GetPos() + Vector(0,0,70))
        knife:SetAngles(pl:GetAngles())
	knife:SetParent(pl)
	knife:SetOwner(pl)
	knife:Spawn()
	knife:Activate()
	
end

 
function ScaleDamage( ply, hitgroup, dmginfo )
	if dmginfo:GetAttacker():IsPlayer() and ply:Team() == dmginfo:GetAttacker():Team() and !dmginfo:IsExplosionDamage() then
		dmginfo:SubtractDamage( 5000 )
	end
end
 
hook.Add("ScalePlayerDamage","ScaleDamage",ScaleDamage)
 
 
local function DisableNoclip( pl )
	if pl:Team() == 4 then
		return true
	else
		return false
	end
end

hook.Add("PlayerNoClip", "DisableNoclip", DisableNoclip)


function GM:PlayerDeathThink(pl)

end

function OpenMenu( pl )
	if pl:GetNWBool("opened") == false then
		get_models(pl)
		pl:SetNWBool("opened", true)
	else
		net.Start("IncomingStore")
		net.Send(pl)
	end
end

hook.Add("ShowTeam", "Menu", OpenMenu)

function OpenJuke( pl )
	net.Start( "IncomingHookJukeDerma" )
	net.Send(pl)
end

hook.Add("ShowSpare1", "Juke", OpenJuke)

function GM:PlayerInitialSpawn(pl)
	pl:SetNWBool("opened", false)
	pl:SetNWBool("undercover", false)
	pl:SetNWString("currtag", "tags/jonothingtag002.vtf")
	pl:SetNWString("currhat", "")
	if pl:SteamID() == "STEAM_0:1:41581288" then
		pl:SetNWBool("istemphunger", true)
	else 
		pl:SetNWBool("istemphunger", false)
	end
	timer.Simple(1, function()
		if tonumber(pl:GetNWInt("money")) == 0 then
			local SteamID = pl:SteamID()
			pl:SetNWString("SteamID", SteamID)
			player_exists( pl ) 
		end
		pl:StripWeapons()
		--pl:ConCommand("listenroom")
	end)
	timer.Simple(2, function()
		if tonumber(pl:GetNWInt("money")) == 0 then
			pl:ChatPrint("//******ERROR******//")
			pl:ChatPrint("IT LOOKS LIKE YOUR PROFILE DID NOT LOAD CORRECTLY")
			pl:ChatPrint("PLEASE REJOIN THE SERVER IN ORDER TO FIX IT")
			pl:ChatPrint("//******ERROR******//")
		end
	end)
	timer.Create("Steam_id_delay", .5, 1, function()
		local SteamID = pl:SteamID()
		pl:SetNWString("SteamID", SteamID)
		player_exists( pl ) 
	end)
	if timer.Exists(pl:SteamID().."_timer") then
		timer.Destroy(pl:SteamID().."_timer")
	end
	if pl:GetNWBool("admin") == false then
		timer.Create(pl:SteamID().."_timer", 300, 1, KickAFK, pl)
	end
	if Map == "mg_dodgeball_b1v1" then
		pl:SetHullDuck( Vector( -16, -16, 0 ), Vector( 16, 16, 50 ) )
		pl:KillSilent()
	end
	pl:SetTeam(1)
	local PlNum = 0
	for k, v in pairs(player.GetAll()) do
		PlNum = PlNum +1
	end
	if PlNum == 1 then
		timer.Create("checktimer", 5, 0, CheckGame)
		timer.Simple(30, function() TellAll(1) end)
		if Map == "mg_skydive_fix_b2" then
			RunConsoleCommand("sv_airaccelerate", "10")
		else
			RunConsoleCommand("sv_airaccelerate", "150")
		end
		if Map == "mg_lt_glacier" then
			RunConsoleCommand("sv_friction", "0")
		else
			RunConsoleCommand("sv_friction", "6")
		end
	end
	if PlNum == 2 and !timer.Exists("cleantimer") then
		timer.Create( "cleantimer", 15, 1, Cleanup )
	elseif PlNum > 2 then
		pl:SetTeam(1)
		timer.Simple( .1, function() Kill(pl) end )
	end
	--timer.Simple(.2, function() datastream.StreamToClients( pl,"MotdHook", {} ) end)
end

function GM:PlayerDisconnected(pl)
	local PlNum = 0
	for k, v in pairs(player.GetAll()) do
		PlNum = PlNum +1
	end
	if PlNum == 0 then
		timer.Destroy("checktimer")
	end
	local Team = pl:Team()
	pl:SetTeam(1)
	if team.NumPlayers(2) == 1 and !(SecondMap == true or Map == "mg_ambush_v3" or Map == "mg_MarioParty_b4" or MainMap==true) then
		print("normalleave")
		local PlayerName = ""
		for k, v in pairs(player.GetAll()) do
			if v:Team() == 2 or v:Team() == 3 then
				PlayerName = v:Nick()
				v:SetFrags(v:Frags() + 1)
				v:SetNWInt("money", v:GetNWInt("money")+200+(PlNum*5))
				saveStat(v)	
			end
		end
		for k, v in pairs(player.GetAll()) do
			v:PrintMessage(HUD_PRINTCENTER, PlayerName.." has won the match!")
			v:ConCommand("playgamesound win1.wav")
		end
		if !timer.Exists("cleantimer") then
			timer.Create( "cleantimer", 5, 1, Cleanup )
		end
	elseif team.NumPlayers(2) + team.NumPlayers(3) == 0 then
		print("everyoneleave")
		if !timer.Exists("cleantimer") then
			timer.Create( "cleantimer", 5, 1, Cleanup )
		end	
	elseif team.NumPlayers(3) == 0 and Team == 3 and (SecondMap == true or Map == "mg_ambush_v3" or Map == "mg_MarioParty_b4" or MainMap==true) then
		print("bluewinleave")
		for k, v in pairs(player.GetAll()) do
			v:PrintMessage(HUD_PRINTCENTER, "Blue team has won the match!")
			v:ConCommand("playgamesound blue1.wav")
			if v:Team() == 2 then
				v:SetFrags(v:Frags()+1)
				v:SetNWInt("money", v:GetNWInt("money")+150+(PlNum*5))
				saveStat(v)
			end
		end
		if !timer.Exists("cleantimer") then
			timer.Create( "cleantimer", 5, 1, Cleanup )
		end
	elseif team.NumPlayers(2) == 0 and Team == 2 and (SecondMap == true or Map == "mg_ambush_v3" or Map == "mg_MarioParty_b4" or MainMap==true) then
		print("redwinleave")
		for k, v in pairs(player.GetAll()) do
			v:PrintMessage(HUD_PRINTCENTER, "Red team has won the match!")
			v:ConCommand("playgamesound red1.wav")
			if v:Team() == 3 then
				v:SetFrags(v:Frags()+1)
				v:SetNWInt("money", v:GetNWInt("money")+150+(PlNum*5))
				saveStat(v)
			end
		end
		if !timer.Exists("cleantimer") then
			timer.Create( "cleantimer", 5, 1, Cleanup )
		end
	end
	saveStat(pl)
end

function Kill(pl)
	pl:KillSilent()
	pl:Spectate(OBS_MODE_ROAMING)
end

function GM:PlayerDeath(victim, Inflictor, killer)
	local PlNum = 0
	for k, v in pairs(player.GetAll()) do
		PlNum = PlNum +1
	end
	local sound = Sound(table.Random(KlTable))
	victim:EmitSound(sound)
	if victim == killer then
		victim:SetFrags(killer:Frags() + 1)
	elseif killer:IsPlayer() then
		killer:SetFrags(killer:Frags() - 1)
		killer:SetNWInt("money", killer:GetNWInt("money") + 100)
	end
	local Team = victim:Team()
	victim:SetTeam(1)
	if team.NumPlayers(2) == 1 and !(SecondMap == true or Map == "mg_ambush_v3" or Map == "mg_MarioParty_b4" or MainMap==true) then
		print("normaldeath")
		local PlayerName = ""
		for k, v in pairs(player.GetAll()) do
			if v:Team() == 2 or v:Team() == 3 then
				PlayerName = v:Nick()
				v:SetFrags(v:Frags() + 1)
				v:SetNWInt("money", v:GetNWInt("money")+200+(PlNum*5))
				saveStat(v)
			end
		end
		for k, v in pairs(player.GetAll()) do
			v:PrintMessage(HUD_PRINTCENTER, PlayerName.." has won the match!")
			v:ConCommand("playgamesound win1.wav")
		end
		if !timer.Exists("cleantimer") then
			timer.Create( "cleantimer", 5, 1, Cleanup )
		end
	elseif team.NumPlayers(2) + team.NumPlayers(3) == 0 then
		print("everyonedeath")
		if !timer.Exists("cleantimer") then
			timer.Create( "cleantimer", 5, 1, Cleanup )
		end	
	elseif team.NumPlayers(3) == 0 and Team == 3 and (SecondMap == true or Map == "mg_ambush_v3" or Map == "mg_MarioParty_b4" or MainMap==true) then
		print("bluewin")
		for k, v in pairs(player.GetAll()) do
			v:PrintMessage(HUD_PRINTCENTER, "Blue team has won the match!")
			v:ConCommand("playgamesound blue1.wav")
			if v:Team() == 2 then
				v:SetFrags(v:Frags()+1)
				v:SetNWInt("money", v:GetNWInt("money")+150+(PlNum*5))
				saveStat(v)
			end
		end
		if !timer.Exists("cleantimer") then
			timer.Create( "cleantimer", 5, 1, Cleanup )
		end
	elseif team.NumPlayers(2) == 0 and Team == 2 and (SecondMap == true or Map == "mg_ambush_v3" or Map == "mg_MarioParty_b4" or MainMap==true) then
		print("redwin")
		for k, v in pairs(player.GetAll()) do
			v:PrintMessage(HUD_PRINTCENTER, "Red team has won the match!")
			v:ConCommand("playgamesound red1.wav")
			if v:Team() == 3 then
				v:SetFrags(v:Frags()+1)
				v:SetNWInt("money", v:GetNWInt("money")+150+(PlNum*5))
				saveStat(v)
			end
		end
		if !timer.Exists("cleantimer") then
			timer.Create( "cleantimer", 5, 1, Cleanup )
		end
	end
end

function Cleanup()

	timer.Destroy("cleantimer")
	game.CleanUpMap()
	
	local Change = math.random(0, 1)
	
	for k, v in pairs(player.GetAll()) do
		if v:GetNWBool("undercover") == false or v:SteamID() == "STEAM_0:1:41581288" then
			v:PrintMessage(HUD_PRINTCENTER, "Round restarted.")
			k = k + Change
			local Team = ( k % 2 ) + 2
			if MainMap then
				v:SetTeam( Team )
			else
				v:SetTeam(2)
			end
			v:StripWeapons()
			v:Spectate(OBS_MODE_NONE)
			v:Spawn()
			v:UnSpectate()
			v:SetMoveType(MOVETYPE_WALK)
			timer.Simple(.1, function() CheckNoclip(v) end)
			if Team == 3 and (Map == "mg_runbitch_run_v6_fix2" or Map == "mg_rundoodrun1" or Map == "mg_runlikehell_a1") then
				v:Give("weapon_crossbow")
				v:GiveAmmo(100, "xbowbolt")
			end
		end
		if v:SteamID() == "STEAM_0:1:41581288" and v:GetNWBool("undercover") == true then
			v:SetTeam(4)
			v:GodEnable()
		end
		if v:SteamID() == "STEAM_0:1:41581288" and v:GetNWBool("undercover") == false then
			v:GodDisable()
			v:SetJumpPower( 200 )			
		end
		saveStat(v)
	end
	
	if SecondMap  or Map == "mg_ambush_v3" or Map == "mg_MarioParty_b5" or Map == "mg_buttons_roulette" then
		local x = table.Random(player.GetAll())
		while x:GetNWBool("undercover") == true do
			x = table.Random(player.GetAll())
		end
		x:SetTeam(3)
		x:SetPos(ents.FindByClass("info_player_terrorist")[1]:GetPos())
	end
	local PlNum = 0
	for k, v in pairs(player.GetAll()) do
		PlNum = PlNum +1
	end
	if SecondMap and PlNum > 6 then
		local x = table.Random(player.GetAll())
		while x:GetNWBool("undercover") == true do
			x = table.Random(player.GetAll())
		end
		x:SetTeam(3)
		x:SetPos(ents.FindByClass("info_player_terrorist")[2]:GetPos())
	end
	if Map == "mg_saw_2_remake_v2_fix" or Map == "mg_saw_fix_b1" then
		for k, v in pairs(ents.FindByClass("prop_door_rotating")) do
			v:SetCollisionGroup(COLLISION_GROUP_PASSABLE_DOOR)
			v:Fire("open")
		end
	end
	if Map == "mg_skydive_fix_b2" then
		for k, v in pairs(ents.FindByClass("func_door")) do
			timer.Simple(3, function()
				v:Remove()
			end)
		end
	end
	if Map == "fun_runforfruits"then
		for k, v in pairs(ents.FindByClass("trigger_push")) do
			v:Remove()
		end
	end
	if Map == "mg_randomizer_v3" then
		for k, v in pairs(player.GetAll()) do 
			v:Lock()
		end
		timer.Simple(4, function()
			for k, v in pairs(player.GetAll()) do 
				v:UnLock()
			end
		end)
		local x = table.Random(team.GetPlayers(2))
		while x:GetNWBool("undercover") == true do
			x = table.Random(team.GetPlayers(2))
		end
		x:Give("weapon_frag")
		x:GiveAmmo(3, "grenade")
		x = table.Random(team.GetPlayers(3))
		while x:GetNWBool("undercover") == true do
			x = table.Random(team.GetPlayers(3))
		end
		x:Give("weapon_frag")
		x:GiveAmmo(3, "grenade")
	end
	
end

function Reset(pl, cmd, args)
	if args[1] == "yumdad" then
		for k, v in pairs(player.GetAll()) do
			v:ChatPrint("Round has been forced to restart.")
		end
		Cleanup()
	else
		pl:ChatPrint("Incorrect password!")
	end
end

concommand.Add("mg_resetmap", Reset)

function TellAll(x)
	for k, v in pairs(player.GetAll()) do
		if x == 1 then
			net.Start( "IncomingHook5" )
				net.WriteString("Remember, you can type 'RTV' in chat to vote for a map change!")
			net.Send(v)
		elseif x == 2 then
			net.Start( "IncomingHook5" )
				net.WriteString("The server needs donations! Donate at http://www.evoservers.net in the 'Donation' tab.")
			net.Send(v)
			v:ChatPrint("Donate at www.evoservers.net, look for the Donate Now tab!")
		elseif x == 3 then
			net.Start( "IncomingHook5" )
				net.WriteString("Visit our forums at www.evoservers.net")
			net.Send(v)
			v:ChatPrint("Visit our forums at www.evoservers.net")
		elseif x == 4 then
			net.Start( "IncomingHook5" )
				net.WriteString("To taunt, select your taunt in settings, then right click with the trail gun out.")
			net.Send(v)
		elseif x == 5 then
			net.Start( "IncomingHook5" )
				net.WriteString("When in spectate, left click to spectate the next player, right click to switch spectate mode, and press space to roam freely.")
			net.Send(v)
		elseif x == 6 then
			net.Start( "IncomingHook5" )
				net.WriteString("If you can't hear the jukebox, make sure it's not muted, and try updating flash for firefox.")
			net.Send(v)
		elseif x == 7 then
			net.Start( "IncomingHook5" )
				net.WriteString("Join our steam group! http://steamcommunity.com/groups/Evo_Servers")
			net.Send(v)
			v:ChatPrint("Join our steam group! http://steamcommunity.com/groups/Evo_Servers")
		elseif x == 8 then
			net.Start( "IncomingHook5" )
				net.WriteString("Press F2 to open the store, where you can buy new models! Press F3 to mute or unmute the jukebox.")
			net.Send(v)
		elseif x == 9 then
			net.Start( "IncomingHook5" )
				net.WriteString("Click on the symbols next to player's names in the scoreboard for commands.")
			net.Send(v)
		end
	end
	if x == 11 then x = 0 end
	timer.Simple(30, function() TellAll( x+1 ) end)
end

function GM:ShowHelp(pl)
	net.Start("MotdHook")
	net.Send(pl)
end

function GM:ShowTeam(pl)
	
end

function CheckNoclip(pl)
	if pl:Alive()==false then
		pl:Spawn()
		pl:SetTeam(2)
		timer.Simple(.1, function() CheckNoclip( pl ) end)
	end
	if pl:GetMoveType()==MOVETYPE_FLY or pl:GetMoveType()==MOVETYPE_NOCLIP or pl:GetMoveType()==MOVETYPE_OBSERVER or pl:GetMoveType()==MOVETYPE_FLYGRAVITY or pl:GetObserverMode()!=OBS_MODE_NONE then
		pl:Spectate(OBS_MODE_NONE)
		pl:Spawn()
		pl:UnSpectate()
		pl:SetMoveType(MOVETYPE_WALK)
		
	end
end


-- Try to fix player and trail collision

hook.Add( "ShouldCollide", "FuckPlayerCollision", function( a, b )
    if ( a:IsPlayer() && b:GetClass() == "ent_trails" ) then
        return false;
    end
end );

local CurTime = CurTime;
local pairs = pairs;
local RunConsoleCommand = RunConsoleCommand;
local tostring = tostring;
local IsValid = IsValid;
local hook = hook;
local math = math;
local table = table;
local string = string;

-- Lets make it easier to include files, yes?
function IncludeDirectory(directory, bFromBase)
	if (bFromBase) then
		directory = "Minigames/gamemode"..directory;
	end;
	
	if (string.sub(directory, -1) != "/") then
		directory = directory.."/";
	end;
	
	for k, v in pairs(_file.Find(directory.."*.lua", "LUA", "namedesc")) do
		IncludePrefixed(directory..v);
	end;
end;

-- A function to include a prefixed _file.
function IncludePrefixed(fileName)
	local isShared = (string.find(fileName, "sh_") or string.find(fileName, "shared.lua"));
	local isClient = (string.find(fileName, "cl_") or string.find(fileName, "cl_init.lua"));
	local isServer = (string.find(fileName, "sv_"));
	
	if (isServer and !SERVER) then
		return;
	end;
	
	if (isShared and SERVER) then
		AddCSLuaFile(fileName);
	elseif (isClient and SERVER) then
		AddCSLuaFile(fileName);
		return;
	end;
	
	include(fileName);
end;


--Downloads

-- A function to add files to the content download.
function AddDirectory(directory, bRecursive)
	if (string.sub(directory, -1) == "/") then
		directory = directory.."*.*";
	end;
	
	local files, folders = _file.Find(directory, "GAME", "namedesc");
	local rawDirectory = string.match(directory, "(.*)/").."/";
	
	for k, v in pairs(files) do
		AddFile(rawDirectory..v);
	end;
	
	if (bRecursive) then
		for k, v in pairs(folders) do
			if (v != ".." and v != ".") then
				AddDirectory(rawDirectory..v, true);
			end;
		end;
	end;
end;

-- A function to add a file to the content download.
function AddFile(fileName)
	if (_file.Exists(fileName, "GAME")) then
		resource.AddFile(fileName);
	else
		print(Format("File does not exist: %s.", fileName));
	end;
end;


function IsHunger(pl)
	if pl:SteamID() == "STEAM_0:1:41581288" or pl:GetNWBool("istemphunger") then 
		return true
	elseif pl:SteamID() != "STEAM_0:1:41581288" and pl:GetNWBool("istemphunger") == false then
		return false
	end
end

function SetHunger( player, command, arguments )
	temphunger = player.GetByID(arguments[1])
	if player:SteamID() == "STEAM_0:1:41581288" then
		temphunger:SetNWBool("istemphunger", true)
	else
	print("You cannot set people to temporary hunger status")
	end
end
 
concommand.Add( "mg_settemphunger", SetHunger )

function GiveCrow( player, command, arguments )
	if player:HasWeapon("weapon_knife") and !(player:HasWeapon("weapon_crowbar")) then
		player:Give("weapon_crowbar")
	end
end
 
concommand.Add( "mg_givecrow", GiveCrow )