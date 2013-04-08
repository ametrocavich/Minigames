
local SBPanel = nil

function MGScoreboardCreate()

	if SBPanel then
		if LocalPlayer():GetNWBool("admin") == false then
			SBPanel:Remove()
			SBPanel = nil
			
			SBPanel = vgui.Create("mg_sb_panel")
			SBPanel:SetVisible(true)
			SBPanel:SetWide(ScrW()/2)
			SBPanel:SetPos(ScrW()/4, ScrH()/8)
		end
	else

		SBPanel = vgui.Create("mg_sb_panel")
		SBPanel:SetVisible(true)
		SBPanel:SetWide(ScrW()/2)
		SBPanel:SetPos(ScrW()/4, ScrH()/8)
		
	end
	
end


function GM:ScoreboardShow()
	if not SBPanel then
		MGScoreboardCreate()
	end
	if !timer.Exists("scoreboard_update") then
		timer.Create("scoreboard_update", 1, 0, function() MGScoreboardCreate() end)
	end
	gui.EnableScreenClicker(true)
end


function GM:ScoreboardHide()
	if SBPanel then
		SBPanel:Remove()
		SBPanel = nil
	end
	if timer.Exists("scoreboard_update") then
		timer.Destroy("scoreboard_update")
	end
	if timer.Exists("qtag") then
		timer.Destroy("qtag")
	end
	gui.EnableScreenClicker(false)
end


function GM:HUDDrawTargetID()

	local tr = util.GetPlayerTrace( LocalPlayer(), LocalPlayer():GetAimVector() )
	local trace = util.TraceLine( tr )
	if (!trace.Hit) then return end
	if (!trace.HitNonWorld) then return end
	
	local text = "ERROR"
	local font = "TargetID"
	
	if (trace.Entity:IsPlayer() and (LocalPlayer():GetObserverTarget()==nil or trace.Entity!=LocalPlayer():GetObserverTarget())) then
		text = trace.Entity:Nick()
	else
		return
		//text = trace.Entity:GetClass()
	end
	
	surface.SetFont( font )
	local w, h = surface.GetTextSize( text )
	
	local MouseX, MouseY = gui.MousePos()
	
	if ( MouseX == 0 && MouseY == 0 ) then
	
		MouseX = ScrW() / 2
		MouseY = ScrH() / 2
	
	end
	
	local x = MouseX
	local y = MouseY
	
	local QuadTable = {} 
	QuadTable.texture = surface.GetTextureID( string.sub(trace.Entity:GetNWString("currtag"), 1, -5) )
	QuadTable.x = x-16
	QuadTable.y = y+10
	QuadTable.w = 32
	QuadTable.h = 16
	draw.TexturedQuad( QuadTable )
	
	x = x - w / 2
	y = y + 30
	
	// The fonts internal drop shadow looks lousy with AA on
	draw.SimpleText( text, font, x+1, y+1, Color(0,0,0,120) )
	draw.SimpleText( text, font, x+2, y+2, Color(0,0,0,50) )
	draw.SimpleText( text, font, x, y, self:GetTeamColor( trace.Entity ) )
	
	y = y + h + 5
	
	local text = trace.Entity:Health() .. "% Health /n".. trace.Entity:Armor() .. "% Armor"
	local font = "TargetIDSmall"
	
	surface.SetFont( font )
	local w, h = surface.GetTextSize( text )
	local x =  MouseX  - w / 2
	
	draw.SimpleText( text, font, x+1, y+1, Color(0,0,0,120) )
	draw.SimpleText( text, font, x+2, y+2, Color(0,0,0,50) )
	draw.SimpleText( text, font, x, y, self:GetTeamColor( trace.Entity ) )

end
