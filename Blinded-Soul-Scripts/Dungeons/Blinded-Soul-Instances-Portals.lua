-----====Instance Portals===-----
--[[
function ScourgeHideoutExit_OnGossipTalk(pUnit, event, player, pMisc)
local race=player:GetPlayerRace()
if race==2 or race==5 or race==6 or race==8 or race==10 then
player:Teleport(1, 5183.897461, -1712.816162, 1342)
pUnit:GossipComplete(player)
end
local race=player:GetPlayerRace()
if race==1 or race==3 or race==4 or race==7 or race==11 then
player:Teleport(1, 5508.682129, -3751.688721, 1595)
pUnit:GossipComplete(player)
end
end
function ScourgeHideoutExit_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
end

RegisterUnitGossipEvent(5558492, 1, "ScourgeHideoutExit_OnGossipTalk")
RegisterUnitGossipEvent(5558492, 2, "ScourgeHideoutExit_OnGossipSelect")
------Entrance-------
function ScourgeHideoutEnter_OnGossipTalk(pUnit, event, player, pMisc)
player:Teleport(565, 65.394600, 65.856979, -5)
pUnit:GossipComplete(player)
end
function ScourgeHideoutEnter_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
end

RegisterUnitGossipEvent(5558491, 1, "ScourgeHideoutEnter_OnGossipTalk")
RegisterUnitGossipEvent(5558491, 2, "ScourgeHideoutEnter_OnGossipSelect")
----------END-------------
------------------Fire Heart-----------------
---------EXIT------------
function FireHeartExit_OnGossipTalk(pUnit, event, player, pMisc)
local race=player:GetPlayerRace()
if race==2 or race==5 or race==6 or race==8 or race==10 then
player:Teleport(1, 5519.927734, -2434.464355, 1471)
pUnit:GossipComplete(player)
end
local race=player:GetPlayerRace()
if race==1 or race==3 or race==4 or race==7 or race==11 then
player:Teleport(1, 5623.956055, -3033.071289, 1560)
pUnit:GossipComplete(player)
end
end
function FireHeartExit_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
end

RegisterUnitGossipEvent(5558502, 1, "FireHeartExit_OnGossipTalk")
RegisterUnitGossipEvent(5558502, 2, "FireHeartExit_OnGossipSelect")
------Entrance-------
function FireHeartEnter_OnGossipTalk(pUnit, event, player, pMisc)
player:Teleport(389, -3.751919, -35.734047, -22)
pUnit:GossipComplete(player)
end
function FireHeartEnter_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
end

RegisterUnitGossipEvent(5558501, 1, "FireHeartEnter_OnGossipTalk")
RegisterUnitGossipEvent(5558501, 2, "FireHeartEnter_OnGossipSelect")
----------END-------------
--]]
-------[Scourge HideOut]-------
function Scourge_HideOut_Enter_OnSpawn(pUnit, Event)
pUnit:RegisterEvent("Scourge_HideOut_Enter_Loop", 500, 0)
end

function Scourge_HideOut_Enter_Loop(pUnit, Event)
local GetInRangePlayers = pUnit:GetInRangePlayers()
for k, GetCloserPlayers in pairs(GetInRangePlayers) do
if (GetCloserPlayers ~= nil) then
local GetClosestPlayers = pUnit:GetDistanceYards(GetCloserPlayers)
if (GetClosestPlayers < 3 ) then
local PlayerName = GetCloserPlayers:GetName()
GetCloserPlayers:Teleport(565, 64.40, 49.11, -4.5, 1.5)
end
end
end
end

RegisterUnitEvent(555881, 18, "Scourge_HideOut_Enter_OnSpawn")

function Scourge_HideOut_Exit_OnSpawn(pUnit, Event)
pUnit:RegisterEvent("Scourge_HideOut_Exit_Loop", 500, 0)
end

function Scourge_HideOut_Exit_Loop(pUnit, Event)
local GetInRangePlayers = pUnit:GetInRangePlayers()
for k, GetCloserPlayers in pairs(GetInRangePlayers) do
if (GetCloserPlayers ~= nil) then
local GetClosestPlayers = pUnit:GetDistanceYards(GetCloserPlayers)
if (GetClosestPlayers < 3 ) then
local PlayerName = GetCloserPlayers:GetName()
----
if (GetCloserPlayers:GetTeam() == 0) then -- Alliance
GetCloserPlayers:Teleport(1, 5540.80, -3728.51, 1598.5, 3.5)
else
if (GetCloserPlayers:GetTeam() == 1) then -- Horde
GetCloserPlayers:Teleport(1, 5216.91, -1740.30, 1345.5, 3.2)
else
GetCloserPlayers:SendBroadcastMessage("[ERROR] Unable To Teleport! Reason: You Are Not A Horde, Or A Alliance!")
end
end
end
end
end
end

RegisterUnitEvent(555882, 18, "Scourge_HideOut_Exit_OnSpawn")

------=================END==============--------