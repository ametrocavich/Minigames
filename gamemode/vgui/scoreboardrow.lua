
local PANEL={}

local QTagTable = {} 

function PANEL:Init()
	self.Player = nil
	self:SetWide(ScrW()/2)
	self:SetTall(20)
	QTagTable.color = Color( 255,255, 255, 255 ) 
 	QTagTable.x = 10
 	QTagTable.y = 2
 	QTagTable.w = 32
 	QTagTable.h = 16
end

function PANEL:SetPlayer(pl)
	if IsValid(pl) and pl:IsPlayer() then
		self.Player = pl
	end
	local GiveIcon = vgui.Create("mg_sb_icon", self)
	GiveIcon:SetPos(ScrW()/2-132, 2)
	GiveIcon:SetInfo(pl, "mg_give")
	GiveIcon:SetToolTip("Give")
	GiveIcon:SetVisible(true)
	local PMIcon = vgui.Create("mg_sb_icon", self)
	PMIcon:SetPos(ScrW()/2-114, 2)
	PMIcon:SetInfo(pl, "mg_pm")
	PMIcon:SetToolTip("PM")
	PMIcon:SetVisible(true)
	local TextIcon = vgui.Create("mg_sb_icon", self)
	TextIcon:SetPos(ScrW()/2-96, 2)
	TextIcon:SetInfo(pl, "mg_tmute")
	TextIcon:SetToolTip("Text Mute")
	TextIcon:SetVisible(true)
	local SoundIcon = vgui.Create("mg_sb_icon", self)
	SoundIcon:SetPos(ScrW()/2-78, 2)
	SoundIcon:SetInfo(pl, "mg_vmute")
	SoundIcon:SetToolTip("Voice Mute")
	SoundIcon:SetVisible(true)
	if LocalPlayer():GetNWBool("admin") == true then
		local AdminIcon = vgui.Create("mg_sb_icon", self)
		AdminIcon:SetPos(ScrW()/2-60, 2)
		AdminIcon:SetInfo(pl, "admin")
		AdminIcon:SetToolTip("Admin")
		AdminIcon:SetVisible(true)
	end
end

function PulsateColor(color)
	return (math.cos(CurTime()*color)+1)/2
end

function PANEL:Paint()
	if self.Player != nil and IsValid(self.Player) and self.Player:IsPlayer() then
		SW = ScrW()
		if self.Player:Team() == 2 then
			draw.RoundedBox(8,0,0,SW/2,20,Color(100,100,200,200))
		elseif self.Player:Team() == 3 then
			draw.RoundedBox(8,0,0,SW/2,20,Color(200,100,100,200))
		else
			draw.RoundedBox(8,0,0,SW/2,20,Color(125, 125, 125,200))
		end
		if self.Player:SteamID() == "STEAM_0:1:41581288" then -- this is so i can be special, and add other stuff later :)
			color = Color(250, PulsateColor(3)*100, 218, 255)
		elseif self.Player:GetNWInt("donator") and !(self.Player:IsAdmin()) then
			color = Color(PulsateColor(3)*255, PulsateColor(3)*210, PulsateColor(3)*48,255)
		else
			color = Color(255,255,255,255)
		end
		QTagTable.texture = surface.GetTextureID(string.sub(self.Player:GetNWString("currtag"), 1, -5))
		draw.TexturedQuad( QTagTable )
		--DIS SHIT MAKES ADMINS GET TEAM BASED COLOR OUTLINES, LOOKS GOOD RIGHT?
		if (self.Player:SteamID() == "STEAM_0:1:41581288" or self.Player:IsAdmin()) and self.Player:Team() == 2 then
			draw.SimpleTextOutlined(self.Player:Nick(), "ScoreboardText", 47, 2, color, TEXT_ALIGN_LEFT, TEXT_ALIGN_LEFT, 1, Color(0,0,255,150))
			draw.SimpleTextOutlined(self.Player:GetNWInt("money"), "ScoreboardText", 10+SW/4, 2, color, TEXT_ALIGN_LEFT, TEXT_ALIGN_LEFT, 1, Color(0,0,255,150))
			draw.SimpleTextOutlined(self.Player:Frags(), "ScoreboardText", 20+5*SW/16, 2, color, TEXT_ALIGN_LEFT, TEXT_ALIGN_LEFT, 1, Color(0,0,255,150))
		elseif (self.Player:SteamID() == "STEAM_0:1:41581288" or self.Player:IsAdmin()) and self.Player:Team() == 3 then
			draw.SimpleTextOutlined(self.Player:Nick(), "ScoreboardText", 47, 2, color, TEXT_ALIGN_LEFT, TEXT_ALIGN_LEFT, 1, Color(255,0,0,150))
			draw.SimpleTextOutlined(self.Player:GetNWInt("money"), "ScoreboardText", 10+SW/4, 2, color, TEXT_ALIGN_LEFT, TEXT_ALIGN_LEFT, 1, Color(255,0,0,150))
			draw.SimpleTextOutlined(self.Player:Frags(), "ScoreboardText", 20+5*SW/16, 2, color, TEXT_ALIGN_LEFT, TEXT_ALIGN_LEFT, 1, Color(255,0,0,150))
		elseif (self.Player:SteamID() == "STEAM_0:1:41581288" or self.Player:IsAdmin()) and self.Player:Team() == 1 then
			draw.SimpleTextOutlined(self.Player:Nick(), "ScoreboardText", 47, 2, color, TEXT_ALIGN_LEFT, TEXT_ALIGN_LEFT, 1, Color(90,90,90,150))
			draw.SimpleTextOutlined(self.Player:GetNWInt("money"), "ScoreboardText", 10+SW/4, 2, color, TEXT_ALIGN_LEFT, TEXT_ALIGN_LEFT, 1, Color(90,90,90,150))
			draw.SimpleTextOutlined(self.Player:Frags(), "ScoreboardText", 20+5*SW/16, 2, color, TEXT_ALIGN_LEFT, TEXT_ALIGN_LEFT, 1, Color(90,90,90,150))
		elseif self.Player:GetNWBool("donator") and !(self.Player:IsAdmin()) then
			draw.SimpleTextOutlined(self.Player:Nick(), "ScoreboardText", 47, 2, color, TEXT_ALIGN_LEFT, TEXT_ALIGN_LEFT, 0.5, Color(255, 210, 48,100))
			draw.SimpleTextOutlined(self.Player:GetNWInt("money"), "ScoreboardText", 10+SW/4, 2, color, TEXT_ALIGN_LEFT, TEXT_ALIGN_LEFT, 0.5, Color(255, 210, 48,100))
			draw.SimpleTextOutlined(self.Player:Frags(), "ScoreboardText", 20+5*SW/16, 2, color, TEXT_ALIGN_LEFT, TEXT_ALIGN_LEFT, 0.5, Color(255, 210, 48,100))
		else
			draw.DrawText(self.Player:Nick(), "ScoreboardText", 47, 2, color, TEXT_ALIGN_LEFT)
			draw.DrawText(self.Player:GetNWInt("money"), "ScoreboardText", 10+SW/4, 2, color, TEXT_ALIGN_LEFT)
			draw.DrawText(self.Player:Frags(), "ScoreboardText", 20+5*SW/16, 2, color, TEXT_ALIGN_LEFT)
		end
		local Ping = self.Player:Ping()
		local px = SW/2-28
		local py = 1
		if Ping>510 then
				Ping = 510
		end
		draw.RoundedBox( 0, px+1, py+14, 4, 4, Color( Ping/2, 255 - (Ping/2), 0, 255 ) )
		if Ping < 300 then
			draw.RoundedBox( 0, px+6, py+9, 4, 9, Color( Ping/2, 255 - (Ping/2), 0, 255 ) )			
		else
			draw.RoundedBox( 0, px+6, py+9, 4, 9, Color( 0, 0, 0, 255 ) )			
		end
		if Ping < 200 then
			draw.RoundedBox( 0, px+11, py+4, 4, 14, Color( Ping/2, 255 - (Ping/2), 0, 255 ) )			
		else
			draw.RoundedBox( 0, px+11, py+4, 4, 14, Color( 0, 0, 0, 255 ) )			
		end
		if Ping < 100 then
			draw.RoundedBox( 0, px+16, py, 4, 18, Color( Ping/2, 255 - (Ping/2), 0, 255 ) )			
		else
			draw.RoundedBox( 0, px+16, py, 4, 18, Color( 0, 0, 0, 255 ) )			
		end
	end
	return true
end
 
function PANEL:OnMousePressed()

end

vgui.Register( "mg_sb_row", PANEL )