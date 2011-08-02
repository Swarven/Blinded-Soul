local npcid = 0
function GMLuxuryBeachZep_OnGossipTalk(pUnit, event, player, pMisc)
if (player:IsInCombat() == true) then
player:SendAreaTriggerMessage("You are in combat!")
else
pUnit:GossipCreateMenu(3544, player, 0)
pUnit:GossipMenuAddItem(3, "Show me where I can fly!", 1, 0)
pUnit:GossipMenuAddItem(3, "where am I?", 2, 0)
pUnit:GossipSendMenu(player)
end
end

function GMLuxuryBeachZep_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
if(intid == 999) then
pUnit:GossipCreateMenu(99, player, 0)
pUnit:GossipMenuAddItem(3, "Show me where I can fly!", 1, 0)
pUnit:GossipMenuAddItem(3, "Where am I?", 2, 0)
pUnit:GossipSendMenu(player)
end


if(intid == 1) then
pUnit:SendChatMessage(12, 0, "Where would you like to go Traveler?")
pUnit:GossipCreateMenu(99, player, 0)
pUnit:GossipMenuAddItem(1, "Lost Refugee [Horde]", 3, 0)
pUnit:GossipMenuAddItem(1, "Horde Encampment [Horde]", 4, 0)
pUnit:GossipMenuAddItem(1, "The Sanctuary [Alliance]", 5, 0)
pUnit:GossipMenuAddItem(1, "Alliance Encampment [Alliance]", 6, 0)
pUnit:GossipMenuAddItem(2, "Blinded-Soul Mall", 7, 0)
pUnit:GossipMenuAddItem(0, "[Back]", 999, 0)
pUnit:GossipSendMenu(player)
end

if(intid == 2) then
pUnit:SendChatMessage(12, 0, "You are currently at GM Luxury Beach! If you would like to go somewhere else, just tell me!")
pUnit:GossipCreateMenu(99, player, 0)
pUnit:GossipMenuAddItem(0, "[Back]", 999, 0)
pUnit:GossipSendMenu(player)
end

if(intid == 3) then --Lost Refugee
player:Teleport(1, 5170.971191, -1355.381104, 1392)
pUnit:GossipComplete(player)
end

if(intid == 5) then --The Sactuary
player:Teleport(1, 5672.955078, -3365.400291, 1627.5)
pUnit:GossipComplete(player)
end

if(intid == 6) then --Alliance Encampment
player:Teleport(1, 5618.556152, -3740.845947, 1661)
pUnit:GossipComplete(player)
end

if(intid == 4) then --Horde Encampment
player:Teleport(1, 4962.861816, -1843.767578, 1359)
pUnit:GossipComplete(player)
end

if(intid == 7) then --Blinded-Soul Mall
player:Teleport(0, -1009.669922, 1548.671509, 148)
pUnit:GossipComplete(player)
end

intid = 0
end

RegisterUnitGossipEvent(2897000, 1, "GMLuxuryBeachZep_OnGossipTalk")
RegisterUnitGossipEvent(2897000, 2, "GMLuxuryBeachZep_OnGossipSelect")
