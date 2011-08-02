--====================================--
local CheckPointCrystal = 180005
--====================================--
function Blinded_Soul_NPC_MageTeleporter_OnGossipTalk(pUnit, event, player, pMisc)
if (player:IsInCombat() == true) then
player:SendAreaTriggerMessage("You are in combat!")
else
pUnit:GossipCreateMenu(3544, player, 0)
pUnit:GossipMenuAddItem(2, "Teleport Me!", 1, 0)
pUnit:GossipMenuAddItem(6, "Give Me Checkpoint Crystals!", 2, 0)
pUnit:GossipMenuAddItem(7, "Never Mind", 3, 0)
pUnit:GossipSendMenu(player)
end
end

function Blinded_Soul_NPC_MageTeleporter_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
--====================================--
if(intid == 1) then
pUnit:GossipCreateMenu(99, player, 0)
pUnit:GossipMenuAddItem(2, "Blinded-Soul Mall", 4, 0)
pUnit:GossipMenuAddItem(7, "Never Mind", 3, 0)
pUnit:GossipSendMenu(player)
end

if(intid == 4) then
   player:Teleport(0, -1066.879150, 1498.282593, 122)
   player:SetFacing(2.411027)
   player:SetOrientation(2.411027)
   	player:GossipComplete()
end
--====================================--
if(intid == 2) then
if (player:GetItemCount(180000) == 1) then
player:SendBroadcastMessage("\124c00FF3333[Warning]\124r \124c00FFFF00You Already Have A Checkpoint Saved At [Stairs Of Destiny Checkpoint 1]! Going on Will Delete Your Checkpoint Stone, Forcing you to restart! Do You want To Go On?\124r")
pUnit:GossipCreateMenu(3544, player, 0)
pUnit:GossipMenuAddItem(2, "Yes", 5, 0)
pUnit:GossipMenuAddItem(6, "No", 3, 0)
pUnit:GossipSendMenu(player)
else
if (player:GetItemCount(180006) == 1) then
player:SendBroadcastMessage("\124c00FF3333[Warning]\124r \124c00FFFF00You Already Have A Checkpoint Saved At [Stairs Of Destiny Checkpoint 2]! Going on Will Delete Your Checkpoint Stone, Forcing you to restart! Do You want To Go On?\124r")
pUnit:GossipCreateMenu(3544, player, 0)
pUnit:GossipMenuAddItem(2, "Yes", 5, 0)
pUnit:GossipMenuAddItem(6, "No", 3, 0)
pUnit:GossipSendMenu(player)
else
local CCDel = player:GetItemCount(CheckPointCrystal)
player:RemoveItem(CheckPointCrystal,CCDel)
player:AddItem(CheckPointCrystal,5)
player:SendBroadcastMessage("\124c0033FF33[5]\124r \124c00FFFF00Checkpoint Crystals Added For The Event!\124r")
	player:GossipComplete()
end
end
end

if(intid == 5) then
local CCDel = player:GetItemCount(CheckPointCrystal)
local SOD1Del = player:GetItemCount(180000)
local SOD2Del = player:GetItemCount(180006)
player:RemoveItem(CheckPointCrystal,CCDel)
player:RemoveItem(180000,SOD1Del)
player:RemoveItem(180006,SOD2Del)
player:AddItem(CheckPointCrystal,5)
player:SendBroadcastMessage("\124c00FF3333[CheckPoint Deleted]\124r")
player:SendBroadcastMessage("\124c0033FF33[5]\124r \124c00FFFF00Checkpoint Crystals Added For The Event!\124r")
	player:GossipComplete()
end
--====================================--
if (intid == 3) then
	player:GossipComplete()
end
end
--====================================--

RegisterUnitGossipEvent(186763, 1, "Blinded_Soul_NPC_MageTeleporter_OnGossipTalk")
RegisterUnitGossipEvent(186763, 2, "Blinded_Soul_NPC_MageTeleporter_OnGossipSelect")