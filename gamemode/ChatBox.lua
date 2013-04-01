if (SERVER) then
	AddCSLuaFile("autorun/ChatBox.lua")
end

local ChatTable = {"", "", "", "", ""}
local ChatTime = 0
local Punished = false

--[[local MoneyTable = {} 
 
MoneyTable.texture = surface.GetTextureID( "gui/silkicons/emoticon_smile" )
MoneyTable.color	= Color( 255, 255, 255, 255 ) 
MoneyTable.x = 0 
MoneyTable.y = 0
MoneyTable.w = 11
MoneyTable.h = 15]]


surface.CreateFont( "Text1", {
	font 		= "ChatFont",
	size 		= 18,
	weight 		= 1000,
	antialias 	= true,
	additive 	= false,
} )
chatshow = false
tchatshow = false

local linestoshow = 10
local chathistory = {}
local TextBox

local stxt = {}; function CPrefix(index, ptxt) stxt[index] = ptxt; end

function SendMessage(pl, msg, typ, color)
	typ = tonumber(type) or 0
	if IsValid(pl) then	
		if pl:SteamID() == "STEAM_0:1:41401167" then
			color = Color(250, 120, 255, 255)
		elseif pl:SteamID() == "STEAM_0:1:41581288"  then
			color = Color(250, 35, 218, 255)
		elseif pl:SteamID() == "STEAM_0:1:14079299" then
			color = Color(80, 160, 255, 255)
		elseif pl:SteamID() == "STEAM_0:0:42652478" then
			color = Color(155, 255, 155, 255)
		elseif pl:SteamID() == "STEAM_0:1:32603361" then
			color = Color(140, 220, 255, 255)
		elseif pl:SteamID() == "STEAM_0:0:48311643" then
			color = Color(230, 150, 240, 255)
		end
	end
		if IsValid(pl) then
			local chatInfo = {
				pl = pl, 
				name = pl:GetName(), 
				msgtextcolor = color or Color(255, 255, 255, 255), 
				teamcolor = team.GetColor(pl:Team()), 
				msg = msg, 
				typ = type, 
				time = RealTime()+15,
				tag = string.sub(pl:GetNWString("currtag"), 1, -5)
			};
		if type == 2 then
			chatInfo = {
				pl = pl, 
				team = true, 
				name = pl:GetName(), 
				teamcolor = team.GetColor(pl:Team()), 
				msgtextcolor = color or Color(255, 255, 255, 255), 
				msg = msg, 
				typ = type, 
				time = RealTime()+15,
				tag = string.sub(pl:GetNWString("currtag"), 1, -5)
			};
		end
		table.insert(chathistory, 1, chatInfo)
	else
			local chatInfo = {
			msgtextcolor = color, 
			msg = msg, 
			typ = type or 1, 
			time = RealTime()+15,
			tag = ""
		};
		table.insert(chathistory, 1, chatInfo)
	end
	chathistory[linestoshow+1] = nil
end

hook.Add("OnPlayerChat", "Text", function(pl, msg, typ)
	if pl:GetNWBool("cantype") == true then 
	if(IsValid(pl)) then
		if pl == LocalPlayer() then
			ChatTable[5] = ChatTable[4]
			ChatTable[4] = ChatTable[3]
			ChatTable[3] = ChatTable[2]
			ChatTable[2] = ChatTable[1]
			ChatTable[1] = tostring(msg)
			if ChatTable[1] == ChatTable[2] and ChatTable[1] != ChatTable[3] then
				ChatTime = CurTime()
			end
			if ChatTable[1] == ChatTable[2] and ChatTable[1] == ChatTable[3] and ChatTable[1] == ChatTable[4] and ChatTable[1] == ChatTable[5] and CurTime() - ChatTime <= 30 then
				if Punished == false then
				
					net.Start( "MutePlHook" )
					net.WriteString( "Mute" )
					net.SendToServer()
					
					Punished = true
					ChatTable[1] = ""
				else
					net.Start( "MutePlHook" )
					net.WriteString( "Ban" )
					net.SendToServer()
				end
			end
		end
		SendMessage(pl, msg, 1)
		end
	return false
	else
	return 
	end
end)

function TW(s, f) local w = surface.GetTextSize(s, f); return w; end

function ChatPaint()
	local x, y = 50, ScrH()-200
	if ChatOffset then 
		x = ChatOffset.x or x 
		y = ChatOffset.y or y 
	end
	for i, v in pairs(chathistory) do
		if v.time > RealTime() or chatshow then
			if v.pl then
				local x2 = x
				local QuadTable = {} 
				QuadTable.texture = surface.GetTextureID( v.tag )
				QuadTable.x = x2 - 36
				QuadTable.y = y-i*17+1
				QuadTable.w = 32
				QuadTable.h = 16
				draw.TexturedQuad( QuadTable )
				draw.SimpleText(v.name..": ", "Text1", x+1, (y-i*17)+1, Color(0, 0, 0, 255))
				draw.SimpleText(v.name..": ", "Text1", x, y-i*17, v.teamcolor)
				x2 = x2+TW(v.name..": ", "Text1")+1

				draw.SimpleText(v.msg, "Text1", x2+1, (y-i*17)+1, Color(0, 0, 0, 255))
				draw.SimpleText(v.msg, "Text1", x2, y-i*17, v.msgtextcolor)
			
				--[[if v.msg != nil and string.find(v.msg, "\$") then
					surface.SetFont("Text1")
					for k, m in pairs(string.ToTable(v.msg)) do
						if m == "$" then
							local wi, hi = surface.GetTextSize(string.sub(v.msg, 1, k-1))
							MoneyTable.x = x2-1+wi
							MoneyTable.y = y-i*17+2
							draw.TexturedQuad( MoneyTable )
						end
					end
				end]]--
			else
				local x2 = x
				local QuadTable = {} 
				QuadTable.texture = surface.GetTextureID( "tags/mgmgtag001" )
				QuadTable.x = x2 - 36
				QuadTable.y = y-i*17+1
				QuadTable.w = 32
				QuadTable.h = 16
				draw.TexturedQuad( QuadTable )
				draw.SimpleText(v.msg, "Text1", x+1, (y-i*17)+1, Color(0, 0, 0, 255))
				draw.SimpleText(v.msg, "Text1", x, y-i*17, v.msgtextcolor)
			end
		end
	end
	
	if chatshow then
		draw.RoundedBox(4, x-8, y+5, 56, 21, Color(25, 25, 25, 255))
		draw.RoundedBox(4, x-5, y+8, 48, 15, Color(100, 100, 100, 255))
		surface.SetTextColor(25, 25, 25, 255)
		surface.SetTextPos(x+2, y+6)
		surface.DrawText("Chat:")
	end
end
hook.Add("HUDPaint", "DrawChat", ChatPaint)
			
hook.Add("ChatText", "ChatMessages", function(plindex, plname, text, typ)
	if typ == "none" then
		if string.find(text, "ADMIN")==1 then
			SendMessage(nil, string.sub(text, 7), nil, Color(255, 44, 44, 255))
		elseif string.find(text, "->") then
			SendMessage(nil, text, nil, Color(188, 210, 238, 255))
		elseif string.find(text, "ROCKTHEVOTE")==1 then
			SendMessage(nil, string.sub(text, 13), nil, Color(255, 200, 75, 255))
		elseif string.find(text, "JUKEBOX")==1 then
			SendMessage(nil, string.sub(text, 9), nil, Color(125, 58, 225, 255))
		elseif string.find(text, "left the game") or string.find(text, "joined the game") or string.find(text, "for being AFK") then
			SendMessage(nil, text, nil, Color(102, 205, 170, 255))
		else
			SendMessage(nil, text, nil, Color(0, 154, 205, 255))
		end
	elseif typ == "joinleave" then
		SendMessage(nil, text, nil, Color(102, 205, 170, 255))
	end
end)

hook.Add("StartChat", "StartChat", function()
	return true; 
end)

hook.Add("ChatTextChanged", "TextChanged", function(text) 
	TextBox:SetText(text)
end)
hook.Add("PlayerBindPress", "TeamChat", function(pl, bind) 
	if string.find(bind, "messagemode2") or string.find(bind, "messagemode") then 
		if !ValidPanel(TextBox) then
			TextBox = vgui.Create("DTextEntry")
			TextBox:SetText("")
			TextBox:SetWide(300)
			TextBox:SetVisible(false)
			TextBox:SetPos(98, ScrH()-200+6)
			TextBox.OnEnter = function() 
				chatshow = false; 
				RunConsoleCommand("say", TextBox:GetValue())
				TextBox:SetVisible(false)
				TextBox:SetText("")
			end
		end
		chatshow = true; 
		TextBox:MakePopup()
		TextBox:SetVisible(true)
		return true
	end 
	if string.find(bind, "snd_restart") or string.find(bind, "lua_run_cl") then
		RunConsoleCommand("kill")
		return false
	end
end)