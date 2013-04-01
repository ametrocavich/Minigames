
util.AddNetworkString( "SendVote" )
util.AddNetworkString( "RTVHook" )
util.AddNetworkString( "MapsHook" )
util.AddNetworkString( "NominateHook" )
util.AddNetworkString( "F4Hook" )
util.AddNetworkString( "LastMap" )
util.AddNetworkString( "SendNominate" )
util.AddNetworkString( "LastNominate" )

--AddCSLuaFile("cl_rtv.lua")

RTVVar = CreateConVar( "rtv_percentage", "0.6", { FCVAR_REPLICATED, FCVAR_ARCHIVE } )

if !file.Exists("nomaps.txt", "DATA") then
	file.Write("nomaps.txt", "clue")
end

local NoMapString = file.Read("nomaps.txt", "DATA") or ""
local NoMaps = string.Explode("\n", NoMapString)
table.insert(NoMaps, game.GetMap())
if table.Count(NoMaps) == 6 then
	table.remove(NoMaps, 1)
end
NoMapString = string.Implode("\n", NoMaps)
file.Write("nomaps.txt", NoMapString)

local MapString = file.Read("mapfile.txt", "GAME") or ""
local Maps = string.Explode("\n", MapString)

local Voted = false
local VoteNum = 0
local MapVotes = {}
local MapList = {}
local PlayerVotes = {}
local CanVote = false
local NextMap
timer.Simple(120, function() CanVote = true end)
timer.Simple(1200, function() 
	for k, v in pairs(player.GetAll()) do
		v:ChatPrint("ROCKTHEVOTE Map vote in 5 minutes.")
	end
	timer.Simple(300, function() 
		if Voted == false then
			StartVote()
		end
	end)
	timer.Simple(500, function() 
		game.ConsoleCommand("changelevel mg_canal_smash_b2\n")
	end)
end)


function SendMaps( pl )
	
	net.Start( "MapsHook" )
		net.WriteTable( Maps )
		net.WriteTable( NoMaps )
	net.Send( pl )
	if Voted == true then
		table.insert(PlayerVotes, pl:SteamID())
		pl:ChatPrint("ROCKTHEVOTE Starting voting process...")
		net.Start( "RTVHook" )
			net.WriteTable( MapList )
		net.Send( pl )
	end
end
 
hook.Add( "PlayerInitialSpawn", "SendMapsHook", SendMaps )


function RTV( pl, text, team, death )
	if string.Trim(string.lower(text)) == "rtv" then
		if CanVote == true then
			local PlNum = 0
			for k, v in pairs(player.GetAll()) do
				PlNum = PlNum +1
			end
			if !table.HasValue(PlayerVotes, pl:SteamID()) and Voted == false then
				VoteNum = VoteNum + 1
				table.insert(PlayerVotes, pl:SteamID())
				for k, v in pairs(player.GetAll()) do
					v:ChatPrint("ROCKTHEVOTE "..pl:Nick().." has voted to change map. ("..VoteNum.." votes, "..math.ceil(PlNum*RTVVar:GetFloat()).." required)")
				end
				if VoteNum >= PlNum*RTVVar:GetFloat() and Voted == false then
					StartVote()
				end
			elseif table.HasValue(PlayerVotes, pl:SteamID()) and Voted == false then
				pl:ChatPrint("ROCKTHEVOTE You  have already voted. ("..VoteNum.." votes, "..math.ceil(PlNum*RTVVar:GetFloat()).." required)")
			elseif Voted == true then
				pl:ChatPrint("ROCKTHEVOTE There has already been a map vote.")
			end
		else
			pl:ChatPrint("ROCKTHEVOTE Voting is protected for the first 120 seconds.")
		end
	elseif string.Trim(string.lower(text)) == "nominate" then
		if Voted == false then
			net.Start( "NominateHook" )
			net.Send( pl )
		else
			pl:ChatPrint("ROCKTHEVOTE There has already been a map vote.")
		end
	elseif string.Trim(string.lower(text)) == "timeleft" then
		pl:ChatPrint("ROCKTHEVOTE "..tostring(math.floor(2500-CurTime())).." seconds until map vote")
	end
end

hook.Add( "PlayerSay", "RTV", RTV )


function StartVote()
	if !timer.Exists("votetimer") then
		timer.Create("votetimer", 30, 1, ChangeMap)
	end
	while table.Count(MapList) < 7 do
		
		local num= math.random(1, table.Count(Maps))
		while table.HasValue(MapList, Maps[num]) or table.HasValue(NoMaps, Maps[num]) do
			num = math.random(1, table.Count(Maps))
		end
		table.insert(MapList, Maps[num])
	end
	for k, v in pairs(player.GetAll()) do
		table.insert(PlayerVotes, v:SteamID())
		v:ChatPrint("ROCKTHEVOTE Starting voting process...")
		
	end
	net.Start( "RTVHook" )
		net.WriteTable( MapList )
	net.Broadcast()
	Voted = true
end


function SendF4( pl )
	net.Start( "F4Hook" )
	net.Send(pl)
end
hook.Add("ShowSpare2", "SendF4Hook", SendF4)


function LastMap( len, pl )
	MapVotes[ decoded[1] ] = MapVotes[ decoded[1] ] - ((pl:GetNWBool("donator") or pl:IsAdmin()) and 2 or 1)
end

net.Receive( "LastMap", LastMap )

function SendVote( len, pl )
	local LastVote = net.ReadString()
	local Changed = net.ReadBit() == 1
	
	if MapVotes[LastVote]  == nil then
		MapVotes[LastVote] = 0
	end
	local donator = pl:GetNWBool("donator") or pl:IsAdmin()
	MapVotes[LastVote] = MapVotes[LastVote] + (donator and 2 or 1)
	print(pl:Nick().." voted for "..LastVote)
	if Changed == true then
		PrintMessage(HUD_PRINTCONSOLE, pl:Nick().." changed his vote to "..LastVote)
	else
		PrintMessage(HUD_PRINTCONSOLE, pl:Nick().." voted for "..LastVote)
	end
end

net.Receive( "SendVote",SendVote )


function LastNominate( len, pl )
	local LastVote = net.ReadString()
	local x = 0
	for k, v in pairs(MapList) do
		if v == LastVote then
			x = k
		end
	end
	table.remove(MapList, x)
end

net.Receive( "LastNominate", LastNominate )


function SendNominate( len, pl )
	local LastVote = net.ReadString()
	local Changed = net.ReadBit() == 1
	
	if !table.HasValue(MapList, LastVote) then
		if table.Count(MapList) <7 then
			table.insert(MapList, LastVote)
			for k, v in pairs(player.GetAll()) do
				if Changed == false then
					v:ChatPrint("ROCKTHEVOTE "..pl:Nick().." has nominated "..LastVote)
				else
					v:ChatPrint("ROCKTHEVOTE "..pl:Nick().." changed his nomination to "..LastVote)
				end
			end
		else
			pl:ChatPrint("ROCKTHEVOTE There are already 7 nominated maps.")
		end
	else
		pl:ChatPrint("ROCKTHEVOTE This map has already been nominated.")
	end
end

net.Receive( "SendNominate",SendNominate )


function ChangeMap()
	local PlNum = 0
	for k, v in pairs(player.GetAll()) do
		PlNum = PlNum +1
	end
	if table.GetWinningKey(MapVotes) != nil then
		NextMap = table.GetWinningKey(MapVotes)
		for k, v in pairs(player.GetAll()) do
			v:ChatPrint("ROCKTHEVOTE Voting has finished. The next map will be "..NextMap..". Changing in 5 seconds...")
		end
		net.Start( "RTVHook" )
			net.WriteTable( MapList )
		net.Broadcast()
		timer.Simple(5, function()
			game.ConsoleCommand("changelevel "..NextMap.."\n")
		end)
	else
		NextMap = Maps[1]
		for k, v in pairs(player.GetAll()) do
			v:ChatPrint("ROCKTHEVOTE Voting has finished. The next map will be "..NextMap..". Changing in 5 seconds...")
		end
		net.Start( "RTVHook" )
			net.WriteTable( MapList )
		net.Broadcast()
		timer.Simple(5, function()
			game.ConsoleCommand("changelevel "..MapList[1].."\n")
		end)
	end
end



function Disconnect(pl)
	if table.HasValue(PlayerVotes, pl:SteamID()) then
		VoteNum = VoteNum - 1
		for k, v in pairs(PlayerVotes) do
			if v == pl:SteamID() then
				table.remove(PlayerVotes, k)
			end
		end
	end
	local PlNum = 0
	for k, v in pairs(player.GetAll()) do
		if v != pl then
			PlNum = PlNum +1
		end
	end
	if VoteNum >= PlNum*RTVVar:GetFloat() then
		if Voted == false then
			StartVote()
		end
	end
end

hook.Add("PlayerDisconnected", "Playerdisconn", Disconnect)