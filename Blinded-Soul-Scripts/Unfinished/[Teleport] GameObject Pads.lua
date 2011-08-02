function Blinded_Soul_Mall_PortPad_OnSpawn(pUnit, Event)
MallPad = pUnit
MallPad:RegisterEvent("Blinded_Soul_Mall_PortPad", 250, 0)
end

function Blinded_Soul_Mall_PortPad(pUnit, Event)
local GetInRangePlayersPad = MallPad:GetInRangePlayers()
for k, GetCloserPlayers in pairs(GetInRangePlayersPad) do
if (GetCloserPlayers ~= nil) then
local PlayerName = GetCloserPlayers:GetName()
local GetId = MallPad:GetSpawnId()
local GetClosestPlayers = MallPad:GetDistanceYards(GetCloserPlayers)
    if (GetClosestPlayers < 1.5 ) then
--=======--
MallInfo = ScriptDBQuery("SELECT * FROM blinded_soul_teleport_coords WHERE Name = 'Blinded-Soul Mall'", 0)
MallMapID = MallInfo:GetColumn(1):GetString()
Mall_X = MallInfo:GetColumn(2):GetString()
Mall_Y = MallInfo:GetColumn(3):GetString()
Mall_Z = MallInfo:GetColumn(4):GetString()
Mall_O = MallInfo:GetColumn(5):GetString()
--=====--
	    if (GetId == 1294) then
		SetHomeLocation = "Lost Refugee"
		end
	    if (GetId == 1514) then
		SetHomeLocation = "The Sanctuary"
		end
	    if (GetId == 1520) then
		SetHomeLocation = "Alliance Encampment"
		end
	    if (GetId == 1521) then
		SetHomeLocation = "Horde Encampment"
		end
	GetCloserPlayers:Teleport(MallMapID, Mall_X, Mall_Y, Mall_Z, Mall_O)
	ScriptDBQuery("UPDATE characters_port SET flags='1', tele_from='"..SetHomeLocation.."' WHERE name = '"..PlayerName.."' LIMIT 1;", 0)
	end
	end
	end
end

RegisterUnitEvent(47762, 18, "Blinded_Soul_Mall_PortPad_OnSpawn")
---------===================------------
function Home_PortPad_OnSpawn(pUnit, Event)
Home = pUnit
Home:RegisterEvent("Home_PortPad", 250, 0)
end

function Home_PortPad(pUnit, Event)
local GetInRangePlayersPad = Home:GetInRangePlayers()
for k, GetCloserPlayers in pairs(GetInRangePlayersPad) do
if (GetCloserPlayers ~= nil) then
local PlayerName = GetCloserPlayers:GetName()
local GetClosestPlayers = Home:GetDistanceYards(GetCloserPlayers)
    if (GetClosestPlayers < 1.5 ) then
	if (ScriptDBQuery("SELECT tele_from FROM characters_port WHERE name = '"..PlayerName.."'", 0):GetColumn(0):GetString() ~= NULL) then
GetHomeLocation = ScriptDBQuery("SELECT tele_from FROM characters_port WHERE name = '"..PlayerName.."'", 0):GetColumn(0):GetString()
---=========---
HomePad = ScriptDBQuery("SELECT * FROM blinded_soul_teleport_coords WHERE name = '"..GetHomeLocation.."'", 0)
HomeMapID = HomePad:GetColumn(1):GetString()
Home_X = HomePad:GetColumn(2):GetString()
Home_Y = HomePad:GetColumn(3):GetString()
Home_Z = HomePad:GetColumn(4):GetString()
Home_O = HomePad:GetColumn(5):GetString()
---========---
    GetCloserPlayers:SendBroadcastMessage("You Have Been Ported To Your Last Known Location Before The Mall!")
	GetCloserPlayers:Teleport(HomeMapID, Home_X, Home_Y, Home_Z, Home_O)
	ScriptDBQuery("UPDATE characters_port SET flags='1', tele_from=NULL WHERE name = '"..PlayerName.."' LIMIT 1;", 0)
	else
	GetCloserPlayers:SendAreaTriggerMessage("[ERROR]")
	GetCloserPlayers:SendBroadcastMessage("Your Bugged! Please Report This To A GM or Admin!")
	GetCloserPlayers:SendBroadcastMessage("[ERROR] <tele_from = nil> on <characters_port>")
	end
	end
	end
	end
end

RegisterUnitEvent(47761, 18, "Home_PortPad_OnSpawn")

--[[
function Player_SetFacing_OnSpawn(pUnit, Event)
PortSetFace = pUnit
PortSetFace:RegisterEvent("Player_SetFacing", 250, 0)
end

function Player_SetFacing(pUnit, Event)
local GetInRangePlayers = PortSetFace:GetInRangePlayers()
for k, GetCloserPlayers in pairs(GetInRangePlayers) do
if (GetCloserPlayers ~= nil) then
local PlayerName = GetCloserPlayers:GetName()
---=========---
SetFacePad = ScriptDBQuery("SELECT * FROM characters_port WHERE name = '"..PlayerName.."'", 0)
GetTeleFrom = SetFacePad:GetColumn(2):GetString()
GetFacing_Flags = SetFacePad:GetColumn(3):GetString()
GetFacing_O = SetFacePad:GetColumn(4):GetString()
---========---
    if (GetFacing_Flags == "1") then
	GetCloserPlayers:SetFacing(GetFacing_O)
	ScriptDBQuery("UPDATE characters_port SET flags='0', facing=NULL WHERE name = '"..PlayerName.."'", 0)
	end
	end
	end
end

RegisterUnitEvent(47763, 18, "Player_SetFacing_OnSpawn")
--]]