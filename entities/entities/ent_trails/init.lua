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
	self.Entity:SetNetworkedString("Owner", "World")
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
   Name: ENT:PhysicsCollided()
---------------------------------------------------------*/
function ENT:PhysicsCollide(data, phys)
	
	local Ent = data.HitEntity
	if !(IsValid(Ent) or Ent:IsPlayer()) then return end
	if Ent:IsPlayer() then
			self:SetSolid( SOLID_NONE )
	end

	if Ent:IsWorld() then
			util.Decal("ManhackCut", data.HitPos + data.HitNormal, data.HitPos - data.HitNormal)

			if self.Entity:GetVelocity():Length() > 400 then
				self:EmitSound("npc/roller/blade_out.wav", 60)
				self:SetPos(data.HitPos - data.HitNormal * 10)
				self:SetAngles(data.HitNormal:Angle() + Angle(40, 0, 0))
				self:GetPhysicsObject():EnableMotion(false)
			else
				self:EmitSound(self.Hit[math.random(1, #self.Hit)])
			end


	elseif Ent.Health then
		if not(Ent:IsPlayer() or Ent:IsNPC() or Ent:GetClass() == "prop_ragdoll") then 
			util.Decal("ManhackCut", data.HitPos + data.HitNormal, data.HitPos - data.HitNormal)
		end


		if (Ent:IsPlayer() or Ent:IsNPC() or Ent:GetClass() == "prop_ragdoll") then 
			local effectdata = EffectData()

			self:SetSolid( SOLID_NONE )
		end
	end

	self.Entity:SetOwner(NUL)
end

/*---------------------------------------------------------
Use
---------------------------------------------------------*/
function ENT:Use( activator, caller )
end
