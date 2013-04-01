
local PANEL={}


function PANEL:Init()
	local Header = vgui.Create("mg_sb_header", self)
	Header:SetPos(0, 0)
	local y = 102
	for i=1, 3 do
		local Teamhasplayers = false
		for k, v in pairs(team.GetPlayers(i)) do
			if v:GetNWBool("undercover") == false then
				Teamhasplayers = true
			end
		end
		if team.NumPlayers(i) > 0 and Teamhasplayers == true then
			local TeamRow = vgui.Create("mg_sb_team", self)
			TeamRow:SetPos(0, y)
			TeamRow:SetTeam(i)
			y = y+22
			for k, v in pairs(team.GetPlayers(i)) do
				if v:GetNWBool("undercover") == false then
					local PlRow = vgui.Create("mg_sb_row", self)
					PlRow:SetPos(0, y)
					PlRow:SetPlayer(v)
					y = y+22
				end
			end
		end
	end
	local Footer = vgui.Create("mg_sb_footer", self)
	Footer:SetPos(0, y)
	y = y+16
	self:SetTall(y)
end

function PANEL:Paint()
	draw.RoundedBox(8,0,0,self:GetWide(),self:GetTall(),Color(255,255,255,100))
	return true
end
 
function PANEL:OnMousePressed()
	
end

 

vgui.Register( "mg_sb_panel", PANEL )