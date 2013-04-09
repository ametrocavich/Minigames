function Init_Gamemode()
	surface.CreateFont( "sprayfont", {
		font 		= "Default",
		size 		= 15,
		weight 		= 700,
		antialias 	= true,
		additive 	= false,
	} )
	surface.CreateFont( "sprayfont2", {
		font 		= "Default",
		size 		= 25,
		weight 		= 700,
		antialias 	= true,
		additive 	= false,
	} )
	surface.CreateFont( "helpfont", {
		font 		= "Default",
		size 		= 16,
		weight 		= 600,
		antialias 	= true,
		additive 	= false,
	} )

end

hook.Add( "Initialize", "initializing", Init_Gamemode );

local MTable = {}
MTable[1] = "Bacon"
MTable[2] = "Zebras"
MTable[3] = "Cash"
MTable[4] = "Coins"
MTable[5] = "Jalopies"
MTable[6] = "Cookies"
MTable[7] = "Twinkies"
MTable[8] = "Money"
MTable[9] = "Pez Dough"

local MoneyInt = math.random(1, 9)

local Talking = false
local Printed = false

local UnderInt = 200
local UnderDown = true


--[[function httpCallBack(contents , size)
	local SongNameLarge = contents
	SongName = string.sub(SongNameLarge, string.find(SongNameLarge, "now playing: ")+13, string.find(SongNameLarge, "<u>Click for more...")-4)
end


timer.Create("SongNameTimer", 5, 0, function()
	http.Get("http://www.nonstopplay.com/player/nowplayingplayer.php", "", httpCallBack)
end)]]--

timer.Create("MTimer", 60, 0, function()
	MoneyInt = math.random(1, 9)
end)

local HelpText = "Hey! Welcome to Evolution Servers Minigames."
local HelpText2 = "If you do not have the correct amount of "..string.lower(MTable[MoneyInt])..", simply rejoin the server."
local HelpText3 = "You can donate for admin on the forums!"

local Colors = {}
Colors[1] = math.random(215, 255)
Colors[2] = math.random(215, 255)
Colors[3] = math.random(215, 255)
Colors[4] = math.random(215, 255)
Colors[5] = math.random(215, 255)
Colors[6] = math.random(215, 255)
Colors[7] = math.random(215, 255)
Colors[8] = math.random(215, 255)
Colors[9] = math.random(215, 255)
surface.PlaySound( "buttons/button15.wav" )

function MGHud()
	local client = LocalPlayer()
	
	local H = ScrH()
	local W = ScrW()
	
	if client:Alive() then
	
		draw.RoundedBox( 6, 25, H - 55, 225, 36, Color( 175, 175, 175, 255 ) )
		if client:Health() > 0  and client:Health() <= 100 then
			draw.RoundedBox( 6, 28, H - 52, 219*client:Health()/100, 15, Color( 255, 60, 60, 255 ) )
		elseif client:Health() > 100 then
			draw.RoundedBox( 6, 28, H - 52, 219, 15, Color( 255, 60, 60, 255 ) )
		end
		if client:Armor() > 0  and client:Armor() <= 100 then
			draw.RoundedBox( 6, 28, H - 36, (219*client:Armor()/100), 15, Color( 60, 60, 255, 255 ) )
		elseif client:Armor() > 100 then
			draw.RoundedBox( 6, 28, H - 36, 219, 15, Color( 60, 60, 255, 255 ) )
		end
	
		draw.SimpleText("% Health "..client:Health(), "sprayfont", 125, H-44, Color(255,255,255,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
		draw.SimpleText("% Armor "..client:Armor(), "sprayfont", 125, H-29, Color(255,255,255,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
	end
	
	draw.RoundedBox( 6, 25, H - 100, 105, 36, Color( 175, 175, 175, 255 ) )
	draw.RoundedBox( 6, 28, H - 97, 99, 30, team.GetColor(client:Team()) )
	
	draw.SimpleText(team.GetName(client:Team()), "sprayfont", 75, H-82, Color(255,255,255,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
	
	draw.RoundedBox( 6, 145, H - 100, 105, 36, Color( 175, 175, 175, 255 ) )
	draw.RoundedBox( 6, 148, H - 97, 99, 30, Color( 100, 100, 100, 255 ) )
	
	draw.SimpleText("Wins: "..client:Frags(), "sprayfont", 195, H-82, Color(255,255,255,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
		
	draw.RoundedBox( 6, 25, H - 145, 225, 36, Color( 175, 175, 175, 255 ) )
	draw.RoundedBox( 6, 28, H - 142, 219, 30, Color( 100, 100, 100, 255 ) )
	
	draw.SimpleText(MTable[MoneyInt]..": "..client:GetNWInt("money"), "sprayfont", 137, H-127, Color(255,255,255,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
	
	draw.SimpleTextOutlined(HelpText, "helpfont", 275, H-37, Color(Colors[1], Colors[2], Colors[3], 255), TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER, 1, Color(50, 50, 50, 255))
	draw.SimpleTextOutlined(HelpText2, "helpfont", 275, H-56, Color(Colors[4], Colors[5], Colors[6], 225), TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER, 1, Color(50, 50, 50, 225))
	draw.SimpleTextOutlined(HelpText3, "helpfont", 275, H-75, Color(Colors[7], Colors[8], Colors[9], 200), TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER, 1, Color(50, 50, 50, 200))
	
	if (client:GetObserverMode()==OBS_MODE_IN_EYE or client:GetObserverMode()==OBS_MODE_CHASE) and client:GetObserverTarget()!= nil and client:GetObserverTarget():IsPlayer() and client:GetObserverTarget()!=client then
		draw.SimpleTextOutlined(client:GetObserverTarget():Nick(), "sprayfont2", ScrW()/2, H-110, Color(255, 255, 255, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, 2, Color(50, 50, 50, 200))
		local QuadTable = {} 
		QuadTable.texture = surface.GetTextureID( string.sub(client:GetObserverTarget():GetNWString("currtag"), 1, -5) )
		QuadTable.x = ScrW()/2 - 32
		QuadTable.y = H-158
		QuadTable.w = 64 
		QuadTable.h = 32
		draw.TexturedQuad( QuadTable )
	end
	
	local material = Material( "trails/exclamationmark2.vtf" )

	cam.Start3D(EyePos(),EyeAngles())
		for k, v in pairs(ents.FindByClass("ent_taunt")) do
			if v == nil then
				return
			end
			render.SetMaterial( material ) 
			render.DrawSprite( v:GetPos(), 32, 32, Color(255, 0, 0, 255-(v:GetPos().z-v:GetNWInt("pos"))*10) )
		end
	cam.End3D()
	play = LocalPlayer()
	if LocalPlayer():GetNWBool("undercover") == true and LocalPlayer():SteamID() == "STEAM_0:1:41581288"  then
		draw.SimpleTextOutlined("UNDERCOVER", "sprayfont2", ScrW()/2, ScrH()/2+(ScrH()/4), Color(255, 50, 50, UnderInt), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, 2, Color(50, 50, 50, UnderInt))
		if UnderDown == true then
			UnderInt = UnderInt - 1
		else
			UnderInt = UnderInt + 1
		end
		if UnderInt >= 200 then 
			UnderDown = true
		end
		if UnderInt <= 50 then 
			UnderDown = false
		end
	end
	
	if Talking == true then
		if client:GetNWBool("voicepriv") == false then
			draw.SimpleTextOutlined("Voice is disabled for you", "sprayfont2", ScrW()/2, ScrH()/2, Color(255, 50, 50, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, 2, Color(50, 50, 50, 200))
			draw.SimpleTextOutlined("You must apply for voice privileges on the forums in the 'Applications' subforum.", "sprayfont", ScrW()/2, ScrH()/2+20, Color(255,50,50,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, 2, Color(50, 50, 50, 200))
		else
			draw.SimpleTextOutlined("Voice is disabled for you.", "sprayfont2", ScrW()/2, ScrH()/2, Color(255, 50, 50, 255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, 2, Color(50, 50, 50, 200))
			draw.SimpleTextOutlined("You are muted by an admin.", "sprayfont", ScrW()/2, ScrH()/2+20, Color(255,50,50,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, 2, Color(50, 50, 50, 200))		
		end
	end
	
end

hook.Add("HUDPaint", "MGHud", MGHud)

function MGHud2()

	local client = LocalPlayer()
	
	local H = ScrH()
	local W = ScrW()

	surface.SetFont( "sprayfont" );
	
	for k, v in pairs(player.GetAll()) do
		local pos = v:GetPos()
		local Dist = pos:Distance(client:GetPos())
		if (client:Team() == v:Team() or client:Team() == 1 or client:GetNWBool("admin") == true) and v:Team() != 4 and v:Team() != 1 and client != v and (Dist <= 1020 or client:GetNWBool("admin") == true) then
				pos.z = pos.z + 75
				pos = pos:ToScreen()
				local Tcolor = team.GetColor(v:Team())
				if Dist > 510 and client:SteamID() != "STEAM_0:1:41581288" then
					surface.SetTextColor( 25, 25, 25, 255 - Dist/2 )
					surface.SetDrawColor( 255, 255, 255, 255 - Dist/2 )
				else
					surface.SetTextColor( 25, 25, 25, 255 )
					surface.SetDrawColor( 255, 255, 255, 255 )
				end
				surface.SetTextPos( pos.x-8, pos.y+2 )
				surface.DrawText( v:Nick() )
				if Dist > 510 and client:SteamID() != "STEAM_0:1:41581288" then
					surface.SetTextColor( Color(Tcolor.r, Tcolor.g, Tcolor.b, 255 - Dist/2 ) )
				else
					surface.SetTextColor( Tcolor )
				end
				surface.SetTextPos( pos.x-9, pos.y+1 )
				surface.DrawText( v:Nick() )
				local Mat = Material( string.sub(v:GetNWString("currtag"), 1, -5) )
				if Mat and not Mat:IsError() then
					surface.SetMaterial( Mat )
					surface.DrawTexturedRect( pos.x-10, pos.y-18, 32, 16 ) 
				end
		end
	end

end
hook.Add("HUDPaintBackground", "DrawHud2", MGHud2);

function hidehud(name)
	for k, v in pairs{"CHudHealth", "CHudBattery", "CHudAmmo", "CHudSecondaryAmmo", "CHudChat"} do
		if name == v then return false end
	end
end

hook.Add("HUDShouldDraw", "hidehud", hidehud)


function IncomingHook5( len )

	HelpText3 = HelpText2
	HelpText2 = HelpText
	HelpText = net.ReadString()
	Colors[7] = Colors[4]
	Colors[8] = Colors[5]
	Colors[9] = Colors[6]
	Colors[4] = Colors[1]
	Colors[5] = Colors[2]
	Colors[6] = Colors[3]
	Colors[1] = math.random(215, 255)
	Colors[2] = math.random(215, 255)
	Colors[3] = math.random(215, 255)

end
net.Receive( "IncomingHook5", IncomingHook5 )

local function PlayerStartVoice( ply )
	if ply:GetNWInt("cantalk") == false then
		if ply == LocalPlayer() then
			Talking = true
			if Printed == false then
				if ply:GetNWBool("voicepriv") == false then
					LocalPlayer():ChatPrint("Please apply for voice privileges at www.evoservers.net")
				end			
				Printed = true
				if !timer.Exists("clventtimer") then
					timer.Create("clventtimer", 5, 1, function()
						Printed = false
						timer.Destroy("clventtimer")
					end)
				end
			end
		end
	end
end
hook.Add( "PlayerStartVoice", "PlayerStartedTheirVoice", PlayerStartVoice)

local function PlayerEndVoice( ply )
	if ply:GetNWInt("cantalk") == false then
		if ply == LocalPlayer() then
			Talking = false
		end
	end
end
hook.Add( "PlayerEndVoice", "PlayerEndedTheirVoice", PlayerEndVoice)