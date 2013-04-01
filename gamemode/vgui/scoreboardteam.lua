
local PANEL={}

local NumUnder = 0

function PANEL:Init()
	self.Team = nil
	self:SetWide(ScrW()/2)
	self:SetTall(20)
end

function PANEL:SetTeam(i)
	if type(i) == "number" and i>0 and i<4 then
		self.Team = i
	end
end

function PANEL:Paint()
	if self.Team != nil then
		SW = ScrW()
		draw.RoundedBox(2,0,0,SW/2,20,team.GetColor(self.Team))
		if self.Team == 1 then
			draw.DrawText(team.GetName(self.Team).." ("..(team.NumPlayers(self.Team)-NumUnder).." Players)", "ScoreboardText", 47, 2, Color(255,255,255,255), TEXT_ALIGN_LEFT)
		else
			draw.DrawText(team.GetName(self.Team).." ("..team.NumPlayers(self.Team).." Players)", "ScoreboardText", 47, 2, Color(255,255,255,255), TEXT_ALIGN_LEFT)
		end
		draw.DrawText(team.GetScore(self.Team), "ScoreboardText", 20+5*SW/16, 2, Color(255,255,255,255), TEXT_ALIGN_LEFT)
	end
	return true
end
 
function PANEL:OnMousePressed()
	if self.Team != nil and 1 == 2 then
		if LocalPlayer():GetNWBool("admin") == true then
			local MenuButtonOptions = DermaMenu()
			MenuButtonOptions:AddOption("Slay", function() DoCommand("mg_slay", self.Team) end )
			MenuButtonOptions:AddOption("Spawn", function() DoCommand("mg_spawn", self.Team) end )
			MenuButtonOptions:AddOption("Teleport", function() DoCommand("mg_tp", self.Team) end )
			MenuButtonOptions:AddOption("Vmute", function() DoCommand("mg_vmute", self.Team) end )
			MenuButtonOptions:AddOption("Un-Vmute", function() DoCommand("mg_unvmute", self.Team) end )
			MenuButtonOptions:AddOption("Tmute", function() DoCommand("mg_tmute", self.Team) end )
			MenuButtonOptions:AddOption("Un-Tmute", function() DoCommand("mg_untmute", self.Team) end )
			MenuButtonOptions:Open()
		end
	end
end

function DoCommand(command, teamnum)
	if teamnum != nil then
		for k, v in pairs(team.GetPlayers(teamnum)) do
			LocalPlayer():ConCommand(command.." "..v:UserID())
			v:ChatPrint("ADMIN "..LocalPlayer():Nick().." used "..command.." on the "..team.GetName(teamnum).." team.")
		end
	end
end

timer.Create("undertimer1", 1, 0, function()
	NumUnder = 0
	for k, v in pairs(player.GetAll()) do
		if v:GetNWBool("undercover") == true then
			NumUnder = NumUnder+1
		end
	end
end)


vgui.Register( "mg_sb_team", PANEL )