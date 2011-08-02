function Lost_Refugee_Guard_OnGossipTalk(pUnit, event, player, pMisc)
pUnit:GossipCreateMenu(50, player, 0)
pUnit:GossipMenuAddItem(9, "Flight Master", 1, 0)
pUnit:GossipMenuAddItem(9, "Skills & Buffs", 2, 0)
pUnit:GossipMenuAddItem(9, "Portal: Blinded-Soul Mall", 3, 0)
pUnit:GossipMenuAddItem(9, "Never Mind", 999, 0)
pUnit:GossipSendMenu(player)
end

function Lost_Refugee_Guard_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
if (intid == 1) then
player:GossipSendPOI(5264.45, -1491, 44, 6, 0, "Lost Refugee Flight Master")
player:SendBroadcastMessage("The Flight Path is now located on your minimap!")
player:SendAreaTriggerMessage("LOOK AT YOUR MINIMAP!")
player:GossipComplete()
end

if (intid == 2) then
player:SendBroadcastMessage("Not Completed!")
player:GossipComplete()
end

if (intid == 3) then
player:SendBroadcastMessage("Not Completed!")
player:GossipComplete()
end

if (intid == 999) then
player:GossipComplete()
end
end

RegisterUnitGossipEvent(100140, 1, "Lost_Refugee_Guard_OnGossipTalk")
RegisterUnitGossipEvent(100140, 2, "Lost_Refugee_Guard_OnGossipSelect")