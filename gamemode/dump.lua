
util.AddNetworkString( "IncomingHook" )
	if string.find(text, "!") == 1 and pl:GetNWBool("admin") == true then
		if string.find(text, "kick ") == 2 then
			local Player = string.lower(string.Trim(string.sub(text, 6)))
			local Found = ""
			local Kill = false
			for k, v in pairs(player.GetAll()) do
				if string.find(string.lower(v:Nick()), Player) and Found == "" then
					Found = v
				elseif string.find(string.lower(v:Nick()), Player) and Found != "" and Found != v then
					Kill = true
				end
			end
			if Kill == true then
				pl:ChatPrint("There are multiple players with that name.")
			elseif Kill == false and Found != "" then
				Found:Kick("Kicked by "..pl:Nick())
				for k, v in pairs(player.GetAll()) do
					v:ChatPrint("ADMIN "..pl:Nick().." kicked "..Found:Nick()..".")
				end
				print("----------\nADMIN "..pl:Nick().." kicked "..Found:Nick()..".\n----------")
			elseif Found == "" then
				pl:ChatPrint("There is nobody with that name.")
			else
				pl:ChatPrint('Error! The format is: !kick name')
			end	
		elseif string.find(text, "!ban ") == 1 then
			local Player = string.lower(string.Trim(string.sub(text, 7, string.find(text, ' ', 7))))
			local Found = ""
			local Kill = false
			for k, v in pairs(player.GetAll()) do
				if string.find(string.lower(v:Nick()), Player) and Found == "" then
					Found = v
				elseif string.find(string.lower(v:Nick()), Player) and Found != "" and Found != v then
					Kill = true
				end
			end
			if Kill == true then
				pl:ChatPrint("There are multiple players with that name.")
			elseif Kill == false and Found != "" and string.Trim(string.sub(string.Trim(text), 7 + string.len(Player), string.len(text))) != "" then
				local Time = string.sub(string.Trim(text), 7 + string.len(Player), string.len(text))
				if type(tonumber(Time)) != "number" or tonumber(Time) <= 0 or tonumber(Time) > 14400 then
					pl:ChatPrint("That is not a valid amount!")
					return
				end
				game.ConsoleCommand("banid "..Time.." "..Found:SteamID().."\n")
				game.ConsoleCommand("banid "..Time.." "..Found:UserID().."\n")
				game.ConsoleCommand("writeid\n")
				Found:Kick("Banned by "..pl:Nick().." for "..Time.." minutes.")
				for k, v in pairs(player.GetAll()) do
					v:ChatPrint("ADMIN "..pl:Nick().." banned "..Found:Nick().." for "..Time.." minutes.")
				end
				print("----------\nADMIN "..pl:Nick().." banned "..Found:Nick().." for "..Time.." minutes.\n----------")
			elseif Found == "" then
				pl:ChatPrint("There is nobody with that name.")
			else
					pl:ChatPrint('Error! The format is: !ban name time\n'.."and the player's name cannot have spaces in it.")
			end
		elseif string.find(text, "slay ") == 2 then
			local Player = string.lower(string.Trim(string.sub(text, 6)))
			local Found = ""
			local Kill = false
			for k, v in pairs(player.GetAll()) do
				if string.find(string.lower(v:Nick()), Player) and Found == "" then
					Found = v
				elseif string.find(string.lower(v:Nick()), Player) and Found != "" and Found != v then
					Kill = true
				end
			end
			if Kill == true then
				pl:ChatPrint("There are multiple players with that name.")
			elseif Kill == false and Found != "" then
				Found:Kill()
				for k, v in pairs(player.GetAll()) do
					v:ChatPrint("ADMIN "..pl:Nick().." slayed "..Found:Nick()..".")
				end
				print("----------\nADMIN "..pl:Nick().." slayed "..Found:Nick()..".\n----------")
			elseif Found == "" then
				pl:ChatPrint("There is nobody with that name.")
			else
				pl:ChatPrint('Error! The format is: !slay name')
			end
		elseif string.find(text, "spawn ") == 2 then
			local Player = string.lower(string.Trim(string.sub(text, 7)))
			local Found = ""
			local Kill = false
			for k, v in pairs(player.GetAll()) do
				if string.find(string.lower(v:Nick()), Player) and Found == "" then
					Found = v
				elseif string.find(string.lower(v:Nick()), Player) and Found != "" and Found != v then
					Kill = true
				end
			end
			if Kill == true then
				pl:ChatPrint("There are multiple players with that name.")
			elseif Kill == false and Found != "" then
				if Found:Team() != 1 then
					Found:SetTeam(Found:Team())
				else
					Found:SetTeam(2)
				end
				Found:Spawn()
				timer.Simple(1, function() CheckNoclip( Found ) end)
				for k, v in pairs(player.GetAll()) do
					v:ChatPrint("ADMIN "..pl:Nick().." spawned "..Found:Nick()..".")
				end
				print("----------\nADMIN "..pl:Nick().." spawned "..Found:Nick()..".\n----------")
			elseif Found == "" then
				pl:ChatPrint("There is nobody with that name.")
			else
				pl:ChatPrint('Error! The format is: !spawn name')
			end
		elseif string.find(text, "tp ") == 2 then
			local Player = string.lower(string.Trim(string.sub(text, 4)))
			local Found = ""
			local Kill = false
			for k, v in pairs(player.GetAll()) do
				if string.find(string.lower(v:Nick()), Player) and Found == "" then
					Found = v
				elseif string.find(string.lower(v:Nick()), Player) and Found != "" and Found != v then
					Kill = true
				end
			end
			if Kill == true then
				pl:ChatPrint("There are multiple players with that name.")
			elseif Kill == false and Found != "" then
				Found:SetPos(pl:GetEyeTrace().HitPos)
				for k, v in pairs(player.GetAll()) do
					v:ChatPrint("ADMIN "..pl:Nick().." teleported "..Found:Nick()..".")
				end
				print("----------\nADMIN "..pl:Nick().." teleported "..Found:Nick()..".\n----------")
			elseif Found == "" then
				pl:ChatPrint("There is nobody with that name.")
			else
				pl:ChatPrint('Error! The format is: !tp name')
			end
		elseif string.find(text, "tmute ") == 2 then
			local Player = string.lower(string.Trim(string.sub(text, 7)))
			local Found = ""
			local Kill = false
			for k, v in pairs(player.GetAll()) do
				if string.find(string.lower(v:Nick()), Player) and Found == "" then
					Found = v
				elseif string.find(string.lower(v:Nick()), Player) and Found != "" and Found != v then
					Kill = true
				end
			end
			if Kill == true then
				pl:ChatPrint("There are multiple players with that name.")
			elseif Kill == false and Found != "" then
				table.insert(TMuteTable, Found:SteamID())
				for k, v in pairs(player.GetAll()) do
					v:ChatPrint("ADMIN "..pl:Nick().." text muted "..Found:Nick()..".")
				end
				print("----------\nADMIN "..pl:Nick().." text muted "..Found:Nick()..".\n----------")
			elseif Found == "" then
				pl:ChatPrint("There is nobody with that name.")
			else
				pl:ChatPrint('Error! The format is: !tmute name')
			end
		elseif string.find(text, "untmute ") == 2 then
			local Player = string.lower(string.Trim(string.sub(text, 9)))
			local Found = ""
			local Kill = false
			for k, v in pairs(player.GetAll()) do
				if string.find(string.lower(v:Nick()), Player) and Found == "" then
					Found = v
				elseif string.find(string.lower(v:Nick()), Player) and Found != "" and Found != v then
					Kill = true
				end
			end
			if Kill == true then
				pl:ChatPrint("There are multiple players with that name.")
			elseif Kill == false and Found != "" then
				for k, v in pairs(TMuteTable) do
					if v == Found:SteamID() then
						TMuteTable[k] = ""
					end
				end
				for k, v in pairs(player.GetAll()) do
					v:ChatPrint("ADMIN "..pl:Nick().." un text muted "..Found:Nick()..".")
				end
				print("----------\nADMIN "..pl:Nick().." un text muted "..Found:Nick()..".\n----------")
			elseif Found == "" then
				pl:ChatPrint("There is nobody with that name.")
			else
				pl:ChatPrint('Error! The format is: !untmute name')
			end
		elseif string.find(text, "vmute ") == 2 then
			local Player = string.lower(string.Trim(string.sub(text, 7)))
			local Found = ""
			local Kill = false
			for k, v in pairs(player.GetAll()) do
				if string.find(string.lower(v:Nick()), Player) and Found == "" then
					Found = v
				elseif string.find(string.lower(v:Nick()), Player) and Found != "" and Found != v then
					Kill = true
				end
			end
			if Kill == true then
				pl:ChatPrint("There are multiple players with that name.")
			elseif Kill == false and Found != "" then
				Found:SetNWInt("cantalk", false)
				for k, v in pairs(player.GetAll()) do
					v:ChatPrint("ADMIN "..pl:Nick().." voice muted "..Found:Nick()..".")
				end
				print("----------\nADMIN "..pl:Nick().." voice muted "..Found:Nick()..".\n----------")
			elseif Found == "" then
				pl:ChatPrint("There is nobody with that name.")
			else
				pl:ChatPrint('Error! The format is: !vmute name')
			end
		elseif string.find(text, "unvmute ") == 2 then
			local Player = string.lower(string.Trim(string.sub(text, 9)))
			local Found = ""
			local Kill = false
			for k, v in pairs(player.GetAll()) do
				if string.find(string.lower(v:Nick()), Player) and Found == "" then
					Found = v
				elseif string.find(string.lower(v:Nick()), Player) and Found != "" and Found != v then
					Kill = true
				end
			end
			if Kill == true then
				pl:ChatPrint("There are multiple players with that name.")
			elseif Kill == false and Found != "" then
				Found:SetNWInt("cantalk", true)
				for k, v in pairs(player.GetAll()) do
					v:ChatPrint("ADMIN "..pl:Nick().." un voice muted "..Found:Nick()..".")
				end
				print("----------\nADMIN "..pl:Nick().." un voice muted "..Found:Nick()..".\n----------")
			elseif Found == "" then
				pl:ChatPrint("There is nobody with that name.")
			else
				pl:ChatPrint('Error! The format is: !unvmute name')
			end
		elseif string.find(text, "forcevote") == 2 then
			for k, v in pairs(player.GetAll()) do
				v:ConCommand("say rtv")
				v:ChatPrint("ADMIN "..pl:Nick().." forced a map vote.")
			end
			print("----------\nADMIN "..pl:Nick().." forced a map vote.\n----------")
		elseif string.find(text, "resetmap") == 2 then
			for k, v in pairs(player.GetAll()) do
					v:ChatPrint("ADMIN "..pl:Nick().." forced a map reset.")
			end
			Cleanup()
			print("----------\nADMIN "..pl:Nick().." forced a map reset.\n----------")
		elseif string.find(text, "help") == 2 then
			pl:ChatPrint("A list of commands and their functions has been printed to your console.")
			net.Start( "IncomingHook" )
				net.WriteString( "help" )
			net.Send(pl)
		elseif !(string.find(text, "give") == 2) then
			pl:ChatPrint("Unknown command!")
		end
	end
	if string.find(text, "!give") == 1 then
		local Player = string.lower(string.Trim(string.sub(text, 7, string.find(text, ' ', 7))))
		local Found = ""
		local Kill = false
		for k, v in pairs(player.GetAll()) do
			if string.find(string.lower(v:Nick()), Player) and Found == "" then
				Found = v
			elseif string.find(string.lower(v:Nick()), Player) and Found != "" and Found != v then
				Kill = true
			end
		end
		if Kill == true then
			pl:ChatPrint("There are multiple players with that name.")
		elseif Kill == false and Found != "" and string.Trim(string.sub(string.Trim(text), 7 + string.len(Player), string.len(text))) != "" then
			local Time = string.sub(string.Trim(text), 7 + string.len(Player), string.len(text))
			if type(tonumber(Time)) != "number" or tonumber(Time) < 10 or tonumber(Time) > tonumber(pl:GetNWInt("money")) then
				pl:ChatPrint("That is not a valid amount!")
				return
			end
			if pl:Nick() == Found:Nick() then
				pl:ChatPrint("You can't give money to yourself!")
				return
			end
			pl:ChatPrint("You gave "..Found:Nick().." "..math.floor(tonumber(Time)).." money!")
			Found:ChatPrint(""..pl:Nick().." gave you "..math.floor(tonumber(Time)).." money!")
			Found:SetNWInt("money", Found:GetNWInt("money") + math.floor(tonumber(Time)))
			pl:SetNWInt("money", pl:GetNWInt("money") - math.floor(tonumber(Time)))
		elseif Found == "" then
			pl:ChatPrint("There is nobody with that name.")
		else
				pl:ChatPrint('Error! The format is: !give name amount\n'.."and the player's name cannot have spaces in it.")
		end
	end