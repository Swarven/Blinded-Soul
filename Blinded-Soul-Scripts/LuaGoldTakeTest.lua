function GMAdminOwnerVendor2_OnGossipTalk(pUnit, event, player, pMisc)
pUnit:GossipCreateMenu(3544, player, 0)
if (player:IsGm(az) == true) then
pUnit:GossipMenuAddItem(3, "Take Money! [Test 1]", 1, 0)
end
if (player:IsGm() == true) then
pUnit:GossipMenuAddItem(3, "Take Money! [Test 2]", 2, 0)
end
pUnit:GossipMenuAddItem(3, "Take Money! [Test 3]", 2, 0)
pUnit:GossipMenuAddItem(3, "Take Money! [Test 4]", 2, 0)
pUnit:GossipSendMenu(player)
end

function GMAdminOwnerVendor2_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
if(intid == 1) then
player:DealGoldCost(1)
player:GossipComplete()
end

if(intid == 2) then
pUnit:DealGoldCost(1)
player:GossipComplete()
end

if(intid == 3) then
if (player:DealGoldCost(1) == true) then
player:GossipComplete()
end
end

if(intid == 4) then
if (pUnit:DealGoldCost(1) == true) then
player:GossipComplete()
end
end
end

RegisterUnitGossipEvent(562390, 1, "GMAdminOwnerVendor2_OnGossipTalk")
RegisterUnitGossipEvent(562390, 2, "GMAdminOwnerVendor2_OnGossipSelect")