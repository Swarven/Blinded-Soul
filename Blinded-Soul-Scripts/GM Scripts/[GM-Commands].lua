local Red = "\124c00FF3333"
local Blue = "\124c000070dd"
local Green = "\124c0033FF33"
local Orange = "\124c00FFA500"
local EndColor = "\124r"
local GetPlayers = GetPlayersInWorld()
local GetGMs = GetPlayersInWorld()
function CustomGMCommands_ChatCommands(event, plr, message, type, language, unit)
-----------================GM Commands==============------------
if plr:GetGmRank() == "3" or plr:GetGmRank() == "az" then
	if string.find(string.lower(message), ".npc fly") then
	    if (plr:GetSelection() == nil) or (plr:GetSelection():IsCreature() == false) then
		plr:SendBroadcastMessage("[Command] Failed! You Must Target A NPC For This Command!")
		else
local CreatureSpawnID = plr:GetSelection():GetSpawnId()
            WorldDBQuery("UPDATE creature_spawns SET CanFly = '2' WHERE id = '"..CreatureSpawnID.."' LIMIT 1;", 0)
local GetNPCEntry = WorldDBQuery("SELECT Entry FROM creature_spawns WHERE Id = '"..CreatureSpawnID.."'", 0):GetColumn(0):GetString()
local GetNPCName = WorldDBQuery("SELECT name FROM creature_names WHERE entry = '"..GetNPCEntry.."'", 0):GetColumn(0):GetString()
			for index, GMGlobal in pairs(GetGMs) do
		        if GMGlobal:IsGm() then
		            GMGlobal:SendBroadcastMessage("[GM Command] "..plr:GetName().." Has Set NPC ["..GetNPCName.."] ["..CreatureSpawnID.."] To Not Fall!")
		        end
			end
		end
    return 0
	end
--------======================================================================-------
    if string.find(string.lower(message), ".npc id") then
	    if (plr:GetSelection() == nil) or (plr:GetSelection():IsCreature() == false) then
		plr:SendBroadcastMessage("[Command] Failed! You Must Target A NPC For This Command!")
		else
local CreatureSpawnID = plr:GetSelection():GetSpawnId()
local GetNPCEntry = WorldDBQuery("SELECT Entry FROM creature_spawns WHERE Id = '"..CreatureSpawnID.."'", 0):GetColumn(0):GetString()
local GetNPCName = WorldDBQuery("SELECT name FROM creature_names WHERE entry = '"..GetNPCEntry.."'", 0):GetColumn(0):GetString()
		plr:SendBroadcastMessage("[GM Command] Name: ["..GetNPCName.."] Spawn_ID: ["..CreatureSpawnID.."]")
		end
    return 0
	end
----=========================================================================------
	if string.find(string.lower(message), ".instance id") then
    plr:SendBroadcastMessage("[Command] Instance ID: "..plr:GetInstanceID())
    return 0
	end
--------======================================================================-------
	local Zone = plr:GetZoneId()
    if string.find(string.lower(message), ".find zone") then
	plr:SendBroadcastMessage("\124c00FFA500ZoneID:\124r \124c0033FF33"..Zone.."")
	return 0
	end
----=========================================================================------
	if string.find(string.lower(message), ".char script") then
	local plrtarget = plr:GetSelection()
		if (plr:GetSelection() == nil) or (plr:GetSelection():IsPlayer() == false) then
		plr:SendBroadcastMessage("[Command] Failed! You Must Target A Player For This Command!")
		else
	        if (ScriptDBQuery("SELECT Character_Name FROM characters_graveyards WHERE Character_Name = '"..plrtarget:GetName().."'", 0) == nil) then
	        ScriptDBQuery("INSERT INTO characters_graveyards(Character_Name, Graveyard_ID, SetFacing, Flags) VALUES ('"..plrtarget:GetName().."', NULL, '1', '3')", 0)
            plr:SendBroadcastMessage("[DataBase] Character: "..plrtarget:GetName().." Has Been Added Succefully Into The [Graveyard] DataBase!")
			plrtarget:SendBroadcastMessage("[DataBase] "..plr:GetName().." Has Succefully Added You To The [Graveyard] DataBase!")
	        end
            plr:SendBroadcastMessage("[GM Command] Adding Character To Database... Done")
			plrtarget:SendBroadcastMessage("[GM Command] You Have Been Added To The Database!")
		end
    return 0
	end
end
---===========================Admin Commands=================================------
if plr:GetGmRank() == "3" or plr:GetGmRank() == "az" then
    if string.find(string.lower(message), ".message get") then
local MessageID = string.sub(message, 14)
if (ScriptDBQuery("SELECT message FROM global_messages_system WHERE Id = '"..MessageID.."'", 0) ~= nil) then
local GetID = ScriptDBQuery("SELECT * FROM global_messages_system WHERE id = '"..MessageID.."'", 0)
local GetFaction = GetID:GetColumn(1):GetString()
local GetType = GetID:GetColumn(2):GetString()
local GetMessage = GetID:GetColumn(4):GetString()
-----------------======================-------------
if (GetFaction == "0") then
Faction = Blue.."[Alliance] "..EndColor
end
if (GetFaction == "1") then
Faction = Red.."[Horde] "..EndColor
end
if (GetFaction == "2") then
Faction = Orange.."[World] "..EndColor
end
----
if (GetType == "0") then
Type = "[News] "
end
if (GetType == "1") then
Type = "[Event] "
end
if (GetType == "2") then
Type = "[Reminder] "
end
----=====================================------
		plr:SendBroadcastMessage("[Grabbing Info] ID: "..MessageID.."|Faction: "..GetFaction.."|Type: "..GetType)
		plr:SendBroadcastMessage(Faction..Type..Green..GetMessage..EndColor)
			else
		    plr:SendBroadcastMessage("Message ID["..MessageID.."] Does Not Exsist!")
			end
	return 0
    end
	-------=============================-----------
    if string.find(string.lower(message), ".message set") then
local MessageID = string.sub(message, 14)
local FactionID = string.sub(message, 16)
local TypeID = string.sub(message, 18)
local SetMessage = string.sub(message, 20)
            if (ScriptDBQuery("SELECT message FROM global_messages_system WHERE Id = '"..MessageID.."'", 0) ~= nil) then
			    if string.find(FactionID, "0") then
                Faction = Blue.."[Alliance] "..EndColor
			    FactionCheck = "Success"
                else
                if string.find(FactionID, "1") then
                Faction = Red.."[Horde] "..EndColor
				FactionCheck = "Success"
                else
                if string.find(FactionID, "2") then
                Faction = Orange.."[World] "..EndColor
			    FactionCheck = "Success"
			    else
				FactionCheck = "Fail"
				end
				end
				end
				if (FactionCheck == "Success") then
                    if string.find(TypeID, "0") then
                    Type = "[News] "
				    TypeCheck = "Success"
                    else
                    if string.find(TypeID, "1") then
                    Type = "[Event] "
				    TypeCheck = "Success"
                    else
                    if string.find(TypeID, "2") then
                    Type = "[Reminder] "
				    TypeCheck = "Success"
                    else
					TypeCheck = "Fail"
				    end
					end
					end
					if (TypeCheck == "Success") then
					ScriptDBQuery("UPDATE global_messages_system SET faction='"..FactionID.."', type='"..TypeID.."', message='"..SetMessage.."' WHERE id = '"..MessageID.."' LIMIT 1;", 0)
					plr:SendBroadcastMessage("[GM Command] Message Set Success! Preview:")
					plr:SendBroadcastMessage(SetMessage)
					else
				    plr:SendBroadcastMessage("[GM Command] Availiable Types: [0 = News] [1 = Event] [2 = Reminder]")
					end
				else
			    plr:SendBroadcastMessage("[GM Command] Availiable Factions: [0 = Alliance] [1 = Horde] [2 = World]")
			    end
			else
		    plr:SendBroadcastMessage("Message ID["..MessageID.."] Does Not Exsist!")
			end
	    return 0
	end
	
    if string.find(string.lower(message), ".message force") then
local MessageID = string.sub(message, 16)
if (ScriptDBQuery("SELECT message FROM global_messages_system WHERE Id = '"..MessageID.."'", 0) ~= nil) then
local GetID = ScriptDBQuery("SELECT * FROM global_messages_system WHERE id = '"..MessageID.."'", 0)
local GetFaction = GetID:GetColumn(1):GetString()
local GetType = GetID:GetColumn(2):GetString()
local GetMessage = GetID:GetColumn(4):GetString()
-----------------======================-------------
if (GetFaction == "0") then
Faction = Blue.."[Alliance] "..EndColor
end
if (GetFaction == "1") then
Faction = Red.."[Horde] "..EndColor
end
if (GetFaction == "2") then
Faction = Orange.."[World] "..EndColor
end
----
if (GetType == "0") then
Type = "[News] "
end
if (GetType == "1") then
Type = "[Event] "
end
if (GetType == "2") then
Type = "[Reminder] "
end
----=====================================------
        for k, SendMessageToPlayers in pairs(GetPlayers) do
		SendMessageToPlayers:SendBroadcastMessage(Faction..Type..Green..GetMessage..EndColor)
		end
			else
		    plr:SendBroadcastMessage("Message ID["..MessageID.."] Does Not Exsist!")
			end
	return 0
    end
--------========================================================================================-----
   if string.find(string.lower(message), ".message help") then
plr:SendBroadcastMessage("Available Sub-Commands:")
plr:SendBroadcastMessage("message get <ID> (Returns Message To You)")
plr:SendBroadcastMessage("message set <ID> <Faction> <Type> <Message> (Creates Message)")
plr:SendBroadcastMessage("message force <ID> (Forces Message To Be Viewed By Everyone)")
	return 0
    end
--------========================================================================================-----
end
end
RegisterServerHook(16, "CustomGMCommands_ChatCommands")