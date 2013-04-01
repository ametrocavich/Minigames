
local PANEL={}

local QuadTable = {}

function PANEL:Init()
	self.Player = nil
	self.Command = nil
	self.Texture = nil
	self:SetWide(16)
	self:SetTall(16)
	self:SetCursor("hand")
end

function PANEL:SetInfo(pl, command)
	if pl!=nil then
		self.Player = pl
	end
	self.Command = command
	QuadTable.texture = ""
 	QuadTable.color = Color( 255,255, 255, 255 ) 
 	QuadTable.x = 0
 	QuadTable.y = 0
 	QuadTable.w = 16
 	QuadTable.h = 16
end

function PANEL:Paint()
	surface.SetDrawColor( Color(255, 255, 255, 255) );
	if self.Command == "mg_tmute" then
		if self.Player:GetNWBool("cantype") == true then
			surface.SetMaterial(Material("icon16/table_edit.png"))
		else
			surface.SetMaterial(Material("icon16/cross.png"))
		end
	elseif self.Command == "mg_vmute" then
		if self.Player:GetNWBool("cantalk") == true then
			surface.SetMaterial(Material("icon16/sound.png"))
		else
			surface.SetMaterial(Material("icon16/cross.png"))
		end
	elseif self.Command == "mg_pm" then
		surface.SetMaterial(Material("icon16/group.png"))
	elseif self.Command == "mg_give" then
		surface.SetMaterial(Material("icon16/add.png"))
	elseif self.Command == "admin" then
		surface.SetMaterial(Material("icon16/shield.png"))
	elseif self.Command == "mg_mapreset" then
		surface.SetMaterial(Material("icon16/arrow_refresh.png"))
	elseif self.Command == "mg_forcevote" then
		surface.SetMaterial(Material("icon16/world.png"))
	elseif self.Command == "mg_undercover" then
		surface.SetMaterial(Material("icon16/magnifier.png"))
	end
	surface.DrawTexturedRect( 0, 0, 16, 16 )
end

function PANEL:OnMousePressed()
	if self.Player!=nil then
		local UID = self.Player:UserID()
		if self.Command == "mg_give" then
			HowMuch(UID, "give")
		elseif self.Command == "mg_pm" then
			Why(UID, "pm")
		elseif LocalPlayer():GetNWBool("admin") == true then
			if self.Command == "admin" then
				local MenuButtonOptions = DermaMenu()
				MenuButtonOptions:AddOption("Kick", function() Why(UID, "kick") end )
				MenuButtonOptions:AddOption("Ban", function() HowMuch(UID, "ban") end )
				MenuButtonOptions:AddOption("Slay", function() LocalPlayer():ConCommand('mg_slay "'..UID..'"') end )
				MenuButtonOptions:AddOption("Spawn", function() LocalPlayer():ConCommand('mg_spawn "'..UID..'"') end )
				MenuButtonOptions:AddOption("Teleport", function() LocalPlayer():ConCommand('mg_tp "'..UID..'"') end )
				MenuButtonOptions:Open()
			else
				LocalPlayer():ConCommand(self.Command.." "..UID)
			end
		end
	else
		if LocalPlayer():GetNWBool("admin") == true then
			LocalPlayer():ConCommand(self.Command)
		end
	end
end


function HowMuch(UID, arg)
	local nick = ""
	for k, v in pairs(player.GetAll()) do
		if v:UserID() == UID then
			nick = v:Nick()
		end
	end
	local DermaPanel = vgui.Create( "DFrame" )
	DermaPanel:Center()
	DermaPanel:SetSize( 300, 100 )
	if arg == "give" then
		DermaPanel:SetTitle( "Amount: "..nick )
	elseif arg == "ban" then
		DermaPanel:SetTitle( "Time: "..nick )
	end
	DermaPanel:SetVisible( true )
	DermaPanel:SetDraggable( false )
	DermaPanel:ShowCloseButton( true )
	DermaPanel:MakePopup() 
	local NumSlider = vgui.Create( "DNumSlider", DermaPanel )
	NumSlider:SetPos( 10,25 )
	NumSlider:SetWide( 280 )
	if arg == "give" then
		NumSlider:SetText( "Amount" )
	elseif arg == "ban" then
		NumSlider:SetText( "Time" )
	end
	NumSlider:SetMin( 1 )
	if arg == "give" then
		NumSlider:SetMax( 50000 ) 
	elseif arg == "ban" then
		NumSlider:SetMax( 10080 ) 
	end
	NumSlider:SetDecimals( 0 )
	local Whybutton = vgui.Create( "DButton", DermaPanel )
	Whybutton:SetSize( 100, 25 )
	Whybutton:SetPos( 100, 70 )
	Whybutton:SetText( "Submit" )
	Whybutton.DoClick = function( Whybutton )
		if NumSlider:GetValue() < 1 or NumSlider:GetValue() >50000 then
			LocalPlayer():ChatPrint("Invalid number!")
			return
		end
		if arg== "ban" then
			Why(UID, "ban", NumSlider:GetValue())
			DermaPanel:Remove()
		elseif arg == "give" then
			LocalPlayer():ConCommand('mg_give "'..UID..'" "'..NumSlider:GetValue()..'"')
			DermaPanel:Remove()
		end
	end
end

function Why(UID, arg, arg2)
	for k, v in pairs(player.GetAll()) do
		if v:UserID() == UID then
			nick = v:Nick()
		end
	end
	local DermaPanel = vgui.Create( "DFrame" )
	DermaPanel:Center()
	DermaPanel:SetSize( 300, 100 )
	if arg == "pm" then
		DermaPanel:SetTitle( "Message "..nick )
	elseif arg == "ban" or "kick" then
		DermaPanel:SetTitle( "Reason: "..nick )
	end
	DermaPanel:SetVisible( true )
	DermaPanel:SetDraggable( false )
	DermaPanel:ShowCloseButton( true )
	DermaPanel:MakePopup() 
	local WhyText = vgui.Create("DTextEntry", DermaPanel)
	WhyText:SetPos(10, 25)
	WhyText:SetWide(280)
	WhyText:SetText( "" )
	WhyText:RequestFocus()
	WhyText.OnEnter = function() 
		if arg == "pm" then
			LocalPlayer():ConCommand('mg_pm "'..UID..'" "'..WhyText:GetValue()..'"')
		elseif arg == "ban" then
			LocalPlayer():ConCommand('mg_ban "'..UID..'" "'..arg2..'" "'..WhyText:GetValue()..'"')
		elseif arg == "kick" then
			LocalPlayer():ConCommand('mg_kick "'..UID..'" "'..WhyText:GetValue()..'"')
		end
		DermaPanel:Remove()
	end
	local Whybutton = vgui.Create( "DButton", DermaPanel )
	Whybutton:SetSize( 100, 25 )
	Whybutton:SetPos( 100, 70 )
	Whybutton:SetText( "Submit" )
	Whybutton.DoClick = function( Whybutton )
		if arg == "pm" then
			LocalPlayer():ConCommand('mg_pm "'..UID..'" "'..WhyText:GetValue()..'"')
		elseif arg == "ban" then
			LocalPlayer():ConCommand('mg_ban "'..UID..'" "'..arg2..'" "'..WhyText:GetValue()..'"')
		elseif arg == "kick" then
			LocalPlayer():ConCommand('mg_kick "'..UID..'" "'..WhyText:GetValue()..'"')
		end
		DermaPanel:Remove()
	end
end

vgui.Register( "mg_sb_icon", PANEL )