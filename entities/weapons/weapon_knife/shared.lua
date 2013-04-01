if (SERVER) then

	AddCSLuaFile( "shared.lua" )
	SWEP.Weight				= 5
	SWEP.AutoSwitchTo			= false
	SWEP.AutoSwitchFrom		= false
	SWEP.HoldType			= "knife"
	local ActIndex = {}
		ActIndex[ "knife" ]		= ACT_HL2MP_IDLE_KNIFE
	        ActIndex[ "2hand" ]		= ACT_HL2MP_IDLE_MELEE2

	function SWEP:SetWeaponHoldType( t )

		local index 								= ActIndex[ t ]
			
		if (index == nil) then
			return
		end

		self.ActivityTranslate 							= {}
		self.ActivityTranslate [ ACT_HL2MP_IDLE ] 			= index
		self.ActivityTranslate [ ACT_HL2MP_WALK ] 			= index + 1
		self.ActivityTranslate [ ACT_HL2MP_RUN ] 				= index + 2
		self.ActivityTranslate [ ACT_HL2MP_IDLE_CROUCH ] 		= index + 3
		self.ActivityTranslate [ ACT_HL2MP_WALK_CROUCH ] 		= index + 4
		self.ActivityTranslate [ ACT_HL2MP_GESTURE_RANGE_ATTACK ] 	= index + 5
		self.ActivityTranslate [ ACT_HL2MP_GESTURE_RELOAD ] 		= index + 6
		self.ActivityTranslate [ ACT_HL2MP_JUMP ] 			= index + 7
		self.ActivityTranslate [ ACT_RANGE_ATTACK1 ] 			= index + 8
	
		self:SetupWeaponHoldTypeForAI( t )
	end
end


if ( CLIENT ) then
	SWEP.PrintName			= "Knife"	
	SWEP.Author				= "Minigames Hunger"
	SWEP.DrawAmmo 			= false
	SWEP.DrawCrosshair 		= false
	SWEP.ViewModelFOV			= 65
	SWEP.ViewModelFlip		= false
	SWEP.CSMuzzleFlashes		= false
	
	SWEP.Slot				= 1
	SWEP.SlotPos			= 1
	SWEP.IconLetter			= "j"

	killicon.AddFont("css_knife", "CSKillIcons", SWEP.IconLetter, Color( 255, 210, 0, 255 ))

	surface.CreateFont( "csd", 
                    {
                    font    = "CSKillIcons",
                    size    = ScreenScale(30),
                    weight  = 500,
                    antialias = true,
                    shadow = true
            })
		surface.CreateFont( "csd", 
                    {
                    font    = "CSSelectIcons",
                    size    = ScreenScale(60),
                    weight  = 500,
                    antialias = true,
                    shadow = true
            })
end



SWEP.Category				= "Counter-Strike"

SWEP.Spawnable				= true
SWEP.AdminSpawnable			= true

SWEP.ViewModel 				= "models/weapons/v_knife_t.mdl"
SWEP.WorldModel 				= "models/weapons/w_knife_t.mdl" 

SWEP.Weight					= 5
SWEP.AutoSwitchTo				= false
SWEP.AutoSwitchFrom			= false

SWEP.Primary.ClipSize			= -1
SWEP.Primary.Damage			= 100
SWEP.Primary.DefaultClip		= -1
SWEP.Primary.Automatic			= true
SWEP.Primary.Ammo				= ""

SWEP.Secondary.ClipSize			= -1
SWEP.Secondary.DefaultClip		= -1
SWEP.Secondary.Damage			= 100
SWEP.Secondary.Automatic		= true
SWEP.Secondary.Ammo			= "none"

SWEP.MissSound 				= Sound("weapons/knife/knife_slash1.wav")
SWEP.WallSound 				= Sound("weapons/knife/knife_hitwall1.wav")
SWEP.DeploySound				= Sound("weapons/knife/knife_deploy1.wav")
SWEP.Ragdollhit 				= Sound("weapons/knife/knife_stab.wav")



/*---------------------------------------------------------
Think
---------------------------------------------------------*/
function SWEP:Think()


end

/*---------------------------------------------------------
Initialize
---------------------------------------------------------*/
function SWEP:Initialize() 
	owner= self.Owner
   RunConsoleCommand("mg_givecrow")
 	if ( SERVER ) then 
 		self:SetWeaponHoldType( self.HoldType ) 
		owner:Give("weapon_crowbar")
 	end 
	util.PrecacheSound("weapons/iceaxe/iceaxe_swing1.wav")
	util.PrecacheSound("weapons/knife/knife_hit1.wav")
	util.PrecacheSound("weapons/knife/knife_hit2.wav")
	util.PrecacheSound("weapons/knife/knife_hit3.wav")
	util.PrecacheSound("weapons/knife/knife_hit4.wav")	 
 end 

/*---------------------------------------------------------
Deploy
---------------------------------------------------------*/
function SWEP:Deploy()
	self.Weapon:SendWeaponAnim( ACT_VM_DRAW )
	self.Weapon:SetNextPrimaryFire(CurTime() + 1)
         self:DoIdle(1)
	self.Weapon:EmitSound( self.DeploySound, 50, 100 )
self.Weapon:SetNextSecondaryFire(CurTime() + 1)
	return true
end

/*---------------------------------------------------------
SecondaryAttack
---------------------------------------------------------*/
function SWEP:SecondaryAttack()

	local tr = {}
	tr.start = self.Owner:GetShootPos()
	tr.endpos = self.Owner:GetShootPos() + ( self.Owner:GetAimVector() * 50 )
	tr.filter = self.Owner
	tr.mask = MASK_SHOT
	local trace = util.TraceLine( tr )

self:DoIdle(1)

        self.Weapon:SetNextPrimaryFire(CurTime() + 1)
	self.Weapon:SetNextSecondaryFire(CurTime() + 1.1)
	self.Owner:SetAnimation( PLAYER_ATTACK1 )

	if ( trace.Hit ) then

		if trace.Entity:IsPlayer() or string.find(trace.Entity:GetClass(),"npc") or string.find(trace.Entity:GetClass(),"prop_ragdoll") then
			self.Weapon:SendWeaponAnim(ACT_VM_HITCENTER)
			bullet = {}
			bullet.Num    = 1
			bullet.Src    = self.Owner:GetShootPos()
			bullet.Dir    = self.Owner:GetAimVector()
			bullet.Spread = Vector(0, 0, 0)
			bullet.Tracer = 0
			bullet.Force  = 10
			bullet.Damage = 60
			self.Owner:FireBullets(bullet) 
			self.Weapon:EmitSound(self.Ragdollhit,100,math.random(90,120))
		else
			self.Weapon:SendWeaponAnim(ACT_VM_HITCENTER)
			bullet = {}
			bullet.Num    = 1
			bullet.Src    = self.Owner:GetShootPos()
			bullet.Dir    = self.Owner:GetAimVector()
			bullet.Spread = Vector(0, 0, 0)
			bullet.Tracer = 0
			bullet.Force  = 10
			bullet.Damage = 60
			self.Owner:FireBullets(bullet) 
			self.Weapon:EmitSound(self.WallSound,100,math.random(90,120))		
			util.Decal("ManhackCut", trace.HitPos + trace.HitNormal, trace.HitPos - trace.HitNormal)
		end
	else
		self.Weapon:EmitSound(self.MissSound,100,math.random(90,120))
		self.Weapon:SendWeaponAnim(ACT_VM_MISSCENTER)
self.Weapon:SetNextPrimaryFire(CurTime() + 1)
	end
end

/*---------------------------------------------------------
PrimaryAttack
---------------------------------------------------------*/
function SWEP:PrimaryAttack()

	local tr = {}
	tr.start = self.Owner:GetShootPos()
	tr.endpos = self.Owner:GetShootPos() + ( self.Owner:GetAimVector() * 50 )
	tr.filter = self.Owner
	tr.mask = MASK_SHOT
	local trace = util.TraceLine( tr )

self:DoIdle(1)

self.Weapon:SetNextSecondaryFire(CurTime() + 0.5)
self.Weapon:SetNextPrimaryFire(CurTime() + 0.5)
	self.Owner:SetAnimation( PLAYER_ATTACK1 )

	if ( trace.Hit ) then

		if trace.Entity:IsPlayer() or string.find(trace.Entity:GetClass(),"npc") or string.find(trace.Entity:GetClass(),"prop_ragdoll") then
			self.Weapon:SendWeaponAnim(ACT_VM_HITCENTER)
			bullet = {}
			bullet.Num    = 1
			bullet.Src    = self.Owner:GetShootPos()
			bullet.Dir    = self.Owner:GetAimVector()
			bullet.Spread = Vector(0, 0, 0)
			bullet.Tracer = 1
			bullet.Force  = 5
			bullet.Damage = 20
			self.Owner:FireBullets(bullet) 
			self.Weapon:EmitSound( "weapons/knife/knife_hit" .. math.random(1, 4) .. ".wav" )
		else
			self.Weapon:SendWeaponAnim(ACT_VM_HITCENTER)
			bullet = {}
			bullet.Num    = 1
			bullet.Src    = self.Owner:GetShootPos()
			bullet.Dir    = self.Owner:GetAimVector()
			bullet.Spread = Vector(0, 0, 0)
			bullet.Tracer = 1
			bullet.Force  = 5
			bullet.Damage = 20
			self.Owner:FireBullets(bullet) 
			self.Weapon:EmitSound(self.WallSound,100,math.random(90,120))		
			util.Decal("ManhackCut", trace.HitPos + trace.HitNormal, trace.HitPos - trace.HitNormal)
		end
	else
		self.Weapon:EmitSound(self.MissSound,100,math.random(90,120))
		self.Weapon:SendWeaponAnim(ACT_VM_MISSCENTER)
self.Weapon:SetNextSecondaryFire(CurTime() + 1)
	end
end

/*---------------------------------------------------------
Reload
---------------------------------------------------------*/
function SWEP:Reload()

	return false
end

/*---------------------------------------------------------
OnRemove
---------------------------------------------------------*/
function SWEP:OnRemove()

return true
end

/*---------------------------------------------------------
Holster
---------------------------------------------------------*/
function SWEP:Holster()

timer.Destroy("KnifeIdle")

	return true
end

/*---------------------------------------------------------
ShootEffects
---------------------------------------------------------*/
function SWEP:ShootEffects()

end


/*---------------------------------------------------------
DrawWeaponSelection
---------------------------------------------------------*/
function SWEP:DrawWeaponSelection(x, y, wide, tall, alpha)

	draw.SimpleText(self.IconLetter, "CSSelectIcons", x + wide / 2, y + tall * 0.2, Color(255, 210, 0, 255), TEXT_ALIGN_CENTER)
	-- Draw a CS:S select icon

	self:PrintWeaponInfo(x + wide + 20, y + tall * 0.95, alpha)
	-- Print weapon information
end

function SWEP:DoIdle(seconds)
	timer.Destroy("KnifeIdle")
	if IsValid(self) then
		timer.Create("KnifeIdle", seconds, 1, function() if IsValid(self) then self:SendWeaponAnim(ACT_VM_IDLE); end end)
	else
	timer.Destroy("KnifeIdle")
	end
end