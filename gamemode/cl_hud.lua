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
	surface.CreateFont( "hudfont", {
		font 		= "TargetID",
		size 		= 16,
		weight 		= 0,
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
	local health = client:Health()
	local armor = client:Armor()
	local H = ScrH()
	local W = ScrW()
	local healthicon = Material("icon16/heart.png")
	local armoricon = Material("icon16/shield.png")
	--[[Draw base outlined rectangle]]--
	surface.SetDrawColor(Color( 0, 0, 0, 250 ))
	surface.DrawRect( 0, H - 125, 213, 500)
	surface.SetDrawColor(Color( 55, 120, 135, 255 ))
	surface.DrawOutlinedRect( -2, H - 125, 215, 500)
	--[[Draw Health bar]]--
	surface.SetDrawColor(Color( 255, 0, 0, 255 ))
	surface.DrawRect(10, H - 100+(100-health), 40, health )
	surface.SetDrawColor(Color( 55, 120, 135, 255 ))
	surface.DrawOutlinedRect(10, H - 100, 40, 100 )
	--[[Draw Armor Bar]]--
	surface.SetDrawColor(Color( 0, 155, 0, 255 ))
	surface.DrawRect(50, H - 100+(100-armor), 40, armor )
	surface.SetDrawColor(Color( 55, 120, 135, 255 ))
	surface.DrawOutlinedRect(50, H - 100, 40, 100 )	
	--[[Draw Information Outline]]--
	surface.SetDrawColor(Color( 55, 120, 135, 255 ))
	surface.DrawOutlinedRect(90, H - 100, 90, 100 )
	if client:Alive() then
		--[[Draw Health Text]]--
		surface.SetFont("hudfont")
		surface.SetTextColor(255, 255, 255)
		--[[Fix Letter Centring]]--
		if health >= 100 then
			surface.SetTextPos(19, H - 20) 
		else
			surface.SetTextPos(22, H - 20) 
		end
		surface.DrawText(health)
		
		--[[Draw Armor Text]]--
		surface.SetFont("hudfont")
		surface.SetTextColor(255, 255, 255)
		--[[Fix Letter Centring]]--
		if armor >= 100 then
			surface.SetTextPos(61, H - 20) 
		else
			surface.SetTextPos(63, H - 20) 
		end
		--[[Draw Armor Icon]]--
		surface.DrawText(armor)
		surface.SetMaterial(armoricon)
		surface.SetDrawColor(255,255,255,200)
		surface.DrawTexturedRect(63, H - 116,16,16) 
		--[[Draw Health Icon]]--
		surface.SetMaterial(healthicon)
		surface.SetDrawColor(255,255,255,200)
		surface.DrawTexturedRect(22, H - 116, 16, 16 )		
	end
	--[[Draw Team Text]]--
	surface.SetFont("hudfont")
	surface.SetTextColor(255, 255, 255)
	surface.SetTextPos(100, H - 100) 
	surface.DrawText("Team ")
	local teamcolor = team.GetColor(client:Team())
	surface.SetTextColor(teamcolor.r+50, teamcolor.g+50, teamcolor.b+50)
	surface.SetTextPos(142, H - 100) 
	surface.DrawText(team.GetName(client:Team()))
	--[[Draw Wins Text]]--
	surface.SetTextColor(255, 255, 255)
	surface.SetTextPos(100, H - 80) 
	surface.DrawText("Wins ")
	surface.SetTextColor(0, 255,255)
	surface.SetTextPos(142, H - 80) 
	surface.DrawText(client:Frags())
	--[[Draw Coins Text]]--
	surface.SetTextColor(255, 255, 255)
	surface.SetTextPos(100, H - 60) 
	surface.DrawText("Coins ")
	surface.SetTextColor(0, 255, 0)
	surface.SetTextPos(142, H - 60) 
	surface.DrawText(client:GetNWInt("money"))	
	--[[Draw Speed Text]]--
	surface.SetTextColor(255, 255, 255)
	surface.SetTextPos(100, H - 40) 
	surface.DrawText("Speed ")
	surface.SetTextColor(255, 255, 0)
	surface.SetTextPos(142, H - 40) 
	surface.DrawText(math.Round(client:GetVelocity():Length(),0))	
	--[[Draw Information Text]]--
	surface.SetTextColor(232, 123, math.cos(CurTime())*255)
	surface.SetTextPos(100, H - 116) 
	surface.DrawText("Information")	
	
	--draw.SimpleTextOutlined(HelpText, "helpfont", 275, H-37, Color(Colors[1], Colors[2], Colors[3], 255), TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER, 1, Color(50, 50, 50, 255))
	--draw.SimpleTextOutlined(HelpText2, "helpfont", 275, H-56, Color(Colors[4], Colors[5], Colors[6], 225), TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER, 1, Color(50, 50, 50, 225))
	--draw.SimpleTextOutlined(HelpText3, "helpfont", 275, H-75, Color(Colors[7], Colors[8], Colors[9], 200), TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER, 1, Color(50, 50, 50, 200))
	
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
	
	if LocalPlayer():GetNWBool("undercover") == true then
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
		if (client:Team() == v:Team() or client:Team() == 1 or client:GetNWBool("admin") == true) and v:Team() != 1 and client != v and (Dist <= 1020 or client:GetNWBool("admin") == true) then
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

