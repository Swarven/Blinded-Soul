local PhaserButton = 58400

function PhaserButton_OnClick(item, event, player, pMisc, unit)
player:SendBroadcastMessage("Your Phase Is Currently At " ..player:GetPhase())
item:GossipCreateMenu(50, player, 0)
item:GossipMenuAddItem(3, "Phase Me!", 1, 1)
item:GossipMenuAddItem(3, "Normal Phase", 2, 0)
item:GossipMenuAddItem(1, "Never Mind", 3, 0)
item:GossipSendMenu(player)
end

function PhaserButton_OnSelect(pUnit, event, player, id, intid, code, pMisc, plr, sPlayer)
if(intid == 1) then
player:PhaseSet(code)
player:SendBroadcastMessage("Your Phase Is Now Set To " ..code)
player:GossipComplete()
end

if(intid == 2) then
player:PhaseSet(1)
player:SendBroadcastMessage("Your Phase Is Now Set To 1")
player:GossipComplete()
end

if(intid == 3) then
player:GossipComplete()
end
end

RegisterItemGossipEvent(58400, 1, "PhaserButton_OnClick")
RegisterItemGossipEvent(58400, 2, "PhaserButton_OnSelect")