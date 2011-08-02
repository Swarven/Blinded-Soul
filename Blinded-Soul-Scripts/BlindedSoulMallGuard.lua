local npcid = 0
function BlindedSoulMallDir_OnGossipTalk(pUnit, event, player, pMisc)
if (player:IsInCombat() == true) then
player:SendAreaTriggerMessage("You are in combat!")
else
pUnit:GossipCreateMenu(3544, player, 0)
local race=player:GetPlayerRace()
if race==1 or race==3 or race==4 or race==7 or race==11 then
pUnit:GossipMenuAddItem(3, "I Need Directions Please.", 1, 0)
end
local race=player:GetPlayerRace()
if race==2 or race==5 or race==6 or race==8 or race==10 then
pUnit:GossipMenuAddItem(3, "I Need Directions Please.", 2, 0)
end
pUnit:GossipMenuAddItem(2, "Whats with the Blue Beams?", 3, 0)
pUnit:GossipSendMenu(player)
end
end

function BlindedSoulMallDir_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
if(intid == 999) then
pUnit:GossipCreateMenu(99, player, 0)
local race=player:GetPlayerRace()
if race==1 or race==3 or race==4 or race==7 or race==11 then
pUnit:GossipMenuAddItem(3, "I Need Directions Please.", 1, 0)
end
local race=player:GetPlayerRace()
if race==2 or race==5 or race==6 or race==8 or race==10 then
pUnit:GossipMenuAddItem(3, "I Need Directions Please.", 2, 0)
end
pUnit:GossipMenuAddItem(2, "Whats with the Blue Beams?", 3, 0)
pUnit:GossipSendMenu(player)
end

if(intid == 1) then
pUnit:SendChatMessage(12, 0, "Hello Alliance, Where do you want Direcrtions to?")
pUnit:GossipCreateMenu(99, player, 0)
pUnit:GossipMenuAddItem(1, "The Elevator", 4, 0)
pUnit:GossipMenuAddItem(1, "The Zeppelin Tower", 5, 0)
pUnit:GossipMenuAddItem(1, "The Trainers", 6, 0)
pUnit:GossipMenuAddItem(1, "The L70ETCStage", 20, 0)
pUnit:GossipMenuAddItem(0, "[Back]", 999, 0)
pUnit:GossipSendMenu(player)
end

if(intid == 2) then
pUnit:SendChatMessage(12, 0, "Hello Horde, Where do you want Directions to?")
pUnit:GossipCreateMenu(99, player, 0)
pUnit:GossipMenuAddItem(1, "The Elevator", 21, 0)
pUnit:GossipMenuAddItem(1, "The Zeppelin Tower", 22, 0)
pUnit:GossipMenuAddItem(1, "The Trainers", 23, 0)
pUnit:GossipMenuAddItem(1, "The L70ETC Stage", 37, 0)
pUnit:GossipMenuAddItem(0, "[Back]", 999, 0)
pUnit:GossipSendMenu(player)
end

if(intid == 3) then
pUnit:SendChatMessage(12, 0, "The Blue beams is what keep the giant boulders from falling, if enough of those beams stoped working, the entire upper level will fall!")
pUnit:GossipCreateMenu(99, player, 0)
pUnit:GossipMenuAddItem(4, "[BACK]", 999, 0)
pUnit:GossipSendMenu(player)
end

if (intid == 4) and player~= nil then ----Alliance Elevator
player:GossipSendPOI(player, -1072.643799, 1542.265503, 46, 6, 0, "Elevator")
player:GossipComplete()
   player:SendBroadcastMessage("The Elevator is now located on your minimap!")
   player:SendAreaTriggerMessage("LOOK AT YOUR MINIMAP!")
end

if (intid == 5) and player~= nil then ----Alliance ZEP Tower
player:GossipSendPOI(player, -1043.444092, 1549.465332, 46, 6, 0, "Zeppelin Tower")
player:GossipComplete()
   player:SendBroadcastMessage("The Zeppelin Tower is now located on your minimap! [The Zeppelin Tower is on the 2nd floor!]")
   player:SendAreaTriggerMessage("LOOK AT YOUR MINIMAP!")
end

if (intid == 21) and player~= nil then ----Horde Elevator
player:GossipSendPOI(player, -1072.643799, 1542.265503, 48, 6, 0, "Elevator")
player:GossipComplete()
    player:SendBroadcastMessage("The Elevator is now located on your minimap!")
    player:SendAreaTriggerMessage("LOOK AT YOUR MINIMAP!")
end

if (intid == 22) and player~= nil then ----Horde ZEP Tower
player:GossipSendPOI(player, -1043.444092, 1549.465332, 48, 6, 0, "Zeppelin Tower")
player:GossipComplete()
   player:SendBroadcastMessage("The Zeppelin Tower is now located on your minimap! [The Zeppelin Tower is on the 2nd floor!]")
   player:SendAreaTriggerMessage("LOOK AT YOUR MINIMAP!")
end

if (intid == 6) and player~= nil then ----Alliance Trainers
player:GossipSendPOI(player, -1073.568604, 1580.278320, 46, 6, 0, "Battlemasters")
player:GossipComplete()
   player:SendBroadcastMessage("The Trainers is now located on your minimap! [The Trainers is on the 2nd floor!]")
   player:SendAreaTriggerMessage("LOOK AT YOUR MINIMAP!")
end

if (intid == 20) and player~= nil then ----Alliance L70ETC Stage
player:GossipSendPOI(player, -1135.165894, 1577.692139, 46, 6, 0, "L70ETC Stage")
player:GossipComplete()
   player:SendBroadcastMessage("The L70ETC Stage is now located on your minimap! [The L70ETC Stage is on the 1st floor!]")
   player:SendAreaTriggerMessage("LOOK AT YOUR MINIMAP!")
end

if (intid == 23) and player~= nil then ----Horde Trainers
player:GossipSendPOI(player, -1073.568604, 1580.278320, 48, 6, 0, "Battlemasters")
player:GossipComplete()
   player:SendBroadcastMessage("The Trainers is now located on your minimap! [The Trainers is on the 2nd floor!]")
   player:SendAreaTriggerMessage("LOOK AT YOUR MINIMAP!")
end

if (intid == 37) and player~= nil then ----Horde L70ETC Stage
player:GossipSendPOI(player, -1135.165894, 1577.692139, 48, 6, 0, "L70ETC Stage")
player:GossipComplete()
   player:SendBroadcastMessage("The L70ETC Stage is now located on your minimap! [The L70ETC Stage is on the 1st floor!]")
   player:SendAreaTriggerMessage("LOOK AT YOUR MINIMAP!")
end
end

------------------Instant Kill PVP Players----------------
local GUARD_FEATURE = "Enabled"
local type, pairs = type, pairs;

local function Death_Finger(pUnit, player)
    pUnit:FullCastSpellOnTarget(31984, player)
end

function BlindedSoulMallkillpvpa_OnSpawn(pUnit, Event)
	if (GUARD_FEATURE == "Enabled") then
    pUnit:RegisterEvent("Check_PvP", 1200, 0)
	end
end

function Check_PvP(pUnit, Event, Player)
    local Player_W = pUnit:GetInRangePlayers()

    if (Player_W ~= nil) and (type(Player_W) == "table") then

	for index, player in pairs(Player_W) do
	if (player:IsPlayerAttacking() == true) then
	player:SendAreaTriggerMessage("PVP is Not allowed in the Blinded-Soul Mall! NOW DIE!")
	pUnit:FullCastSpellOnTarget(31984, player)
		end
	end
end
end
-----------------------------------------------------
RegisterUnitEvent(800025, 18, "BlindedSoulMallkillpvpa_OnSpawn")
RegisterUnitGossipEvent(800025, 1, "BlindedSoulMallDir_OnGossipTalk")
RegisterUnitGossipEvent(800025, 2, "BlindedSoulMallDir_OnGossipSelect")
