
local PANEL={}

local NumUnder = 0
local PlNum = 0

function PANEL:Init()
	self:SetWide(ScrW()/2)
	self:SetTall(100)
	if LocalPlayer():GetNWBool("admin") == true then
		local ResetIcon = vgui.Create("mg_sb_icon", self)
		ResetIcon:SetPos(ScrW()/2-66, 56)
		ResetIcon:SetInfo(nil, "mg_mapreset")
		ResetIcon:SetToolTip("Reset Map")
		ResetIcon:SetVisible(true)
		local VoteIcon = vgui.Create("mg_sb_icon", self)
		VoteIcon:SetPos(ScrW()/2-48, 56)
		VoteIcon:SetInfo(nil, "mg_forcevote")
		VoteIcon:SetToolTip("Force Map Vote")
		VoteIcon:SetVisible(true)
		local UndercoverIcon = vgui.Create("mg_sb_icon", self)
		UndercoverIcon:SetPos(ScrW()/2-30, 56)
		UndercoverIcon:SetInfo(nil, "mg_undercover")
		UndercoverIcon:SetToolTip("Go Undercover")
		UndercoverIcon:SetVisible(true)
	end
end

function PANEL:Paint()
	SW = ScrW()
	draw.RoundedBox(8,0,0,SW/2,100,Color(75, 75, 150, 225))
	draw.RoundedBox(8,0,82,SW/2,20,Color(100, 100, 100, 150))
	draw.DrawText(GetHostName(), "ServerTitle", SW/4, 4, Color(255,255,255,255), TEXT_ALIGN_CENTER)
	draw.DrawText("www.evoservers.net", "ScoreboardText", SW/4, 36, Color(255,255,255,255), TEXT_ALIGN_CENTER)
	draw.DrawText("Map: "..game.GetMap(), "ScoreboardText", SW/4, 56, Color(255,255,255,255), TEXT_ALIGN_CENTER)
	draw.DrawText("Tag", "ScoreboardText", 10, 83, Color(255,255,255,255), TEXT_ALIGN_LEFT)
	draw.DrawText("Name", "ScoreboardText", 47, 83, Color(255,255,255,255), TEXT_ALIGN_LEFT)
	draw.DrawText("Money", "ScoreboardText", 10+SW/4, 83, Color(255,255,255,255), TEXT_ALIGN_LEFT)
	draw.DrawText("Score", "ScoreboardText", 20+5*SW/16, 83, Color(255,255,255,255), TEXT_ALIGN_LEFT)
	draw.DrawText("Commands", "ScoreboardText", SW/2-132, 83, Color(255,255,255,255), TEXT_ALIGN_LEFT)
	draw.DrawText("Ping", "ScoreboardText", SW/2-34, 83, Color(255,255,255,255), TEXT_ALIGN_LEFT)
	draw.DrawText( (PlNum-NumUnder).."/32 Players", "ScoreboardText", 47, 56, Color(255,255,255,255), TEXT_ALIGN_LEFT)
	
	return true
end
 
function PANEL:OnMousePressed()

end
 
timer.Create("undertimer2", 1, 0, function()
	NumUnder = 0
	PlNum = 0
	for k, v in pairs(player.GetAll()) do
		PlNum = PlNum+1
		if v:GetNWBool("undercover") == true then
			NumUnder = NumUnder+1
		end
	end
end)

vgui.Register( "mg_sb_header", PANEL )