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
   pUnit:GossipMenuAddItem(9, "Teleport Me To A Event!", 1, 0)
   pUnit:GossipMenuAddItem(9, "Never Mind", 2, 0)
   pUnit:GossipSendMenu(player)
end

function StairsofDestinyMall_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)

if (intid == 2) then
player:GossipComplete()
end

if (intid == 1) then
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "[Obstacle] Stiars Of Destiny", 3, 0)
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
player:SendBroadcastMessage("\124c0033FF33[5]\124r \124c00FFFF00Checkpoint Crystals Added For The Event!\124r")
player:Teleport(1, 1645.267578, 1866.649780, 147)
pUnit:GossipComplete(player)
end
end

function MallNPCEvent(pUnit, event)
MallNPCEvent = pUnit
local plrs = MallNPCEvent:GetInRangePlayers()
	for k, v in pairs(plrs) do
	v:SendBroadcastMessage("\124c00FF3333[MALL]\124r \124c0033FF33New Event Opened! [Stairs Of Destiny] Talk To The NPC Event Teleporter on the 2nd floor!\124r")
	MallNPCEvent:RegisterEvent("MallNPCEventloop", 60000, 0)
end
end

function MallNPCEventloop(pUnit, event)
local plrs = MallNPCEvent:GetInRangePlayers()
	for k, v in pairs(plrs) do
	if (v ~= nil) then
	v:SendBroadcastMessage("\124c00FF3333[MALL]\124r \124c0033FF33New Event Opened! [Stairs Of Destiny] Talk To The NPC Event Teleporter on the 2nd floor!\124r")
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
   pUnit:GossipMenuAddItem(9, "[Event] Make This My Checkpoint", 1, 0)
   pUnit:GossipMenuAddItem(9, "Never Mind", 2, 0)
   pUnit:GossipSendMenu(player)
end

if (intid == 3) then
   player:SendBroadcastMessage("Chairs Of Destiny [Checkpoint 1] Is Now Your Checkpoint Spawn location!")
   player:SendAreaTriggerMessage("Chairs Of Destiny [Checkpoint 1] Is Now Your Checkpoint Spawn location!")
player:AddItem(180000,1)
player:GossipComplete()
end
function StairsofDestiny1_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
if (intid == 1) then
if (player:GetItemCount(180000) == 1) then
   player:SendBroadcastMessage("You Already Have A Checkpoint Saved To This Location!")
   player:SendAreaTriggerMessage("You Already Have A Checkpoint Saved To This Location!")
   player:GossipComplete()
else
if (player:GetItemCount(180006) == 1) then
   player:SendBroadcastMessage("Your Current Location Is Already Set To: [Stairs Of Destiny Checkpoint 2] Would You Like To Replace The Checkpoint?")
   player:SendAreaTriggerMessage("Your Current Location Is Already Set To: [Stairs Of Destiny Checkpoint 2] Would You Like To Replace The Checkpoint?")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "Yes, I Want This Location To Be My Current Checkpoint!", 3, 0)
   pUnit:GossipMenuAddItem(9, "Never Mind", 2, 0)
   pUnit:GossipSendMenu(player)
else
   player:SendBroadcastMessage("Chairs Of Destiny [Checkpoint 1] Is Now Your Checkpoint Spawn location!")
   player:SendAreaTriggerMessage("Chairs Of Destiny [Checkpoint 1] Is Now Your Checkpoint Spawn location!")
player:AddItem(180000,1)
player:GossipComplete()
end
end
end

if (intid == 2) then
player:GossipComplete()
end

if (intid == 3) then
   player:SendBroadcastMessage("Chairs Of Destiny [Checkpoint 1] Is Now Your Checkpoint Spawn location!")
   player:SendAreaTriggerMessage("Chairs Of Destiny [Checkpoint 1] Is Now Your Checkpoint Spawn location!")
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
   pUnit:GossipMenuAddItem(9, "[Event] Make This My Checkpoint", 1, 0)
   pUnit:GossipMenuAddItem(9, "Never Mind", 2, 0)
   pUnit:GossipSendMenu(player)
end

function StairsofDestiny2_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
if (intid == 1) then
if (player:GetItemCount(180006) == 1) then
   player:SendBroadcastMessage("You Already Have A Checkpoint Saved To This Location!")
   player:SendAreaTriggerMessage("You Already Have A Checkpoint Saved To This Location!")
   player:GossipComplete()
else
if (player:GetItemCount(180000) == 1) then
   player:SendBroadcastMessage("Your Current Location Is Already Set To: [Stairs Of Destiny Checkpoint 1] Would You Like To Replace The Checkpoint?")
   player:SendAreaTriggerMessage("Your Current Location Is Already Set To: [Stairs Of Destiny Checkpoint 1] Would You Like To Replace The Checkpoint?")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "Yes, I Want This Location To Be My Current Checkpoint!", 3, 0)
   pUnit:GossipMenuAddItem(9, "Never Mind", 2, 0)
   pUnit:GossipSendMenu(player)
else
   player:SendBroadcastMessage("Chairs Of Destiny [Checkpoint 2] Is Now Your Checkpoint Spawn location!")
   player:SendAreaTriggerMessage("Chairs Of Destiny [Checkpoint 2] Is Now Your Checkpoint Spawn location!")
player:AddItem(180006,1)
player:GossipComplete()
end
end
end

if (intid == 2) then
player:GossipComplete()
end

if (intid == 3) then
   player:SendBroadcastMessage("Chairs Of Destiny [Checkpoint 2] Is Now Your Checkpoint Spawn location!")
   player:SendAreaTriggerMessage("Chairs Of Destiny [Checkpoint 2] Is Now Your Checkpoint Spawn location!")
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
player:SendBroadcastMessage("You Already Have A Checkpoint Saved To This Location!")
player:SendAreaTriggerMessage("You Cannot Teleport While Moving!")
else
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("You Already Have A Checkpoint Saved To This Location!")
player:SendAreaTriggerMessage("You Cannot Teleport While In Combat!")
else
if (player:GetItemCount(CheckPointCrystal) == 0) then
player:SendBroadcastMessage("You Have 0 Checkpoint Crystals! Going on will Sacrifice This Stone And Teleport You To The Begining Of this Event! Would You Like To Go On?")
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
player:SendBroadcastMessage("You Now Have 0 Chechpoint Crystals, Your Next Teleport Will Teleport You At The Begining Of This Event!")
item:GossipComplete(player)
end
if (player:GetItemCount(CheckPointCrystal) == 2) then
player:RemoveItem(CheckPointCrystal,1)
player:Teleport(1, SODX1, SODY1, SODZ1)
player:SetFacing(SODO1)
player:SetOrientation(SODO1)
player:SendBroadcastMessage("You Now Have 1 Chechpoint Crystals Remaining!")
item:GossipComplete(player)
end
if (player:GetItemCount(CheckPointCrystal) == 3) then
player:RemoveItem(CheckPointCrystal,1)
player:Teleport(1, SODX1, SODY1, SODZ1)
player:SetFacing(SODO1)
player:SetOrientation(SODO1)
player:SendBroadcastMessage("You Now Have 2 Chechpoint Crystals Remaining!")
item:GossipComplete(player)
end
if (player:GetItemCount(CheckPointCrystal) == 4) then
player:RemoveItem(CheckPointCrystal,1)
player:Teleport(1, SODX1, SODY1, SODZ1)
player:SetFacing(SODO1)
player:SetOrientation(SODO1)
player:SendBroadcastMessage("You Now Have 3 Chechpoint Crystals Remaining!")
item:GossipComplete(player)
end
if (player:GetItemCount(CheckPointCrystal) == 5) then
player:RemoveItem(CheckPointCrystal,1)
player:Teleport(1, SODX1, SODY1, SODZ1)
player:SetFacing(SODO1)
player:SetOrientation(SODO1)
player:SendBroadcastMessage("You Now Have 4 Chechpoint Crystals Remaining!")
item:GossipComplete(player)
end
end
end
end

function StairsofDestinyCheckpoint1_OnClick(item, event, player, id, intid, code, pMisc, unit)
if (intid == 1) then
   player:SendBroadcastMessage("Checkpoint Stone Sacrificed! 5 Checkpoint Crystals Added!")
   player:SendAreaTriggerMessage("Checkpoint Stone Sacrificed! 5 Checkpoint Crystals Added!")
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
player:SendBroadcastMessage("You Already Have A Checkpoint Saved To This Location!")
player:SendAreaTriggerMessage("You Cannot Teleport While Moving!")
else
if (player:IsInCombat() == true) then
player:SendBroadcastMessage("You Already Have A Checkpoint Saved To This Location!")
player:SendAreaTriggerMessage("You Cannot Teleport While In Combat!")
else
if (player:GetItemCount(CheckPointCrystal) == 0) then
player:SendBroadcastMessage("You Have 0 Checkpoint Crystals! Going on will Sacrifice This Stone And Teleport You To The Begining Of this Event! Would You Like To Go On?")
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
player:SendBroadcastMessage("You Now Have 0 Chechpoint Crystals, Your Next Teleport Will Teleport You At The Begining Of This Event!")
item:GossipComplete(player)
end
if (player:GetItemCount(CheckPointCrystal) == 2) then
player:RemoveItem(CheckPointCrystal,1)
player:Teleport(1, SODX2, SODY2, SODZ2)
player:SetFacing(SODO2)
player:SetOrientation(SODO2)
player:SendBroadcastMessage("You Now Have 1 Chechpoint Crystals Remaining!")
item:GossipComplete(player)
end
if (player:GetItemCount(CheckPointCrystal) == 3) then
player:RemoveItem(CheckPointCrystal,1)
player:Teleport(1, SODX2, SODY2, SODZ2)
player:SetFacing(SODO2)
player:SetOrientation(SODO2)
player:SendBroadcastMessage("You Now Have 2 Chechpoint Crystals Remaining!")
item:GossipComplete(player)
end
if (player:GetItemCount(CheckPointCrystal) == 4) then
player:RemoveItem(CheckPointCrystal,1)
player:Teleport(1, SODX2, SODY2, SODZ2)
player:SetFacing(SODO2)
player:SetOrientation(SODO2)
player:SendBroadcastMessage("You Now Have 3 Chechpoint Crystals Remaining!")
item:GossipComplete(player)
end
if (player:GetItemCount(CheckPointCrystal) == 5) then
player:RemoveItem(CheckPointCrystal,1)
player:Teleport(1, SODX2, SODY2, SODZ2)
player:SetFacing(SODO2)
player:SetOrientation(SODO2)
player:SendBroadcastMessage("You Now Have 4 Chechpoint Crystals Remaining!")
item:GossipComplete(player)
end
end
end
end

function StairsofDestinyCheckpoint2_OnClick(item, event, player, id, intid, code, pMisc, unit)
if (intid == 1) then
   player:SendBroadcastMessage("Checkpoint Stone Sacrificed! 5 Checkpoint Crystals Added!")
   player:SendAreaTriggerMessage("Checkpoint Stone Sacrificed! 5 Checkpoint Crystals Added!")
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
   pUnit:GossipMenuAddItem(9, "Resurrect At The Beginning", 1, 0)
   pUnit:GossipMenuAddItem(9, "Resurrect At My CheckPoint", 2, 0)
   pUnit:GossipSendMenu(player)
end

function StairsofDestiny_SpiritHealer_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)

if (intid == 1) then
player:ResurrectPlayer()
player:GossipComplete()
end

if (intid == 2) then
    if (player:GetItemCount(180000) == 1) or (player:GetItemCount(180006) == 1) then
        player:SendBroadcastMessage("\124c00FF3333[WARNING]\124r \124c00FFFF00This Will Delete A Checkpoint Crystal! Are You Sure You Want To Go On?\124r")
        pUnit:GossipCreateMenu(50, player, 0)
        pUnit:GossipMenuAddItem(9, "Yes", 3, 0)
        pUnit:GossipMenuAddItem(9, "No, Ressurect Me At Beginning Instead", 1, 0)
        pUnit:GossipSendMenu(player)
else
player:SendBroadcastMessage("\124c00FF3333[Ressurect Failed]\124r \124c00FFFF00No Checkpoint Stone Found! Ressurecting At Beginning Instead!\124r")
player:ResurrectPlayer()
player:GossipComplete()
end
end

if (intid == 3) then
if (player:GetItemCount(180005) > 0) then
player:RemoveItem(CheckPointCrystal,1)
player:SendBroadcastMessage("\124c0033FF33[Ressurect Success]\124r \124c00FFFF00Checkpoint Crystal Deleted!\124r")
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
player:SendBroadcastMessage("\124c00FF3333[Ressurect Failed]\124r \124c00FFFF00No Checkpoint Crystal Found! Ressurecting At Beginning Instead!\124r")
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
	pUnit:SendChatMessage(12, 0, "Congradulations " ..player:GetName().. ", You Have Beaten This Obstacle Course!")
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
	v:SendBroadcastMessage("\124c00FF3333[EVENT]\124r \124c0033FF33" ..player:GetName().. "\124r \124c00FFFF00Has Just Beaten The Event [Stairs Of Destiny]!\124r")
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