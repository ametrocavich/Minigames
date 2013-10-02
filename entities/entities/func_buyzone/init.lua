ENT.Type = "brush"
ENT.Base = "base_entity"
ENT.Team = 0

function ENT:Initialize()
	if(!GAMEMODE.BuyzoneEntities) then
		GAMEMODE.BuyzoneEntities = {}
	end
	table.insert(GAMEMODE.BuyzoneEntities, self)
end


function ENT:KeyValue(k,v)
    if k == "TeamNum" then
        self.Team = tonumber(v)
    end
end


function ENT:StartTouch(ent)
	if !self:PassesTriggerFilters(ent) then return end
	ent.IsInBuyzone = true
end


function ENT:EndTouch(ent)
	if !self:PassesTriggerFilters(ent) then return end
	ent.IsInBuyzone = false
end

local function PassesFilter( self, ent )
	if ent == NULL or !IsValid(ent) or !ent:IsPlayer() then return false end
	return self.Team and ent.Team and ( self.Team == 0 || ent:Team() == self.Team )
end

function ENT:PassesTriggerFilters(ent)
	local success, pass = pcall( PassesFilter, self, ent )
	return success and pass and !isstring(pass)
end