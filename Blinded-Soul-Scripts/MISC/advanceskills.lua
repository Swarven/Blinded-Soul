local NPC_ID = 198772
function Skills_GossipTalk(unit, event, player)

unit:GossipCreateMenu(100, player, 0)
unit:GossipMenuAddItem(0, "Advance all  skills!", 1, 0)
unit:GossipMenuAddItem(0, "Nevermind.", 2, 0)
unit:GossipSendMenu(player)
end

function Skills_GossipSelect(unit, event, player, id, intid, code)

if(intid == 2) then
player:GossipComplete()
end

if(intid == 1) then
player:GossipComplete()
player:SendAreaTriggerMessage("All skills at max.Have fun!")
player:AdvanceSkill(44, 1450);
player:AdvanceSkill(172, 1450);
player:AdvanceSkill(45, 1450);
player:AdvanceSkill(226, 1450);
player:AdvanceSkill(173, 1450);
player:AdvanceSkill(95, 1450);
player:AdvanceSkill(46, 1450);
player:AdvanceSkill(54, 1450);
player:AdvanceSkill(160, 1450);
player:AdvanceSkill(136, 1450);
player:AdvanceSkill(43, 1450);
player:AdvanceSkill(55, 1450);
player:AdvanceSkill(176, 1450);
player:AdvanceSkill(162, 1450);
end

end

RegisterUnitGossipEvent(NPC_ID, 1, "Skills_GossipTalk")
RegisterUnitGossipEvent(NPC_ID, 2, "Skills_GossipSelect")