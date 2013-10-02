AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )

include('shared.lua')

/*---------------------------------------------------------
Initialize
---------------------------------------------------------*/
function ENT:Initialize()
	
	self:SetModel( "models/Gibs/HGIBS.mdl" )
	self:PhysicsInit( SOLID_VPHYSICS )	
	self.Entity:SetMoveType( MOVETYPE_VPHYSICS )
	self.Entity:SetSolid( SOLID_VPHYSICS )
	self.Entity:SetCollisionGroup( COLLISION_GROUP_DEBRIS )
	local phys = self.Entity:GetPhysicsObject()
	local trail = util.SpriteTrail(self.Entity, 0, Color(255, 255, 255, 255), false, 10, 10, 4, 1/(10+10)*0.5, string.gsub(self:GetOwner():GetNWString("currtrail"), "vtf", "vmt"))
	self.NextThink = CurTime() +  1

	if ( phys:IsValid() ) then
		phys:Wake()
		phys:SetMass( 1 )
	end

	self:GetPhysicsObject():SetMass( 1 )	
end

/*---------------------------------------------------------
Think
---------------------------------------------------------*/
function ENT:Think()
	
	self.lifetime = self.lifetime or CurTime() + 10
	if CurTime() > self.lifetime then
		self:Remove()
	end
end

/*---------------------------------------------------------
Disable
---------------------------------------------------------*/

/*---------------------------------------------------------
PhysicsCollided
---------------------------------------------------------*/
function ENT:PhysicsCollide( data, phys )
	
	local phys = self.Entity:GetPhysicsObject()	
	local physs = self:GetPhysicsObject()	
	local Ent = data.HitEntity
	if !(IsValid( Ent ) and Ent:IsWorld()) then return end

	if Ent:IsWorld() then
			util.Decal( "ManhackCut", data.HitPos + data.HitNormal, data.HitPos - data.HitNormal )
			self.Entity:Remove()
	elseif Ent.Health then
		if not(Ent:IsPlayer() and Ent:IsNPC() and Ent:GetClass() == "prop_ragdoll") then 
			util.Decal( "ManhackCut", data.HitPos + data.HitNormal, data.HitPos - data.HitNormal )
		end

		if (Ent:IsPlayer() and Ent:IsNPC() and Ent:GetClass() == "prop_ragdoll") then 
			local effectdata = EffectData()
			effectdata:SetStart( data.HitPos )
			effectdata:SetOrigin( data.HitPos )
			effectdata:SetScale( 1 )
			util.Effect( "BloodImpact", effectdata )
		end
	self.Entity:Remove()
	end
	self:Remove()
	self.Entity:Remove()
	phys:Remove()
	physs:Remove()
	self.Entity:SetOwner( NUL )
	
end

/*---------------------------------------------------------
Use
---------------------------------------------------------*/
function ENT:Use( activator, caller )
end
