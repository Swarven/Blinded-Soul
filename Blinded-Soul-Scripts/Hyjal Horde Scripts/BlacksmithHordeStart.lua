function HordeBlacksmithQuest_OnGossipTalk(pUnit, event, player, pMisc)
   pUnit:GossipCreateMenu(50, player, 0)
   if (player:HasFinishedQuest(1000004) == true) then
     if (player:HasFinishedQuest(1000005) == false) then
   pUnit:GossipMenuAddItem(9, "Your the Blacksmith right?", 1, 0)
   end
   if (player:HasFinishedQuest(1000005) == true) then
     pUnit:GossipMenuAddItem(9, "Redeem [Broken Weapons] for Weapons.", 6, 0)
	 pUnit:GossipMenuAddItem(9, "How do I get Broken Weapons?", 20, 0)
	 end
   if (player:GetItemCount(142523) == 1) then
     pUnit:GossipMenuAddItem(3, "Can you fix this key?", 21, 0)
	 end
   if (player:HasFinishedQuest(1000019) == true) then
   if (player:GetItemCount(142522) == 1) then
     pUnit:GossipMenuAddItem(3, "Can you fix this key?", 22, 0)
	 end
	 end
      pUnit:GossipMenuAddItem(9, "Never Mind, I didnt mean to bother you.", 5, 0)
   pUnit:GossipSendMenu(player)
end
end

function HordeBlacksmithQuest_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
if (intid == 1) then
pUnit:SendChatMessage(12, 0, "Ah, The King wants me to make you Armor, Thats no problem!")
pUnit:GossipCreateMenu(99, player, 0)
   pUnit:GossipMenuAddItem(9, "Purchase Mystic Gear [Casters]", 2, 0)
   pUnit:GossipMenuAddItem(9, "Purchase Melee Gear [Close Combat]", 3, 0)
   pUnit:GossipMenuAddItem(9, "Purchase Hybrid Gear [Both]", 4, 0)
pUnit:GossipSendMenu(player)
end


if (intid == 5) then
   player:GossipComplete()
   player:SendBroadcastMessage("Hogger Stares at you angerly")
   player:SendAreaTriggerMessage("Hogger Stares at you angerly")
end




if (intid == 2) then
if (player:GetItemCount(55834) == 1) then
--///////////////////////////////////--
    if (player:AddItem(52160, 1)
    and player:AddItem(52161, 1) 
    and player:AddItem(52162, 1) 
    and player:AddItem(52163, 1)
    and player:AddItem(52164, 1)) then --if they successfully get the items
--///////////////////////////////////--
    player:RemoveItem(55834,1)
	player:AddItem(55835,1)
    pUnit:SendChatMessage(12, 0, "There you go, Also bring this letter to the king.")
    player:GossipComplete()
	else
    InventoryIsFull_Global(event, player) --See [Race_Error_Message.lua]
	player:SendBroadcastMessage("|cFFFF0000You Need At Least [5] Free Slots!")
	end
else
pUnit:SendChatMessage(12, 0, "shoo! I already made your gear.")
player:GossipComplete()
end
end

if (intid == 3) then
if (player:GetItemCount(55834) == 1) then
--///////////////////////////////////--
    if (player:AddItem(52155, 1) 
	and player:AddItem(52156, 1) 
	and player:AddItem(52157, 1) 
	and player:AddItem(52158, 1) 
	and player:AddItem(52159, 1)) then --if they successfully get the items
--///////////////////////////////////--
    player:RemoveItem(55834,1)
	player:AddItem(55835,1)
    pUnit:SendChatMessage(12, 0, "There you go, Also bring this letter to the king.")
    player:GossipComplete()
	else
    InventoryIsFull_Global(event, player) --See [Race_Error_Message.lua]
	player:SendBroadcastMessage("|cFFFF0000You Need At Least [5] Free Slots!")
	end
else
pUnit:SendChatMessage(12, 0, "shoo! I already made your gear.")
player:GossipComplete()
end
end


if (intid == 4) then
if (player:GetItemCount(55834) == 1) then
--///////////////////////////////////--
    if (player:AddItem(52150, 1)
    and player:AddItem(52151, 1) 
    and player:AddItem(52152, 1) 
    and player:AddItem(52153, 1)
    and player:AddItem(52154, 1)) then --if they successfully get the items
--///////////////////////////////////--
    player:RemoveItem(55834,1)
	player:AddItem(55835,1)
    pUnit:SendChatMessage(12, 0, "There you go, Also bring this letter to the king.")
    player:GossipComplete()
	else
    InventoryIsFull_Global(event, player) --See [Race_Error_Message.lua]
	player:SendBroadcastMessage("|cFFFF0000You Need At Least [5] Free Slots!")
	end
else
pUnit:SendChatMessage(12, 0, "shoo! I already made your gear.")
player:GossipComplete()
end
end
---------------------
if (intid == 19) then
   player:GossipComplete()
   player:SendBroadcastMessage("Hogger Stares at you angerly")
   player:SendAreaTriggerMessage("Hogger Stares at you angerly")
end

if (intid == 20) then
   pUnit:SendChatMessage(12, 0, "Kill the Scourge Skeletons just beyond the gates of Lost Refugee. I can forge their weapons into a better one.")
player:GossipComplete()
end

if (intid == 21) then
player:RemoveItem(142523,1)
player:AddItem(122072,1)
pUnit:SendChatMessage(12, 0, "Of course I can! here ya go.")
player:GossipComplete()
end

if (intid == 22) then
player:RemoveItem(142522,1)
player:AddItem(122072,1)
pUnit:SendChatMessage(12, 0, "Of course I can! here ya go.")
player:GossipComplete()
end

local Weapons = {
--== [ItemID, Menu Name, Item Name, Number Of Broken Weapons] ==--
  {26575, "Dagger [2 Broken Weapons]", "Cracked Dagger", 2},
  {26680, "1-H Axe [2 Broken Weapons]", "Cracked Short Axe", 2},
  {26620, "1-H Sword [2 Broken Weapons]", "Cracked Short Sword", 2},
  {26590, "1-H Mace [2 Broken Weapons]", "Cracked Short Mace", 2},
  {26690, "2-H Axe [5 Broken Weapons]", "Cracked Long Axe", 5},
  {26630, "2-H Sword [5 Broken Weapons]", "Cracked Long Sword", 5},
  {24011, "2-H Mace [5 Broken Weapons]", "Cracked Long Mace", 5},
  {26645, "Staff [5 Broken Weapons]", "Cracked Staff", 5},
  {26714, "Bow [4 Broken Weapons]", "Cracked Bow", 4},
  {26742, "Gun [4 Broken Weapons]", "Cracked Gun", 4},
  {26760, "Wand [4 Broken Weapons]", "Cracked Wand", 4},
  {52176, "Shield [4 Broken Weapons]", "Cracked Shield", 4}
}

if (intid == 6) then
pUnit:GossipCreateMenu(4545, player, 0)
for I, SubT in ipairs(Weapons) do
local I = I + 50 --- Registers to Use Intid 50-60
   pUnit:GossipMenuAddItem(9, SubT[2], I, 0, "Are you sure you want to buy [|c000070dd"..SubT[3].."|r] For "..SubT[4].." [|c00BEBEBEBroken Weapon(s)|r]?")
end
   pUnit:GossipMenuAddItem(1, "Never Mind", 5, 0)
pUnit:GossipSendMenu(player)
end

for I, SubT in ipairs(Weapons) do
local I = I + 50 --- Makes 10 intids with just 1 define (intid's 50-60
if (intid == I) then
  if (player:GetItemCount(55836) >= SubT[4]) then
    if (player:AddItem(SubT[1], 1)) then --if they successfully get the item
    player:RemoveItem(55836, SubT[4])
    player:GossipComplete()
	else
    InventoryIsFull_Global(event, player) --See [Race_Error_Message.lua]
	end
else
pUnit:SendChatMessage(12, 0, "You dont have enough Broken Weapons!")
player:GossipComplete()
end
end
end
end
----------------------
RegisterUnitGossipEvent(767687, 1, "HordeBlacksmithQuest_OnGossipTalk")
RegisterUnitGossipEvent(767687, 2, "HordeBlacksmithQuest_OnGossipSelect")