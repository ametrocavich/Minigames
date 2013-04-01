
local PANEL={}

function PANEL:Init()
	self:SetWide(ScrW()/2)
	self:SetTall(16)
end

function PANEL:Paint()
	SW = ScrW()
	draw.RoundedBox(8,0,0,SW/2,16,Color(75, 75, 150, 225))
	draw.DrawText("Gamemode By Jo The Shmo edits/fixes by Mathium", "HudHintTextSmall", SW/4, 2, Color(255,255,255,255), TEXT_ALIGN_CENTER)
	return true
end
 
function PANEL:OnMousePressed()
	
end
 

vgui.Register( "mg_sb_footer", PANEL )