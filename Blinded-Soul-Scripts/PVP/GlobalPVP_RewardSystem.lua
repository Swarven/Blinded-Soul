local GlobalPVPSystemVersion = 1.8
--[[
PVP System V1.8
Made By: XDemonic AKA Xzombie
--]]

--The Locals You Can Change [1 = Enabled, 0 = Disabled]--
local VictimOnKilled_FEATURE = "1" --You Have Been Killed By <Player> You now have [KDR] K/D Ratio!
local KillerOnKill_FEATURE = "1" --You Have Killed <Player> You now have [KDR]!
local GlobalOnKilled_FEATURE = "1" --<Player> Has Killed <Player> [KDR: <Killers KDR> | <Victims KDR>](Everyone On Server Will See This Message)
local GlobalShowRankUp_FEATURE = "1" --<Player> Has Ranked Up To [Rank]! Congrats!
local KillerShowStreak_FEATURE = "1" --Current Kill Streak <Killers Kill Streak>
local VictimShowStreak_FEATURE = "1" --You Died, Your Kill Streak was <Victims Kill Streak>
local CustomShop_FEATURE = "0" --this is Your Custom shop, if your not gona make any custom rewards, Disable This
--====================================================--
--PVP Vendor---
local Levelcap = 150 ---Please Set This
local LevelUpPrice = 5
local KDRResetPrice = 10
local BuffUpPrice = 2
--Chat Commands---
local Show_Stats_nocaps = "#mystats"
local Show_Stats_caps = "#MYSTATS"
local Show_Stats = "#Mystats"
----------------
local PVPVendor = 4889501
local code = nil
-----------------
--[[
       ...>You Are Here<...
           PVP Vendor
           ..........
          Chat Commands
           ..........
           Server Hook
--]]
function PVPVendor_PVPSystem_OnGossipTalk(pUnit, event, player, pMisc)
local PlayerName = player:GetName()
local GetPlayerGUID = CharDBQuery("SELECT guid FROM characters WHERE name = '"..PlayerName.."'", 0):GetColumn(0):GetString()
local IsPlayerNil = ScriptDBQuery("SELECT guid FROM character_kills WHERE guid = '"..GetPlayerGUID.."'", 0)
if (IsPlayerNil == nil) then
ScriptDBQuery("INSERT INTO character_kills (GUID, Name, Current_Title, Highest_Streak, Current_Streak, Deaths, KDR, Kills_Total, Kills_Rank, Kills_Spend) VALUES ('"..GetPlayerGUID.."', '"..PlayerName.."', '1', '0', '0', '0', '1', '0', '0', '0')", 0)  	
end
local GetKillerTitle = ScriptDBQuery("SELECT Current_Title FROM character_kills WHERE guid = '"..GetPlayerGUID.."'", 0):GetColumn(0):GetString()
local GetTitleName = ScriptDBQuery("SELECT Title FROM character_pvp_title WHERE ID = '"..GetKillerTitle.."'", 0):GetColumn(0):GetString()
pUnit:SendChatMessage(12, 0, "Welcome ["..GetTitleName.."] "..PlayerName.. ", What Can I Do For You?")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "Player Search", 1000, 0)
   pUnit:GossipMenuAddItem(9, "Reset My KDR", 1, 0)
   pUnit:GossipMenuAddItem(9, "Level Me", 2, 0)
   pUnit:GossipMenuAddItem(9, "Buff Me", 3, 0)
   if (CustomShop_FEATURE == "1") then
   pUnit:GossipMenuAddItem(9, "PVP Shop", 4, 0)
   end
   if player:IsGm() then
   pUnit:GossipMenuAddItem(9, "[GM] Mod Options", 500, 0)
   end
   pUnit:GossipMenuAddItem(0, "Never Mind", 5, 0)
   pUnit:GossipSendMenu(player)
end

function PVPVendor_PVPSystem_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
local PlayerName = player:GetName()
local GetPlayerGUID = CharDBQuery("SELECT guid FROM characters WHERE name = '"..PlayerName.."'", 0):GetColumn(0):GetString()
local GetKillerTitle = ScriptDBQuery("SELECT Current_Title FROM character_kills WHERE guid = '"..GetPlayerGUID.."'", 0):GetColumn(0):GetString()
local GetTitleName = ScriptDBQuery("SELECT Title FROM character_pvp_title WHERE ID = '"..GetKillerTitle.."'", 0):GetColumn(0):GetString()
local GetSpendablePoints = ScriptDBQuery("SELECT Kills_Spend FROM character_kills WHERE guid = '"..GetPlayerGUID.."'", 0):GetColumn(0):GetString()
if (intid == 99) then
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "Player Search", 1000, 0)
   pUnit:GossipMenuAddItem(9, "Reset My KDR", 1, 0)
   pUnit:GossipMenuAddItem(9, "Level Me", 2, 0)
   pUnit:GossipMenuAddItem(9, "Buff Me", 3, 0)
   if (CustomShop_FEATURE == "1") then
   pUnit:GossipMenuAddItem(9, "PVP Shop", 4, 0)
   end
   if player:IsGm() then
   pUnit:GossipMenuAddItem(9, "[GM] Mod Options", 500, 0)
   end
   pUnit:GossipMenuAddItem(0, "Never Mind", 5, 0)
   pUnit:GossipSendMenu(player)
end

if (intid == 500) then
player:SendBroadcastMessage("Please Type In A \124c0033FF33Character Name\124r You Wish To Modify.")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "Enter Character Name", 501, 1)
   pUnit:GossipSendMenu(player)
end
if (intid == 501) then
GetPlayerName = code
    if (GetPlayerName == nil) then
	player:SendBroadcastMessage("You Need To Type In A Valid Character Name!")
	pUnit:GossipCreateMenu(50, player, 0)
    pUnit:GossipMenuAddItem(9, "Enter Character Name", 501, 1)
    pUnit:GossipSendMenu(player)
	else
	GetCodePlayerName = GetPlayerName
        if (CharDBQuery("SELECT guid FROM characters WHERE Name = '"..GetCodePlayerName.."'", 0) == nil) then
		player:SendBroadcastMessage("[DB] "..GetCodePlayerName.." Is A Non-Existant Character Name! Please Type In A Valid Character Name!")
	    pUnit:GossipCreateMenu(50, player, 0)
        pUnit:GossipMenuAddItem(9, "Enter Character Name", 501, 1)
        pUnit:GossipSendMenu(player)
	    else
		GetPlayerFullName = CharDBQuery("SELECT Name FROM characters WHERE Name = '"..GetCodePlayerName.."'", 0):GetColumn(0):GetString()
	    local GetNameCode = CharDBQuery("SELECT guid FROM characters WHERE Name = '"..GetPlayerFullName.."'", 0):GetColumn(0):GetString()
		local IsPlayerNil = ScriptDBQuery("SELECT guid FROM character_kills WHERE guid = '"..GetNameCode.."'", 0)
		    if (IsPlayerNil == nil) then
	        player:SendBroadcastMessage("[DB] "..GetPlayerFullName.." Exists, But Is Not Found In The PVP System, Adding Character In System.")
	        ScriptDBQuery("INSERT INTO character_kills (GUID, Name, Current_Title, Highest_Streak, Current_Streak, Deaths, KDR, Kills_Total, Kills_Rank, Kills_Spend) VALUES ('"..GetNameCode.."', '"..code.."', '1', '0', '0', '0', '1', '0', '0', '0')", 0)
            player:SendBroadcastMessage("[DB] Name= ["..GetPlayerFullName.."] GUID= ["..GetNameCode.."] Has Been Successfully Added To The PVP System.")
	        else
	        player:SendBroadcastMessage("[DB] Retrieving Data From Name= ["..GetPlayerFullName.."] GUID= ["..GetNameCode.."]")
			end
GMPlayerGUID = CharDBQuery("SELECT GUID FROM characters WHERE Name = '"..GetPlayerFullName.."'", 0):GetColumn(0):GetString()
local GetPlayerTitle = ScriptDBQuery("SELECT Current_Title FROM character_kills WHERE guid = '"..GMPlayerGUID.."'", 0):GetColumn(0):GetString()
local GetTitleName = ScriptDBQuery("SELECT Title FROM character_pvp_title WHERE ID = '"..GetPlayerTitle.."'", 0):GetColumn(0):GetString()
local GetKDR = ScriptDBQuery("SELECT KDR FROM character_kills WHERE guid = '"..GMPlayerGUID.."'", 0):GetColumn(0):GetString()
local GetTotalKills = ScriptDBQuery("SELECT Kills_Total FROM character_kills WHERE guid = '"..GMPlayerGUID.."'", 0):GetColumn(0):GetString()
local GetDeaths = ScriptDBQuery("SELECT Deaths FROM character_kills WHERE guid = '"..GMPlayerGUID.."'", 0):GetColumn(0):GetString()
local GetSpendablePoints = ScriptDBQuery("SELECT Kills_Spend FROM character_kills WHERE guid = '"..GMPlayerGUID.."'", 0):GetColumn(0):GetString()
local PlayerDeaths = ScriptDBQuery("SELECT Deaths FROM character_kills WHERE guid = '"..GMPlayerGUID.."'", 0):GetColumn(0):GetString()
local PlayerKills = ScriptDBQuery("SELECT Kills_Total FROM character_kills WHERE guid = '"..GMPlayerGUID.."'", 0):GetColumn(0):GetString()
		player:SendBroadcastMessage("\124c00FFA500Current Rank:\124r \124c0033FF33["..GetTitleName.."]")
	        if (PlayerKills == "0") or (PlayerDeaths == "0") then
	        player:SendBroadcastMessage("\124c00FFA500Kill Death Ratio:\124r \124c0033FF33UNDEFINED")
	        else
	        player:SendBroadcastMessage("\124c00FFA500Kill Death Ratio:\124r \124c0033FF33"..GetKDR)
	        end
	    player:SendBroadcastMessage("\124c00FFA500Total Kills:\124r \124c0033FF33"..GetTotalKills)
	    player:SendBroadcastMessage("\124c00FFA500Total Deaths:\124r \124c0033FF33"..GetDeaths)
	    player:SendBroadcastMessage("\124c00FFA500Spendable Points:\124r \124c0033FF33"..GetSpendablePoints)
	    pUnit:GossipCreateMenu(50, player, 0)
        pUnit:GossipMenuAddItem(9, "|c000070ddModify|r Rank", 502, 0)
		pUnit:GossipMenuAddItem(9, "|c000070ddModify|r Total Kills", 503, 0)
		pUnit:GossipMenuAddItem(9, "|c000070ddModify|r Deaths", 504, 0)
		pUnit:GossipMenuAddItem(9, "|c000070ddModify|r Spendable Points", 505, 0)
		pUnit:GossipMenuAddItem(9, "Change Character |c00FF3333[Current:|r |c0033FF33"..GetPlayerFullName.."|r|c00FF3333]|r", 501, 1)
        pUnit:GossipMenuAddItem(0, "Exit", 5, 0)
		pUnit:GossipSendMenu(player)
		end
    end
end
--------------=============================================-------------------
if (intid == 499) then
GetPlayerName = code
    if (GetPlayerName == nil) then
	player:SendBroadcastMessage("You Need To Type In A Valid Character Name!")
	pUnit:GossipCreateMenu(50, player, 0)
    pUnit:GossipMenuAddItem(9, "Enter Character Name", 501, 1)
    pUnit:GossipSendMenu(player)
	else
        if (CharDBQuery("SELECT guid FROM characters WHERE Name = '"..GetPlayerFullName.."'", 0) == nil) then
		player:SendBroadcastMessage("[DB] "..GetPlayerFullName.." Is A Non-Existant Character Name! Please Type In A Valid Character Name!")
	    pUnit:GossipCreateMenu(50, player, 0)
        pUnit:GossipMenuAddItem(9, "Enter Character Name", 501, 1)
        pUnit:GossipSendMenu(player)
	    else
	    local GetNameCode = CharDBQuery("SELECT guid FROM characters WHERE Name = '"..GetPlayerFullName.."'", 0):GetColumn(0):GetString()
		local IsPlayerNil = ScriptDBQuery("SELECT guid FROM character_kills WHERE guid = '"..GetNameCode.."'", 0)
		    if (IsPlayerNil == nil) then
	        player:SendBroadcastMessage("[DB] "..GetPlayerFullName.." Exsists, But Is Not Found In The PVP System, Adding Character In System.")
	        ScriptDBQuery("INSERT INTO character_kills (GUID, Name, Current_Title, Highest_Streak, Current_Streak, Deaths, KDR, Kills_Total, Kills_Rank, Kills_Spend) VALUES ('"..GetNameCode.."', '"..code.."', '1', '0', '0', '0', '1', '0', '0', '0')", 0)
            player:SendBroadcastMessage("[DB] Name= ["..GetPlayerFullName.."] GUID= ["..GetNameCode.."] Has Been Successfully Added To The PVP System.")
	        else
	        player:SendBroadcastMessage("[DB] Retrieving Data From Name= ["..GetPlayerFullName.."] GUID= ["..GetNameCode.."]")
			end
GMPlayerGUID = CharDBQuery("SELECT GUID FROM characters WHERE Name = '"..GetPlayerFullName.."'", 0):GetColumn(0):GetString()
local GetPlayerTitle = ScriptDBQuery("SELECT Current_Title FROM character_kills WHERE guid = '"..GMPlayerGUID.."'", 0):GetColumn(0):GetString()
local GetTitleName = ScriptDBQuery("SELECT Title FROM character_pvp_title WHERE ID = '"..GetPlayerTitle.."'", 0):GetColumn(0):GetString()
local GetKDR = ScriptDBQuery("SELECT KDR FROM character_kills WHERE guid = '"..GMPlayerGUID.."'", 0):GetColumn(0):GetString()
local GetTotalKills = ScriptDBQuery("SELECT Kills_Total FROM character_kills WHERE guid = '"..GMPlayerGUID.."'", 0):GetColumn(0):GetString()
local GetDeaths = ScriptDBQuery("SELECT Deaths FROM character_kills WHERE guid = '"..GMPlayerGUID.."'", 0):GetColumn(0):GetString()
local GetSpendablePoints = ScriptDBQuery("SELECT Kills_Spend FROM character_kills WHERE guid = '"..GMPlayerGUID.."'", 0):GetColumn(0):GetString()
local PlayerDeaths = ScriptDBQuery("SELECT Deaths FROM character_kills WHERE guid = '"..GMPlayerGUID.."'", 0):GetColumn(0):GetString()
local PlayerKills = ScriptDBQuery("SELECT Kills_Total FROM character_kills WHERE guid = '"..GMPlayerGUID.."'", 0):GetColumn(0):GetString()
		player:SendBroadcastMessage("\124c00FFA500Current Rank:\124r \124c0033FF33["..GetTitleName.."]")
	        if (PlayerKills == "0") or (PlayerDeaths == "0") then
	        player:SendBroadcastMessage("\124c00FFA500Kill Death Ratio:\124r \124c0033FF33UNDEFINED")
	        else
	        player:SendBroadcastMessage("\124c00FFA500Kill Death Ratio:\124r \124c0033FF33"..GetKDR)
	        end
	    player:SendBroadcastMessage("\124c00FFA500Total Kills:\124r \124c0033FF33"..GetTotalKills)
	    player:SendBroadcastMessage("\124c00FFA500Total Deaths:\124r \124c0033FF33"..GetDeaths)
	    player:SendBroadcastMessage("\124c00FFA500Spendable Points:\124r \124c0033FF33"..GetSpendablePoints)
	    pUnit:GossipCreateMenu(50, player, 0)
        pUnit:GossipMenuAddItem(9, "|c000070ddModify|r Rank", 502, 0)
		pUnit:GossipMenuAddItem(9, "|c000070ddModify|r Total Kills", 503, 0)
		pUnit:GossipMenuAddItem(9, "|c000070ddModify|r Deaths", 504, 0)
		pUnit:GossipMenuAddItem(9, "|c000070ddModify|r Spendable Points", 505, 0)
		pUnit:GossipMenuAddItem(9, "Change Character |c00FF3333[Current:|r |c0033FF33"..GetPlayerFullName.."|r|c00FF3333]|r", 501, 1)
        pUnit:GossipMenuAddItem(0, "Exit", 5, 0)
		pUnit:GossipSendMenu(player)
		end
    end
end
--------------================Search Engine==================-------------------
if (intid == 1000) then
local GetHighestKillPlayer = ScriptDBQuery("SELECT `Name` FROM `blinded-soul-scripts`.`character_kills` ORDER BY `Kills_Rank` DESC LIMIT 0, 1000;", 0):GetColumn(0):GetString()
local GetHighestKDRPlayer = ScriptDBQuery("SELECT `Name` FROM `blinded-soul-scripts`.`character_kills` ORDER BY `KDR` DESC LIMIT 0, 1000;", 0):GetColumn(0):GetString()
local GetHighestStreakPlayer = ScriptDBQuery("SELECT `Name` FROM `blinded-soul-scripts`.`character_kills` ORDER BY `Highest_Streak` DESC LIMIT 0, 1000;", 0):GetColumn(0):GetString()
local GetHighestKills = ScriptDBQuery("SELECT `Kills_Rank` FROM `blinded-soul-scripts`.`character_kills` ORDER BY `Kills_Rank` DESC LIMIT 0, 1000;", 0):GetColumn(0):GetString()
local GetHighestKDR = ScriptDBQuery("SELECT `KDR` FROM `blinded-soul-scripts`.`character_kills` ORDER BY `KDR` DESC LIMIT 0, 1000;", 0):GetColumn(0):GetString()
local GetHighestStreak = ScriptDBQuery("SELECT `Highest_Streak` FROM `blinded-soul-scripts`.`character_kills` ORDER BY `Highest_Streak` DESC LIMIT 0, 1000;", 0):GetColumn(0):GetString()
GetHighestKillPlayerName = ScriptDBQuery("SELECT guid FROM character_kills WHERE Name = '"..GetHighestKillPlayer.."'", 0):GetColumn(0):GetString()
GetHighestKDRPlayerName = ScriptDBQuery("SELECT guid FROM character_kills WHERE Name = '"..GetHighestKDRPlayer.."'", 0):GetColumn(0):GetString()
GetHighestStreakPlayerName = ScriptDBQuery("SELECT guid FROM character_kills WHERE Name = '"..GetHighestStreakPlayer.."'", 0):GetColumn(0):GetString()
player:SendBroadcastMessage("Welcome To The PVP Search Engine!")
pUnit:GossipCreateMenu(50, player, 0)
pUnit:GossipMenuAddItem(9, "Highest Kills: "..GetHighestKillPlayer.." ["..GetHighestKills.."]", 1002, 0)
pUnit:GossipMenuAddItem(9, "Highest KDR: "..GetHighestKDRPlayer.." ["..GetHighestKDR.."]", 1003, 0)
pUnit:GossipMenuAddItem(9, "Highest Streak: "..GetHighestStreakPlayer.." ["..GetHighestStreak.."]", 1004, 0)
pUnit:GossipMenuAddItem(9, "WALL OF SHAME", 1005, 0)
pUnit:GossipMenuAddItem(9, "Search Player Name", 1001, 1)
pUnit:GossipMenuAddItem(9, "Main Menu", 99, 0)
pUnit:GossipMenuAddItem(9, "Exit", 5, 0)
pUnit:GossipSendMenu(player)
end
--------------================Search Engine Home==================-------------------
if (intid == 1099) then
local GetHighestKillPlayer = ScriptDBQuery("SELECT `Name` FROM `blinded-soul-scripts`.`character_kills` ORDER BY `Kills_Rank` DESC LIMIT 0, 1000;", 0):GetColumn(0):GetString()
local GetHighestKDRPlayer = ScriptDBQuery("SELECT `Name` FROM `blinded-soul-scripts`.`character_kills` ORDER BY `KDR` DESC LIMIT 0, 1000;", 0):GetColumn(0):GetString()
local GetHighestStreakPlayer = ScriptDBQuery("SELECT `Name` FROM `blinded-soul-scripts`.`character_kills` ORDER BY `Highest_Streak` DESC LIMIT 0, 1000;", 0):GetColumn(0):GetString()
local GetHighestKills = ScriptDBQuery("SELECT `Kills_Rank` FROM `blinded-soul-scripts`.`character_kills` ORDER BY `Kills_Rank` DESC LIMIT 0, 1000;", 0):GetColumn(0):GetString()
local GetHighestKDR = ScriptDBQuery("SELECT `KDR` FROM `blinded-soul-scripts`.`character_kills` ORDER BY `KDR` DESC LIMIT 0, 1000;", 0):GetColumn(0):GetString()
local GetHighestStreak = ScriptDBQuery("SELECT `Highest_Streak` FROM `blinded-soul-scripts`.`character_kills` ORDER BY `Highest_Streak` DESC LIMIT 0, 1000;", 0):GetColumn(0):GetString()
GetHighestKillPlayerName = ScriptDBQuery("SELECT guid FROM character_kills WHERE Name = '"..GetHighestKillPlayer.."'", 0):GetColumn(0):GetString()
GetHighestKDRPlayerName = ScriptDBQuery("SELECT guid FROM character_kills WHERE Name = '"..GetHighestKDRPlayer.."'", 0):GetColumn(0):GetString()
GetHighestStreakPlayerName = ScriptDBQuery("SELECT guid FROM character_kills WHERE Name = '"..GetHighestStreakPlayer.."'", 0):GetColumn(0):GetString()
pUnit:GossipCreateMenu(50, player, 0)
pUnit:GossipMenuAddItem(9, "Highest Kills: "..GetHighestKillPlayer.." ["..GetHighestKills.."]", 1002, 0)
pUnit:GossipMenuAddItem(9, "Highest KDR: "..GetHighestKDRPlayer.." ["..GetHighestKDR.."]", 1003, 0)
pUnit:GossipMenuAddItem(9, "Highest Streak: "..GetHighestStreakPlayer.." ["..GetHighestStreak.."]", 1004, 0)
pUnit:GossipMenuAddItem(9, "WALL OF SHAME", 1005, 0)
pUnit:GossipMenuAddItem(9, "Search Player Name", 1001, 1)
pUnit:GossipMenuAddItem(9, "Main Menu", 99, 0)
pUnit:GossipMenuAddItem(9, "Exit", 5, 0)
pUnit:GossipSendMenu(player)
end
-----------------==========
if (intid == 1001) then
GetPlayerName = code
    if (GetPlayerName == nil) then
	player:SendBroadcastMessage("You Need To Type In A Valid Character Name!")
	pUnit:GossipCreateMenu(50, player, 0)
    pUnit:GossipMenuAddItem(9, "Enter Character Name", 1001, 1)
    pUnit:GossipSendMenu(player)
	else
		GetCodePlayerName = GetPlayerName
        if (CharDBQuery("SELECT guid FROM characters WHERE Name = '"..GetCodePlayerName.."'", 0) == nil) then
		player:SendBroadcastMessage("[DB] "..GetCodePlayerName.." Is A Non-Existant Character Name! Please Type In A Valid Character Name!")
	    pUnit:GossipCreateMenu(50, player, 0)
        pUnit:GossipMenuAddItem(9, "Enter Character Name", 1000, 1)
        pUnit:GossipSendMenu(player)
	    else
		GetPlayerFullName = CharDBQuery("SELECT Name FROM characters WHERE Name = '"..GetCodePlayerName.."'", 0):GetColumn(0):GetString()
	    local GetNameCode = CharDBQuery("SELECT guid FROM characters WHERE Name = '"..GetPlayerFullName.."'", 0):GetColumn(0):GetString()
		local IsPlayerNil = ScriptDBQuery("SELECT guid FROM character_kills WHERE guid = '"..GetNameCode.."'", 0)
		    if (IsPlayerNil == nil) then
	        player:SendBroadcastMessage("[DB] "..GetPlayerFullName.." Exsists, But Is Not Found In The PVP System, Adding Character In System.")
	        ScriptDBQuery("INSERT INTO character_kills (GUID, Name, Current_Title, Highest_Streak, Current_Streak, Deaths, KDR, Kills_Total, Kills_Rank, Kills_Spend) VALUES ('"..GetNameCode.."', '"..code.."', '1', '0', '0', '0', '1', '0', '0', '0')", 0)
            player:SendBroadcastMessage("[DB] Name= ["..GetPlayerFullName.."] GUID= ["..GetNameCode.."] Has Been Successfully Added To The PVP System.")
	        else
	        player:SendBroadcastMessage("[DB] Retrieving Data From Name= ["..GetPlayerFullName.."] GUID= ["..GetNameCode.."]")
			end
GMPlayerGUID = CharDBQuery("SELECT GUID FROM characters WHERE Name = '"..GetPlayerFullName.."'", 0):GetColumn(0):GetString()
local GetPlayerTitle = ScriptDBQuery("SELECT Current_Title FROM character_kills WHERE guid = '"..GMPlayerGUID.."'", 0):GetColumn(0):GetString()
local GetTitleName = ScriptDBQuery("SELECT Title FROM character_pvp_title WHERE ID = '"..GetPlayerTitle.."'", 0):GetColumn(0):GetString()
local GetKDR = ScriptDBQuery("SELECT KDR FROM character_kills WHERE guid = '"..GMPlayerGUID.."'", 0):GetColumn(0):GetString()
local GetTotalKills = ScriptDBQuery("SELECT Kills_Total FROM character_kills WHERE guid = '"..GMPlayerGUID.."'", 0):GetColumn(0):GetString()
local GetDeaths = ScriptDBQuery("SELECT Deaths FROM character_kills WHERE guid = '"..GMPlayerGUID.."'", 0):GetColumn(0):GetString()
local PlayerDeaths = ScriptDBQuery("SELECT Deaths FROM character_kills WHERE guid = '"..GMPlayerGUID.."'", 0):GetColumn(0):GetString()
local PlayerKills = ScriptDBQuery("SELECT Kills_Total FROM character_kills WHERE guid = '"..GMPlayerGUID.."'", 0):GetColumn(0):GetString()
		player:SendBroadcastMessage("\124c00FFA500Current Rank:\124r \124c0033FF33["..GetTitleName.."]")
	        if (PlayerKills == "0") or (PlayerDeaths == "0") then
	        player:SendBroadcastMessage("\124c00FFA500Kill Death Ratio:\124r \124c0033FF33UNDEFINED")
	        else
	        player:SendBroadcastMessage("\124c00FFA500Kill Death Ratio:\124r \124c0033FF33"..GetKDR)
	        end
		player:SendBroadcastMessage("\124c00FFA500Total Kills:\124r \124c0033FF33"..GetTotalKills)
	    player:SendBroadcastMessage("\124c00FFA500Total Deaths:\124r \124c0033FF33"..GetDeaths)
		local GetHighestKillPlayer = ScriptDBQuery("SELECT `Name` FROM `blinded-soul-scripts`.`character_kills` ORDER BY `Kills_Rank` DESC LIMIT 0, 1000;", 0):GetColumn(0):GetString()
		local GetHighestKDRPlayer = ScriptDBQuery("SELECT `Name` FROM `blinded-soul-scripts`.`character_kills` ORDER BY `KDR` DESC LIMIT 0, 1000;", 0):GetColumn(0):GetString()
		local GetHighestStreakPlayer = ScriptDBQuery("SELECT `Name` FROM `blinded-soul-scripts`.`character_kills` ORDER BY `Highest_Streak` DESC LIMIT 0, 1000;", 0):GetColumn(0):GetString()
		local GetHighestKills = ScriptDBQuery("SELECT `Kills_Rank` FROM `blinded-soul-scripts`.`character_kills` ORDER BY `Kills_Rank` DESC LIMIT 0, 1000;", 0):GetColumn(0):GetString()
		local GetHighestKDR = ScriptDBQuery("SELECT `KDR` FROM `blinded-soul-scripts`.`character_kills` ORDER BY `KDR` DESC LIMIT 0, 1000;", 0):GetColumn(0):GetString()
		local GetHighestStreak = ScriptDBQuery("SELECT `Highest_Streak` FROM `blinded-soul-scripts`.`character_kills` ORDER BY `Highest_Streak` DESC LIMIT 0, 1000;", 0):GetColumn(0):GetString()
		GetHighestKillPlayerName = ScriptDBQuery("SELECT guid FROM character_kills WHERE Name = '"..GetHighestKillPlayer.."'", 0):GetColumn(0):GetString()
		GetHighestKDRPlayerName = ScriptDBQuery("SELECT guid FROM character_kills WHERE Name = '"..GetHighestKDRPlayer.."'", 0):GetColumn(0):GetString()
		GetHighestStreakPlayerName = ScriptDBQuery("SELECT guid FROM character_kills WHERE Name = '"..GetHighestStreakPlayer.."'", 0):GetColumn(0):GetString()
	    pUnit:GossipCreateMenu(50, player, 0)
		pUnit:GossipMenuAddItem(9, "Highest Kills: "..GetHighestKillPlayer.." ["..GetHighestKills.."] Kills", 1002, 0)
		pUnit:GossipMenuAddItem(9, "Highest KDR: "..GetHighestKDRPlayer.." ["..GetHighestKDR.."] KDR", 1003, 0)
		pUnit:GossipMenuAddItem(9, "Highest Streak: "..GetHighestStreakPlayer.." ["..GetHighestStreak.."] Streak", 1004, 0)
		pUnit:GossipMenuAddItem(9, "WALL OF SHAME", 1005, 0)
		pUnit:GossipMenuAddItem(9, "Search Another Player", 1001, 1)
		pUnit:GossipMenuAddItem(0, "Main Menu", 5, 0)
        pUnit:GossipMenuAddItem(0, "Exit", 5, 0)
		pUnit:GossipSendMenu(player)
		end
    end
end

if (intid == 1002) then
local GetHighestKillPlayer = ScriptDBQuery("SELECT `Name` FROM `blinded-soul-scripts`.`character_kills` ORDER BY `Kills_Rank` DESC LIMIT 0, 1000;", 0):GetColumn(0):GetString()
GetHighestKillPlayerName = ScriptDBQuery("SELECT guid FROM character_kills WHERE Name = '"..GetHighestKillPlayer.."'", 0):GetColumn(0):GetString()
local GetPlayerTitle = ScriptDBQuery("SELECT Current_Title FROM character_kills WHERE guid = '"..GetHighestKillPlayerName.."'", 0):GetColumn(0):GetString()
local GetTitleName = ScriptDBQuery("SELECT Title FROM character_pvp_title WHERE ID = '"..GetPlayerTitle.."'", 0):GetColumn(0):GetString()
local GetKDR = ScriptDBQuery("SELECT KDR FROM character_kills WHERE guid = '"..GetHighestKillPlayerName.."'", 0):GetColumn(0):GetString()
local GetTotalKills = ScriptDBQuery("SELECT Kills_Total FROM character_kills WHERE guid = '"..GetHighestKillPlayerName.."'", 0):GetColumn(0):GetString()
local GetDeaths = ScriptDBQuery("SELECT Deaths FROM character_kills WHERE guid = '"..GetHighestKillPlayerName.."'", 0):GetColumn(0):GetString()
local PlayerDeaths = ScriptDBQuery("SELECT Deaths FROM character_kills WHERE guid = '"..GetHighestKillPlayerName.."'", 0):GetColumn(0):GetString()
local PlayerKills = ScriptDBQuery("SELECT Kills_Total FROM character_kills WHERE guid = '"..GetHighestKillPlayerName.."'", 0):GetColumn(0):GetString()
		player:SendBroadcastMessage("\124c00FFA500Player Name:\124r \124c0033FF33"..GetHighestKillPlayer)
		player:SendBroadcastMessage("\124c00FFA500Current Rank:\124r \124c0033FF33["..GetTitleName.."]")
	        if (PlayerKills == "0") or (PlayerDeaths == "0") then
	        player:SendBroadcastMessage("\124c00FFA500Kill Death Ratio:\124r \124c0033FF33UNDEFINED")
	        else
	        player:SendBroadcastMessage("\124c00FFA500Kill Death Ratio:\124r \124c0033FF33"..GetKDR)
	        end
		player:SendBroadcastMessage("\124c00FFA500Total Kills:\124r \124c0033FF33"..GetTotalKills)
	    player:SendBroadcastMessage("\124c00FFA500Total Deaths:\124r \124c0033FF33"..GetDeaths)
pUnit:GossipCreateMenu(50, player, 0)
pUnit:GossipMenuAddItem(9, "Return", 1099, 0)
pUnit:GossipSendMenu(player)
end

if (intid == 1003) then
local GetHighestKDRPlayer = ScriptDBQuery("SELECT `Name` FROM `blinded-soul-scripts`.`character_kills` ORDER BY `KDR` DESC LIMIT 0, 1000;", 0):GetColumn(0):GetString()
GetHighestKDRPlayerName = ScriptDBQuery("SELECT guid FROM character_kills WHERE Name = '"..GetHighestKDRPlayer.."'", 0):GetColumn(0):GetString()
local GetPlayerTitle = ScriptDBQuery("SELECT Current_Title FROM character_kills WHERE guid = '"..GetHighestKDRPlayerName.."'", 0):GetColumn(0):GetString()
local GetTitleName = ScriptDBQuery("SELECT Title FROM character_pvp_title WHERE ID = '"..GetPlayerTitle.."'", 0):GetColumn(0):GetString()
local GetKDR = ScriptDBQuery("SELECT KDR FROM character_kills WHERE guid = '"..GetHighestKDRPlayerName.."'", 0):GetColumn(0):GetString()
local GetTotalKills = ScriptDBQuery("SELECT Kills_Total FROM character_kills WHERE guid = '"..GetHighestKDRPlayerName.."'", 0):GetColumn(0):GetString()
local GetDeaths = ScriptDBQuery("SELECT Deaths FROM character_kills WHERE guid = '"..GetHighestKDRPlayerName.."'", 0):GetColumn(0):GetString()
local PlayerDeaths = ScriptDBQuery("SELECT Deaths FROM character_kills WHERE guid = '"..GetHighestKDRPlayerName.."'", 0):GetColumn(0):GetString()
local PlayerKills = ScriptDBQuery("SELECT Kills_Total FROM character_kills WHERE guid = '"..GetHighestKDRPlayerName.."'", 0):GetColumn(0):GetString()
		player:SendBroadcastMessage("\124c00FFA500Player Name:\124r \124c0033FF33"..GetHighestKDRPlayer)
		player:SendBroadcastMessage("\124c00FFA500Current Rank:\124r \124c0033FF33["..GetTitleName.."]")
	        if (PlayerKills == "0") or (PlayerDeaths == "0") then
	        player:SendBroadcastMessage("\124c00FFA500Kill Death Ratio:\124r \124c0033FF33UNDEFINED")
	        else
	        player:SendBroadcastMessage("\124c00FFA500Kill Death Ratio:\124r \124c0033FF33"..GetKDR)
	        end
		player:SendBroadcastMessage("\124c00FFA500Total Kills:\124r \124c0033FF33"..GetTotalKills)
	    player:SendBroadcastMessage("\124c00FFA500Total Deaths:\124r \124c0033FF33"..GetDeaths)
pUnit:GossipCreateMenu(50, player, 0)
pUnit:GossipMenuAddItem(9, "Return", 1099, 0)
pUnit:GossipSendMenu(player)
end

if (intid == 1004) then
local GetHighestStreakPlayer = ScriptDBQuery("SELECT `Name` FROM `blinded-soul-scripts`.`character_kills` ORDER BY `Highest_Streak` DESC LIMIT 0, 1000;", 0):GetColumn(0):GetString()
GetHighestSreakPlayerName = ScriptDBQuery("SELECT guid FROM character_kills WHERE Name = '"..GetHighestStreakPlayer.."'", 0):GetColumn(0):GetString()
local GetPlayerTitle = ScriptDBQuery("SELECT Current_Title FROM character_kills WHERE guid = '"..GetHighestSreakPlayerName.."'", 0):GetColumn(0):GetString()
local GetTitleName = ScriptDBQuery("SELECT Title FROM character_pvp_title WHERE ID = '"..GetPlayerTitle.."'", 0):GetColumn(0):GetString()
local GetKDR = ScriptDBQuery("SELECT KDR FROM character_kills WHERE guid = '"..GetHighestSreakPlayerName.."'", 0):GetColumn(0):GetString()
local GetTotalKills = ScriptDBQuery("SELECT Kills_Total FROM character_kills WHERE guid = '"..GetHighestSreakPlayerName.."'", 0):GetColumn(0):GetString()
local GetDeaths = ScriptDBQuery("SELECT Deaths FROM character_kills WHERE guid = '"..GetHighestSreakPlayerName.."'", 0):GetColumn(0):GetString()
local PlayerDeaths = ScriptDBQuery("SELECT Deaths FROM character_kills WHERE guid = '"..GetHighestSreakPlayerName.."'", 0):GetColumn(0):GetString()
local PlayerKills = ScriptDBQuery("SELECT Kills_Total FROM character_kills WHERE guid = '"..GetHighestSreakPlayerName.."'", 0):GetColumn(0):GetString()
		player:SendBroadcastMessage("\124c00FFA500Player Name:\124r \124c0033FF33"..GetHighestStreakPlayer)
		player:SendBroadcastMessage("\124c00FFA500Current Rank:\124r \124c0033FF33["..GetTitleName.."]")
	        if (PlayerKills == "0") or (PlayerDeaths == "0") then
	        player:SendBroadcastMessage("\124c00FFA500Kill Death Ratio:\124r \124c0033FF33UNDEFINED")
	        else
	        player:SendBroadcastMessage("\124c00FFA500Kill Death Ratio:\124r \124c0033FF33"..GetKDR)
	        end
		player:SendBroadcastMessage("\124c00FFA500Total Kills:\124r \124c0033FF33"..GetTotalKills)
	    player:SendBroadcastMessage("\124c00FFA500Total Deaths:\124r \124c0033FF33"..GetDeaths)
pUnit:GossipCreateMenu(50, player, 0)
pUnit:GossipMenuAddItem(9, "Return", 1099, 0)
pUnit:GossipSendMenu(player)
end
---------==========================----------


if (intid == 502) then
local GetRanksCount = CharDBQuery("SELECT `ID` FROM `character_pvp_title`", 0):GetRowCount()
player:SendBroadcastMessage("There Is Currently "..GetRanksCount.." Ranks Numbered By: 1-"..GetRanksCount)
player:SendBroadcastMessage("Please Type In A Number Value For: Rank")
pUnit:GossipCreateMenu(50, player, 0)
pUnit:GossipMenuAddItem(9, "Enter Rank ID", 550, 1)
pUnit:GossipSendMenu(player)
end

if (intid == 550) then
local GetRanksCount = ScriptDBQuery("SELECT `ID` FROM `character_pvp_title`", 0):GetRowCount()
SetPlayerRank = code
    if (SetPlayerRank == nil) then
	player:SendBroadcastMessage("You Need To Type In A Valid Rank ID!")
	pUnit:GossipCreateMenu(50, player, 0)
    pUnit:GossipMenuAddItem(9, "Enter Rank ID", 550, 1)
    pUnit:GossipSendMenu(player)
	else
	SetCodePlayerRank = SetPlayerRank
	    if (ScriptDBQuery("SELECT ID FROM character_pvp_title WHERE ID = '"..SetCodePlayerRank.."'", 0) ~= nil) then
        local GetPlayerGUID = CharDBQuery("SELECT guid FROM characters WHERE name = '"..GetPlayerFullName.."'", 0):GetColumn(0):GetString()
	    local GetRanksTitle = ScriptDBQuery("SELECT Title FROM character_pvp_title WHERE ID="..SetCodePlayerRank.."", 0):GetColumn(0):GetString()
		local SetRankKills = ScriptDBQuery("SELECT Required_Total_Kills FROM character_pvp_title WHERE ID="..SetCodePlayerRank.."", 0):GetColumn(0):GetString()
	    player:SendBroadcastMessage("Success! "..GetPlayerFullName.." Is Now Rank ["..GetRanksTitle.."]")
		ScriptDBQuery("UPDATE `character_kills` SET `Current_Title`="..SetCodePlayerRank..", `Kills_Rank`="..SetRankKills.." WHERE `GUID`="..GetPlayerGUID.." LIMIT 1;", 0)
		pUnit:GossipCreateMenu(50, player, 0)
        pUnit:GossipMenuAddItem(9, "Return", 499, 0)
        pUnit:GossipSendMenu(player)
	    else
	    pUnit:GossipCreateMenu(50, player, 0)
        pUnit:GossipMenuAddItem(9, "Enter Rank ID", 550, 1)
        pUnit:GossipSendMenu(player)
	    player:SendBroadcastMessage("You Need To Type In A Valid Rank ID! [MUST BE Numeric Between 1-"..GetRanksCount.."]")
	    end
	end
end

if (intid == 503) then
player:SendBroadcastMessage("Please Type In A Number Value For: Total Kills")
pUnit:GossipCreateMenu(50, player, 0)
pUnit:GossipMenuAddItem(9, "Enter New Total Kills", 551, 1)
pUnit:GossipSendMenu(player)
end

if (intid == 551) then
SetPlayerTotalKills = code
    if (SetPlayerTotalKills == nil) then
	player:SendBroadcastMessage("You Need To Type In A Valid Number!")
	pUnit:GossipCreateMenu(50, player, 0)
    pUnit:GossipMenuAddItem(9, "Enter New Total Kills", 551, 1)
    pUnit:GossipSendMenu(player)
	else
	    if (SetPlayerTotalKills >= "0") then
local GetTotalKills = ScriptDBQuery("SELECT Kills_Total FROM character_kills WHERE guid = '"..GMPlayerGUID.."'", 0):GetColumn(0):GetString()
local GetKills = ScriptDBQuery("SELECT Kills_Total FROM character_kills WHERE GUID = '"..GMPlayerGUID.."'", 0):GetColumn(0):GetString() - GetTotalKills + SetPlayerTotalKills
local GetDeaths = ScriptDBQuery("SELECT Deaths FROM character_kills WHERE GUID = '"..GMPlayerGUID.."'", 0):GetColumn(0):GetString()  ---Dont ask Why its +1, but it seems the only way to get the KDR correct?
local UpdateKDR = GetKills / GetDeaths
	    player:SendBroadcastMessage("Success! "..GetPlayerFullName.." Now Has "..SetPlayerTotalKills.." Total Kills!")
		ScriptDBQuery("UPDATE `character_kills` SET `Kills_Total`="..SetPlayerTotalKills.." WHERE `GUID`="..GMPlayerGUID.." LIMIT 1;", 0)
		ScriptDBQuery("UPDATE `character_kills` SET `KDR`="..UpdateKDR.." WHERE `GUID`="..GMPlayerGUID.." LIMIT 1;", 0)
		pUnit:GossipCreateMenu(50, player, 0)
        pUnit:GossipMenuAddItem(9, "Return", 499, 0)
        pUnit:GossipSendMenu(player)
		else
	    player:SendBroadcastMessage("You Need To Type In A Valid Number Higher Than 0!")
	    pUnit:GossipCreateMenu(50, player, 0)
        pUnit:GossipMenuAddItem(9, "Enter New Total Kills", 551, 1)
        pUnit:GossipSendMenu(player)
		end
	end
end

if (intid == 504) then
player:SendBroadcastMessage("Please Type In A Number Value For: Deaths")
pUnit:GossipCreateMenu(50, player, 0)
pUnit:GossipMenuAddItem(9, "Enter New Deaths", 552, 1)
pUnit:GossipSendMenu(player)
end

if (intid == 552) then
SetPlayerDeaths = code
    if (SetPlayerDeaths == nil) then
	player:SendBroadcastMessage("You Need To Type In A Valid Number!")
	pUnit:GossipCreateMenu(50, player, 0)
    pUnit:GossipMenuAddItem(9, "Enter New Deaths", 552, 1)
    pUnit:GossipSendMenu(player)
	else
	    if (SetPlayerDeaths >= "0") then
local GetDeaths = ScriptDBQuery("SELECT Deaths FROM character_kills WHERE guid = '"..GMPlayerGUID.."'", 0):GetColumn(0):GetString()
local GetKills = ScriptDBQuery("SELECT Kills_Total FROM character_kills WHERE GUID = '"..GMPlayerGUID.."'", 0):GetColumn(0):GetString()
local GetDeaths = ScriptDBQuery("SELECT Deaths FROM character_kills WHERE GUID = '"..GMPlayerGUID.."'", 0):GetColumn(0):GetString() - GetDeaths + SetPlayerDeaths
local UpdateKDR = GetKills / GetDeaths
	    player:SendBroadcastMessage("Success! "..GetPlayerFullName.." Now Has "..SetPlayerDeaths.." Deaths!")
		ScriptDBQuery("UPDATE `character_kills` SET `Deaths`="..SetPlayerDeaths.." WHERE `GUID`="..GMPlayerGUID.." LIMIT 1;", 0)
		ScriptDBQuery("UPDATE `character_kills` SET `KDR`="..UpdateKDR.." WHERE `GUID`="..GMPlayerGUID.." LIMIT 1;", 0)
		pUnit:GossipCreateMenu(50, player, 0)
        pUnit:GossipMenuAddItem(9, "Return", 499, 0)
        pUnit:GossipSendMenu(player)
		else
        player:SendBroadcastMessage("You Need To Type In A Valid Number Higher Than 0!")
	    pUnit:GossipCreateMenu(50, player, 0)
        pUnit:GossipMenuAddItem(9, "Enter New Deaths", 552, 1)
        pUnit:GossipSendMenu(player)
	    end
	end
end

if (intid == 505) then
player:SendBroadcastMessage("Please Type In A Number Value For: Spendable Points")
pUnit:GossipCreateMenu(50, player, 0)
pUnit:GossipMenuAddItem(9, "Enter New Points", 553, 1)
pUnit:GossipSendMenu(player)
end

if (intid == 553) then
SetPlayerSpend = code
    if (SetPlayerSpend == nil) then
	player:SendBroadcastMessage("You Need To Type In A Valid Number!")
	pUnit:GossipCreateMenu(50, player, 0)
    pUnit:GossipMenuAddItem(9, "Enter New Points", 553, 1)
    pUnit:GossipSendMenu(player)
	else
	    if (SetPlayerSpend >= "0") then
	    player:SendBroadcastMessage("Success! "..GetPlayerFullName.." Now Has "..SetPlayerSpend.." Spendable Points!")
		CharDBQuery("UPDATE `character_kills` SET `Kills_Spend`="..SetPlayerSpend.." WHERE `GUID`="..GMPlayerGUID.." LIMIT 1;", 0)
		pUnit:GossipCreateMenu(50, player, 0)
        pUnit:GossipMenuAddItem(9, "Return", 499, 0)
        pUnit:GossipSendMenu(player)
		else
        player:SendBroadcastMessage("You Need To Type In A Valid Number Higher Than 0!")
	    pUnit:GossipCreateMenu(50, player, 0)
        pUnit:GossipMenuAddItem(9, "Enter New Points", 553, 1)
        pUnit:GossipSendMenu(player)
	    end
	end
end

if (intid == 5) then
    player:GossipComplete()
end
----Reset KDR-----
if (intid == 1) then
local AfterPurchase = GetSpendablePoints - KDRResetPrice
    if (GetSpendablePoints > ""..KDRResetPrice - 1 .."") then
   player:SendBroadcastMessage("Costs: "..KDRResetPrice.." Points, You Will Have "..AfterPurchase.." Points After Purchase, Do You Wish To Purchase The KDR Reset?")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "Yes Please", 10, 0)
   pUnit:GossipMenuAddItem(9, "No Thanks", 99, 0)
   pUnit:GossipSendMenu(player)
   else
   player:SendBroadcastMessage("You Currently Only Have "..GetSpendablePoints.." Points! You Need At Least "..KDRResetPrice.." Points!")
   player:GossipComplete()
   end
end

if (intid == 10) then
local AfterPurchase = GetSpendablePoints - KDRResetPrice
ScriptDBQuery("UPDATE `character_kills` SET `Currenst_Streak`=0, `Kills_Total`=0, `Deaths`=0, `KDR`=1 WHERE `GUID`="..GetPlayerGUID.." LIMIT 1;", 0)
ScriptDBQuery("UPDATE `character_kills` SET `Kills_Spend`="..AfterPurchase.." WHERE `GUID`="..GetPlayerGUID.." LIMIT 1;", 0)
player:SendBroadcastMessage("Reset KDR Success!")
player:GossipComplete()
end
------LEVEL ME!---------
if (intid == 2) then
local GetSpendablePoints = ScriptDBQuery("SELECT Kills_Spend FROM character_kills WHERE guid = '"..GetPlayerGUID.."'", 0):GetColumn(0):GetString()
local AfterPurchase = GetSpendablePoints - LevelUpPrice
   if (GetSpendablePoints > ""..LevelUpPrice - 1 .."") then
   player:SendBroadcastMessage("Costs: "..LevelUpPrice.." Points, You Will Have "..AfterPurchase.." Points After Purchase, Do You Wish To Purchase The Level Up?")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "Yes Please", 11, 0)
   pUnit:GossipMenuAddItem(9, "No Thanks", 99, 0)
   pUnit:GossipSendMenu(player)
   else
   player:SendBroadcastMessage("You Currently Only Have "..GetSpendablePoints.." Points! You Need At Least "..LevelUpPrice.." Points!")
   player:GossipComplete()
   end
end
if (intid == 11) then
local AfterPurchase = GetSpendablePoints - LevelUpPrice
		if (player:GetPlayerLevel() == Levelcap) then
		player:SendBroadcastMessage("Level Up Failed: You Are Already At Level Cap!")
		else
		ScriptDBQuery("UPDATE `character_kills` SET `Kills_Spend`="..AfterPurchase.." WHERE `GUID`="..GetPlayerGUID.." LIMIT 1;", 0)
		Level = player:GetPlayerLevel() + 1
		player:SetPlayerLevel(Level)
		player:SendBroadcastMessage("Level Up Success!")
		player:GossipComplete()
		end
end
-------BUFF ME!---------
if (intid == 3) then
local GetSpendablePoints = ScriptDBQuery("SELECT Kills_Spend FROM character_kills WHERE guid = '"..GetPlayerGUID.."'", 0):GetColumn(0):GetString()
local AfterPurchase = GetSpendablePoints - BuffUpPrice
    if (GetSpendablePoints > ""..BuffUpPrice - 1 .."") then
   player:SendBroadcastMessage("Costs: "..BuffUpPrice.." Points, You Will Have "..AfterPurchase.." Points After Purchase, Do You Wish To Purchase The Buff Up?")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "Yes Please", 12, 0)
   pUnit:GossipMenuAddItem(9, "No Thanks", 99, 0)
   pUnit:GossipSendMenu(player)
   else
   player:SendBroadcastMessage("You Currently Only Have "..GetSpendablePoints.." Points! You Need At Least "..BuffUpPrice.." Points!")
   player:GossipComplete()
   end
end
if (intid == 12) then
local AfterPurchase = GetSpendablePoints - BuffUpPrice
		CharDBQuery("UPDATE `character_kills` SET `Kills_Spend`="..AfterPurchase.." WHERE `GUID`="..GetPlayerGUID.." LIMIT 1;", 0)
		pUnit:FullCastSpellOnTarget(48102, player)
		pUnit:FullCastSpellOnTarget(58449, player)
		pUnit:FullCastSpellOnTarget(48104, player)
		pUnit:FullCastSpellOnTarget(58451, player)
		pUnit:FullCastSpellOnTarget(48100, player)
		player:SendBroadcastMessage("Buff Up Success!")
		player:GossipComplete()
end
--[[
Below Here You Will Be Adding Items And Stuff If You Want The Shop!
--]]
if (intid == 4) then
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "Weapons", 13, 0) --Remember To Check The intid
   pUnit:GossipMenuAddItem(9, "Armor", 14, 0) --Remember To Check The intid
   pUnit:GossipMenuAddItem(9, "Trinkets", 15, 0) --Remember To Check The intid
   pUnit:GossipMenuAddItem(9, "Misc", 16, 0) --Remember To Check The intid
   pUnit:GossipMenuAddItem(0, "Never Mind", 5, 0)
   pUnit:GossipSendMenu(player)
end
--Weapons--
if (intid == 13) then
player:SendBroadcastMessage("[DELETE THIS] Please Contact The Admin Of the Server, There Is Currently No Items Up")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "Item 1", 20, 0) --Remember To Check The intid
   pUnit:GossipMenuAddItem(9, "Item 2", 21, 0) --Remember To Check The intid
   pUnit:GossipMenuAddItem(9, "Item 3", 22, 0) --Remember To Check The intid
   pUnit:GossipMenuAddItem(9, "Item 4", 23, 0) --Remember To Check The intid
   pUnit:GossipMenuAddItem(0, "Back To Main Menu", 99, 0)
   pUnit:GossipSendMenu(player)
end
if (intid == 20) then
local GetSpendablePoints = ScriptDBQuery("SELECT Kills_Spend FROM character_kills WHERE guid = '"..GetPlayerGUID.."'", 0):GetColumn(0):GetString()
local AfterPurchase = GetSpendablePoints - 1
    if (GetSpendablePoints >= "1") then
	player:SendBroadcastMessage("[DELETE THIS] Please Contact The Admin Of the Server, There Is Currently No Items Up")
	player:AddItem(0, 0)
    --ScriptDBQuery("UPDATE `character_kills` SET `Kills_Spend`="..AfterPurchase.." WHERE `GUID`="..GetPlayerGUID.." LIMIT 1;", 0)
	player:GossipComplete()
    end
end
if (intid == 21) then
local GetSpendablePoints = ScriptDBQuery("SELECT Kills_Spend FROM character_kills WHERE guid = '"..GetPlayerGUID.."'", 0):GetColumn(0):GetString()
local AfterPurchase = GetSpendablePoints - 1
    if (GetSpendablePoints >= "1") then
	player:SendBroadcastMessage("[DELETE THIS] Please Contact The Admin Of the Server, There Is Currently No Items Up")
	player:AddItem(0, 0)
    --ScriptDBQuery("UPDATE `character_kills` SET `Kills_Spend`="..AfterPurchase.." WHERE `GUID`="..GetPlayerGUID.." LIMIT 1;", 0)
	player:GossipComplete()
    end
end
if (intid == 22) then
local GetSpendablePoints = ScriptDBQuery("SELECT Kills_Spend FROM character_kills WHERE guid = '"..GetPlayerGUID.."'", 0):GetColumn(0):GetString()
local AfterPurchase = GetSpendablePoints - 1
    if (GetSpendablePoints >= "1") then
	player:SendBroadcastMessage("[DELETE THIS] Please Contact The Admin Of the Server, There Is Currently No Items Up")
	player:AddItem(0, 0)
    --ScriptDBQuery("UPDATE `character_kills` SET `Kills_Spend`="..AfterPurchase.." WHERE `GUID`="..GetPlayerGUID.." LIMIT 1;", 0)
	player:GossipComplete()
    end
end
if (intid == 23) then
local GetSpendablePoints = ScriptDBQuery("SELECT Kills_Spend FROM character_kills WHERE guid = '"..GetPlayerGUID.."'", 0):GetColumn(0):GetString()
local AfterPurchase = GetSpendablePoints - 1
    if (GetSpendablePoints >= "1") then
	player:SendBroadcastMessage("[DELETE THIS] Please Contact The Admin Of the Server, There Is Currently No Items Up")
	player:AddItem(0, 0)
    --ScriptDBQuery("UPDATE `character_kills` SET `Kills_Spend`="..AfterPurchase.." WHERE `GUID`="..GetPlayerGUID.." LIMIT 1;", 0)
	player:GossipComplete()
    end
end
---ARMOR---
if (intid == 14) then
player:SendBroadcastMessage("[DELETE THIS] Please Contact The Admin Of the Server, There Is Currently No Items Up")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "Item 1", 50, 0) --Remember To Check The intid
   pUnit:GossipMenuAddItem(9, "Item 2", 51, 0) --Remember To Check The intid
   pUnit:GossipMenuAddItem(9, "Item 3", 52, 0) --Remember To Check The intid
   pUnit:GossipMenuAddItem(9, "Item 4", 53, 0) --Remember To Check The intid
   pUnit:GossipMenuAddItem(0, "Back To Main Menu", 99, 0)
   pUnit:GossipSendMenu(player)
end
if (intid == 50) then
local GetSpendablePoints = ScriptDBQuery("SELECT Kills_Spend FROM character_kills WHERE guid = '"..GetPlayerGUID.."'", 0):GetColumn(0):GetString()
local AfterPurchase = GetSpendablePoints - 1
    if (GetSpendablePoints >= "1") then
	player:SendBroadcastMessage("[DELETE THIS] Please Contact The Admin Of the Server, There Is Currently No Items Up")
	player:AddItem(0, 0)
    --ScriptDBQuery("UPDATE `character_kills` SET `Kills_Spend`="..AfterPurchase.." WHERE `GUID`="..GetPlayerGUID.." LIMIT 1;", 0)
	player:GossipComplete()
    end
end
if (intid == 51) then
local GetSpendablePoints = ScriptDBQuery("SELECT Kills_Spend FROM character_kills WHERE guid = '"..GetPlayerGUID.."'", 0):GetColumn(0):GetString()
local AfterPurchase = GetSpendablePoints - 1
    if (GetSpendablePoints >= "1") then
	player:SendBroadcastMessage("[DELETE THIS] Please Contact The Admin Of the Server, There Is Currently No Items Up")
	player:AddItem(0, 0)
    --ScriptDBQuery("UPDATE `character_kills` SET `Kills_Spend`="..AfterPurchase.." WHERE `GUID`="..GetPlayerGUID.." LIMIT 1;", 0)
	player:GossipComplete()
    end
end
if (intid == 52) then
local GetSpendablePoints = ScriptDBQuery("SELECT Kills_Spend FROM character_kills WHERE guid = '"..GetPlayerGUID.."'", 0):GetColumn(0):GetString()
local AfterPurchase = GetSpendablePoints - 1
    if (GetSpendablePoints >= "1") then
	player:SendBroadcastMessage("[DELETE THIS] Please Contact The Admin Of the Server, There Is Currently No Items Up")
	player:AddItem(0, 0)
    --ScriptDBQuery("UPDATE `character_kills` SET `Kills_Spend`="..AfterPurchase.." WHERE `GUID`="..GetPlayerGUID.." LIMIT 1;", 0)
	player:GossipComplete()
    end
end
if (intid == 53) then
local GetSpendablePoints = ScriptDBQuery("SELECT Kills_Spend FROM character_kills WHERE guid = '"..GetPlayerGUID.."'", 0):GetColumn(0):GetString()
local AfterPurchase = GetSpendablePoints - 1
    if (GetSpendablePoints >= "1") then
	player:SendBroadcastMessage("[DELETE THIS] Please Contact The Admin Of the Server, There Is Currently No Items Up")
	player:AddItem(0, 0)
    --ScriptDBQuery("UPDATE `character_kills` SET `Kills_Spend`="..AfterPurchase.." WHERE `GUID`="..GetPlayerGUID.." LIMIT 1;", 0)
	player:GossipComplete()
    end
end
---TRINKETS---
if (intid == 15) then
player:SendBroadcastMessage("[DELETE THIS] Please Contact The Admin Of the Server, There Is Currently No Items Up")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "Item 1", 70, 0) --Remember To Check The intid
   pUnit:GossipMenuAddItem(9, "Item 2", 71, 0) --Remember To Check The intid
   pUnit:GossipMenuAddItem(9, "Item 3", 72, 0) --Remember To Check The intid
   pUnit:GossipMenuAddItem(9, "Item 4", 73, 0) --Remember To Check The intid
   pUnit:GossipMenuAddItem(0, "Back To Main Menu", 99, 0)
   pUnit:GossipSendMenu(player)
end
if (intid == 70) then
local GetSpendablePoints = ScriptDBQuery("SELECT Kills_Spend FROM character_kills WHERE guid = '"..GetPlayerGUID.."'", 0):GetColumn(0):GetString()
local AfterPurchase = GetSpendablePoints - 1
    if (GetSpendablePoints >= "1") then
	player:SendBroadcastMessage("[DELETE THIS] Please Contact The Admin Of the Server, There Is Currently No Items Up")
	player:AddItem(0, 0)
    --ScriptDBQuery("UPDATE `character_kills` SET `Kills_Spend`="..AfterPurchase.." WHERE `GUID`="..GetPlayerGUID.." LIMIT 1;", 0)
	player:GossipComplete()
    end
end
if (intid == 71) then
local GetSpendablePoints = ScriptDBQuery("SELECT Kills_Spend FROM character_kills WHERE guid = '"..GetPlayerGUID.."'", 0):GetColumn(0):GetString()
local AfterPurchase = GetSpendablePoints - 1
    if (GetSpendablePoints >= "1") then
	player:SendBroadcastMessage("[DELETE THIS] Please Contact The Admin Of the Server, There Is Currently No Items Up")
	player:AddItem(0, 0)
    --ScriptDBQuery("UPDATE `character_kills` SET `Kills_Spend`="..AfterPurchase.." WHERE `GUID`="..GetPlayerGUID.." LIMIT 1;", 0)
	player:GossipComplete()
    end
end
if (intid == 72) then
local GetSpendablePoints = ScriptDBQuery("SELECT Kills_Spend FROM character_kills WHERE guid = '"..GetPlayerGUID.."'", 0):GetColumn(0):GetString()
local AfterPurchase = GetSpendablePoints - 1
    if (GetSpendablePoints >= "1") then
	player:SendBroadcastMessage("[DELETE THIS] Please Contact The Admin Of the Server, There Is Currently No Items Up")
	player:AddItem(0, 0)
    --ScriptDBQuery("UPDATE `character_kills` SET `Kills_Spend`="..AfterPurchase.." WHERE `GUID`="..GetPlayerGUID.." LIMIT 1;", 0)
	player:GossipComplete()
    end
end
if (intid == 73) then
local GetSpendablePoints = ScriptDBQuery("SELECT Kills_Spend FROM character_kills WHERE guid = '"..GetPlayerGUID.."'", 0):GetColumn(0):GetString()
local AfterPurchase = GetSpendablePoints - 1
    if (GetSpendablePoints >= "1") then
	player:SendBroadcastMessage("[DELETE THIS] Please Contact The Admin Of the Server, There Is Currently No Items Up")
	player:AddItem(0, 0)
    --ScriptDBQuery("UPDATE `character_kills` SET `Kills_Spend`="..AfterPurchase.." WHERE `GUID`="..GetPlayerGUID.." LIMIT 1;", 0)
	player:GossipComplete()
    end
end
--MISC--
if (intid == 16) then
player:SendBroadcastMessage("[DELETE THIS] Please Contact The Admin Of the Server, There Is Currently No Items Up")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "Item 1", 90, 0) --Remember To Check The intid
   pUnit:GossipMenuAddItem(9, "Item 2", 91, 0) --Remember To Check The intid
   pUnit:GossipMenuAddItem(9, "Item 3", 92, 0) --Remember To Check The intid
   pUnit:GossipMenuAddItem(9, "Item 4", 93, 0) --Remember To Check The intid
   pUnit:GossipMenuAddItem(0, "Back To Main Menu", 99, 0)
   pUnit:GossipSendMenu(player)
end
if (intid == 90) then
local GetSpendablePoints = ScriptDBQuery("SELECT Kills_Spend FROM character_kills WHERE guid = '"..GetPlayerGUID.."'", 0):GetColumn(0):GetString()
local AfterPurchase = GetSpendablePoints - 1
    if (GetSpendablePoints >= "1") then
	player:SendBroadcastMessage("[DELETE THIS] Please Contact The Admin Of the Server, There Is Currently No Items Up")
	player:AddItem(0, 0)
    --ScriptDBQuery("UPDATE `character_kills` SET `Kills_Spend`="..AfterPurchase.." WHERE `GUID`="..GetPlayerGUID.." LIMIT 1;", 0)
	player:GossipComplete()
    end
end
if (intid == 91) then
local GetSpendablePoints = ScriptDBQuery("SELECT Kills_Spend FROM character_kills WHERE guid = '"..GetPlayerGUID.."'", 0):GetColumn(0):GetString()
local AfterPurchase = GetSpendablePoints - 1
    if (GetSpendablePoints >= "1") then
	player:SendBroadcastMessage("[DELETE THIS] Please Contact The Admin Of the Server, There Is Currently No Items Up")
	player:AddItem(0, 0)
    --ScriptDBQuery("UPDATE `character_kills` SET `Kills_Spend`="..AfterPurchase.." WHERE `GUID`="..GetPlayerGUID.." LIMIT 1;", 0)
	player:GossipComplete()
    end
end
if (intid == 92) then
local GetSpendablePoints = ScriptDBQuery("SELECT Kills_Spend FROM character_kills WHERE guid = '"..GetPlayerGUID.."'", 0):GetColumn(0):GetString()
local AfterPurchase = GetSpendablePoints - 1
    if (GetSpendablePoints >= "1") then
	player:SendBroadcastMessage("[DELETE THIS] Please Contact The Admin Of the Server, There Is Currently No Items Up")
	player:AddItem(0, 0)
    --ScriptDBQuery("UPDATE `character_kills` SET `Kills_Spend`="..AfterPurchase.." WHERE `GUID`="..GetPlayerGUID.." LIMIT 1;", 0)
	player:GossipComplete()
    end
end
if (intid == 93) then
local GetSpendablePoints = ScriptDBQuery("SELECT Kills_Spend FROM character_kills WHERE guid = '"..GetPlayerGUID.."'", 0):GetColumn(0):GetString()
local AfterPurchase = GetSpendablePoints - 1
    if (GetSpendablePoints >= "1") then
	player:SendBroadcastMessage("[DELETE THIS] Please Contact The Admin Of the Server, There Is Currently No Items Up")
	player:AddItem(0, 0)
    --ScriptDBQuery("UPDATE `character_kills` SET `Kills_Spend`="..AfterPurchase.." WHERE `GUID`="..GetPlayerGUID.." LIMIT 1;", 0)
	player:GossipComplete()
    end
end
end

RegisterUnitGossipEvent(PVPVendor, 1, "PVPVendor_PVPSystem_OnGossipTalk")
RegisterUnitGossipEvent(PVPVendor, 2, "PVPVendor_PVPSystem_OnGossipSelect")
	
	
--[[
           PVP Vendor
       ...>You Are Here<...
          Chat Commands
           ..........
           Server Hook
--]]
	
	
function PVPSystem_ChatCommands(event, plr, message, type, language, unit)
local PlayerName = plr:GetName()
if (CharDBQuery("SELECT guid FROM characters WHERE name = '"..PlayerName.."'", 0) ~= nil) then
GetPlayerGUID = CharDBQuery("SELECT guid FROM characters WHERE name = '"..PlayerName.."'", 0):GetColumn(0):GetString()
end
	if(message == Show_Stats_nocaps) or (message == Show_Stats_caps)or (message == Show_Stats)then
	---====Nil Check===---
    local IsPlayerNil = ScriptDBQuery("SELECT guid FROM character_kills WHERE guid = '"..GetPlayerGUID.."'", 0)
        if (IsPlayerNil == nil) then
        ScriptDBQuery("INSERT INTO character_kills (GUID, Name, Current_Title, Highest_Streak, Current_Streak, Deaths, KDR, Kills_Total, Kills_Rank, Kills_Spend) VALUES ('"..GetPlayerGUID.."', '"..PlayerName.."', '1', '0', '0', '0', '1', '0', '0', '0')", 0)  	
	    end
	local GetKillerTitle = ScriptDBQuery("SELECT Current_Title FROM character_kills WHERE guid = '"..GetPlayerGUID.."'", 0):GetColumn(0):GetString()
    local GetTitleName = ScriptDBQuery("SELECT Title FROM character_pvp_title WHERE ID = '"..GetKillerTitle.."'", 0):GetColumn(0):GetString()
	local GetKDR = ScriptDBQuery("SELECT KDR FROM character_kills WHERE guid = '"..GetPlayerGUID.."'", 0):GetColumn(0):GetString()
    local GetTotalKills = ScriptDBQuery("SELECT Kills_Total FROM character_kills WHERE guid = '"..GetPlayerGUID.."'", 0):GetColumn(0):GetString()
    local GetDeaths = ScriptDBQuery("SELECT Deaths FROM character_kills WHERE guid = '"..GetPlayerGUID.."'", 0):GetColumn(0):GetString()
    local GetSpendablePoints = ScriptDBQuery("SELECT Kills_Spend FROM character_kills WHERE guid = '"..GetPlayerGUID.."'", 0):GetColumn(0):GetString()
	local PlayerDeaths = ScriptDBQuery("SELECT Deaths FROM character_kills WHERE guid = '"..GetPlayerGUID.."'", 0):GetColumn(0):GetString()
	local PlayerKills = ScriptDBQuery("SELECT Kills_Total FROM character_kills WHERE guid = '"..GetPlayerGUID.."'", 0):GetColumn(0):GetString()
	local GetHighestStreak = ScriptDBQuery("SELECT Highest_Streak FROM character_kills WHERE guid = '"..GetPlayerGUID.."'", 0):GetColumn(0):GetString()
	local GetCurrentStreak = ScriptDBQuery("SELECT Current_Streak FROM character_kills WHERE guid = '"..GetPlayerGUID.."'", 0):GetColumn(0):GetString()
	plr:SendBroadcastMessage("\124c00FFA500Current Rank:\124r \124c0033FF33["..GetTitleName.."]")
	if (PlayerKills == "0") or (PlayerDeaths == "0") then
	plr:SendBroadcastMessage("\124c00FFA500Kill Death Ratio:\124r \124c0033FF33UNDEFINED")
	else
	plr:SendBroadcastMessage("\124c00FFA500Kill Death Ratio:\124r \124c0033FF33"..GetKDR)
	end
	plr:SendBroadcastMessage("\124c00FFA500Total Kills:\124r \124c0033FF33"..GetTotalKills)
	plr:SendBroadcastMessage("\124c00FFA500Total Deaths:\124r \124c0033FF33"..GetDeaths)
	plr:SendBroadcastMessage("\124c00FFA500Spendable Points:\124r \124c0033FF33"..GetSpendablePoints)
	plr:SendBroadcastMessage("\124c00FFA500Highest Streak:\124r \124c0033FF33"..GetHighestStreak)
	plr:SendBroadcastMessage("\124c00FFA500Current Streak:\124r \124c0033FF33"..GetCurrentStreak)
	end
end
		
RegisterServerHook(16, "PVPSystem_ChatCommands")

--[[
           PVP Vendor
           ..........
          Chat Commands
	   ...>You Are Here<...
           Server Hook
--]]

--====================================================--
----Highest Rank ID----
local GetRowCountRanks = ScriptDBQuery("SELECT ID FROM `character_pvp_title`"):GetRowCount()
local GlobalAnnounce = GetPlayersInWorld()
--====================================================--
function KillCounter_OnKillPlayer(event, pPlayer, pVictim)
--[[


    These Below Are Mostly DB Locals, Please Make Sure You Place You Table In The Right Database!
                                           --XDemonic--
						                --Ac-Web: Xzombie--
						  

--]]	
local Player = pPlayer
local Victim = pVictim
---Player/Victim Names---
local VictimName = Victim:GetName()
local PlayerName = Player:GetName()
-----------------------
local GetVictimGUID = CharDBQuery("SELECT guid FROM characters WHERE name = '"..VictimName.."'", 0):GetColumn(0):GetString()
local GetPlayerGUID = CharDBQuery("SELECT guid FROM characters WHERE name = '"..PlayerName.."'", 0):GetColumn(0):GetString()
----------------------
--========Self Kill Check========--
if (GetPlayerGUID == GetVictimGUID) then
    local IsPlayerNil = ScriptDBQuery("SELECT guid FROM character_kills WHERE guid = '"..GetPlayerGUID.."'", 0)
    if (IsPlayerNil == nil) then
    ScriptDBQuery("INSERT INTO character_kills (GUID, Name, Current_Title, Highest_Streak, Current_Streak, Deaths, KDR, Kills_Total, Kills_Rank, Kills_Spend) VALUES ('"..GetPlayerGUID.."', '"..PlayerName.."', '1', '0', '0', '0', '1', '0', '0', '0')", 0)
    end
   ---Checks for Streak---
    local GetCurrentStreakDied = ScriptDBQuery("SELECT Current_Streak FROM character_kills WHERE GUID = '"..GetVictimGUID.."'", 0):GetColumn(0):GetString()
	if (GetCurrentStreakDied == "0") then
	Victim:SendBroadcastMessage("\124c007FFFD4You Killed Yourself, That Still Counts for A Death, But No Kill.")
	else
    Victim:SendBroadcastMessage("\124c007FFFD4You Killed Yourself, Your Kill Streak Was "..GetCurrentStreakDied)
	end
	local GetDeathsVictim = ScriptDBQuery("SELECT Deaths FROM character_kills WHERE guid = '"..GetVictimGUID.."'", 0):GetColumn(0):GetString()
	local AddOneDeath = GetDeathsVictim + 1
    ScriptDBQuery("UPDATE `character_kills` SET `Current_Streak`=0, `Deaths`="..AddOneDeath.."	WHERE `GUID`="..GetVictimGUID.." LIMIT 1;", 0)
else
--========NIL CHECK========--
local IsVictimNil = ScriptDBQuery("SELECT guid FROM character_kills WHERE guid = '"..GetVictimGUID.."'", 0)
local IsPlayerNil = ScriptDBQuery("SELECT guid FROM character_kills WHERE guid = '"..GetPlayerGUID.."'", 0)
if (IsPlayerNil == nil) then
ScriptDBQuery("INSERT INTO character_kills (GUID, Name, Current_Title, Highest_Streak, Current_Streak, Deaths, KDR, Kills_Total, Kills_Rank, Kills_Spend) VALUES ('"..GetPlayerGUID.."', '"..PlayerName.."', '1', '0', '0', '0', '1', '0', '0', '0')", 0)
end
if (IsVictimNil == nil) then
ScriptDBQuery("INSERT INTO character_kills (GUID, Name, Current_Title, Highest_Streak, Current_Streak, Deaths, KDR, Kills_Total, Kills_Rank, Kills_Spend) VALUES ('"..GetVictimGUID.."', '"..VictimName.."', '1', '0', '0', '0', '1', '0', '0', '0')", 0)
end
------Get [DB] Victim-------
local GetKillsTotalVictim = ScriptDBQuery("SELECT Kills_Total FROM character_kills WHERE guid = '"..GetVictimGUID.."'", 0):GetColumn(0):GetString()
local GetDeathsVictim = ScriptDBQuery("SELECT Deaths FROM character_kills WHERE guid = '"..GetVictimGUID.."'", 0):GetColumn(0):GetString()
------Get [DB] Killer-------
local GetPlayerGUID = CharDBQuery("SELECT guid FROM characters WHERE name = '"..PlayerName.."'", 0):GetColumn(0):GetString()
local GetKillsTotalKiller = ScriptDBQuery("SELECT Kills_Total FROM character_kills WHERE guid = '"..GetPlayerGUID.."'", 0):GetColumn(0):GetString()
local GetDeathsKiller = ScriptDBQuery("SELECT Deaths FROM character_kills WHERE guid = '"..GetPlayerGUID.."'", 0):GetColumn(0):GetString()
local GetKillsSpendKiller = ScriptDBQuery("SELECT Kills_Spend FROM character_kills WHERE guid = '"..GetPlayerGUID.."'", 0):GetColumn(0):GetString()
local GetKillsRankKiller = ScriptDBQuery("SELECT Kills_Rank FROM character_kills WHERE guid = '"..GetPlayerGUID.."'", 0):GetColumn(0):GetString()
------Update [DB] Victim-------
local AddOneDeath = GetDeathsVictim + 1
local KDRVictimKills = GetKillsTotalVictim
local KDRVictimDeaths = GetDeathsVictim  + 1 ---Dont ask Why its +1, but it seems the only way to get the KDR correct?
local UpdateKDRVictim = KDRVictimKills / KDRVictimDeaths
------Update [DB] Killer-------
local KDRKillerKills = GetKillsTotalKiller + 1  ---Dont ask Why its +1, but it seems the only way to get the KDR correct?
local KDRKillerDeaths = GetDeathsKiller
local UpdateKDRKiller = KDRKillerKills / KDRKillerDeaths
---
local UpdateKillsSpend = GetKillsSpendKiller + 1
local UpdateKillsRank = GetKillsRankKiller + 1
local UpdateKillsTotal = GetKillsTotalKiller + 1
------===Title System===------
local GetKillerTitle = ScriptDBQuery("SELECT Current_Title FROM character_kills WHERE guid = '"..GetPlayerGUID.."'", 0):GetColumn(0):GetString()
local GetVictimTitle = ScriptDBQuery("SELECT Current_Title FROM character_kills WHERE guid = '"..GetVictimGUID.."'", 0):GetColumn(0):GetString()
local KillerTitleName = ScriptDBQuery("SELECT Title FROM character_pvp_title WHERE ID = '"..GetKillerTitle.."'", 0):GetColumn(0):GetString()
local VictimTitleName = ScriptDBQuery("SELECT Title FROM character_pvp_title WHERE ID = '"..GetVictimTitle.."'", 0):GetColumn(0):GetString()
----===Streak System===----
--[[


We Will Now Start The Script, Please DO NOT Edit anything Below here Unless you know what you are Doing!
                                           --XDemonic--
						                --Ac-Web: Xzombie--
						  

--]]						  
-----UPDATE Killer/Victim-----
ScriptDBQuery("UPDATE `character_kills` SET `Kills_Total`="..UpdateKillsTotal..", `Kills_Rank`="..UpdateKillsRank..", `Kills_Spend`="..UpdateKillsSpend.." WHERE `GUID`="..GetPlayerGUID.." LIMIT 1;", 0)
ScriptDBQuery("UPDATE `character_kills` SET `Deaths`="..AddOneDeath.." WHERE `GUID`="..GetVictimGUID.." LIMIT 1;", 0)
------------------------------
-----KDR UPDATE-----
ScriptDBQuery("UPDATE `character_kills` SET `KDR`="..UpdateKDRKiller.." WHERE `GUID`="..GetPlayerGUID.." LIMIT 1;", 0)
ScriptDBQuery("UPDATE `character_kills` SET `KDR`="..UpdateKDRVictim.." WHERE `GUID`="..GetVictimGUID.." LIMIT 1;", 0)
------------------------------
local KillerDeaths = GetDeathsKiller
local VictimKills = GetKillsTotalVictim
    ------Killer and Victim------
    if (VictimOnKilled_FEATURE == "1") then
		if (VictimKills == "0") then
		Victim:SendBroadcastMessage("\124c00FF3333You\124r Have Been Killed By \124c0033FF33["..KillerTitleName.."] "..PlayerName.."\124r, You Now Have UNDEFINED K/D Ratio.")
		else
        Victim:SendBroadcastMessage("\124c00FF3333You\124r Have Been Killed By \124c0033FF33["..KillerTitleName.."] "..PlayerName.."\124r, You Now Have "..GetKDRVictim.." K/D Ratio.")
    end
	end
	if (KillerOnKill_FEATURE == "1") then
	    if (KillerDeaths == "0") then
		Player:SendBroadcastMessage("\124c0033FF33You\124r Have Killed \124c00FF3333["..VictimTitleName.."] "..VictimName.."\124r, You Now Have UNDEFINED K/D Ratio!")
		else
        Player:SendBroadcastMessage("\124c0033FF33You\124r Have Killed \124c00FF3333["..VictimTitleName.."] "..VictimName.."\124r, You Now Have "..GetKDRKiller.." K/D Ratio!")
    end
	end
--[[




















this here is just to slow down the script a few lines, so it can succefully show the correct KDR on global chat





































--]]
	local GetKDRKiller = ScriptDBQuery("SELECT KDR FROM character_kills WHERE guid = '"..GetPlayerGUID.."'", 0):GetColumn(0):GetString()
	local GetKDRVictim = ScriptDBQuery("SELECT KDR FROM character_kills WHERE guid = '"..GetVictimGUID.."'", 0):GetColumn(0):GetString()
	if (GlobalOnKilled_FEATURE == "1") then
	for index, Global in pairs(GlobalAnnounce) do
	    if (KillerDeaths == "0") and (VictimKills == "0") then
        Global:SendBroadcastMessage("\124c0033FF33["..KillerTitleName.."] "..PlayerName.."\124r Has Killed \124c00FF3333["..VictimTitleName.."] "..VictimName.. "\124r! \124c00FFA500[KDR:\124r \124c0033FF33UNDEFINED\124r \124c00FFA500|| \124c00FF3333UNDEFINED\124r\124c00FFA500]")
		else
		if (KillerDeaths == "0") then
		Global:SendBroadcastMessage("\124c0033FF33["..KillerTitleName.."] "..PlayerName.."\124r Has Killed \124c00FF3333["..VictimTitleName.."] "..VictimName.. "\124r! \124c00FFA500[KDR:\124r \124c0033FF33UNDEFINED\124r \124c00FFA500|| \124c00FF3333"..GetKDRVictim.."\124r\124c00FFA500]")
		else
		if (VictimKills == "0") then
		Global:SendBroadcastMessage("\124c0033FF33["..KillerTitleName.."] "..PlayerName.."\124r Has Killed \124c00FF3333["..VictimTitleName.."] "..VictimName.. "\124r! \124c00FFA500[KDR:\124r \124c0033FF33"..GetKDRKiller.."\124r \124c00FFA500|| \124c00FF3333UNDEFINED\124r\124c00FFA500]")
		else
	    Global:SendBroadcastMessage("\124c0033FF33["..KillerTitleName.."] "..PlayerName.."\124r Has Killed \124c00FF3333["..VictimTitleName.."] "..VictimName.. "\124r! \124c00FFA500[KDR:\124r \124c0033FF33"..GetKDRKiller.."\124r \124c00FFA500|| \124c00FF3333"..GetKDRVictim.."\124r\124c00FFA500]")
    end
	end
	end
	end
	end
----Streak Update----
local GetCurrentStreak = ScriptDBQuery("SELECT Current_Streak FROM character_kills WHERE GUID = '"..GetPlayerGUID.."'", 0):GetColumn(0):GetString()
local SetCurrentStreak = GetCurrentStreak + 1
local GetHighestStreak = ScriptDBQuery("SELECT Highest_Streak FROM character_kills WHERE GUID = '"..GetPlayerGUID.."'", 0):GetColumn(0):GetString()
local GetCurrentStreakDied = ScriptDBQuery("SELECT Current_Streak FROM character_kills WHERE GUID = '"..GetVictimGUID.."'", 0):GetColumn(0):GetString()
local GetVictimGUID = CharDBQuery("SELECT guid FROM characters WHERE name = '"..VictimName.."'", 0):GetColumn(0):GetString()
local GetPlayerGUID = CharDBQuery("SELECT guid FROM characters WHERE name = '"..PlayerName.."'", 0):GetColumn(0):GetString()
if GetCurrentStreak == GetHighestStreak then
ScriptDBQuery("UPDATE `character_kills` SET `Current_Streak`="..SetCurrentStreak..", `Highest_Streak`="..SetCurrentStreak.." WHERE `GUID`="..GetPlayerGUID.." LIMIT 1;", 0)
    if (KillerShowStreak_FEATURE == "1") then
    Player:SendBroadcastMessage("\124c00FFFF00You Have Beaten Your Personal Best Streak!\124r \124c007FFFD4Current Kill Streak: "..SetCurrentStreak)
	end
else
ScriptDBQuery("UPDATE `character_kills` SET `Current_Streak`="..SetCurrentStreak.." WHERE `GUID`="..GetPlayerGUID.." LIMIT 1;", 0)
    if (KillerShowStreak_FEATURE == "1") then
    Player:SendBroadcastMessage("\124c007FFFD4Current Kill Streak: "..SetCurrentStreak)
    end
end
---Victim Streak Update---
if (VictimShowStreak_FEATURE == "1") then
    if (GetCurrentStreakDied == "0") then
	else
    Victim:SendBroadcastMessage("\124c007FFFD4You Died, Your Kill Streak Was "..GetCurrentStreakDied)
	ScriptDBQuery("UPDATE `character_kills` SET `Current_Streak`=0 WHERE `GUID`="..GetVictimGUID.." LIMIT 1;", 0)
    end
else
ScriptDBQuery("UPDATE `character_kills` SET `Current_Streak`=0 WHERE `GUID`="..GetVictimGUID.." LIMIT 1;", 0)
end
-----Rank Up System------
GetKillsRankKillerUp = ScriptDBQuery("SELECT Kills_Rank FROM character_kills WHERE guid = '"..GetPlayerGUID.."'", 0):GetColumn(0):GetString()
if (ScriptDBQuery("SELECT Required_Total_Kills FROM character_pvp_title WHERE Required_Total_Kills = '"..GetKillsRankKillerUp.."'", 0) ~= nil) then
local GetKillsMatchCount = ScriptDBQuery("SELECT ID From character_pvp_title WHERE Required_Total_Kills = '"..GetKillsRankKillerUp.."'", 0):GetColumn(0):GetString()
local GetNewTitle = ScriptDBQuery("SELECT Title From character_pvp_title WHERE Required_Total_Kills = '"..GetKillsRankKillerUp.."'", 0):GetColumn(0):GetString()
    Player:SendBroadcastMessage("\124c000070ddGratulations! Your Now Rank:\124r \124c0033FF33["..GetNewTitle.."]")
    Player:CastSpell(47292)
	if (GlobalShowRankUp_FEATURE == "1") then
    for index, Global in pairs(GlobalAnnounce) do
    Global:SendBroadcastMessage("\124c0033FF33["..KillerTitleName.."] "..PlayerName.."\124r \124c000070ddHas Ranked Up To:\124r \124c0033FF33["..GetNewTitle.."]\124r\124c000070dd!")
    end
    end
    CharDBQuery("UPDATE `character_kills` SET `Current_Title`="..GetKillsMatchCount.." WHERE `GUID`="..GetPlayerGUID.." LIMIT 1;", 0)
    end
end
end

RegisterServerHook(2, "KillCounter_OnKillPlayer")

logcol(10)
print("[Global PVP System] Loaded - Version "..GlobalPVPSystemVersion.." \n[Global PVP System] Scripted by XDemonic.")
logcol(7)
	
--[[
           PVP Vendor
           ..........
          Chat Commands
	        ..........
           Server Hook
 ...>You Are Here, Why? IDK....<...
--]]