---------------------------------------------------------------------------------------------------------------------------------------------------
function Player_on_Bugged_Quest(event, pPlayer, pQuestGiver, questId)
    if (questId == 1000001) then
	pPlayer:SendBroadcastMessage("[Quest] This Quest Is Currently Bugged. The Quest Has Been Completed For You! - XDemonic")
	pPlayer:AddItem(55712, 10)
	end
	if (questId == 1000002) then
	pPlayer:SendBroadcastMessage("[Quest] This Quest Is Currently Bugged. The Quest Has Been Completed For You! - XDemonic")
    pPlayer:AddItem(55713, 10)
	end
end
---------------------------------------------------------------------------------------------------------------------------------------------------
RegisterServerHook(14, "Player_on_Bugged_Quest")
---------------------------------------------------------------------------------------------------------------------------------------------------