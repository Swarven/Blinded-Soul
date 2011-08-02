function Recall_Item_Click1(item, event, plr, pMisc, unit)
if plr:IsGm() == true then
item:GossipCreateMenu(50, plr, 0)
item:GossipMenuAddItem(3, "Teleport", 1, 1)
--item:GossipMenuAddItem(3, "Search", 2, 1)
item:GossipMenuAddItem(3, "ADD Teleport", 3, 1)
item:GossipMenuAddItem(3, "DEL Teleport", 4, 1)
item:GossipSendMenu(plr)
else
plr:RemoveItem(84271,1)
plr:SendBroadcastMessage("ACCESS DENIED: YOU NOT A GM LOSER!")
end
end

function Recall_Item_Click2(item, event, plr, id, intid, code, pMisc)
if (intid == 999) then
item:GossipCreateMenu(50, plr, 0)
item:GossipMenuAddItem(3, "Teleport", 1, 1)
--item:GossipMenuAddItem(3, "Search", 2, 1)
item:GossipMenuAddItem(3, "ADD Teleport", 3, 1)
item:GossipMenuAddItem(3, "DEL Teleport", 4, 1)
item:GossipSendMenu(plr)
end

if (intid == 1) then
	if (ScriptDBQuery("SELECT `Name` FROM `blinded-soul-scripts`.`gm_recall_item` WHERE Name='"..code.."'", 0) ~= nil) then
	local GetTeleName = ScriptDBQuery("SELECT Name FROM `blinded-soul-scripts`.`gm_recall_item` WHERE Name='"..code.."'", 0):GetColumn(0):GetString()
	local GetTeleX = ScriptDBQuery("SELECT `X-Coord` FROM `blinded-soul-scripts`.`gm_recall_item` WHERE Name='"..code.."'", 0):GetColumn(0):GetString()
	local GetTeleY = ScriptDBQuery("SELECT `Y-Coord` FROM `blinded-soul-scripts`.`gm_recall_item` WHERE Name='"..code.."'", 0):GetColumn(0):GetString()
	local GetTeleZ = ScriptDBQuery("SELECT `Z-Coord` FROM `blinded-soul-scripts`.`gm_recall_item` WHERE Name='"..code.."'", 0):GetColumn(0):GetString()
	local GetTeleFace = ScriptDBQuery("SELECT `Facing` FROM `blinded-soul-scripts`.`gm_recall_item` WHERE Name='"..code.."'", 0):GetColumn(0):GetString()
	local GetTeleMap = ScriptDBQuery("SELECT `Map` FROM `blinded-soul-scripts`.`gm_recall_item` WHERE Name='"..code.."'", 0):GetColumn(0):GetString()
	local GetTeleDes = ScriptDBQuery("SELECT `Description` FROM `blinded-soul-scripts`.`gm_recall_item` WHERE Name='"..code.."'", 0):GetColumn(0):GetString()
	plr:Teleport(GetTeleMap, GetTeleX, GetTeleY, GetTeleZ, GetTeleFace)
	plr:SendBroadcastMessage("==Teleport Completed==")
	plr:SendBroadcastMessage("Location: "..GetTeleName.."")
	plr:SendBroadcastMessage("Info: "..GetTeleDes.."")
    plr:GossipComplete()
	else
	plr:SendBroadcastMessage("==Teleport Failed==")
	plr:SendBroadcastMessage("Location: "..code.." Returned With No Results!")
	plr:GossipComplete()
	end
end
--[[
if (intid == 2) then
	if (ScriptDBQuery("SELECT `Name` FROM `blinded-soul-scripts`.`gm_recall_item` WHERE `Name` LIKE '%a%' ORDER BY `Name` DESC LIMIT 0, 1000;", 0) ~= nil) then
	local RowCount = ScriptDBQuery("SELECT `Name` FROM `blinded-soul-scripts`.`gm_recall_item` ORDER BY `Name` DESC LIMIT 0, 1000;", 0)
	local GetTeleName = ScriptDBQuery("SELECT `Name` FROM `blinded-soul-scripts`.`gm_recall_item` WHERE `Name` LIKE '%a%' ORDER BY `Name` DESC LIMIT 0, 1000;", 0):GetColumn(0):GetString()
	plr:SendBroadcastMessage("==Search Results==")
	plr:SendBroadcastMessage("Location: "..GetTeleName.."")
		if (ScriptDBQuery("SELECT `Name` FROM `blinded-soul-scripts`.`gm_recall_item` WHERE `Name` LIKE '%a%' ORDER BY `Name` DESC LIMIT 1, 1000;", 0) ~= nil) then
		local GetTeleName2 = ScriptDBQuery("SELECT `Name` FROM `blinded-soul-scripts`.`gm_recall_item` WHERE `Name` LIKE '%a%' ORDER BY `Name` DESC LIMIT 1, 1000;", 0):GetColumn(0):GetString()
		plr:SendBroadcastMessage("Location: "..GetTeleName2.."")
		if (ScriptDBQuery("SELECT `Name` FROM `blinded-soul-scripts`.`gm_recall_item` WHERE `Name` LIKE '%a%' ORDER BY `Name` DESC LIMIT 2, 1000;", 0) ~= nil) then
		local GetTeleName3 = ScriptDBQuery("SELECT `Name` FROM `blinded-soul-scripts`.`gm_recall_item` WHERE `Name` LIKE '%a%' ORDER BY `Name` DESC LIMIT 2, 1000;", 0):GetColumn(0):GetString()
		plr:SendBroadcastMessage("Location: "..GetTeleName3.."")
		if (ScriptDBQuery("SELECT `Name` FROM `blinded-soul-scripts`.`gm_recall_item` WHERE `Name` LIKE '%a%' ORDER BY `Name` DESC LIMIT 3, 1000;", 0) ~= nil) then
		local GetTeleName4 = ScriptDBQuery("SELECT `Name` FROM `blinded-soul-scripts`.`gm_recall_item` WHERE `Name` LIKE '%a%' ORDER BY `Name` DESC LIMIT 3, 1000;", 0):GetColumn(0):GetString()
		plr:SendBroadcastMessage("Location: "..GetTeleName4.."")
		if (ScriptDBQuery("SELECT `Name` FROM `blinded-soul-scripts`.`gm_recall_item` WHERE `Name` LIKE '%a%' ORDER BY `Name` DESC LIMIT 4, 1000;", 0) ~= nil) then
		local GetTeleName5 = ScriptDBQuery("SELECT `Name` FROM `blinded-soul-scripts`.`gm_recall_item` WHERE `Name` LIKE '%a%' ORDER BY `Name` DESC LIMIT 4, 1000;", 0):GetColumn(0):GetString()
		plr:SendBroadcastMessage("Location: "..GetTeleName5.."")
		plr:SendBroadcastMessage(">Result Limit Reached<")
		end
		end
		end
		end
    plr:GossipComplete()
	plr:SendBroadcastMessage("===============")	
	else
	plr:SendBroadcastMessage("==Search Failed==")
	plr:SendBroadcastMessage("Location: "..code.." Returned With No Results!")
	plr:GossipComplete()
end
end
--]]
if (intid == 3) then
    local GetMap, GetX, GetY, GetZ, GetO = plr:GetMapId(), plr:GetX(), plr:GetY(), plr:GetZ(), plr:GetO()
	ScriptDBQuery("INSERT INTO gm_recall_item (`Name`, `Map`, `X-Coord`, `Y-Coord`, `Z-Coord`, `Facing`, `Description`) VALUES ('"..code.."', "..GetMap..", "..GetX..", "..GetY..", "..GetZ..", "..GetO..", 'NONE');", 0)
	plr:SendBroadcastMessage("==Location Added==")
	plr:SendBroadcastMessage("Location: "..code.."")
    plr:GossipComplete()
end
end

RegisterItemGossipEvent(84271, 1, "Recall_Item_Click1")
RegisterItemGossipEvent(84271, 2, "Recall_Item_Click2")
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	