
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
		QTagTable.texture = surface.GetTextureID(string.sub(self.Player:GetNWString("currtag"), 1, -5))
		draw.TexturedQuad( QTagTable )
		draw.DrawText(self.Player:Nick(), "ScoreboardText", 47, 2, Color(255,255,255,255), TEXT_ALIGN_LEFT)
		draw.DrawText(self.Player:GetNWInt("money"), "ScoreboardText", 10+SW/4, 2, Color(255,255,255,255), TEXT_ALIGN_LEFT)
		draw.DrawText(self.Player:Frags(), "ScoreboardText", 20+5*SW/16, 2, Color(255,255,255,255), TEXT_ALIGN_LEFT)
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