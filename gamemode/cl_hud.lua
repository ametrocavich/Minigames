/*---------------------------------------------------------------------------draw text gmod
HUD ConVars
---------------------------------------------------------------------------*/

local function formatNumber(n)
	n = tonumber(n)
	if (!n) then
		return 0
	end
	if n >= 1e14 then return tostring(n) end
    n = tostring(n)
    sep = sep or ","
    local dp = string.find(n, "%.") or #n+1
	for i=dp-4, 1, -3 do
		n = n:sub(1, i) .. sep .. n:sub(i+1)
    end
    return n
end
surface.CreateFont( "HealthText", {
	font = "HUDNumber5",
	size = 36,
	weight = 600,
	blursize = 0,
	scanlines = 0,
	antialias = true,
	underline = false,
	italic = false,
	strikeout = false,
	symbol = false,
	rotary = false,
	shadow = false,
	additive = false,
	outline = false,
} )
surface.CreateFont( "HUDText", {
	font = "HUDNumber5",
	size = 16,
	weight = 600,
	blursize = 0,
	scanlines = 0,
	antialias = true,
	underline = false,
	italic = false,
	strikeout = false,
	symbol = false,
	rotary = false,
	shadow = false,
	additive = false,
	outline = false,
} )
local ConVars = {}
local HUDWidth
local HUDHeight
local flat = Material("vgui/white.vtf")
local sin,cos,rad = math.sin,math.cos,math.rad --it slightly increases the speed.
local HUDAlpha = 245
local CirclePassesCVar = CreateClientConVar("mg_hudquality", "200", true, false)
local CirclePasses = CirclePassesCVar:GetInt()
local function updateHUD(CVar, PreviousValue, NewValue)
	CirclePasses = NewValue
end
cvars.AddChangeCallback("mg_hudquality", updateHUD)
local PortraitScale = ScrW() / 19
local CircleMargin = 2
local HealthCircleMargin = 10
local HealthCircleWidth = 26
local PortraitPos = Vector(PortraitScale + 10 , ScrH() - PortraitScale - CircleMargin )
DisplayPortrait = true
local MarginCircle = {}
for i=1,CirclePasses do
    MarginCircle[i] = {x = PortraitPos.x + cos(rad(i*360)/CirclePasses)*PortraitScale,y = PortraitPos.y + sin(rad(i*360)/CirclePasses)*PortraitScale}
end
local InnerCircle = {}
for i=1,CirclePasses do
    InnerCircle[i] = {x = PortraitPos.x + cos(rad(i*360)/CirclePasses)*(PortraitScale - HealthCircleMargin),y = PortraitPos.y + sin(rad(i*360)/CirclePasses)*(PortraitScale - HealthCircleMargin)}
end
local HungerCircleWidth = PortraitScale - HealthCircleWidth - HealthCircleMargin + 2
local HungerCircle = {}
for i=1,CirclePasses do
    HungerCircle[i] = {x = PortraitPos.x + cos(rad(i*360)/CirclePasses)* (HungerCircleWidth),y = PortraitPos.y + sin(rad(i*360)/CirclePasses)* (HungerCircleWidth)}
end
local MarginCircle2 = {}
for i=1,CirclePasses do
    MarginCircle2[i] = {x = PortraitPos.x + cos(rad(i*360)/CirclePasses)*(PortraitScale- HealthCircleWidth),y = PortraitPos.y + sin(rad(i*360)/CirclePasses)*(PortraitScale- HealthCircleWidth)}
end
local MarginCircle2 = {}
for i=1,CirclePasses do
    MarginCircle2[i] = {x = PortraitPos.x + cos(rad(i*360)/CirclePasses)*(PortraitScale- HealthCircleWidth*1.75),y = PortraitPos.y + sin(rad(i*360)/CirclePasses)*(PortraitScale- HealthCircleWidth*1.75)}
end



function DrawCircularCustomHud()
    surface.SetMaterial(flat)

        --Circle behind everything
        surface.SetDrawColor( 50,50,50, HUDAlpha )
        surface.DrawPoly( MarginCircle )
	
        --White Circle
        --surface.SetDrawColor( 255,255,255, HUDAlpha )
        --surface.DrawPoly( InnerCircle )

        --Black Circle 
        surface.SetDrawColor( 50,50,50, HUDAlpha )
        surface.DrawPoly( HungerCircle )
		surface.SetDrawColor( 50,50,50, HUDAlpha )
		surface.DrawRect(PortraitScale, 18*ScrH()/20, ScrW()/2 - PortraitScale*7, PortraitScale + CircleMargin / 2 )
				--Circle behind everything
        surface.SetDrawColor( 250,250,250, HUDAlpha )
        surface.DrawPoly( MarginCircle2 )
        --Health Display
	surface.SetDrawColor( 200, 255, 0, 255 )
        if LocalPlayer():Health() > 0 then
            for a = 0, math.Clamp( LocalPlayer():Health() / (100/CirclePasses), 0, CirclePasses - 1 ) do
                surface.DrawTexturedRectRotated( PortraitPos.x + cos( rad( -a * 360/CirclePasses + 270 ) ) * (PortraitScale - HealthCircleWidth/2 - HealthCircleMargin), PortraitPos.y - sin( rad( -a * 360/CirclePasses + 270) ) * (PortraitScale - HealthCircleWidth/2 - HealthCircleMargin), HealthCircleWidth, 10 + sin( rad(360/CirclePasses) ) * HealthCircleWidth * 2, -a * 360/CirclePasses + 270 )
            end
        end
        
        --Armor Display

        surface.SetDrawColor( 125, 33, 43, 255 )
        if LocalPlayer():Armor() > 0 then
            for a = 0, math.Clamp( LocalPlayer():Armor() / (100/CirclePasses), 0, CirclePasses - 1 ) do
                     
            end
        end



        --render.SetScissorRect(0,0, ScrW(), ScrH() - PortraitScale * 0.48 - CircleMargin, false)

        --Health Percentage Text
		surface.SetTextColor( 54, 69, 79, 255 )
		if LocalPlayer():Health() > 99 then
			surface.SetTextPos(ScrW() / 23,ScrH() - 105 ) 
		elseif LocalPlayer():Health() < 10 then
			surface.SetTextPos(ScrW() / 19,ScrH() - 105 ) 
		else
			surface.SetTextPos(ScrW() / 21,ScrH() - 105 ) 
		end
		surface.SetFont("HealthText")
		surface.DrawText( tostring(math.Clamp(LocalPlayer():Health(), 0, 100)))
		surface.SetFont("HUDText")
		surface.SetTextColor(255, 255, 255)
		surface.SetTextPos(18*ScrH()/20, ScrW()/2 - PortraitScale*7) 
		surface.DrawText("Coins ")
		surface.SetTextColor(0, 255, 0)
		surface.SetTextPos(142, ScrH() - 60) 
		surface.DrawText(LocalPlayer():GetNWInt("money"))	
end
function GM:HUDPaint()
	DrawCircularCustomHud()
	self.BaseClass:HUDPaint()
end

function hidehud(name)
	for k, v in pairs{"CHudHealth", "CHudBattery", "CHudAmmo", "CHudSecondaryAmmo", "CHudChat"} do
		if name == v then return false end
	end
end

hook.Add("HUDShouldDraw", "hidehud", hidehud)