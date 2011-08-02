------------SADON------------
function Sadoncheck_OnGossipTalk(pUnit, event, player, pMisc)
if (player:HasFinishedQuest(1000003) == false) then
player:SendAreaTriggerMessage("Sadon looks at you with a terrified look in his eyes.")
else
if (player:HasFinishedQuest(1000003) == true) then
if (player:HasFinishedQuest(1000004) == true) then
player:SendAreaTriggerMessage("Sadon looks at you with a terrified look in his eyes.")
else
pUnit:GossipCreateMenu(3544, player, 0)
pUnit:GossipMenuAddItem(9, "Can You Tell me what happend in Orgrimmar?", 1, 0)
pUnit:GossipMenuAddItem(3, "Never Mind", 2, 0)
pUnit:GossipSendMenu(player)
end
end
end
end

function Sadoncheck_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
if(intid == 999) then
pUnit:GossipCreateMenu(99, player, 0)
pUnit:GossipMenuAddItem(9, "Can You Tell me what happend in Orgrimmar?", 1, 0)
pUnit:GossipMenuAddItem(3, "Never Mind", 2, 0)
pUnit:GossipSendMenu(player)
end

if (intid == 2) then
   player:SendBroadcastMessage("You walk away, knowing nothing is going to happen untill you talk to him.")
   player:SendAreaTriggerMessage("You walk away, knowing nothing is going to happen untill you talk to him.")
   player:GossipComplete()
end

if (intid == 1) then
player:SendBroadcastMessage("|c0033FF33"..pUnit:GetName().."|r |c00FFFFFFSays: Yes I can, It happend quickly, The lich King came in and killed everyone in his sight.")
pUnit:GossipCreateMenu(99, player, 0)
pUnit:GossipMenuAddItem(1, "Anything Else?", 3, 0)
pUnit:GossipMenuAddItem(0, "Never Mind", 2, 0)
pUnit:GossipSendMenu(player)
end

if (intid == 3) then
player:SendBroadcastMessage("|c0033FF33"..pUnit:GetName().."|r |c00FFFFFFSays: There was alot of Blood...The Lich King saw no pity even in killing the young.")
pUnit:GossipCreateMenu(99, player, 0)
pUnit:GossipMenuAddItem(1, "He Will Pay... Thank you For Your Time.", 4, 0)
pUnit:GossipMenuAddItem(0, "Never Mind", 2, 0)
pUnit:GossipSendMenu(player)
end

if (intid == 4) then
if (player:GetItemCount(55831) == 1) then
player:SendBroadcastMessage("You Already Have Heard "..pUnit:GetName().."'s Story")
player:SendAreaTriggerMessage("You Already Have Heard "..pUnit:GetName().."'s Story")
player:GossipComplete()
else
if (player:AddItem(55831, 1)) then --if they successfully get the item
player:SendBroadcastMessage(pUnit:GetName().." Has Finished With His Story")
player:SendAreaTriggerMessage(pUnit:GetName().." Has Finished With His Story")
player:GossipComplete()
else
InventoryIsFull_Global(event, player) --See [Race_Error_Message.lua]
end
end
end
end

RegisterUnitGossipEvent(767684, 1, "Sadoncheck_OnGossipTalk")
RegisterUnitGossipEvent(767684, 2, "Sadoncheck_OnGossipSelect")
--------------------------------------------------------------
---------Hadom------------
function Hadomcheck_OnGossipTalk(pUnit, event, player, pMisc)
if (player:HasFinishedQuest(1000003) == false) then
player:SendAreaTriggerMessage("Hadom looks at you with a painful look upon his face.")
else
if (player:HasFinishedQuest(1000003) == true) then
if (player:HasFinishedQuest(1000004) == true) then
player:SendAreaTriggerMessage("Hadom looks at you with a painful look upon his face.")
else
pUnit:GossipCreateMenu(3544, player, 0)
pUnit:GossipMenuAddItem(9, "What happend when the Lich King attacked Orgrimmar?", 1, 0)
pUnit:GossipMenuAddItem(3, "Never Mind", 2, 0)
pUnit:GossipSendMenu(player)
end
end
end
end

function Hadomcheck_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
if(intid == 999) then
pUnit:GossipCreateMenu(99, player, 0)
pUnit:GossipMenuAddItem(9, "What happend when the Lich King attacked Orgrimmar?", 1, 0)
pUnit:GossipMenuAddItem(3, "Never Mind", 2, 0)
pUnit:GossipSendMenu(player)
end

if (intid == 2) then
   player:SendBroadcastMessage("You walk away, knowing nothing is going to happen untill you talk to him.")
   player:SendAreaTriggerMessage("You walk away, knowing nothing is going to happen untill you talk to him.")
   player:GossipComplete()
end

if (intid == 1) then
player:SendBroadcastMessage("|c0033FF33"..pUnit:GetName().."|r |c00FFFFFFSays: It was Man Slaughter, Ghouls Everywhere...Blood....Pain...Suffering.")
pUnit:GossipCreateMenu(99, player, 0)
pUnit:GossipMenuAddItem(1, "Anything Else?", 3, 0)
pUnit:GossipMenuAddItem(0, "Never Mind", 2, 0)
pUnit:GossipSendMenu(player)
end

if (intid == 3) then
player:SendBroadcastMessage("|c0033FF33"..pUnit:GetName().."|r |c00FFFFFFSays: We were no match...Thrall has Died...Our hope is gone as well.")
pUnit:GossipCreateMenu(99, player, 0)
pUnit:GossipMenuAddItem(1, "Our Hope Will Regain!", 4, 0)
pUnit:GossipMenuAddItem(0, "Never Mind", 2, 0)
pUnit:GossipSendMenu(player)
end

if (intid == 4) then
if (player:GetItemCount(55832) == 1) then
player:SendBroadcastMessage("You Already Have Heard "..pUnit:GetName().."'s Story")
player:SendAreaTriggerMessage("You Already Have Heard "..pUnit:GetName().."'s Story")
player:GossipComplete()
else
if (player:AddItem(55832, 1)) then --if they successfully get the item
player:SendBroadcastMessage(pUnit:GetName().." Has Finished With His Story")
player:SendAreaTriggerMessage(pUnit:GetName().." Has Finished With His Story")
player:GossipComplete()
else
InventoryIsFull_Global(event, player) --See [Race_Error_Message.lua]
end
end
end
end

RegisterUnitGossipEvent(767685, 1, "Hadomcheck_OnGossipTalk")
RegisterUnitGossipEvent(767685, 2, "Hadomcheck_OnGossipSelect")
-----------------------------------
----------Zalzane---------
function Zalzanecheck_OnGossipTalk(pUnit, event, player, pMisc)
if (player:HasFinishedQuest(1000003) == false) then
player:SendAreaTriggerMessage("Zalzane looks at you with a agonized look.")
else
if (player:HasFinishedQuest(1000003) == true) then
if (player:HasFinishedQuest(1000004) == true) then
player:SendAreaTriggerMessage("Zalzane looks at you with a agonized look.")
else
pUnit:GossipCreateMenu(3544, player, 0)
pUnit:GossipMenuAddItem(9, "What can you recall from what happend to Orgrimmar.", 1, 0)
pUnit:GossipMenuAddItem(3, "Never Mind", 2, 0)
pUnit:GossipSendMenu(player)
end
end
end
end

function Zalzanecheck_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
if(intid == 999) then
pUnit:GossipCreateMenu(99, player, 0)
pUnit:GossipMenuAddItem(9, "What can you recall from what happend to Orgrimmar.", 1, 0)
pUnit:GossipMenuAddItem(3, "Never Mind", 2, 0)
pUnit:GossipSendMenu(player)
end

if (intid == 2) then
   player:SendBroadcastMessage("You walk away, knowing nothing is going to happen untill you talk to him.")
   player:SendAreaTriggerMessage("You walk away, knowing nothing is going to happen untill you talk to him.")
   player:GossipComplete()
end

if (intid == 1) then
player:SendBroadcastMessage("|c0033FF33"..pUnit:GetName().."|r |c00FFFFFFSays: Killing...Death...It was horrible..I cant even bare of thinking about it.")
pUnit:GossipCreateMenu(99, player, 0)
pUnit:GossipMenuAddItem(1, "Try Your Best To Explain It.", 3, 0)
pUnit:GossipMenuAddItem(0, "Never Mind", 2, 0)
pUnit:GossipSendMenu(player)
end

if (intid == 3) then
player:SendBroadcastMessage("|c0033FF33"..pUnit:GetName().."|r |c00FFFFFFSays: My Brother was lost in battle...We had to Retreat...we lost...Orgrimmar is no more.")
pUnit:GossipCreateMenu(99, player, 0)
pUnit:GossipMenuAddItem(1, "Your Brother Has Not Died In Vain, He Shall Be Avenged!", 4, 0)
pUnit:GossipMenuAddItem(0, "Never Mind", 2, 0)
pUnit:GossipSendMenu(player)
end

if (intid == 4) then
if (player:GetItemCount(55833) == 1) then
player:SendBroadcastMessage("You Already Have Heard "..pUnit:GetName().."'s Story")
player:SendAreaTriggerMessage("You Already Have Heard "..pUnit:GetName().."'s Story")
player:GossipComplete()
else
if (player:AddItem(55833, 1)) then --if they successfully get the item
player:SendBroadcastMessage(pUnit:GetName().." Has Finished With His Story")
player:SendAreaTriggerMessage(pUnit:GetName().." Has Finished With His Story")
player:GossipComplete()
else
InventoryIsFull_Global(event, player) --See [Race_Error_Message.lua]
end
end
end
end

RegisterUnitGossipEvent(767686, 1, "Zalzanecheck_OnGossipTalk")
RegisterUnitGossipEvent(767686, 2, "Zalzanecheck_OnGossipSelect")
-------------------END-----------------------