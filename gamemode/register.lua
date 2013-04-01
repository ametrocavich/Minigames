local db, error = mysql.connect("localhost", "root", "", "mg");  
if (db == 0) then Msg(error .. "\n") end

function GM:PlayerInitialize(ply) -- Lets Check and see if they have a user account
	local result, succ, error = mysql.query(db, "SELECT * FROM users WHERE steamid='"..ply:GetSteamid().."'"");  
	if not result then
		umsg.Start("register_callPlayer", ply)
		umsg.End()
	end
	--Get their Data
end

concommand.Add("register_regPlayer", function(ply, cmd, args)
	--Now, we will get their data, check and see if it already exists, and send out the corrent Umsg for them to handle.
	print("fuck, im lazy")
end)
print("fdsa")