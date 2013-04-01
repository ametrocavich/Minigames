local tblFonts = { }
tblFonts["DebugFixed"] = {
    font = "Courier New",
    size = 10,
    weight = 500,
    antialias = true,
}
tblFonts["CSSelectIcons"] = {
    font = "Courier New",
    size = 10,
    weight = 500,
    antialias = true,
}
tblFonts["ScoreboardText"] = {
	font = "Tahoma",
	size = 15,
	weight = 800,
	antialias = true,
}
tblFonts["DebugFixedSmall"] = {
    font = "Courier New",
    size = 7,
    weight = 500,
    antialias = true,
}
 
tblFonts["DefaultFixedOutline"] = {
    font = "Lucida Console",
    size = 10,
    weight = 0,
    outline = true,
}
 
tblFonts["MenuItem"] = {
    font = "Tahoma",
    size = 12,
    weight = 500,
}
 
tblFonts["Default"] = {
    font = "Tahoma",
    size = 13,
    weight = 500,
}
 
tblFonts["TabLarge"] = {
    font = "Tahoma",
    size = 13,
    weight = 700,
    shadow = true,
}
 
tblFonts["DefaultBold"] = {
    font = "Tahoma",
    size = 13,
    weight = 1000,
}
 
tblFonts["DefaultUnderline"] = {
    font = "Tahoma",
    size = 13,
    weight = 500,
    underline = true,
}
 
tblFonts["DefaultSmall"] = {
    font = "Tahoma",
    size = 1,
    weight = 0,
}
 
tblFonts["DefaultSmallDropShadow"] = {
    font = "Tahoma",
    size = 11,
    weight = 0,
    shadow = true,
}
 
tblFonts["DefaultVerySmall"] = {
    font = "Tahoma",
    size = 10,
    weight = 0,
}
 
tblFonts["DefaultLarge"] = {
    font = "Tahoma",
    size = 16,
    weight = 0,
}
 
tblFonts["UiBold"] = {
    font = "Tahoma",
    size = 12,
    weight = 1000,
}
 
tblFonts["MenuLarge"] = {
    font = "Verdana",
    size = 15,
    weight = 600,
    antialias = true,
}
 
tblFonts["ConsoleText"] = {
    font = "Lucida Console",
    size = 10,
    weight = 500,
}
 
tblFonts["Marlett"] = {
    font = "Marlett",
    size = 13,
    weight = 0,
    symbol = true,
}
 
tblFonts["Trebuchet24"] = {
    font = "Trebuchet MS",
    size = 24,
    weight = 900,
}
 
tblFonts["Trebuchet22"] = {
    font = "Trebuchet MS",
    size = 22,
    weight = 900,
}
 
tblFonts["Trebuchet20"] = {
    font = "Trebuchet MS",
    size = 20,
    weight = 900,
}
 
tblFonts["Trebuchet19"] = {
    font = "Trebuchet MS",
    size = 19,
    weight = 900,
}
 
tblFonts["Trebuchet18"] = {
    font = "Trebuchet MS",
    size = 18,
    weight = 900,
}
 
tblFonts["HUDNumber"] = {
    font = "Trebuchet MS",
    size = 40,
    weight = 900,
}
 
tblFonts["HUDNumber1"] = {
    font = "Trebuchet MS",
    size = 41,
    weight = 900,
}
 
tblFonts["HUDNumber2"] = {
    font = "Trebuchet MS",
    size = 42,
    weight = 900,
}
 
tblFonts["HUDNumber3"] = {
    font = "Trebuchet MS",
    size = 43,
    weight = 900,
}
 
tblFonts["HUDNumber4"] = {
    font = "Trebuchet MS",
    size = 44,
    weight = 900,
}
 
tblFonts["HUDNumber5"] = {
    font = "Trebuchet MS",
    size = 45,
    weight = 900,
}
 
tblFonts["HudHintTextLarge"] = {
    font = "Verdana",
    size = 14,
    weight = 1000,
    antialias = true,
    additive = true,
}
 
tblFonts["HudHintTextSmall"] = {
    font = "Verdana",
    size = 11,
    weight = 0,
    antialias = true,
    additive = true,
}
 
tblFonts["CenterPrintText"] = {
    font = "Trebuchet MS",
    size = 18,
    weight = 900,
    antialias = true,
    additive = true,
}
 
tblFonts["DefaultFixed"] = {
    font = "Lucida Console",
    size = 10,
    weight = 0,
}
 
tblFonts["DefaultFixedDropShadow"] = {
    font = "Lucida Console",
    size = 10,
    weight = 0,
    shadow = true,
}
 
tblFonts["CloseCaption_Normal"] = {
    font = "Tahoma",
    size = 16,
    weight = 500,
}
 
tblFonts["CloseCaption_Italic"] = {
    font = "Tahoma",
    size = 16,
    weight = 500,
    italic = true,
}
 
tblFonts["CloseCaption_Bold"] = {
    font = "Tahoma",
    size = 16,
    weight = 900,
}
 
tblFonts["CloseCaption_BoldItalic"] = {
    font = "Tahoma",
    size = 16,
    weight = 900,
    italic = true,
}
 
tblFonts["TargetID"] = {
    font = "Trebuchet MS",
    size = 22,
    weight = 900,
    antialias = true,
}
 
tblFonts["TargetIDSmall"] = {
    font = "Trebuchet MS",
    size = 18,
    weight = 900,
    antialias = true,
}
 
tblFonts["BudgetLabel"] = {
    font = "Courier New",
    size = 14,
    weight = 400,
    outline = true,
}
 
 
for k,v in SortedPairs( tblFonts ) do
    surface.CreateFont( k, tblFonts[k] );
end

PANEL = {}


AccessorFunc( PANEL, "m_strType", 		"Type" )
AccessorFunc( PANEL, "m_Character", 	"Char" )



/*---------------------------------------------------------
	Init
---------------------------------------------------------*/
function PANEL:Init()

	self:SetTextInset( 0, 0 )

end

/*---------------------------------------------------------

---------------------------------------------------------*/
function PANEL:SetType( strType )

	self.m_strType = strType
	
	if ( strType == "close" ) then self:SetChar( "r" ) 
	elseif ( strType == "grip" ) then self:SetChar( "p" ) 
	elseif ( strType == "down" ) then self:SetChar( "u" ) 
	elseif ( strType == "up" ) then self:SetChar( "t" ) 
	elseif ( strType == "updown" ) then self:SetChar( "v" ) 
	elseif ( strType == "tick" ) then self:SetChar( "a" ) 
	elseif ( strType == "right" ) then self:SetChar( "4" ) 
	elseif ( strType == "left" ) then self:SetChar( "3" ) 
	elseif ( strType == "question" ) then self:SetChar( "s" ) 
	elseif ( strType == "none" ) then self:SetChar( "" ) 
	end

end


/*---------------------------------------------------------

---------------------------------------------------------*/
function PANEL:SetChar( strChar )

	self.m_Character = strChar
	self:SetText( strChar )

end


/*---------------------------------------------------------

---------------------------------------------------------*/
function PANEL:Paint()

	derma.SkinHook( "Paint", "SysButton", self )
	return false

end


/*---------------------------------------------------------

---------------------------------------------------------*/
function PANEL:ApplySchemeSettings()

	derma.SkinHook( "Scheme", "SysButton", self )

end

derma.DefineControl( "DSysButton", "System Button", PANEL, "DButton" )
PANEL = {}

/*---------------------------------------------------------

---------------------------------------------------------*/
function PANEL:Init()

	self.DropButton = vgui.Create( "DSysButton", self )
	self.DropButton:SetType( "down" )
	self.DropButton.OnMousePressed = function( button, mcode ) self:OpenMenu( self.DropButton ) end
	
	self.TextEntry = vgui.Create( "DTextEntry", self )
	self.TextEntry.OnMousePressed = function( button, mcode ) self:OpenMenu( self.TextEntry ) end
	
	// Nicer default height
	self:SetTall( 20 )
	
	self.Choices = {}
	self.Data = {}

end

/*---------------------------------------------------------
   Name: Clear
---------------------------------------------------------*/
function PANEL:Clear()

	self.TextEntry:SetText( "" )
	self.Choices = {}
	self.Data = {}

	if ( self.Menu ) then
		self.Menu:Remove()
		self.Menu = nil
	end
	
end

/*---------------------------------------------------------
   Name: SetText
---------------------------------------------------------*/
function PANEL:SetText( text )

	self.TextEntry:SetText( text )

end

/*---------------------------------------------------------
   Name: GetOptionText
---------------------------------------------------------*/
function PANEL:GetOptionText( id )

	return self.Choices[ id ]

end

/*---------------------------------------------------------
   Name: PerformLayout
---------------------------------------------------------*/
function PANEL:PerformLayout()

	derma.SkinHook( "Layout", "MultiChoice", self )

end

/*---------------------------------------------------------
   Name: ChooseOption
---------------------------------------------------------*/
function PANEL:ChooseOption( value, index )

	if ( self.Menu ) then
		self.Menu:Remove()
		self.Menu = nil
	end

	self:SetText( value )
	self.TextEntry:ConVarChanged( value )

	self:OnSelect( index, value, self.Data[index] )
	
end

/*---------------------------------------------------------
   Name: ChooseOptionID
---------------------------------------------------------*/
function PANEL:ChooseOptionID( index )

	if ( self.Menu ) then
		self.Menu:Remove()
		self.Menu = nil
	end

	local value = self:GetOptionText( index )
	self:SetText( value )
	self.TextEntry:ConVarChanged( value )

	self:OnSelect( index, value, self.Data[index] )
	
end



/*---------------------------------------------------------
   Name: OnSelect
---------------------------------------------------------*/
function PANEL:OnSelect( index, value, data )

	// For override

end

/*---------------------------------------------------------
   Name: AddChoice
---------------------------------------------------------*/
function PANEL:AddChoice( value, data )

	local i = table.insert( self.Choices, value )
	
	if ( data ) then
		self.Data[ i ] = data
	end
	
	return i

end

/*---------------------------------------------------------
   Name: OpenMenu
---------------------------------------------------------*/
function PANEL:OpenMenu( pControlOpener )

	if ( pControlOpener ) then
		if ( pControlOpener == self.TextEntry ) then
			return
		end
	end

	// Don't do anything if there aren't any options..
	if ( #self.Choices == 0 ) then return end
	
	// If the menu still exists and hasn't been deleted
	// then just close it and don't open a new one.
	if ( self.Menu ) then
		self.Menu:Remove()
		self.Menu = nil
		return		
	end

	self.Menu = DermaMenu()
	
		for k, v in pairs( self.Choices ) do
			self.Menu:AddOption( v, function() self:ChooseOption( v, k ) end )
		end
		
		local x, y = self:LocalToScreen( 0, self:GetTall() )
		
		self.Menu:SetMinimumWidth( self:GetWide() )
		self.Menu:Open( x, y, false, self )		
		

end

/*---------------------------------------------------------
   Name: SetConVar
---------------------------------------------------------*/
function PANEL:SetConVar( cvar )

	self.TextEntry:SetConVar( cvar )

end

/*---------------------------------------------------------
   Name: SetEditable
---------------------------------------------------------*/
function PANEL:SetEditable( b )

	self.TextEntry:SetEditable( b )

end

/*---------------------------------------------------------
   Name: OnMousePressed
---------------------------------------------------------*/
function PANEL:OnMousePressed( button, mcode )

	self:OpenMenu()

end

/*---------------------------------------------------------
   Name: GenerateExample
---------------------------------------------------------*/
function PANEL:GenerateExample( ClassName, PropertySheet, Width, Height )

	local ctrl = vgui.Create( ClassName )
		ctrl:AddChoice( "Some Choice" )
		ctrl:AddChoice( "Another Choice" )
		ctrl:SetWide( 150 )
	
	PropertySheet:AddSheet( ClassName, ctrl, nil, true, true )

end

derma.DefineControl( "DMultiChoice", "", PANEL, "Panel" )
include( 'shared.lua' )
include( 'cl_hud.lua' )
include( 'cl_menu.lua' )
include( 'cl_scoreboard.lua' )
include( 'cl_rtv2.lua' )
include( 'cl_jukebox.lua' )
include( 'ChatBox.lua' )
include( 'vgui/scoreboardrow.lua' )
include( 'vgui/scoreboardpanel.lua' )
include( 'vgui/scoreboardteam.lua' )
include( 'vgui/scoreboardheader.lua' )
include( 'vgui/scoreboardfooter.lua' )
include( 'vgui/scoreboardicon.lua' )
include( 'mute_players_menu.lua' )