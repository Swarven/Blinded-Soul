function LUA_World_Test_DND_OnGossipTalk(pUnit, event, player, pMisc)
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "Success -> [Player Talk]", 1, 0)
   pUnit:GossipMenuAddItem(9, "Never Mind", 99, 0)
   pUnit:GossipSendMenu(player)
end

function LUA_World_Test_DND_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
----All Script Test Start...----
--Script #1: Player Send Chat Message: Success--
if (intid == 1) then
player:PlayerSendChatMessage(1, 0, "Test Success!")
player:GossipComplete()
end
----End All Test Scripts...----
if (intid == 99) then
player:GossipComplete()
end
end

RegisterUnitGossipEvent(857361, 1, "LUA_World_Test_DND_OnGossipTalk")
RegisterUnitGossipEvent(857361, 2, "LUA_World_Test_DND_OnGossipSelect")