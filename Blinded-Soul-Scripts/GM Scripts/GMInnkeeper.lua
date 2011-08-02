function GMInnkeeper_Gossip(unit, event, player)
unit:GossipCreateMenu(50, player, 0)
unit:GossipMenuAddItem(9, "Make This Place Your Home", 1, 0)
unit:GossipSendMenu(player)
end


function GMInnkeeper_Submenus(unit, event, player, id, intid, code)
if(intid == 75) then
unit:GossipCreateMenu(69, player, 0)
unit:GossipMenuAddItem(4, "Make This Place Your Home", 1, 0)
unit:GossipSendMenu(player)
end
end

if(intid == 1) then
unit:GossipCreateMenu(61, player, 0)
unit:FullCastSpellOnTarget(12, player)
unit:GossipMenuAddItem(0, "[Main Menu]", 75, 0)
unit:GossipSendMenu(player)
end

RegisterUnitGossipEvent(5558751, 1, "GMInnkeeper_Gossip")
RegisterUnitGossipEvent(5558751, 2, "GMInnkeeper_Submenus")
