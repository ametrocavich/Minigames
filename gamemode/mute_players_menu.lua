
if CLIENT then

    surface.CreateFont( "NameDefault",
    {
        font        = "Helvetica",
        size        = 20,
        weight      = 800
    })
	
	concommand.Add("MGMute", function()	
	
	local plyrs = player.GetAll()
	local FrameWidth = 500
	local FrameHeight = 350
	local windowTitle = ""
	local muteAdmins = 1
	

		windowTitle = "Mute Players"
		muteAdmins = 1

	DermaFrame = vgui.Create( "DFrame" )
	DermaFrame:SetPos( (ScrW()/2)-100,(ScrH()/2)-100 )
	DermaFrame:SetWidth(FrameWidth)
	DermaFrame:SetHeight(FrameHeight)
	DermaFrame:SetTitle( windowTitle )
	DermaFrame:SetVisible( true )
	DermaFrame:SetDraggable( true )
	DermaFrame:ShowCloseButton( true )
	DermaFrame:Center()
	DermaFrame:SetDeleteOnClose(true)
	DermaFrame:MakePopup()

	DermaScrollPanel = vgui.Create("DPanelList", DermaFrame)
	DermaScrollPanel:SetPos(6, 25)
	DermaScrollPanel:SetSize(FrameWidth-12, FrameHeight-50-12)
	DermaScrollPanel:SetSpacing(2)
	DermaScrollPanel:SetPadding(2)
	DermaScrollPanel:SetVisible(true)
	DermaScrollPanel:EnableHorizontal(false)
	DermaScrollPanel:EnableVerticalScrollbar(true)

	local scrollWide = DermaScrollPanel:GetWide()
	
	function CreatePlayerPanels()

	for id, pl in pairs( plyrs ) do
	
			pl.PlayerPanel = vgui.Create("DPanel")
			pl.PlayerPanel:SetWide(scrollWide)
			pl.PlayerPanel:SetVisible(true)

			pl.PlayerPanelWide = pl.PlayerPanel:GetWide()

			pl.NameLabel = vgui.Create( "DLabel", pl.PlayerPanel )
			pl.NameLabel:SetFont("NameDefault")
			pl.NameLabel:SetText(pl:Nick())
			pl.NameLabel:SetWide(pl.PlayerPanelWide - 50)
			pl.NameLabel:SetPos(3,3)
			pl.NameLabel:SetColor(Color(0,0,0,255))

			pl.Mute = vgui.Create( "DImageButton", pl.PlayerPanel )
			pl.Mute:SetSize( 20, 20 )

			pl.Muted = pl:IsMuted()

			if ( pl.Muted ) then
				pl.Mute:SetImage( "icon32/muted.png" )
			else
				pl.Mute:SetImage( "icon32/unmuted.png" )
			end

			pl.Mute.DoClick = function()

			pl:SetMuted( !pl.Muted )

			DermaScrollPanel:Clear()

			CreatePlayerPanels()

			if ( pl.Muted ) then
				pl.Mute:SetImage( "icon32/muted.png")
				
			else
				pl.Mute:SetImage( "icon32/unmuted.png" )
			end
			end
			
			DermaScrollPanel:AddItem(pl.PlayerPanel)

			pl.PlayerPanel:InvalidateLayout(true)
			pl.PlayerPanel.PerformLayout = function()
			pl.PlayerPanelWide = pl.PlayerPanel:GetWide()
			pl.NameLabel:SetWide(pl.PlayerPanelWide - 50)
			pl.Mute:SetPos(pl.PlayerPanelWide - 20 - 3,3)
			pl.NameLabel:SetPos(3,3)
			end
			
			if (pl:IsAdmin() and muteAdmins == 0) then
				pl.Mute:SetDisabled(true)
			else
				pl.Mute:SetDisabled(false)
			end
	end
	end
	
	CreatePlayerPanels()
	
	muteAllPanel = vgui.Create("DPanel", DermaFrame)
	muteAllPanel:SetWide(scrollWide)
	muteAllPanel:SetVisible(true)
	muteAllPanel:SetBackgroundColor(Color(70,192,255,255))

	muteAllPanelWide = muteAllPanel:GetWide()
	
	muteAllLabel = vgui.Create( "DLabel", muteAllPanel )
	muteAllLabel:SetFont("NameDefault")
	muteAllLabel:SetText("Mute All")
	muteAllLabel:SetWide(muteAllPanelWide - 50)
	muteAllLabel:SetPos(3,3)
	muteAllLabel:SetColor(Color(0,0,0,255))
	
	muteAllMuteButton = vgui.Create( "DImageButton", muteAllPanel )
	muteAllMuteButton:SetSize( 20, 20 )

	muteAllMuteButton:SetImage( "icon32/muted.png" )

	muteAllMuteButton.DoClick = function()
	
		for id2, pl2 in pairs( plyrs ) do
			if (pl2:IsSuperAdmin() and muteAdmins == 0) then
				if (pl2:IsMuted() == true) then
					pl2:SetMuted(false)
				end
			else
				if (pl2:IsMuted() == false) then
					pl2:SetMuted(true)
				end
			end

		end

		DermaScrollPanel:Clear()

		CreatePlayerPanels()
	end
	
	muteAllUnMuteButton = vgui.Create( "DImageButton", muteAllPanel )
	muteAllUnMuteButton:SetSize( 20, 20 )

	muteAllUnMuteButton:SetImage( "icon32/unmuted.png" )

	muteAllUnMuteButton.DoClick = function()
	
		for id2, pl2 in pairs( plyrs ) do
			if (pl2:IsMuted() == true) then
				pl2:SetMuted(false)
			end
		end

		DermaScrollPanel:Clear()

		CreatePlayerPanels()
	end
	
	muteAllPanel:SetPos(6,FrameHeight-25-6)

	muteAllPanel:InvalidateLayout(true)
	muteAllPanel.PerformLayout = function()
	muteAllPanelWide = muteAllPanel:GetWide()
	muteAllLabel:SetWide(muteAllPanelWide - 50)
	muteAllMuteButton:SetPos(muteAllPanelWide - 26 - 20,3)
	muteAllUnMuteButton:SetPos(muteAllPanelWide - 20 - 3,3)
	muteAllLabel:SetPos(3,3)
	end
	
end)
end


if SERVER then
   hook.Add("PlayerSay", "Muteplayers", function(ply, msg)
		local menuopen1 = string.match(msg:lower(), "!plymute")
		local menuopen2 = string.match(msg:lower(), "!playermute")
		local menuopen3 = string.match(msg:lower(), "!playmute")
		local loleasteregg = string.match(msg:lower(), "hunger johnson is awesome")
			if loleasteregg then
				ply:PrintMessage(HUD_PRINTCENTER, "You found an easter egg, this does nothing but shows up on your screen.")
			end
			if menuopen1 or menuopen2 or menuopen3 then
				if ply:IsAdmin() then
					print("Use the console command 'MGMute'.")
				else
					ply:ConCommand("MGMute")
					return ""
				end
            end
        end)
end