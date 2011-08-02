--===XDemonic Helper===--
function XDemonicHelper_OnSpawn(pUnit, Event)
XDemonicHelper = pUnit
end

RegisterUnitEvent(666895, 18, "XDemonicHelper_OnSpawn")

local GetGMs = GetPlayersInWorld()
--===HORDE===--
local HordeEscort = "SELECT Disabled FROM quests_scripts WHERE Quest_ID = '1000020'", 0
local HordeDefend = "SELECT Disabled FROM quests_scripts WHERE Quest_ID = '1000024'", 0
local HordeVision = "SELECT Disabled FROM quests_scripts WHERE Quest_ID = '1000023'", 0
--===ALLIANCE===--
local AllianceEscort = "SELECT Disabled FROM quests_scripts WHERE Quest_ID = '2000020'", 0
local AllianceDefend = "SELECT Disabled FROM quests_scripts WHERE Quest_ID = '2000024'", 0
local AllianceVision = "SELECT Disabled FROM quests_scripts WHERE Quest_ID = '2000023'", 0
--===BOTH===--
function AdminHelperStone_Click(item, event, player, pMisc, unit)
--if player:IsGm() then
player:SendBroadcastMessage("Welcome "..player:GetName()..".")
item:GossipCreateMenu(50, player, 0)
item:GossipMenuAddItem(3, "Reload Specific LUA Script", 1, 1)
item:GossipMenuAddItem(3, "Find Distance Between [XDemonic-Helper] and [Player-Name]", 2, 0)
item:GossipMenuAddItem(3, "Disable Specific Quest", 100, 0)
item:GossipMenuAddItem(3, "Enable Specific Quest", 200, 0)
item:GossipMenuAddItem(3, "[Test] New Database", 666, 0)
item:GossipMenuAddItem(3, "Never Mind", 999, 0)
item:GossipSendMenu(player)
--else
--local Amount = player:GetItemCount(199920)
--player:SendBroadcastMessage("You Are Not A GM! You Cannot Use This Item! Deleteing...")
--player:GossipComplete()
--player:RemoveItem(199920, Amount)
--end
end

function AdminHelperStone_Click2(item, event, player, id, intid, code, pMisc)
if (intid == 666) then
ScriptDBQuery("INSERT INTO test(Test1, Test2) VALUES ('1', '1')", 0)
player:SendBroadcastMessage("Test Success!")
player:GossipComplete()
end

if (intid == 9999) then
item:GossipCreateMenu(50, player, 0)
item:GossipMenuAddItem(3, "Reload Specific LUA Script", 1, 1)
item:GossipMenuAddItem(3, "Disable Specific Quest", 100, 0)
item:GossipMenuAddItem(3, "Enable Specific Quest", 200, 0)
item:GossipMenuAddItem(3, "Never Mind", 999, 0)
item:GossipSendMenu(player)
end

if (intid == 500) then
player:SendBroadcastMessage("Type In The Spawn ID Of The Creature You Wish To Not Fall.")
item:GossipCreateMenu(50, player, 0)
item:GossipMenuAddItem(3, "Make Specific NPC Not Fall", 501, 1)
item:GossipSendMenu(player)
end

if (intid == 501) then
        if (code == nil) then
			player:SendBroadcastMessage("You Need To Type In A Spawn ID!")
			item:GossipCreateMenu(50, player, 0)
item:GossipMenuAddItem(3, "Make Specific NPC Not Fall", 501, 1)
item:GossipSendMenu(player)
		else
	    if (WorldDBQuery("SELECT Id FROM creature_spawns WHERE Id = '"..code.."'", 0) == nil) then
		    player:SendBroadcastMessage("[DB] ["..code.."] Is A Non-Existant Spawn ID! Please Type In A Valid Spawn ID!")
			item:GossipCreateMenu(50, player, 0)
item:GossipMenuAddItem(3, "Make Specific NPC Not Fall", 501, 1)
item:GossipSendMenu(player)
		else
local GetNPCEntry = WorldDBQuery("SELECT Entry FROM creature_spawns WHERE Id = '"..code.."'", 0):GetColumn(0):GetString()
local GetNPCName = WorldDBQuery("SELECT name FROM creature_names WHERE entry = '"..GetNPCEntry.."'", 0):GetColumn(0):GetString()
        WorldDBQuery("UPDATE creature_spawns SET CanFly = '1', bytes0='16843008', bytes1='50331648', bytes2='1' WHERE id='"..code.."' LIMIT 1;", 0)
	    player:GossipComplete()
		for index, GMGlobal in pairs(GetGMs) do
		if GMGlobal:IsGm() then
		GMGlobal:SendBroadcastMessage("[DB] "..player:GetName().." Has Set NPC ["..GetNPCName.."] ["..code.."] To Not Fall!")
end
end
end
end
end

if (intid == 999) then
player:GossipComplete()
end

if (intid == 1) then
        if (code == nil) then
			player:SendBroadcastMessage("You Need To Type In A Script Name!")
			player:GossipComplete()
		else
		player:SendBroadcastMessage("Reloading "..code..".lua")
        dofile("scripts/"..code..".lua")
	    player:GossipComplete()
end
end

if (intid == 2) then
player:PlayerSendChatMessage(1, 0, "I am Currently "..XDemonicHelper:GetDistanceYards(player).." Yards Away From XDemonic's 2nd Eye!")
player:GossipComplete()
end

if (intid == 100) then
if ScriptDBQuery(HordeEscort):GetColumn(0):GetString() == "1" and ScriptDBQuery(HordeVision):GetColumn(0):GetString() == "1" and ScriptDBQuery(HordeDefend):GetColumn(0):GetString() == "1" and ScriptDBQuery(AllianceEscort):GetColumn(0):GetString() == "1" and ScriptDBQuery(AllianceVision):GetColumn(0):GetString() == "1" and ScriptDBQuery(AllianceDefend):GetColumn(0):GetString() == "1" then
player:SendBroadcastMessage("There Is Currently No Enabled Quests...")
item:GossipCreateMenu(50, player, 0)
item:GossipMenuAddItem(3, "Main Menu", 9999, 0)
item:GossipSendMenu(player)
else
player:SendBroadcastMessage("These Are The Current Enabled Quests...")
player:SendBroadcastMessage("To Disable A Quest, Click The One You Wish To Disable, Then Type In The Reason.")
item:GossipCreateMenu(50, player, 0)
if ScriptDBQuery(HordeEscort):GetColumn(0):GetString() == "0" then
item:GossipMenuAddItem(3, "|c00FF3333[H]|r Escort Gel'gor", 101, 1)
end
if ScriptDBQuery(HordeVision):GetColumn(0):GetString() == "0" then
item:GossipMenuAddItem(3, "|c00FF3333[H]|r Your Forgotten Past...", 102, 1)
end
if ScriptDBQuery(HordeDefend):GetColumn(0):GetString() == "0" then
item:GossipMenuAddItem(3, "|c00FF3333[H]|r Defend The Camp!", 103, 1)
end
if ScriptDBQuery(AllianceEscort):GetColumn(0):GetString() == "0" then
item:GossipMenuAddItem(3, "|c003333ff[A]|r Escort Thomus", 104, 1)
end
if ScriptDBQuery(AllianceVision):GetColumn(0):GetString() == "0" then
item:GossipMenuAddItem(3, "|c003333ff[A]|r Your Forgotten Past...", 105, 1)
end
if ScriptDBQuery(AllianceDefend):GetColumn(0):GetString() == "0" then
item:GossipMenuAddItem(3, "|c003333ff[A]|r Defend The Camp!", 106, 1)
end
item:GossipMenuAddItem(3, "Go Back", 9999, 0)
item:GossipMenuAddItem(3, "Never Mind", 999, 0)
item:GossipSendMenu(player)
end
end

if (intid == 101) then
    if (code == nil) then
	player:SendBroadcastMessage("You Need To Type In A Reason For Disableing The Quest!")
	player:GossipComplete()
	else
	local QuestID = 1000020
    ScriptDBQuery("REPLACE INTO quests_scripts(Quest_ID, Flags1, Flags2, Disabled, Staff_Name, Reason) VALUES ('"..QuestID.."', '0', '0', '1', '"..player:GetName().."', '"..code.."')", 0)
	player:SendBroadcastMessage("Disabled Complete! Quest ID: ["..QuestID.. "] Has Been Disabled For: " ..code)
    player:GossipComplete()
end
end

if (intid == 102) then
    if (code == nil) then
	player:SendBroadcastMessage("You Need To Type In A Reason For Disableing The Quest!")
	player:GossipComplete()
	else
	local QuestID = 1000023
    ScriptDBQuery("REPLACE INTO quests_scripts(Quest_ID, Flags1, Flags2, Disabled, Staff_Name, Reason) VALUES ('"..QuestID.."', '0', '0', '1', '"..player:GetName().."', '"..code.."')", 0)
	player:SendBroadcastMessage("Disabled Complete! Quest ID: ["..QuestID.. "] Has Been Disabled For: " ..code)
    player:GossipComplete()
end
end

if (intid == 103) then
    if (code == nil) then
	player:SendBroadcastMessage("You Need To Type In A Reason For Disableing The Quest!")
	player:GossipComplete()
	else
	local QuestID = 1000024
    ScriptDBQuery("REPLACE INTO quests_scripts(Quest_ID, Flags1, Flags2, Disabled, Staff_Name, Reason) VALUES ('"..QuestID.."', '0', '0', '1', '"..player:GetName().."', '"..code.."')", 0)
	player:SendBroadcastMessage("Disabled Complete! Quest ID: ["..QuestID.. "] Has Been Disabled For: " ..code)
    player:GossipComplete()
end
end

if (intid == 104) then
    if (code == nil) then
	player:SendBroadcastMessage("You Need To Type In A Reason For Disableing The Quest!")
	player:GossipComplete()
	else
	local QuestID = 2000020
    ScriptDBQuery("REPLACE INTO quests_scripts(Quest_ID, Flags1, Flags2, Disabled, Staff_Name, Reason) VALUES ('"..QuestID.."', '0', '0', '1', '"..player:GetName().."', '"..code.."')", 0)
	player:SendBroadcastMessage("Disabled Complete! Quest ID: ["..QuestID.. "] Has Been Disabled For: " ..code)
    player:GossipComplete()
end
end

if (intid == 105) then
    if (code == nil) then
	player:SendBroadcastMessage("You Need To Type In A Reason For Disableing The Quest!")
	player:GossipComplete()
	else
	local QuestID = 2000023
    ScriptDBQuery("REPLACE INTO quests_scripts(Quest_ID, Flags1, Flags2, Disabled, Staff_Name, Reason) VALUES ('"..QuestID.."', '0', '0', '1', '"..player:GetName().."', '"..code.."')", 0)
	player:SendBroadcastMessage("Disabled Complete! Quest ID: ["..QuestID.. "] Has Been Disabled For: " ..code)
    player:GossipComplete()
end
end

if (intid == 106) then
    if (code == nil) then
	player:SendBroadcastMessage("You Need To Type In A Reason For Disableing The Quest!")
	player:GossipComplete()
	else
	local QuestID = 2000024
    ScriptDBQuery("REPLACE INTO quests_scripts(Quest_ID, Flags1, Flags2, Disabled, Staff_Name, Reason) VALUES ('"..QuestID.."', '0', '0', '1', '"..player:GetName().."', '"..code.."')", 0)
	player:SendBroadcastMessage("Disabled Complete! Quest ID: ["..QuestID.. "] Has Been Disabled For: " ..code)
    player:GossipComplete()
end
end

if (intid == 200) then
if ScriptDBQuery(HordeEscort):GetColumn(0):GetString() == "0" and ScriptDBQuery(HordeVision):GetColumn(0):GetString() == "0" and ScriptDBQuery(HordeDefend):GetColumn(0):GetString() == "0" and ScriptDBQuery(AllianceEscort):GetColumn(0):GetString() == "0" and ScriptDBQuery(AllianceVision):GetColumn(0):GetString() == "0" and ScriptDBQuery(AllianceDefend):GetColumn(0):GetString() == "0" then
player:SendBroadcastMessage("There Is Currently No Disabled Quests...")
item:GossipCreateMenu(50, player, 0)
item:GossipMenuAddItem(3, "Main Menu", 9999, 0)
item:GossipSendMenu(player)
else
player:SendBroadcastMessage("These Are The Current Disabled Quests...")
player:SendBroadcastMessage("To View The Reason Or To Enable The Quest, Just Click On The One You Wish.")
item:GossipCreateMenu(50, player, 0)
if ScriptDBQuery(HordeEscort):GetColumn(0):GetString() == "1" then
item:GossipMenuAddItem(3, "|c00FF3333[H]|r Escort Gel'gor", 201, 0)
end
if ScriptDBQuery(HordeVision):GetColumn(0):GetString() == "1" then
item:GossipMenuAddItem(3, "|c00FF3333[H]|r Your Forgotten Past...", 202, 0)
end
if ScriptDBQuery(HordeDefend):GetColumn(0):GetString() == "1" then
item:GossipMenuAddItem(3, "|c00FF3333[H]|r Defend The Camp!", 203, 0)
end
if ScriptDBQuery(AllianceEscort):GetColumn(0):GetString() == "1" then
item:GossipMenuAddItem(3, "|c003333ff[A]|r Escort Thomus", 204, 0)
end
if ScriptDBQuery(AllianceVision):GetColumn(0):GetString() == "1" then
item:GossipMenuAddItem(3, "|c003333ff[A]|r Your Forgotten Past...", 205, 0)
end
if ScriptDBQuery(AllianceDefend):GetColumn(0):GetString() == "1" then
item:GossipMenuAddItem(3, "|c003333ff[A]|r Defend The Camp!", 206, 0)
end
item:GossipMenuAddItem(3, "Go Back", 9999, 0)
item:GossipMenuAddItem(3, "Never Mind", 999, 0)
item:GossipSendMenu(player)
end
end

if (intid == 201) then
	local QuestID = 1000020
    ScriptDBQuery("REPLACE INTO quests_scripts(Quest_ID, Flags1, Flags2, Disabled, Staff_Name, Reason) VALUES ('"..QuestID.."', '0', '0', '0', NULL, NULL)", 0)
	player:SendBroadcastMessage("Enabled! Complete! Quest ID: ["..QuestID.. "] Has Been Enabled!")
	player:GossipComplete()
end

if (intid == 202) then
	local QuestID = 1000023
    ScriptDBQuery("REPLACE INTO quests_scripts(Quest_ID, Flags1, Flags2, Disabled, Staff_Name, Reason) VALUES ('"..QuestID.."', '0', '0', '0', NULL, NULL)", 0)
	player:SendBroadcastMessage("Enabled! Complete! Quest ID: ["..QuestID.. "] Has Been Enabled!")
	player:GossipComplete()
end

if (intid == 203) then
	local QuestID = 1000024
    ScriptDBQuery("REPLACE INTO quests_scripts(Quest_ID, Flags1, Flags2, Disabled, Staff_Name, Reason) VALUES ('"..QuestID.."', '0', '0', '0', NULL, NULL)", 0)
	player:SendBroadcastMessage("Enabled! Complete! Quest ID: ["..QuestID.. "] Has Been Enabled!")
	player:GossipComplete()
end

if (intid == 204) then
	local QuestID = 2000020
    ScriptDBQuery("REPLACE INTO quests_scripts(Quest_ID, Flags1, Flags2, Disabled, Staff_Name, Reason) VALUES ('"..QuestID.."', '0', '0', '0', NULL, NULL)", 0)
	player:SendBroadcastMessage("Enabled! Complete! Quest ID: ["..QuestID.. "] Has Been Enabled!")
	player:GossipComplete()
end

if (intid == 205) then
	local QuestID = 2000023
    ScriptDBQuery("REPLACE INTO quests_scripts(Quest_ID, Flags1, Flags2, Disabled, Staff_Name, Reason) VALUES ('"..QuestID.."', '0', '0', '0', NULL, NULL)", 0)
	player:SendBroadcastMessage("Enabled! Complete! Quest ID: ["..QuestID.. "] Has Been Enabled!")
	player:GossipComplete()
end

if (intid == 206) then
	local QuestID = 2000024
    ScriptDBQuery("REPLACE INTO quests_scripts(Quest_ID, Flags1, Flags2, Disabled, Staff_Name, Reason) VALUES ('"..QuestID.."', '0', '0', '0', NULL, NULL)", 0)
	player:SendBroadcastMessage("Enabled! Complete! Quest ID: ["..QuestID.. "] Has Been Enabled!")
	player:GossipComplete()
end
end

RegisterItemGossipEvent(199920, 1, "AdminHelperStone_Click")
RegisterItemGossipEvent(199920, 2, "AdminHelperStone_Click2")