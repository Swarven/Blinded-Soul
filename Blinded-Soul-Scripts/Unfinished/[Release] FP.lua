local GetDisplay = 17699 --- Change this to a flying mount you want

function Flight_Master_OnGossipTalk(pUnit, event, player, pMisc)
pUnit:GossipCreateMenu(50, player, 0)
pUnit:GossipMenuAddItem(9, "Show Me Where I Can fly.", 1, 0)
pUnit:GossipMenuAddItem(9, "Never Mind", 2, 0)
pUnit:GossipSendMenu(player)
end


function Flight_Master_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
if (intid == 1) then
pUnit:GossipCreateMenu(50, player, 0)
pUnit:GossipMenuAddItem(9, "Custom Location", 3, 0)
pUnit:GossipMenuAddItem(9, "GM Island Joy Ride", 4, 0)
pUnit:GossipMenuAddItem(9, "Never Mind", 2, 0)
pUnit:GossipSendMenu(player)
end

if (intid == 2) then
player:GossipComplete()
end

if (intid == 3) then
		LuaTaxi:CreateTaxi():AddPathNode(MapID, X, Y, Z)
		LuaTaxi:CreateTaxi():AddPathNode(MapID, X, Y, Z)
		LuaTaxi:CreateTaxi():AddPathNode(MapID, X, Y, Z)
		LuaTaxi:CreateTaxi():AddPathNode(MapID, X, Y, Z)
		LuaTaxi:CreateTaxi():AddPathNode(MapID, X, Y, Z)
		LuaTaxi:CreateTaxi():AddPathNode(MapID, X, Y, Z)
		LuaTaxi:CreateTaxi():AddPathNode(MapID, X, Y, Z)
		LuaTaxi:CreateTaxi():AddPathNode(MapID, X, Y, Z)
		LuaTaxi:CreateTaxi():AddPathNode(MapID, X, Y, Z)
		player:StartTaxi(LuaTaxi:CreateTaxi(), GetDisplay)
		player:GossipComplete()
end

if (intid == 4) then
		LuaTaxi:CreateTaxi():AddPathNode(1, 16218.30, 16277.84, 25)
		LuaTaxi:CreateTaxi():AddPathNode(1, 16206.73, 16251.14, 32)
		LuaTaxi:CreateTaxi():AddPathNode(1, 16228.76, 16230.82, 42)
		LuaTaxi:CreateTaxi():AddPathNode(1, 16266.93, 16246.27, 63)
		LuaTaxi:CreateTaxi():AddPathNode(1, 16275.62, 16281.19, 66)
		LuaTaxi:CreateTaxi():AddPathNode(1, 16250.80, 16298.93, 51)
		LuaTaxi:CreateTaxi():AddPathNode(1, 16224.79, 16301.91, 49)
		LuaTaxi:CreateTaxi():AddPathNode(1, 16206.46, 16313.54, 39)
		LuaTaxi:CreateTaxi():AddPathNode(1, 16189.04, 16307.65, 34)
		LuaTaxi:CreateTaxi():AddPathNode(1, 16214.10, 16285.48, 26)
		LuaTaxi:CreateTaxi():AddPathNode(1, 16218.45, 16281.15, 21)
		player:StartTaxi(LuaTaxi:CreateTaxi(), GetDisplay)
		player:GossipComplete()
end
end

RegisterUnitGossipEvent(112551, 1, "Flight_Master_OnGossipTalk")
RegisterUnitGossipEvent(112551, 2, "Flight_Master_OnGossipSelect")