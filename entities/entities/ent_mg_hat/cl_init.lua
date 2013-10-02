include("shared.lua")

function ENT:Initialize()
	local owner = self:GetOwner()
	if IsValid(owner) then
		if owner:GetNWString("currhat") != "" then
			self:SetModel(owner:GetNWString("currhat"))
		end
		timer.Create(owner:SteamID().."hattimer", .2, 0, function()
			if IsValid(owner) and IsValid(self) then
				if type(owner:GetNWString("currhat")) == "string" and owner:GetNWString("currhat") != "" then
					self:SetModel(owner:GetNWString("currhat"))
				end
			end
		end)
	end
	self:AddEffects(bit.bor(EF_BONEMERGE, EF_BONEMERGE_FASTCULL, EF_PARENT_ANIMATES))
end

function ENT:Draw()
	local owner = self:GetOwner()
	if IsValid(owner) then
		if !owner:Alive() then return end
		if owner:GetNWString("currhat") == "" then return end
		if owner == LocalPlayer() then return end
		if self.Entity:GetModel() == "models/error.mdl" then return end
		local boneindex = owner:LookupBone("ValveBiped.Bip01_Head1")
		if boneindex then
			local pos, ang = owner:GetBonePosition(boneindex)
			if pos and pos ~= owner:GetPos() then
				ang:RotateAroundAxis(ang:Right(), 270)
				ang:RotateAroundAxis(ang:Up(), 270)
				self.Entity:SetPos(pos + ang:Forward()*7)
				self.Entity:SetAngles(ang)
				self.Entity:DrawModel()
			end
		end
	end
end

