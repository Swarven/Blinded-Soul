local ShovelSetting = 1
local zinfo = 0
local zz = 0

function GMDig_Click(item, event, player, pMisc, unit)
item:GossipCreateMenu(50, player, 0)
item:GossipMenuAddItem(3, "Dig!", 1, 0)
item:GossipSendMenu(player)
end

function GMDig_Click2(item, event, player, id, intid, code, pMisc)
if (intid == 1) then
player:SendBroadcastMessage("Place In The Number Of How Far You Want To Go Up/Down (Coordinates)")
item:GossipCreateMenu(50, player, 0)
item:GossipMenuAddItem(3, "Dig!", 2, 1)
item:GossipSendMenu(player)
end
	
if (intid == 2) then
local mapid, x, y, z = player:GetMapId(), player:GetX(), player:GetY(), player:GetZ()
player:Teleport(mapid, x, y, z + code)
O = player:GetO()
player:SetFacing(O)
end
end

	
RegisterItemGossipEvent(110231, 1, "GMDig_Click")
RegisterItemGossipEvent(110231, 2, "GMDig_Click2")