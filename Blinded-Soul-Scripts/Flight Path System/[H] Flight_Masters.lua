FP_LostRefugee = "Lost Refugee"
FP_HordeEncamp = "Horde Encampment"
FP_CampTorchwood = "Camp Torchwood"
FP_HillSideOasis = "Hillside Oasis"
FP_TwilightsDawn = "Twilights Dawn"
--===============--
function Lost_Refugee_Flight_Master_OnGossipTalk(pUnit, event, player, pMisc)
local PlayerName = player:GetName()
local NewFP = "Lost Refugee"
local GetFP = CharDBQuery("SELECT flight_masters FROM characters_flight_masters_discovered WHERE name = '"..PlayerName.."'", 0):GetColumn(0):GetString()
player:Dismount()
------===========--------
if string.find(GetFP, NewFP) == nil then
CharDBQuery("UPDATE characters_flight_masters_discovered SET flight_masters='"..GetFP..NewFP..", ' WHERE name = '"..PlayerName.."'", 0)
player:SendBroadcastMessage("You Have Discovered A New Flight Path: \124c0033FF33"..NewFP.."\124r!")
player:SendAreaTriggerMessage("Flight Path Discovered: \124c0033FF33"..NewFP.."\124r!")
player:PlaySoundToPlayer(12891)
player:CastSpell(836)
else
LostRefugee_Timer = WorldDBQuery("SELECT * FROM flight_masters_area WHERE Area_Name = 'Lost Refugee'", 0)
LostRefugee_GetRefresh = LostRefugee_Timer:GetColumn(1):GetLong()
---------=========------
pUnit:GossipCreateMenu(50, player, 0)
pUnit:GossipMenuAddItem(9, "Show Me Where I Can fly.", 1, 0)
pUnit:GossipMenuAddItem(9, "Who Are You?", 2, 0)
pUnit:GossipMenuAddItem(9, "Never Mind", 3, 0)
pUnit:GossipMenuAddItem(9, "Test [New Flight Path System]", 555, 0)
pUnit:GossipSendMenu(player)
end
end

function Lost_Refugee_Flight_Master_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
local PlayerName = player:GetName()
local GetFP = CharDBQuery("SELECT flight_masters FROM characters_flight_masters_discovered WHERE name = '"..PlayerName.."'", 0):GetColumn(0):GetString()
local FlyFrom = "Lost Refugee"
if (intid == 1) then
if string.find(GetFP, FP_HordeEncamp) == nil and string.find(GetFP, FP_CampTorchwood) == nil and string.find(GetFP, FP_HillSideOasis) == nil and string.find(GetFP, FP_TwilightsDawn) == nil then
player:SendBroadcastMessage("You Do Not Know Any Flight Paths!")
player:GossipComplete()
else
pUnit:GossipCreateMenu(50, player, 0)
if string.find(GetFP, FP_HordeEncamp) ~= nil then
pUnit:GossipMenuAddItem(9, "Horde Encampment [5 Gold]", 12, 0)
end
if string.find(GetFP, FP_CampTorchwood) ~= nil then
pUnit:GossipMenuAddItem(9, "Camp Torchwood [10 Gold]", 13, 0)
end
if string.find(GetFP, FP_HillSideOasis) ~= nil then
pUnit:GossipMenuAddItem(9, "Hillside Oasis [15 Gold]", 14, 0)
end
if string.find(GetFP, FP_TwilightsDawn) ~= nil then
pUnit:GossipMenuAddItem(9, "Neatral City [20 Gold]", 15, 0)
end
pUnit:GossipMenuAddItem(9, "Never Mind", 3, 0)
pUnit:GossipSendMenu(player)
end
if (intid == 2) then
player:SendBroadcastMessage("This Is A Flight Master, He Will Let You Fly Anywhere that you have discovered!")
end
end

if (intid == 3) then
player:GossipComplete()
end
if (intid == 555) then
    if (LostRefugee_GetRefresh < os.time()) then
	local GetTimePlusFive = os.time() + 4
	    WorldDBQuery("UPDATE flight_masters_area SET Refresh_Time='"..GetTimePlusFive.."' WHERE Area_Name = 'Lost Refugee' LIMIT 1;", 0)
		LostRefugeeToHordeEncamp = LuaTaxi:CreateTaxi()
		LostRefugeeToHordeEncamp:AddPathNode(1, Node1X, Node1Y, Node1Z)
		LostRefugeeToHordeEncamp:AddPathNode(1, Node2X, Node2Y, Node2Z)
		LostRefugeeToHordeEncamp:AddPathNode(1, Node3X, Node3Y, Node3Z)
		LostRefugeeToHordeEncamp:AddPathNode(1, Node4X, Node4Y, Node4Z)
		LostRefugeeToHordeEncamp:AddPathNode(1, Node5X, Node5Y, Node5Z)
		LostRefugeeToHordeEncamp:AddPathNode(1, Node6X, Node6Y, Node6Z)
		LostRefugeeToHordeEncamp:AddPathNode(1, Node7X, Node7Y, Node7Z)
		LostRefugeeToHordeEncamp:AddPathNode(1, Node8X, Node8Y, Node8Z)
		LostRefugeeToHordeEncamp:AddPathNode(1, Node9X, Node9Y, Node9Z)
		LostRefugeeToHordeEncamp:AddPathNode(1, Node10X, Node10Y, Node10Z)
		LostRefugeeToHordeEncamp:AddPathNode(1, Node11X, Node11Y, Node11Z)
		LostRefugeeToHordeEncamp:AddPathNode(1, Node12X, Node12Y, Node12Z)
		LostRefugeeToHordeEncamp:AddPathNode(1, Node13X, Node13Y, Node13Z)
		LostRefugeeToHordeEncamp:AddPathNode(1, Node14X, Node14Y, Node14Z)
		LostRefugeeToHordeEncamp:AddPathNode(1, Node15X, Node15Y, Node15Z)
		LostRefugeeToHordeEncamp:AddPathNode(1, Node16X, Node16Y, Node16Z)
		LostRefugeeToHordeEncamp:AddPathNode(1, Node17X, Node17Y, Node17Z)
		LostRefugeeToHordeEncamp:AddPathNode(1, Node18X, Node18Y, Node18Z)
		player:StartTaxi(LostRefugeeToHordeEncamp, 17699)
		player:GossipComplete()
	else
	local GetSeconds = LostRefugee_GetRefresh - os.time()
	player:SendBroadcastMessage("Refreshing Nodes, You Must Wait "..GetSeconds.." Seconds!")
	player:GossipComplete()
	end
end

--[[



Below Is Where Flight Paths Begins



--]]

if (intid == 10) then ---Blinded-Soul Mall
player:SendBroadcastMessage("Not Completed Yet.")
player:GossipComplete()
end
--[[
11 Skipped, 11 = Lost Refugee
--]]
if (intid == 12) then -- Horde Encampment
if (player:DealGoldCost(50000) == true) then
local FlyTo = "Horde Encampment"
player:SetPlayerLock(true)
player:SetMovementType(768)
player:SetMovementFlags(2)	
player:SetMount(17699)
SpecialFlags = "Flying"
local NextWaypoint = 543
local GoingToWaypoint = 544
local SetDelay = os.time()+1 --- 1 second
local GetNextX = WorldDBQuery("SELECT position_x FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
local GetNextY = WorldDBQuery("SELECT position_y FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
local GetNextZ = WorldDBQuery("SELECT position_z FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
local GetNextO = WorldDBQuery("SELECT orientation FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
player:MovePlayerTo(GetNextX, GetNextY, GetNextZ, GetNextO, 12288, 1)
player:SendBroadcastMessage("[Flight Path] Arrival Time: 38 Seconds")
CharDBQuery("UPDATE characters_flight_data SET flying_from='"..FlyFrom.."', special_flags='"..SpecialFlags.."', flying_to='"..FlyTo.."', waypoint='"..GoingToWaypoint.."', is_flying='1', delay='"..SetDelay.."' WHERE name = '"..PlayerName.."' LIMIT 1;", 0)
player:GossipComplete()
else
player:SendBroadcastMessage("You Do Not Have 5 Gold!")
player:GossipComplete()
end
end

if (intid == 13) then -- Camp Torchwood
if (player:DealGoldCost(100000) == true) then
local FlyTo = "Camp Torchwood"
player:SetPlayerLock(true)
player:SetMovementType(768)
player:SetMovementFlags(2)	
player:SetMount(17699)
SpecialFlags = "Flying"
local NextWaypoint = 543
local GoingToWaypoint = 544
local SetDelay = os.time()+1 --- 1 second
local GetNextX = WorldDBQuery("SELECT position_x FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
local GetNextY = WorldDBQuery("SELECT position_y FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
local GetNextZ = WorldDBQuery("SELECT position_z FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
local GetNextO = WorldDBQuery("SELECT orientation FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
player:MovePlayerTo(GetNextX, GetNextY, GetNextZ, GetNextO, 12288, 1)
player:SendBroadcastMessage("[Flight Path] Arrival Time: 38 Seconds")
CharDBQuery("UPDATE characters_flight_data SET flying_from='"..FlyFrom.."', special_flags='"..SpecialFlags.."', flying_to='"..FlyTo.."', waypoint='"..GoingToWaypoint.."', is_flying='1', delay='"..SetDelay.."' WHERE name = '"..PlayerName.."' LIMIT 1;", 0)
player:GossipComplete()
else
player:SendBroadcastMessage("You Do Not Have 10 Gold!")
player:GossipComplete()
end
end

if (intid == 14) then -- Hillside Oasis
if (player:DealGoldCost(150000) == true) then
local FlyTo = "Hillside Oasis"
player:SetPlayerLock(true)
player:SetMovementType(768)
player:SetMovementFlags(2)	
player:SetMount(17699)
SpecialFlags = "Flying"
local NextWaypoint = 543
local GoingToWaypoint = 544
local SetDelay = os.time()+1 --- 1 second
local GetNextX = WorldDBQuery("SELECT position_x FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
local GetNextY = WorldDBQuery("SELECT position_y FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
local GetNextZ = WorldDBQuery("SELECT position_z FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
local GetNextO = WorldDBQuery("SELECT orientation FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
player:MovePlayerTo(GetNextX, GetNextY, GetNextZ, GetNextO, 12288, 1)
player:SendBroadcastMessage("[Flight Path] Arrival Time: 38 Seconds")
CharDBQuery("UPDATE characters_flight_data SET flying_from='"..FlyFrom.."', special_flags='"..SpecialFlags.."', flying_to='"..FlyTo.."', waypoint='"..GoingToWaypoint.."', is_flying='1', delay='"..SetDelay.."' WHERE name = '"..PlayerName.."' LIMIT 1;", 0)
player:GossipComplete()
else
player:SendBroadcastMessage("You Do Not Have 15 Gold!")
player:GossipComplete()
end
end

if (intid == 15) then -- Neatral City
if (player:DealGoldCost(150000) == true) then
local FlyTo = "Twlights Dawn"
player:SetPlayerLock(true)
player:SetMovementType(768)
player:SetMovementFlags(2)	
player:SetMount(17699)
SpecialFlags = "Flying"
local NextWaypoint = 543
local GoingToWaypoint = 544
local SetDelay = os.time()+1 --- 1 second
local GetNextX = WorldDBQuery("SELECT position_x FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
local GetNextY = WorldDBQuery("SELECT position_y FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
local GetNextZ = WorldDBQuery("SELECT position_z FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
local GetNextO = WorldDBQuery("SELECT orientation FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
player:MovePlayerTo(GetNextX, GetNextY, GetNextZ, GetNextO, 12288, 1)
player:SendBroadcastMessage("[Flight Path] Arrival Time: 38 Seconds")
CharDBQuery("UPDATE characters_flight_data SET flying_from='"..FlyFrom.."', special_flags='"..SpecialFlags.."', flying_to='"..FlyTo.."', waypoint='"..GoingToWaypoint.."', is_flying='1', delay='"..SetDelay.."' WHERE name = '"..PlayerName.."' LIMIT 1;", 0)
player:GossipComplete()
else
player:SendBroadcastMessage("You Do Not Have 15 Gold!")
player:GossipComplete()
end
end
end

RegisterUnitGossipEvent(77652, 1, "Lost_Refugee_Flight_Master_OnGossipTalk")
RegisterUnitGossipEvent(77652, 2, "Lost_Refugee_Flight_Master_OnGossipSelect")

--[[
======================================================================================

                         Lost Refugee Flight Master
                                   END

======================================================================================

                      Horde Encampment Flight Master
                                  START

======================================================================================
--]]
function Horde_Encamp_Flight_Master_OnGossipTalk(pUnit, event, player, pMisc)
local PlayerName = player:GetName()
local NewFP = "Horde Encampment"
local GetFP = CharDBQuery("SELECT flight_masters FROM characters_flight_masters_discovered WHERE name = '"..PlayerName.."'", 0):GetColumn(0):GetString()
player:Dismount()
------===========--------
if string.find(GetFP, NewFP) == nil then
CharDBQuery("UPDATE characters_flight_masters_discovered SET flight_masters='"..GetFP..NewFP..", ' WHERE name = '"..PlayerName.."'", 0)
player:SendBroadcastMessage("You Have Discovered A New Flight Path: \124c0033FF33"..NewFP.."\124r!")
player:SendAreaTriggerMessage("Flight Path Discovered: \124c0033FF33"..NewFP.."\124r!")
player:PlaySoundToPlayer(12891)
player:CastSpell(836)
else
HordeEncampment_Timer = WorldDBQuery("SELECT * FROM flight_masters_area WHERE Area_Name = 'Horde Encampment'", 0)
HordeEncampment_GetRefresh = HordeEncampment_Timer:GetColumn(1):GetLong()
---------=========------
pUnit:GossipCreateMenu(50, player, 0)
pUnit:GossipMenuAddItem(9, "Show Me Where I Can fly.", 1, 0)
pUnit:GossipMenuAddItem(9, "Who Are You?", 2, 0)
pUnit:GossipMenuAddItem(9, "Never Mind", 3, 0)
pUnit:GossipSendMenu(player)
end
end

function Horde_Encamp_Flight_Master_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
local PlayerName = player:GetName()
local GetFP = CharDBQuery("SELECT flight_masters FROM characters_flight_masters_discovered WHERE name = '"..PlayerName.."'", 0):GetColumn(0):GetString()
local FlyFrom = "Horde Encampment"
if (intid == 1) then
--if string.find(GetFP, FP_LostRefugee) == nil and string.find(GetFP, FP_CampTorchwood) == nil and string.find(GetFP, FP_HillSideOasis) == nil and string.find(GetFP, FP_TwilightsDawn) == nil then
player:SendBroadcastMessage("You Do Not Know Any Flight Paths!")
player:GossipComplete()
--else
pUnit:GossipCreateMenu(50, player, 0)
--if string.find(GetFP, FP_LostRefugee) ~= nil then
pUnit:GossipMenuAddItem(9, "Lost Refugee [Test]", 11, 0)
--end
--if string.find(GetFP, FP_CampTorchwood) ~= nil then
pUnit:GossipMenuAddItem(9, "Camp TourchWood [Test]", 13, 0)
--end
--if string.find(GetFP, FP_HillSideOasis) ~= nil then
pUnit:GossipMenuAddItem(9, "Hillside Oasis [Not Done]", 14, 0)
--end
--if string.find(GetFP, FP_TwilightsDawn) ~= nil then
pUnit:GossipMenuAddItem(9, "Twlight's Dawn [Not Done]", 15, 0)
--end
pUnit:GossipMenuAddItem(9, "Never Mind", 3, 0)
pUnit:GossipSendMenu(player)
--end
end

if (intid == 2) then
player:SendBroadcastMessage("This Is A Flight Master, He Will Let You Fly Anywhere that you have discovered!")
player:GossipComplete()
end

if (intid == 3) then
player:GossipComplete()
end
--[[



Below Is Where Flight Paths Begins



--]]

if (intid == 10) then ---Blinded-Soul Mall
player:SendBroadcastMessage("Not Completed Yet.")
player:GossipComplete()
end

if (intid == 11) then -- Lost Refugee
    if (HordeEncampment_GetRefresh < os.time()) then
	local GetTimePlusFive = os.time() + 4
	    WorldDBQuery("UPDATE flight_masters_area SET Refresh_Time='"..GetTimePlusFive.."' WHERE Area_Name = 'Horde Encampment' LIMIT 1;", 0)
		HordeEncampToLostRefugee = LuaTaxi:CreateTaxi()
		HordeEncampToLostRefugee:AddPathNode(1, Node19X, Node19Y, Node19Z)
		HordeEncampToLostRefugee:AddPathNode(1, Node20X, Node20Y, Node20Z)
		HordeEncampToLostRefugee:AddPathNode(1, Node21X, Node21Y, Node21Z)
		HordeEncampToLostRefugee:AddPathNode(1, Node22X, Node22Y, Node22Z)
		HordeEncampToLostRefugee:AddPathNode(1, Node23X, Node23Y, Node23Z)
		HordeEncampToLostRefugee:AddPathNode(1, Node24X, Node24Y, Node24Z)
		HordeEncampToLostRefugee:AddPathNode(1, Node25X, Node25Y, Node25Z)
		HordeEncampToLostRefugee:AddPathNode(1, Node26X, Node26Y, Node26Z)
		HordeEncampToLostRefugee:AddPathNode(1, Node27X, Node27Y, Node27Z)
		HordeEncampToLostRefugee:AddPathNode(1, Node28X, Node28Y, Node28Z)
		HordeEncampToLostRefugee:AddPathNode(1, Node29X, Node29Y, Node29Z)
		player:StartTaxi(HordeEncampToLostRefugee, 17699)
		player:GossipComplete()
	else
	local GetSeconds = HordeEncampment_GetRefresh - os.time()
	player:SendBroadcastMessage("Refreshing Nodes, You Must Wait "..GetSeconds.." Seconds!")
	player:GossipComplete()
	end
end

--[[
12 Skipped, 12 = Horde Encampment
--]]

if (intid == 13) then -- Camp Torchwood
    if (HordeEncampment_GetRefresh < os.time()) then
	local GetTimePlusFive = os.time() + 4
	    WorldDBQuery("UPDATE flight_masters_area SET Refresh_Time='"..GetTimePlusFive.."' WHERE Area_Name = 'Horde Encampment' LIMIT 1;", 0)
		HordeEncampToLostRefugee = LuaTaxi:CreateTaxi()
		HordeEncampToLostRefugee:AddPathNode(1, Node19X, Node19Y, Node19Z)
		HordeEncampToLostRefugee:AddPathNode(1, Node31X, Node31Y, Node31Z)
		HordeEncampToLostRefugee:AddPathNode(1, Node32X, Node32Y, Node32Z)
		HordeEncampToLostRefugee:AddPathNode(1, Node33X, Node33Y, Node33Z)
		HordeEncampToLostRefugee:AddPathNode(1, Node34X, Node34Y, Node34Z)
		HordeEncampToLostRefugee:AddPathNode(1, Node35X, Node35Y, Node35Z)
		HordeEncampToLostRefugee:AddPathNode(1, Node36X, Node36Y, Node36Z)
		HordeEncampToLostRefugee:AddPathNode(1, Node37X, Node37Y, Node37Z)
		HordeEncampToLostRefugee:AddPathNode(1, Node38X, Node38Y, Node38Z)
		player:StartTaxi(HordeEncampToLostRefugee, 17699)
		player:GossipComplete()
	else
	local GetSeconds = HordeEncampment_GetRefresh - os.time()
	player:SendBroadcastMessage("Refreshing Nodes, You Must Wait "..GetSeconds.." Seconds!")
	player:GossipComplete()
	end
end

if (intid == 14) then -- Hillside Oasis
if (player:DealGoldCost(100000) == true) then
local FlyTo = "Hillside Oasis"
player:SetPlayerLock(true)
player:SetMovementType(768)
player:SetMovementFlags(2)
SpecialFlags = "Flying"
player:SetMount(17699)
local NextWaypoint = 567
local GoingToWaypoint = 775
local SetDelay = os.time()+1 --- 1 second
local GetNextX = WorldDBQuery("SELECT position_x FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
local GetNextY = WorldDBQuery("SELECT position_y FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
local GetNextZ = WorldDBQuery("SELECT position_z FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
local GetNextO = WorldDBQuery("SELECT orientation FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
player:MovePlayerTo(GetNextX, GetNextY, GetNextZ, GetNextO, 12288, 1)
player:SendBroadcastMessage("[Flight Path] Arrival Time: 35 Seconds")
CharDBQuery("UPDATE characters_flight_data SET flying_from='"..FlyFrom.."', special_flags='"..SpecialFlags.."', flying_to='"..FlyTo.."', waypoint='"..GoingToWaypoint.."', is_flying='1', delay='"..SetDelay.."' WHERE name = '"..PlayerName.."' LIMIT 1;", 0)
player:GossipComplete()
else
player:SendBroadcastMessage("You Do Not Have 10 Gold!")
player:GossipComplete()
end
end

if (intid == 15) then -- Neatral City
if (player:DealGoldCost(150000) == true) then
local FlyTo = "Twlights Dawn"
player:SetPlayerLock(true)
player:SetMovementType(768)
player:SetMovementFlags(2)
SpecialFlags = "Flying"
player:SetMount(17699)
local NextWaypoint = 567
local GoingToWaypoint = 775
local SetDelay = os.time()+1 --- 1 second
local GetNextX = WorldDBQuery("SELECT position_x FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
local GetNextY = WorldDBQuery("SELECT position_y FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
local GetNextZ = WorldDBQuery("SELECT position_z FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
local GetNextO = WorldDBQuery("SELECT orientation FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
player:MovePlayerTo(GetNextX, GetNextY, GetNextZ, GetNextO, 12288, 1)
player:SendBroadcastMessage("[Flight Path] Arrival Time: 35 Seconds")
CharDBQuery("UPDATE characters_flight_data SET flying_from='"..FlyFrom.."', special_flags='"..SpecialFlags.."', flying_to='"..FlyTo.."', waypoint='"..GoingToWaypoint.."', is_flying='1', delay='"..SetDelay.."' WHERE name = '"..PlayerName.."' LIMIT 1;", 0)
player:GossipComplete()
else
player:SendBroadcastMessage("You Do Not Have 15 Gold!")
player:GossipComplete()
end
end
end

RegisterUnitGossipEvent(77653, 1, "Horde_Encamp_Flight_Master_OnGossipTalk")
RegisterUnitGossipEvent(77653, 2, "Horde_Encamp_Flight_Master_OnGossipSelect")

--[[
======================================================================================

                         Horde Encampment Flight Master
                                   END

======================================================================================

                      Camp Torchwood Flight Master
                                  START

======================================================================================
--]]
function Camp_Torchwood_Flight_Master_OnGossipTalk(pUnit, event, player, pMisc)
local PlayerName = player:GetName()
local NewFP = "Camp Torchwood"
local GetFP = CharDBQuery("SELECT flight_masters FROM characters_flight_masters_discovered WHERE name = '"..PlayerName.."'", 0):GetColumn(0):GetString()
player:Dismount()
------===========--------
if string.find(GetFP, NewFP) == nil then
CharDBQuery("UPDATE characters_flight_masters_discovered SET flight_masters='"..GetFP..NewFP..", ' WHERE name = '"..PlayerName.."'", 0)
player:SendBroadcastMessage("You Have Discovered A New Flight Path: \124c0033FF33"..NewFP.."\124r!")
player:SendAreaTriggerMessage("Flight Path Discovered: \124c0033FF33"..NewFP.."\124r!")
player:PlaySoundToPlayer(12891)
player:CastSpell(836)
else
CampTorchwood_Timer = WorldDBQuery("SELECT * FROM flight_masters_area WHERE Area_Name = 'Camp Torchwood'", 0)
CampTorchwood_GetRefresh = CampTorchwood_Timer:GetColumn(1):GetLong()
---------=========------
pUnit:GossipCreateMenu(50, player, 0)
pUnit:GossipMenuAddItem(9, "Show Me Where I Can fly.", 1, 0)
pUnit:GossipMenuAddItem(9, "Who Are You?", 2, 0)
pUnit:GossipMenuAddItem(9, "Never Mind", 3, 0)
pUnit:GossipSendMenu(player)
end
end

function Camp_Torchwood_Flight_Master_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
local PlayerName = player:GetName()
local GetFP = CharDBQuery("SELECT flight_masters FROM characters_flight_masters_discovered WHERE name = '"..PlayerName.."'", 0):GetColumn(0):GetString()
local FlyFrom = "Camp Torchwood"
if (intid == 1) then
--if string.find(GetFP, FP_LostRefugee) == nil and string.find(GetFP, FP_HordeEncamp) == nil and string.find(GetFP, FP_HillSideOasis) == nil and string.find(GetFP, FP_TwilightsDawn) == nil then
player:SendBroadcastMessage("You Do Not Know Any Flight Paths!")
player:GossipComplete()
--else
pUnit:GossipCreateMenu(50, player, 0)
--if string.find(GetFP, FP_LostRefugee) ~= nil then
pUnit:GossipMenuAddItem(9, "Lost Refugee [Not Done]", 11, 0)
--end
--if string.find(GetFP, FP_HordeEncamp) ~= nil then
pUnit:GossipMenuAddItem(9, "Horde Encampment [Test]", 12, 0)
--end
--if string.find(GetFP, FP_HillSideOasis) ~= nil then
pUnit:GossipMenuAddItem(9, "Hillside Oasis [Not Done]", 14, 0)
--end
--if string.find(GetFP, FP_TwilightsDawn) ~= nil then
pUnit:GossipMenuAddItem(9, "Twlight's Dawn [Not Done]", 15, 0)
--end
pUnit:GossipMenuAddItem(9, "Never Mind", 3, 0)
pUnit:GossipSendMenu(player)
--end
end

if (intid == 2) then
player:SendBroadcastMessage("This Is A Flight Master, He Will Let You Fly Anywhere that you have discovered!")
player:GossipComplete()
end

if (intid == 3) then
player:GossipComplete()
end

--[[



Below Is Where Flight Paths Begins



--]]

if (intid == 10) then ---Blinded-Soul Mall
player:SendBroadcastMessage("Not Completed Yet.")
player:GossipComplete()
end

if (intid == 11) then -- Lost Refugee
if (player:DealGoldCost(100000) == true) then
local FlyTo = "Lost Refugee"
player:SetPlayerLock(true)
player:SetMovementType(768)
player:SetMovementFlags(2)
SpecialFlags = "Flying"
player:SetMount(17699)
local NextWaypoint = 787
local GoingToWaypoint = 788
local SetDelay = os.time()+1 --- 1 second
local GetNextX = WorldDBQuery("SELECT position_x FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
local GetNextY = WorldDBQuery("SELECT position_y FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
local GetNextZ = WorldDBQuery("SELECT position_z FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
local GetNextO = WorldDBQuery("SELECT orientation FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
player:MovePlayerTo(GetNextX, GetNextY, GetNextZ, GetNextO, 12288, 1)
player:SendBroadcastMessage("[Flight Path] Arrival Time: 30 Seconds")
CharDBQuery("UPDATE characters_flight_data SET flying_from='"..FlyFrom.."', special_flags='"..SpecialFlags.."', flying_to='"..FlyTo.."', waypoint='"..GoingToWaypoint.."', is_flying='1', delay='"..SetDelay.."' WHERE name = '"..PlayerName.."' LIMIT 1;", 0)
player:GossipComplete()
else
player:SendBroadcastMessage("You Do Not Have 10 Gold!")
player:GossipComplete()
end
end

if (intid == 12) then -- Horde Encampment
    if (CampTorchwood_GetRefresh < os.time()) then
	local GetTimePlusFive = os.time() + 4
	    WorldDBQuery("UPDATE flight_masters_area SET Refresh_Time='"..GetTimePlusFive.."' WHERE Area_Name = 'Camp Torchwood' LIMIT 1;", 0)
		CampTorchwoodToHordeEncamp = LuaTaxi:CreateTaxi()
		CampTorchwoodToHordeEncamp:AddPathNode(1, Node39X, Node39Y, Node39Z)
		CampTorchwoodToHordeEncamp:AddPathNode(1, Node40X, Node40Y, Node40Z)
		CampTorchwoodToHordeEncamp:AddPathNode(1, Node41X, Node41Y, Node41Z)
		CampTorchwoodToHordeEncamp:AddPathNode(1, Node42X, Node42Y, Node42Z)
		CampTorchwoodToHordeEncamp:AddPathNode(1, Node43X, Node43Y, Node43Z)
		CampTorchwoodToHordeEncamp:AddPathNode(1, Node44X, Node44Y, Node44Z)
		CampTorchwoodToHordeEncamp:AddPathNode(1, Node45X, Node45Y, Node45Z)
		CampTorchwoodToHordeEncamp:AddPathNode(1, Node46X, Node46Y, Node46Z)
		CampTorchwoodToHordeEncamp:AddPathNode(1, Node47X, Node47Y, Node47Z)
		CampTorchwoodToHordeEncamp:AddPathNode(1, Node48X, Node48Y, Node48Z)
        CampTorchwoodToHordeEncamp:AddPathNode(1, Node49X, Node49Y, Node49Z)
		player:StartTaxi(CampTorchwoodToHordeEncamp, 17699, 1000)
		player:GossipComplete()
	else
	local GetSeconds = CampTorchwood_GetRefresh - os.time()
	player:SendBroadcastMessage("Refreshing Nodes, You Must Wait "..GetSeconds.." Seconds!")
	player:GossipComplete()
	end
end

--[[
13 Skipped, 13 = Camp Torchwood
--]]

if (intid == 14) then -- Hillside Oasis
if (player:DealGoldCost(50000) == true) then
local FlyTo = "Hillside Oasis"
player:SetPlayerLock(true)
player:SetMovementType(768)
player:SetMovementFlags(2)
SpecialFlags = "Flying"
player:SetMount(17699)
local NextWaypoint = 787
local GoingToWaypoint = 788
local SetDelay = os.time()+1 --- 1 second
local GetNextX = WorldDBQuery("SELECT position_x FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
local GetNextY = WorldDBQuery("SELECT position_y FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
local GetNextZ = WorldDBQuery("SELECT position_z FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
local GetNextO = WorldDBQuery("SELECT orientation FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
player:MovePlayerTo(GetNextX, GetNextY, GetNextZ, GetNextO, 12288, 1)
player:SendBroadcastMessage("[Flight Path] Arrival Time: 35 Seconds")
CharDBQuery("UPDATE characters_flight_data SET flying_from='"..FlyFrom.."', special_flags='"..SpecialFlags.."', flying_to='"..FlyTo.."', waypoint='"..GoingToWaypoint.."', is_flying='1', delay='"..SetDelay.."' WHERE name = '"..PlayerName.."' LIMIT 1;", 0)
player:GossipComplete()
else
player:SendBroadcastMessage("You Do Not Have 5 Gold!")
player:GossipComplete()
end
end

if (intid == 15) then -- Neatral City
if (player:DealGoldCost(100000) == true) then
local FlyTo = "Twlights Dawn"
player:SetPlayerLock(true)
player:SetMovementType(768)
player:SetMovementFlags(2)
SpecialFlags = "Flying"
player:SetMount(17699)
local NextWaypoint = 787
local GoingToWaypoint = 788
local SetDelay = os.time()+1 --- 1 second
local GetNextX = WorldDBQuery("SELECT position_x FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
local GetNextY = WorldDBQuery("SELECT position_y FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
local GetNextZ = WorldDBQuery("SELECT position_z FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
local GetNextO = WorldDBQuery("SELECT orientation FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
player:MovePlayerTo(GetNextX, GetNextY, GetNextZ, GetNextO, 12288, 1)
player:SendBroadcastMessage("[Flight Path] Arrival Time: 35 Seconds")
CharDBQuery("UPDATE characters_flight_data SET flying_from='"..FlyFrom.."', special_flags='"..SpecialFlags.."', flying_to='"..FlyTo.."', waypoint='"..GoingToWaypoint.."', is_flying='1', delay='"..SetDelay.."' WHERE name = '"..PlayerName.."' LIMIT 1;", 0)
player:GossipComplete()
else
player:SendBroadcastMessage("You Do Not Have 10 Gold!")
player:GossipComplete()
end
end
end

RegisterUnitGossipEvent(77654, 1, "Camp_Torchwood_Flight_Master_OnGossipTalk")
RegisterUnitGossipEvent(77654, 2, "Camp_Torchwood_Flight_Master_OnGossipSelect")
--[[
======================================================================================

                         Camp Torchwood Flight Master
                                   END

======================================================================================

                      Hillside Oasis Flight Master
                                  START

======================================================================================
--]]
function Hillside_Oasis_Flight_Master_OnGossipTalk(pUnit, event, player, pMisc)
local PlayerName = player:GetName()
local NewFP = "Hillside Oasis"
local GetFP = CharDBQuery("SELECT flight_masters FROM characters_flight_masters_discovered WHERE name = '"..PlayerName.."'", 0):GetColumn(0):GetString()
player:Dismount()
------===========--------
if string.find(GetFP, NewFP) == nil then
CharDBQuery("UPDATE characters_flight_masters_discovered SET flight_masters='"..GetFP..NewFP..", ' WHERE name = '"..PlayerName.."'", 0)
player:SendBroadcastMessage("You Have Discovered A New Flight Path: \124c0033FF33"..NewFP.."\124r!")
player:SendAreaTriggerMessage("Flight Path Discovered: \124c0033FF33"..NewFP.."\124r!")
player:PlaySoundToPlayer(12891)
player:CastSpell(836)
else
---------=========------
pUnit:GossipCreateMenu(50, player, 0)
pUnit:GossipMenuAddItem(9, "Show Me Where I Can fly.", 1, 0)
pUnit:GossipMenuAddItem(9, "Who Are You?", 2, 0)
pUnit:GossipMenuAddItem(9, "Never Mind", 3, 0)
pUnit:GossipSendMenu(player)
end
end

function Hillside_Oasis_Flight_Master_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
local PlayerName = player:GetName()
local GetFP = CharDBQuery("SELECT flight_masters FROM characters_flight_masters_discovered WHERE name = '"..PlayerName.."'", 0):GetColumn(0):GetString()
local FlyFrom = "Hillside Oasis"
if (intid == 1) then
if string.find(GetFP, FP_LostRefugee) == nil and string.find(GetFP, FP_HordeEncamp) == nil and string.find(GetFP, FP_CampTorchwood) == nil and string.find(GetFP, FP_TwilightsDawn) == nil then
player:SendBroadcastMessage("You Do Not Know Any Flight Paths!")
player:GossipComplete()
else
pUnit:GossipCreateMenu(50, player, 0)
if string.find(GetFP, FP_LostRefugee) ~= nil then
pUnit:GossipMenuAddItem(9, "Lost Refugee [15 Gold]", 11, 0)
end
if string.find(GetFP, FP_HordeEncamp) ~= nil then
pUnit:GossipMenuAddItem(9, "Horde Encampment [10 Gold]", 12, 0)
end
if string.find(GetFP, FP_CampTorchwood) ~= nil then
pUnit:GossipMenuAddItem(9, "Camp Torchwood [5 Gold]", 13, 0)
end
if string.find(GetFP, FP_TwilightsDawn) ~= nil then
pUnit:GossipMenuAddItem(9, "Twilight's Dawn [5 Gold]", 15, 0)
end
pUnit:GossipMenuAddItem(9, "Never Mind", 3, 0)
pUnit:GossipSendMenu(player)
end
end

if (intid == 2) then
player:SendBroadcastMessage("This Is A Flight Master, He Will Let You Fly Anywhere that you have discovered!")
player:GossipComplete()
end

if (intid == 3) then
player:GossipComplete()
end

--[[



Below Is Where Flight Paths Begins



--]]

if (intid == 10) then ---Blinded-Soul Mall
player:SendBroadcastMessage("Not Completed Yet.")
player:GossipComplete()
end

if (intid == 11) then -- Lost Refugee
if (player:DealGoldCost(150000) == true) then
local FlyTo = "Lost Refugee"
player:SetPlayerLock(true)
player:SetMovementType(768)
player:SetMovementFlags(2)
SpecialFlags = "Flying"
player:SetMount(17699)
local NextWaypoint = 813
local GoingToWaypoint = 814
local SetDelay = os.time()+1 --- 1 second
local GetNextX = WorldDBQuery("SELECT position_x FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
local GetNextY = WorldDBQuery("SELECT position_y FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
local GetNextZ = WorldDBQuery("SELECT position_z FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
local GetNextO = WorldDBQuery("SELECT orientation FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
player:MovePlayerTo(GetNextX, GetNextY, GetNextZ, GetNextO, 12288, 1)
player:SendBroadcastMessage("[Flight Path] Arrival Time: 30 Seconds")
CharDBQuery("UPDATE characters_flight_data SET flying_from='"..FlyFrom.."', special_flags='"..SpecialFlags.."', flying_to='"..FlyTo.."', waypoint='"..GoingToWaypoint.."', is_flying='1', delay='"..SetDelay.."' WHERE name = '"..PlayerName.."' LIMIT 1;", 0)
player:GossipComplete()
else
player:SendBroadcastMessage("You Do Not Have 10 Gold!")
player:GossipComplete()
end
end

if (intid == 12) then -- Horde Encampment
if (player:DealGoldCost(100000) == true) then
local FlyTo = "Horde Encampment"
player:SetPlayerLock(true)
player:SetMovementType(768)
player:SetMovementFlags(2)
SpecialFlags = "Flying"
player:SetMount(17699)
local NextWaypoint = 813
local GoingToWaypoint = 814
local SetDelay = os.time()+1 --- 1 second
local GetNextX = WorldDBQuery("SELECT position_x FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
local GetNextY = WorldDBQuery("SELECT position_y FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
local GetNextZ = WorldDBQuery("SELECT position_z FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
local GetNextO = WorldDBQuery("SELECT orientation FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
player:MovePlayerTo(GetNextX, GetNextY, GetNextZ, GetNextO, 12288, 1)
player:SendBroadcastMessage("[Flight Path] Arrival Time: 35 Seconds")
CharDBQuery("UPDATE characters_flight_data SET flying_from='"..FlyFrom.."', special_flags='"..SpecialFlags.."', flying_to='"..FlyTo.."', waypoint='"..GoingToWaypoint.."', is_flying='1', delay='"..SetDelay.."' WHERE name = '"..PlayerName.."' LIMIT 1;", 0)
player:GossipComplete()
else
player:SendBroadcastMessage("You Do Not Have 5 Gold!")
player:GossipComplete()
end
end

if (intid == 13) then -- Camp Torchwood
if (player:DealGoldCost(50000) == true) then
local FlyTo = "Camp Torchwood"
player:SetPlayerLock(true)
player:SetMovementType(768)
player:SetMovementFlags(2)
SpecialFlags = "Flying"
player:SetMount(17699)
local NextWaypoint = 813
local GoingToWaypoint = 814
local SetDelay = os.time()+1 --- 1 second
local GetNextX = WorldDBQuery("SELECT position_x FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
local GetNextY = WorldDBQuery("SELECT position_y FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
local GetNextZ = WorldDBQuery("SELECT position_z FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
local GetNextO = WorldDBQuery("SELECT orientation FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
player:MovePlayerTo(GetNextX, GetNextY, GetNextZ, GetNextO, 12288, 1)
player:SendBroadcastMessage("[Flight Path] Arrival Time: 35 Seconds")
CharDBQuery("UPDATE characters_flight_data SET flying_from='"..FlyFrom.."', special_flags='"..SpecialFlags.."', flying_to='"..FlyTo.."', waypoint='"..GoingToWaypoint.."', is_flying='1', delay='"..SetDelay.."' WHERE name = '"..PlayerName.."' LIMIT 1;", 0)
player:GossipComplete()
else
player:SendBroadcastMessage("You Do Not Have 5 Gold!")
player:GossipComplete()
end
end

--[[
14 Skipped, 14 = Hillside Oasis
--]]

if (intid == 15) then -- Twilights Dawn
if (player:DealGoldCost(50000) == true) then
local FlyTo = "Twlights Dawn"
player:SetPlayerLock(true)
player:SetMovementType(768)
player:SetMovementFlags(2)
SpecialFlags = "Flying"
player:SetMount(17699)
local NextWaypoint = 813
local GoingToWaypoint = 863
local SetDelay = os.time()+1 --- 1 second
local GetNextX = WorldDBQuery("SELECT position_x FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
local GetNextY = WorldDBQuery("SELECT position_y FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
local GetNextZ = WorldDBQuery("SELECT position_z FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
local GetNextO = WorldDBQuery("SELECT orientation FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
player:MovePlayerTo(GetNextX, GetNextY, GetNextZ, GetNextO, 12288, 1)
player:SendBroadcastMessage("[Flight Path] Arrival Time: 35 Seconds")
CharDBQuery("UPDATE characters_flight_data SET flying_from='"..FlyFrom.."', special_flags='"..SpecialFlags.."', flying_to='"..FlyTo.."', waypoint='"..GoingToWaypoint.."', is_flying='1', delay='"..SetDelay.."' WHERE name = '"..PlayerName.."' LIMIT 1;", 0)
player:GossipComplete()
else
player:SendBroadcastMessage("You Do Not Have 5 Gold!")
player:GossipComplete()
end
end
end

RegisterUnitGossipEvent(77655, 1, "Hillside_Oasis_Flight_Master_OnGossipTalk")
RegisterUnitGossipEvent(77655, 2, "Hillside_Oasis_Flight_Master_OnGossipSelect")
--[[
======================================================================================

                         Camp Torchwood Flight Master
                                   END

======================================================================================

                      Hillside Oasis Flight Master
                                  START

======================================================================================
--]]
function Twilights_Dawn_Horde_Flight_Master_OnGossipTalk(pUnit, event, player, pMisc)
local PlayerName = player:GetName()
local NewFP = "Twilights Dawn"
local GetFP = CharDBQuery("SELECT flight_masters FROM characters_flight_masters_discovered WHERE name = '"..PlayerName.."'", 0):GetColumn(0):GetString()
player:Dismount()
------===========--------
if string.find(GetFP, NewFP) == nil then
CharDBQuery("UPDATE characters_flight_masters_discovered SET flight_masters='"..GetFP..NewFP..", ' WHERE name = '"..PlayerName.."'", 0)
player:SendBroadcastMessage("You Have Discovered A New Flight Path: \124c0033FF33"..NewFP.."\124r!")
player:SendAreaTriggerMessage("Flight Path Discovered: \124c0033FF33"..NewFP.."\124r!")
player:PlaySoundToPlayer(12891)
player:CastSpell(836)
else
---------=========------
pUnit:GossipCreateMenu(50, player, 0)
pUnit:GossipMenuAddItem(9, "Show Me Where I Can fly.", 1, 0)
pUnit:GossipMenuAddItem(9, "Who Are You?", 2, 0)
pUnit:GossipMenuAddItem(9, "Never Mind", 3, 0)
pUnit:GossipSendMenu(player)
end
end

function Twilights_Dawn_Horde_Flight_Master_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
local PlayerName = player:GetName()
local GetFP = CharDBQuery("SELECT flight_masters FROM characters_flight_masters_discovered WHERE name = '"..PlayerName.."'", 0):GetColumn(0):GetString()
local FlyFrom = "Twilights Dawn"
if (intid == 1) then
if string.find(GetFP, FP_LostRefugee) == nil and string.find(GetFP, FP_HordeEncamp) == nil and string.find(GetFP, FP_CampTorchwood) == nil and string.find(GetFP, FP_HillSideOasis) == nil then
player:SendBroadcastMessage("You Do Not Know Any Flight Paths!")
player:GossipComplete()
else
pUnit:GossipCreateMenu(50, player, 0)
if string.find(GetFP, FP_LostRefugee) ~= nil then
pUnit:GossipMenuAddItem(9, "Lost Refugee [20 Gold]", 11, 0)
end
if string.find(GetFP, FP_HordeEncamp) ~= nil then
pUnit:GossipMenuAddItem(9, "Horde Encampment [15 Gold]", 12, 0)
end
if string.find(GetFP, FP_CampTorchwood) ~= nil then
pUnit:GossipMenuAddItem(9, "Camp Torchwood [10 Gold]", 13, 0)
end
if string.find(GetFP, FP_HillSideOasis) ~= nil then
pUnit:GossipMenuAddItem(9, "Hillside Oasis [5 Gold]", 14, 0)
end
pUnit:GossipMenuAddItem(9, "Never Mind", 3, 0)
pUnit:GossipSendMenu(player)
end
end

if (intid == 2) then
player:SendBroadcastMessage("This Is A Flight Master, He Will Let You Fly Anywhere that you have discovered!")
player:GossipComplete()
end

if (intid == 3) then
player:GossipComplete()
end

--[[



Below Is Where Flight Paths Begins



--]]

if (intid == 10) then ---Blinded-Soul Mall
local FlyTo = "Blinded-Soul Mall"
player:SetPlayerLock(true)
player:SetMovementType(768)
player:SetMovementFlags(2)
SpecialFlags = "Flying"
player:SetMount(17699)
local NextWaypoint = 837
local GoingToWaypoint = 838
local SetDelay = os.time()+1 --- 1 second
local GetNextX = WorldDBQuery("SELECT position_x FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
local GetNextY = WorldDBQuery("SELECT position_y FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
local GetNextZ = WorldDBQuery("SELECT position_z FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
local GetNextO = WorldDBQuery("SELECT orientation FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
player:MovePlayerTo(GetNextX, GetNextY, GetNextZ, GetNextO, 12288, 1)
player:SendBroadcastMessage("[Flight Path] Arrival Time: 30 Seconds")
CharDBQuery("UPDATE characters_flight_data SET flying_from='"..FlyFrom.."', special_flags='"..SpecialFlags.."', flying_to='"..FlyTo.."', waypoint='"..GoingToWaypoint.."', is_flying='1', delay='"..SetDelay.."' WHERE name = '"..PlayerName.."' LIMIT 1;", 0)
player:GossipComplete()
end

if (intid == 11) then -- Lost Refugee
if (player:DealGoldCost(200000) == true) then
local FlyTo = "Lost Refugee"
player:SetPlayerLock(true)
player:SetMovementType(768)
player:SetMovementFlags(2)
SpecialFlags = "Flying"
player:SetMount(17699)
local NextWaypoint = 837
local GoingToWaypoint = 838
local SetDelay = os.time()+1 --- 1 second
local GetNextX = WorldDBQuery("SELECT position_x FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
local GetNextY = WorldDBQuery("SELECT position_y FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
local GetNextZ = WorldDBQuery("SELECT position_z FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
local GetNextO = WorldDBQuery("SELECT orientation FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
player:MovePlayerTo(GetNextX, GetNextY, GetNextZ, GetNextO, 12288, 1)
player:SendBroadcastMessage("[Flight Path] Arrival Time: 30 Seconds")
CharDBQuery("UPDATE characters_flight_data SET flying_from='"..FlyFrom.."', special_flags='"..SpecialFlags.."', flying_to='"..FlyTo.."', waypoint='"..GoingToWaypoint.."', is_flying='1', delay='"..SetDelay.."' WHERE name = '"..PlayerName.."' LIMIT 1;", 0)
player:GossipComplete()
else
player:SendBroadcastMessage("You Do Not Have 20 Gold!")
player:GossipComplete()
end
end

if (intid == 12) then -- Horde Encampment
if (player:DealGoldCost(150000) == true) then
local FlyTo = "Horde Encampment"
player:SetPlayerLock(true)
player:SetMovementType(768)
player:SetMovementFlags(2)
SpecialFlags = "Flying"
player:SetMount(17699)
local NextWaypoint = 837
local GoingToWaypoint = 838
local SetDelay = os.time()+1 --- 1 second
local GetNextX = WorldDBQuery("SELECT position_x FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
local GetNextY = WorldDBQuery("SELECT position_y FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
local GetNextZ = WorldDBQuery("SELECT position_z FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
local GetNextO = WorldDBQuery("SELECT orientation FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
player:MovePlayerTo(GetNextX, GetNextY, GetNextZ, GetNextO, 12288, 1)
player:SendBroadcastMessage("[Flight Path] Arrival Time: 35 Seconds")
CharDBQuery("UPDATE characters_flight_data SET flying_from='"..FlyFrom.."', special_flags='"..SpecialFlags.."', flying_to='"..FlyTo.."', waypoint='"..GoingToWaypoint.."', is_flying='1', delay='"..SetDelay.."' WHERE name = '"..PlayerName.."' LIMIT 1;", 0)
player:GossipComplete()
else
player:SendBroadcastMessage("You Do Not Have 15 Gold!")
player:GossipComplete()
end
end

if (intid == 13) then -- Camp Torchwood
if (player:DealGoldCost(100000) == true) then
local FlyTo = "Camp Torchwood"
player:SetPlayerLock(true)
player:SetMovementType(768)
player:SetMovementFlags(2)
SpecialFlags = "Flying"
player:SetMount(17699)
local NextWaypoint = 837
local GoingToWaypoint = 838
local SetDelay = os.time()+1 --- 1 second
local GetNextX = WorldDBQuery("SELECT position_x FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
local GetNextY = WorldDBQuery("SELECT position_y FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
local GetNextZ = WorldDBQuery("SELECT position_z FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
local GetNextO = WorldDBQuery("SELECT orientation FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
player:MovePlayerTo(GetNextX, GetNextY, GetNextZ, GetNextO, 12288, 1)
player:SendBroadcastMessage("[Flight Path] Arrival Time: 35 Seconds")
CharDBQuery("UPDATE characters_flight_data SET flying_from='"..FlyFrom.."', special_flags='"..SpecialFlags.."', flying_to='"..FlyTo.."', waypoint='"..GoingToWaypoint.."', is_flying='1', delay='"..SetDelay.."' WHERE name = '"..PlayerName.."' LIMIT 1;", 0)
player:GossipComplete()
else
player:SendBroadcastMessage("You Do Not Have 10 Gold!")
player:GossipComplete()
end
end

if (intid == 14) then -- Hillside Oasis
if (player:DealGoldCost(50000) == true) then ---Costs 50000 Copper [5 Gold]
local FlyTo = "Hillside Oasis"
player:SetPlayerLock(true)
player:SetMovementType(768)
player:SetMovementFlags(2)
SpecialFlags = "Flying"
player:SetMount(17699)
local NextWaypoint = 837
local GoingToWaypoint = 838
local SetDelay = os.time()+1 --- 1 second
local GetNextX = WorldDBQuery("SELECT position_x FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
local GetNextY = WorldDBQuery("SELECT position_y FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
local GetNextZ = WorldDBQuery("SELECT position_z FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
local GetNextO = WorldDBQuery("SELECT orientation FROM creature_spawns WHERE id = '"..NextWaypoint.."'", 0):GetColumn(0):GetString()
player:MovePlayerTo(GetNextX, GetNextY, GetNextZ, GetNextO, 12288, 1)
player:SendBroadcastMessage("[Flight Path] Arrival Time: 35 Seconds")
CharDBQuery("UPDATE characters_flight_data SET flying_from='"..FlyFrom.."', special_flags='"..SpecialFlags.."', flying_to='"..FlyTo.."', waypoint='"..GoingToWaypoint.."', is_flying='1', delay='"..SetDelay.."' WHERE name = '"..PlayerName.."' LIMIT 1;", 0)
player:GossipComplete()
else
player:SendBroadcastMessage("You Do Not Have 5 Gold!")
player:GossipComplete()
end
end
--[[
15 Skipped, 15 = Twilights Dawn
--]]
end

RegisterUnitGossipEvent(77656, 1, "Twilights_Dawn_Horde_Flight_Master_OnGossipTalk")
RegisterUnitGossipEvent(77656, 2, "Twilights_Dawn_Horde_Flight_Master_OnGossipSelect")