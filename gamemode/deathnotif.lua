local function DeathNotifications( Victim, Inflictor, Attacker )
	local NewAttacker = Attacker
	local NewInflictor = Inflictor

	if Attacker:GetNWEntity("OwnerObj"):IsValid() then
		NewAttacker = Attacker:GetNWEntity("OwnerObj")
		NewInflictor = Attacker
	end

 	if ( NewInflictor and NewInflictor == NewAttacker and (NewInflictor:IsPlayer() or NewInflictor:IsNPC()) ) then
 		NewInflictor = NewInflictor:GetActiveWeapon()
 		if ( !NewInflictor or NewInflictor == NULL ) then NewInflictor = NewAttacker end
 	end

 	if NewAttacker:IsPlayer() and not NewInflictor:IsPlayer() then
		for k,v in pairs(player.GetAll()) do
			if v:IsAdmin() then
				if Attacker:GetClass() == "prop_physics" then
					v:PrintMessage(HUD_PRINTCONSOLE, "Player Killed:   "..NewAttacker:Nick().. " killed "..Victim:Nick() .." with a " ..NewInflictor:GetClass().. "\nThis doesn't mean "..NewAttacker:Nick().. " is the killer but the chance is big!")
				else
					v:PrintMessage(HUD_PRINTCONSOLE, "Player Killed:   "..NewAttacker:Nick().. " killed "..Victim:Nick() .." with a " ..NewInflictor:GetClass()..".")
				end
			end
		end
		return
	end

	for k,v in pairs(player.GetAll()) do
		if v:IsAdmin() then
			if NewInflictor == Victim then
				v:PrintMessage(HUD_PRINTCONSOLE, "Player scuicided:   "..Victim:Nick().. " suicided!")
			else
				v:PrintMessage(HUD_PRINTCONSOLE, "Player Killed:   "..Victim:Nick().. " Got killed by " ..NewAttacker:GetClass().. " with a " .. NewInflictor:GetClass()..".")
			end
		end
	end

end
hook.Add("PlayerDeath", "DeathNotifications", DeathNotifications)