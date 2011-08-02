---------------------------------------------------------------------------------------------------------------------------------------------------
function Player_on_Enter_World(event, plr, message, type, language, unit)
local GetName = plr:GetName()
local GetGUID = CharDBQuery("SELECT guid FROM characters WHERE name = '"..GetName.."'", 0):GetColumn(0):GetString()
--/////////[Teleport Safty] When Players Are In A Instance///////--
---===== In Case a Player Has A Name Change =====---
--[[
if (ScriptDBQuery("SELECT name FROM characters_flight_data WHERE guid = '"..GetGUID.."'", 0):GetColumn(0):GetString() ~= GetName) then
ScriptDBQuery("UPDATE characters_flight_data SET name='"..GetName.."' WHERE guid = '"..GetGUID.."'", 0)
end
--]]
--[[
if (ScriptDBQuery("SELECT name FROM characters_flight_masters_discovered WHERE guid = '"..GetGUID.."'", 0):GetColumn(0):GetString() ~= GetName) then
ScriptDBQuery("UPDATE characters_flight_masters_discovered SET name='"..GetName.."' WHERE guid = '"..GetGUID.."'", 0)
end
if (ScriptDBQuery("SELECT name FROM characters_port WHERE guid = '"..GetGUID.."'", 0):GetColumn(0):GetString() ~= GetName) then
ScriptDBQuery("UPDATE characters_port SET name='"..GetName.."' WHERE guid = '"..GetGUID.."'", 0)
end
if (ScriptDBQuery("SELECT guid FROM characters_script_quest WHERE guid = '"..GetGUID.."'", 0) ~= nil) then
if (ScriptDBQuery("SELECT name FROM characters_script_quest WHERE guid = '"..GetGUID.."'", 0):GetColumn(0):GetString() ~= GetName) then
ScriptDBQuery("UPDATE characters_script_quest SET name='"..GetName.."' WHERE guid = '"..GetGUID.."'", 0)
end
end
--]]
-----============================================----
local GetMap = plr:GetMapId()
local GetX = plr:GetX()
local GetY = plr:GetY()
local GetZ = plr:GetZ() + 5
local GetO = plr:GetO()
    plr:Teleport(GetMap, GetX, GetY, GetZ)
    plr:SetFacing(GetO)
local plrs = GetPlayersInWorld()
	for k, v in pairs(plrs) do
	v:SendBroadcastMessage("\124c00FFFF00" ..plr:GetName().. "\124r \124c001eff00Has Logged in!\124r")
	end
plr:SendBroadcastMessage("Dont Forget To Send Us Feed Back! [Aplha Stage]")
end
---------------------------------------------------------------------------------------------------------------------------------------------------
RegisterServerHook(19, "Player_on_Enter_World")
---------------------------------------------------------------------------------------------------------------------------------------------------