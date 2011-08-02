local Gold = 10000

function BuffandSkillzOnTalk(pUnit, Event, player)
	pUnit:GossipCreateMenu(100, player, 0)
	pUnit:GossipMenuAddItem(9, "Max out all skills.", 1, 0, "Are You Sure You Want To Max Skills?", 10*Gold)
	pUnit:GossipMenuAddItem(9, "Buff me.", 2, 0, "Are You Sure You Want To Be Buffed Up?", 10*Gold)
	pUnit:GossipMenuAddItem(7, "Never mind.", 99, 0)
	pUnit:GossipSendMenu(player)
end

function BuffandSkillzOnSelect(pUnit, Event, player, id, intid, code, pMisc)
if (intid == 1) then
if (player:DealGoldCost(10*Gold) == true) then
		player:AdvanceSkill(43, 2000)  --Maxes out the skills
		player:AdvanceSkill(44, 2000)
		player:AdvanceSkill(45, 2000)
		player:AdvanceSkill(46, 2000)
		player:AdvanceSkill(54, 2000)
		player:AdvanceSkill(55, 2000)
		player:AdvanceSkill(95, 2000)
		player:AdvanceSkill(136, 2000)
		player:AdvanceSkill(160, 2000)
		player:AdvanceSkill(162, 2000)
		player:AdvanceSkill(172, 2000)
		player:AdvanceSkill(173, 2000)
		player:AdvanceSkill(176, 2000)
		player:AdvanceSkill(226, 2000)
		player:AdvanceSkill(228, 2000)
		player:AdvanceSkill(229, 2000)
		player:AdvanceSkill(473, 2000)
		player:AdvanceSkill(164, 2000)
		player:AdvanceSkill(165, 2000)
		player:AdvanceSkill(171, 2000)
		player:AdvanceSkill(182, 2000)
		player:AdvanceSkill(186, 2000)
		player:AdvanceSkill(197, 2000)
		player:AdvanceSkill(202, 2000)
		player:AdvanceSkill(333, 2000)
		player:AdvanceSkill(393, 2000)
		player:AdvanceSkill(755, 2000)
		player:AdvanceSkill(773, 2000)
		player:AdvanceSkill(129, 2000)
		player:AdvanceSkill(185, 2000)
		player:AdvanceSkill(356, 2000)
		player:SendBroadcastMessage("Your Skills Is Now Maxed!")
		player:GossipComplete()
else
NotEnoughMoney_Global(event, player) --See [Race_Error_Message.lua]
end
end

if (intid == 2) then
if (player:DealGoldCost(10*Gold) == true) then
		pUnit:FullCastSpellOnTarget(48102, player)
		pUnit:FullCastSpellOnTarget(58449, player)
		pUnit:FullCastSpellOnTarget(48104, player)
		pUnit:FullCastSpellOnTarget(58451, player)
		pUnit:FullCastSpellOnTarget(48100, player)
		player:SendBroadcastMessage("Enjoy Your Buffs!")
		player:GossipComplete()
else
NotEnoughMoney_Global(event, player) --See [Race_Error_Message.lua]
end
end
	
if (intid == 999) then
		player:GossipComplete()
	end
	end

RegisterUnitGossipEvent(869275, 1, "BuffandSkillzOnTalk")
RegisterUnitGossipEvent(869275, 2, "BuffandSkillzOnSelect")