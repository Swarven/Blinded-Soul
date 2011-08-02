local SODX1 = 1802.616089
local SODY1 = 1769.643677
local SODZ1 = 220.7
local SODO1 = 1.074905
local SODX2 = 2082.874268
local SODY2 = 1819.444458
local SODZ2 = 283.042114
local SODO2 = 0.417662
local CheckPointCrystal = 180005
--==Checkpoint NPC==--
function StairsofDestinyMall_OnGossipTalk(pUnit, event, player, pMisc)
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "Teleport me to an Event!", 1, 0)
   pUnit:GossipMenuAddItem(9, "Never Mind", 2, 0)
   pUnit:GossipSendMenu(player)
end

function StairsofDestinyMall_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)

if (intid == 2) then
player:GossipComplete()
end

if (intid == 1) then
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "[Obstacle] Stairs of Destiny", 3, 0)
   pUnit:GossipMenuAddItem(9, "Never Mind", 2, 0)
   pUnit:GossipSendMenu(player)
end

if (intid == 3) then
local CCDel = player:GetItemCount(CheckPointCrystal)
---------------------------------------
player:RemoveItem(CheckPointCrystal,CCDel)
---------------------------------------
player:AddItem(CheckPointCrystal,5)
---------------------------------------
player:SendBroadcastMessage("\124c0033FF33[5]\124r \124c00FFFF00Checkpoint Crystals added for the Event!\124r")
player:Teleport(1, 1645.267578, 1866.649780, 147)
pUnit:GossipComplete(player)
end
end

function MallNPCEvent(pUnit, event)
MallNPCEvent = pUnit
local plrs = MallNPCEvent:GetInRangePlayers()
	for k, v in pairs(plrs) do
	v:SendBroadcastMessage("\124c00FF3333[MALL]\124r \124c0033FF33New Event Opened! [Stairs of Destiny] - Talk to the NPC Event Teleporter on the 2nd floor!\124r")
	MallNPCEvent:RegisterEvent("MallNPCEventloop", 300000, 0) -- 1 minute is too spammy.
end
end

function MallNPCEventloop(pUnit, event)
local plrs = MallNPCEvent:GetInRangePlayers()
	for k, v in pairs(plrs) do
	if (v ~= nil) then
	v:SendBroadcastMessage("\124c00FF3333[MALL]\124r \124c0033FF33New Event Opened! [Stairs of Destiny] - Talk to the NPC Event Teleporter on the 2nd floor!\124r")
end
end
end

RegisterUnitGossipEvent(186761, 1, "StairsofDestinyMall_OnGossipTalk")
RegisterUnitGossipEvent(186761, 2, "StairsofDestinyMall_OnGossipSelect")
RegisterUnitEvent(186761, 18, "MallNPCEvent")
--========STAIRS OF DESTINY========--
--*********************************--
--=Stairs Of Destiny [Checkpoint 1]=--
function StairsofDestiny1_OnGossipTalk(pUnit, event, player, pMisc)
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "[Event] Make this my Checkpoint", 1, 0)
   pUnit:GossipMenuAddItem(9, "Never Mind", 2, 0)
   pUnit:GossipSendMenu(player)
end

if (intid == 3) then
   player:SendBroadcastMessage("Stairs Of Destiny [Checkpoint 1] is now your Checkpoint spawn location!")
   player:SendAreaTriggerMessage("Stairs Of Destiny [Checkpoint 1] is now your Checkpoint spawn location!")
player:AddItem(180000,1)
player:GossipComplete()
end
function StairsofDestiny1_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
if (intid == 1) then
if (player:GetItemCount(180000) == 1) then
   player:SendBroadcastMessage("You already have a Checkpoint saved to this location!")
   player:SendAreaTriggerMessage("You already have a Checkpoint saved to this location!")
   player:GossipComplete()
else
if (player:GetItemCount(180006) == 1) then
   player:SendBroadcastMessage("Your current location is already set to: [Stairs Of Destiny Checkpoint 2] - Would you like to replace the Checkpoint?")
   player:SendAreaTriggerMessage("Your current location is already set to: [Stairs Of Destiny Checkpoint 2] - Would you like to replace the Checkpoint?")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "Yes, I want this location to be my current Checkpoint!", 3, 0)
   pUnit:GossipMenuAddItem(9, "Never Mind", 2, 0)
   pUnit:GossipSendMenu(player)
else
   player:SendBroadcastMessage("Stairs of Destiny [Checkpoint 1] is now your Checkpoint spawn location!")
   player:SendAreaTriggerMessage("Stairs of Destiny [Checkpoint 1] is now your Checkpoint spawn location!")
player:AddItem(180000,1)
player:GossipComplete()
end
end
end

if (intid == 2) then
player:GossipComplete()
end

if (intid == 3) then
   player:SendBroadcastMessage("Stairs of Destiny [Checkpoint 1] is now your Checkpoint spawn location!")
   player:SendAreaTriggerMessage("Stairs of Destiny [Checkpoint 1] is now your Checkpoint spawn location!")
player:AddItem(180000,1)
player:GossipComplete()
end
end

RegisterUnitGossipEvent(185521, 1, "StairsofDestiny1_OnGossipTalk")
RegisterUnitGossipEvent(185521, 2, "StairsofDestiny1_OnGossipSelect")
--*********************************--
--=Stairs of Destiny [Checkpoint 2]=--
function StairsofDestiny2_OnGossipTalk(pUnit, event, player, pMisc)
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "[Event] Make this my Checkpoint", 1, 0)
   pUnit:GossipMenuAddItem(9, "Never Mind", 2, 0)
   pUnit:GossipSendMenu(player)
end

function StairsofDestiny2_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
if (intid == 1) then
if (player:GetItemCount(180006) == 1) then
   player:SendBroadcastMessage("You already have a Checkpoint saved to this location!")
   player:SendAreaTriggerMessage("You already have a Checkpoint saved to this location!")
   player:GossipComplete()
else
if (player:GetItemCount(180000) == 1) then
   player:SendBroadcastMessage("Your current location is already set to: [Stairs of Destiny Checkpoint 1] - Would you like to replace the Checkpoint?")
   player:SendAreaTriggerMessage("Your current location is already set to: [Stairs of Destiny Checkpoint 1] - Would you like to replace the Checkpoint?")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "Yes, I want this location to be my current Checkpoint!", 3, 0)
   pUnit:GossipMenuAddItem(9, "Never Mind", 2, 0)
   pUnit:GossipSendMenu(player)
else
   player:SendBroadcastMessage("Stairs of Destiny [Checkpoint 2] is now your Checkpoint spawn location!")
   player:SendAreaTriggerMessage("Stairs of Destiny [Checkpoint 2] is now your Checkpoint spawn location!")
player:AddItem(180006,1)
player:GossipComplete()
end
end
end

if (intid == 2) then
player:GossipComplete()
end

if (intid == 3) then
   player:SendBroadcastMessage("Stairs of Destiny [Checkpoint 2] is now your Checkpoint spawn location!")
   player:SendAreaTriggerMessage("Stairs of Destiny [Checkpoint 2] is now your Checkpoint spawn location!")
   player:RemoveItem(180000,1)
player:AddItem(180006,1)
player:GossipComplete()
end
end

RegisterUnitGossipEvent(185522, 1, "StairsofDestiny2_OnGossipTalk")
RegisterUnitGossipEvent(185522, 2, "StairsofDestiny2_OnGossipSelect")
-------------------------
--==Checkpoint Stones==--
function StairsofDestinyCheckpoint1_Click(item, event, player, pMisc, unit)
if (player:IsPlayerMoving() == true) then
player:SendBroadcastMessage("You already have a Checkpoint saved to this location!")
player:SendAreaTriggerMessage("You cannot teleport while moving!")
else
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("You already have a Checkpoint saved to this location!")
player:SendAreaTriggerMessage("You cannot teleport while in combat!")
else
if (player:GetItemCount(CheckPointCrystal) == 0) then
player:SendBroadcastMessage("You have 0 Checkpoint Crystals! Selecting Yes will sacrifice this stone and teleport you to the beginning of this Event! Would you like to do so?")
   item:GossipCreateMenu(50, player, 0)
   item:GossipMenuAddItem(9, "Yes", 1, 0)
   item:GossipMenuAddItem(9, "No", 2, 0)
   item:GossipSendMenu(player)
end
if (player:GetItemCount(CheckPointCrystal) == 1) then
player:RemoveItem(CheckPointCrystal,1)
player:Teleport(1, SODX1, SODY1, SODZ1)
player:SetFacing(SODO1)
player:SetOrientation(SODO1)
player:SendBroadcastMessage("You now have 0 Checkpoint Crystals. Your next teleport will send you to the beginning of this Event!")
item:GossipComplete(player)
end
if (player:GetItemCount(CheckPointCrystal) == 2) then
player:RemoveItem(CheckPointCrystal,1)
player:Teleport(1, SODX1, SODY1, SODZ1)
player:SetFacing(SODO1)
player:SetOrientation(SODO1)
player:SendBroadcastMessage("You now have 1 Checkpoint Crystal remaining!")
item:GossipComplete(player)
end
if (player:GetItemCount(CheckPointCrystal) == 3) then
player:RemoveItem(CheckPointCrystal,1)
player:Teleport(1, SODX1, SODY1, SODZ1)
player:SetFacing(SODO1)
player:SetOrientation(SODO1)
player:SendBroadcastMessage("You now have 2 Checkpoint Crystals remaining!")
item:GossipComplete(player)
end
if (player:GetItemCount(CheckPointCrystal) == 4) then
player:RemoveItem(CheckPointCrystal,1)
player:Teleport(1, SODX1, SODY1, SODZ1)
player:SetFacing(SODO1)
player:SetOrientation(SODO1)
player:SendBroadcastMessage("You now have 3 Checkpoint Crystals remaining!")
item:GossipComplete(player)
end
if (player:GetItemCount(CheckPointCrystal) == 5) then
player:RemoveItem(CheckPointCrystal,1)
player:Teleport(1, SODX1, SODY1, SODZ1)
player:SetFacing(SODO1)
player:SetOrientation(SODO1)
player:SendBroadcastMessage("You now have 4 Checkpoint Crystals remaining!")
item:GossipComplete(player)
end
end
end
end

function StairsofDestinyCheckpoint1_OnClick(item, event, player, id, intid, code, pMisc, unit)
if (intid == 1) then
   player:SendBroadcastMessage("Checkpoint Stone sacrificed! 5 Checkpoint Crystals added!")
   player:SendAreaTriggerMessage("Checkpoint Stone sacrificed! 5 Checkpoint Crystals added!")
   player:Teleport(1, 1645.298096, 1866.469360, 146)
   player:SetFacing(6.247177)
   player:SetOrientation(6.247177)
   player:GossipComplete()
   player:AddItem(CheckPointCrystal,5)
   player:RemoveItem(180000,1)
   end
   
   if (intid == 2) then
   player:GossipComplete()
   end
   end
RegisterItemGossipEvent(180000, 1, "StairsofDestinyCheckpoint1_Click")
RegisterItemGossipEvent(180000, 2, "StairsofDestinyCheckpoint1_OnClick")
--*********************************--
--=Stairs of Destiny [Checkpoint 2]=--
function StairsofDestinyCheckpoint2_Click(item, event, player, pMisc, unit)
if (player:IsPlayerMoving() == true) then
player:SendBroadcastMessage("You already have a Checkpoint saved to this location!")
player:SendAreaTriggerMessage("You cannot teleport while moving!")
else
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("You already have a Checkpoint saved to this location!")
player:SendAreaTriggerMessage("You cannot teleport while in combat!")
else
if (player:GetItemCount(CheckPointCrystal) == 0) then
player:SendBroadcastMessage("You have 0 Checkpoint Crystals! Selecting Yes will sacrifice this stone and teleport you to the beginning of this Event! Would you like to do so?")
   item:GossipCreateMenu(50, player, 0)
   item:GossipMenuAddItem(9, "Yes", 1, 0)
   item:GossipMenuAddItem(9, "No", 2, 0)
   item:GossipSendMenu(player)
end
if (player:GetItemCount(CheckPointCrystal) == 1) then
player:RemoveItem(CheckPointCrystal,1)
player:Teleport(1, SODX2, SODY2, SODZ2)
player:SetFacing(SODO2)
player:SetOrientation(SODO2)
player:SendBroadcastMessage("You now have 0 Checkpoint Crystals. Your next teleport will send you to the beginning of this Event!")
item:GossipComplete(player)
end
if (player:GetItemCount(CheckPointCrystal) == 2) then
player:RemoveItem(CheckPointCrystal,1)
player:Teleport(1, SODX2, SODY2, SODZ2)
player:SetFacing(SODO2)
player:SetOrientation(SODO2)
player:SendBroadcastMessage("You now have 1 Checkpoint Crystal remaining!")
item:GossipComplete(player)
end
if (player:GetItemCount(CheckPointCrystal) == 3) then
player:RemoveItem(CheckPointCrystal,1)
player:Teleport(1, SODX2, SODY2, SODZ2)
player:SetFacing(SODO2)
player:SetOrientation(SODO2)
player:SendBroadcastMessage("You now have 2 Checkpoint Crystals remaining!")
item:GossipComplete(player)
end
if (player:GetItemCount(CheckPointCrystal) == 4) then
player:RemoveItem(CheckPointCrystal,1)
player:Teleport(1, SODX2, SODY2, SODZ2)
player:SetFacing(SODO2)
player:SetOrientation(SODO2)
player:SendBroadcastMessage("You now have 3 Checkpoint Crystals remaining!")
item:GossipComplete(player)
end
if (player:GetItemCount(CheckPointCrystal) == 5) then
player:RemoveItem(CheckPointCrystal,1)
player:Teleport(1, SODX2, SODY2, SODZ2)
player:SetFacing(SODO2)
player:SetOrientation(SODO2)
player:SendBroadcastMessage("You now have 4 Checkpoint Crystals remaining!")
item:GossipComplete(player)
end
end
end
end

function StairsofDestinyCheckpoint2_OnClick(item, event, player, id, intid, code, pMisc, unit)
if (intid == 1) then
   player:SendBroadcastMessage("Checkpoint Stone sacrificed! 5 Checkpoint Crystals added!")
   player:SendAreaTriggerMessage("Checkpoint Stone sacrificed! 5 Checkpoint Crystals added!")
   player:Teleport(1, 1645.298096, 1866.469360, 146)
   player:SetFacing(6.247177)
   player:SetOrientation(6.247177)
   player:GossipComplete()
   player:AddItem(CheckPointCrystal,5)
   player:RemoveItem(180006,1)
   end
   
   if (intid == 2) then
   player:GossipComplete()
   end
   end
RegisterItemGossipEvent(180006, 1, "StairsofDestinyCheckpoint2_Click")
RegisterItemGossipEvent(180006, 2, "StairsofDestinyCheckpoint2_OnClick")
---------------------
--==SPIRIT HEALER==--
function StairsofDestiny_SpiritHealer_OnGossipTalk(pUnit, event, player, pMisc)
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "Resurrect at the Beginning", 1, 0)
   pUnit:GossipMenuAddItem(9, "Resurrect at my Checkpoint", 2, 0)
   pUnit:GossipSendMenu(player)
end

function StairsofDestiny_SpiritHealer_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)

if (intid == 1) then
player:ResurrectPlayer()
player:GossipComplete()
end

if (intid == 2) then
    if (player:GetItemCount(180000) == 1) or (player:GetItemCount(180006) == 1) then
        player:SendBroadcastMessage("\124c00FF3333[WARNING]\124r \124c00FFFF00This will delete a Checkpoint Crystal! Are you dure you want to do this?\124r")
        pUnit:GossipCreateMenu(50, player, 0)
        pUnit:GossipMenuAddItem(9, "Yes", 3, 0)
        pUnit:GossipMenuAddItem(9, "No, resurrect me at the beginning instead", 1, 0)
        pUnit:GossipSendMenu(player)
else
player:SendBroadcastMessage("\124c00FF3333[Resurrection Failed]\124r \124c00FFFF00No Checkpoint Stone found! Resurrectioning at the beginning instead!\124r")
player:ResurrectPlayer()
player:GossipComplete()
end
end

if (intid == 3) then
if (player:GetItemCount(180005) > 0) then
player:RemoveItem(CheckPointCrystal,1)
player:SendBroadcastMessage("\124c0033FF33[Resurrection Succeeded]\124r \124c00FFFF00Checkpoint Crystal Deleted!\124r")
player:ResurrectPlayer()
if (player:GetItemCount(180000) == 1) then
player:Teleport(1, SODX1, SODY1, SODZ1)
player:SetFacing(SODO1)
player:SetOrientation(SODO1)
end
if (player:GetItemCount(180006) == 1) then
player:Teleport(1, SODX2, SODY2, SODZ2)
player:SetFacing(SODO2)
player:SetOrientation(SODO2)
end
player:GossipComplete()
else
player:SendBroadcastMessage("\124c00FF3333[Resurrection Failed]\124r \124c00FFFF00No Checkpoint Crystal found! Resurrecting at the beginning instead!\124r")
    player:ResurrectPlayer()
    player:GossipComplete()
end
end
end

RegisterUnitGossipEvent(482231, 1, "StairsofDestiny_SpiritHealer_OnGossipTalk")
RegisterUnitGossipEvent(482231, 2, "StairsofDestiny_SpiritHealer_OnGossipSelect")
-----------------
--==TOKEN NPC==--
function StairsofDestiny_Token_onTalk(pUnit, Event, player)
	pUnit:SendChatMessage(12, 0, "Congratulations " ..player:GetName().. ", you have beaten this Obstacle Course!")
	pUnit:GossipCreateMenu(100, player, 0)
	pUnit:GossipMenuAddItem(3, "Collect my Token and Teleport me out!", 1, 0)
	pUnit:GossipMenuAddItem(3, "Never Mind", 2, 0)
	pUnit:GossipSendMenu(player)
end

function StairsofDestiny_Token_onSelect(pUnit, Event, player, id, intid, code, pMisc)
if(intid == 1) then
local CheckPointCrystal = 180005
local plrs = GetPlayersInWorld()
	for k, v in pairs(plrs) do
	v:SendBroadcastMessage("\124c00FF3333[EVENT]\124r \124c0033FF33" ..player:GetName().. "\124r \124c00FFFF00has just beaten the [Stairs Of Destiny] Event!\124r")
    end
local CCDel = player:GetItemCount(CheckPointCrystal)
local SOD1Del = player:GetItemCount(180000)
local SOD2Del = player:GetItemCount(180006)
player:RemoveItem(CheckPointCrystal,CCDel)
player:AddItem(CheckPointCrystal,5)
player:RemoveItem(180000,SOD1Del)
player:RemoveItem(180006,SOD2Del)
player:Teleport(1, 1645.298096, 1866.469360, 146)
player:SetFacing(6.247177)
player:SetOrientation(6.247177)
player:AddItem(34857, 1)
player:GossipComplete()
end

if(intid == 2) then
player:GossipComplete()
end
end

RegisterUnitGossipEvent(482232, 1, "StairsofDestiny_Token_onTalk")
RegisterUnitGossipEvent(482232, 2, "StairsofDestiny_Token_onSelect")