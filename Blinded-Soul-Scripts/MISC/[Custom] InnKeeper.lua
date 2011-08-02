----======Custom Inn Coordinates======----
---Alliance
local TheSanctuary = 5441.62, -3423.89, 1565, 1, 0
--local AllianceEncamp
---Horde
--local LostRefugee
--local HordeEncamp
---Netrual

function CustomInnKeeper_OnGossipTalk(pUnit, event, player, pMisc)
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(5, "Make This Place My Home.", 1, 0)
   pUnit:GossipMenuAddItem(0, "Never Mind.", 2, 0)
   pUnit:GossipSendMenu(player)
end

function CustomInnKeeper_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
local InnID = pUnit:GetSpawnId()
local HearthStone = player:GetItemCount(6948)
if (intid == 1) then
if (HearthStone == 0) then
player:AddItem(6948,1)
end
    if (InnID == 24) then
    player:SetBindPoint(5441.62, -3423.89, 1565, 1, 616) 
	player:SendBroadcastMessage("The Sanctuary Is Now Your Home!")
	end
player:CastSpell(61410)
player:GossipComplete()
end

if (intid == 2) then
    player:GossipComplete()
end
end

RegisterUnitGossipEvent(229901, 1, "CustomInnKeeper_OnGossipTalk")
RegisterUnitGossipEvent(229901, 2, "CustomInnKeeper_OnGossipSelect")