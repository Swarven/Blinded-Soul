-- ==================== Let's define some stuff ===========================================================
local TLK = 100010
local CaptainID = 100011
local SurvivorID = 10008
local WalkerID = 10009
local FallOffAndTele = 195860
local Captain = nil
local GMGetWorld = GetPlayersInWorld()
--=================--
function HordeStoryTeleport_OnSpawn(pUnit, Event)
pUnit:RegisterEvent("HordeStoryTeleport_Loop", 1000, 0)
end

function HordeStoryTeleport_Loop(pUnit, Event)
local GetInRangePlayers = pUnit:GetInRangePlayers()
for k, GetNilPlayers in pairs(GetInRangePlayers) do
if (GetNilPlayers ~= nil) then
local GetFallingPlayers = pUnit:GetDistanceYards(GetNilPlayers)
if (GetFallingPlayers < 100 ) then
GetNilPlayers:SendBroadcastMessage("Cheater! Get Back Up There!")
GetNilPlayers:Teleport(1, 1269.54, -6019.11, 122)
GetNilPlayers:SetFacing(4.692755)
end
end
end
end

RegisterUnitEvent(FallOffAndTele, 18, "HordeStoryTeleport_OnSpawn")


function HordeStoryTime_OnSpawn(pUnit, Event)
local GetID = pUnit:GetSpawnId()
pUnit:SetFlying() -- Sets the unit to fly.
--pUnit:Land()
--Unit:AddTest(2)
--WorldDBQuery("UPDATE creature_spawns SET CanFly = '2' WHERE id = '"..GetID.."' LIMIT 1;", 0)
Survivor = pUnit
Survivor:SetNPCFlags(1) -- resets flags
end

RegisterUnitEvent(SurvivorID, 18, "HordeStoryTime_OnSpawn")

function HordeStoryCaptain_OnSpawn(pUnit, Event)
local GetID = pUnit:GetSpawnId()
WorldDBQuery("UPDATE creature_spawns SET CanFly = '2' WHERE id = '"..GetID.."' LIMIT 1;", 0)
Captain = pUnit
end

RegisterUnitEvent(CaptainID, 18, "HordeStoryCaptain_OnSpawn")
--=================--
function OrgrimmarStory_OnGossipTalk(pUnit, event, player, pMisc)
   Survivor:GossipCreateMenu(50, player, 0)
   Survivor:GossipMenuAddItem(9, "Where am I?", 1, 0)
   Survivor:GossipMenuAddItem(0, "Im going back to bed.", 2, 0)
   Survivor:GossipSendMenu(player)
end

function OrgrimmarStory_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
if (intid == 1) then
	if Captain == nil then -- Do a check
	Survivor:SpawnCreature(CaptainID, 1268.79, -6040.63, 125.27, 4.681, 35, 0);
	for k, SendGMMessage in pairs(GMGetWorld) do
	if SendGMMessage:IsGm() then
	SendGMMessage:SendBroadcastMessage("\124c00FF3333[LUA ERROR]\124r on \124c0033FF33[HordeStortTimeStart.lua]\124r")
	SendGMMessage:SendBroadcastMessage("\124c00FF3333Error:\124r Captain Was NIL On Start Script (Not Spawned)")
	SendGMMessage:SendBroadcastMessage("\124c00FF3333Status:\124r \124c00BBFFFFRepaired Itself \124r \124c0033FF33[Level: 0]")
	end
	end
	end
    player:SendBroadcastMessage("You Start having terrible Flash-Backs from Orgrimmar")
    player:SendAreaTriggerMessage("You Start having terrible Flash-backs from Orgrimmar")
x = pUnit:GetX()
y = pUnit:GetY()
z = pUnit:GetZ()
o = pUnit:GetO()
pUnit:SpawnCreature(WalkerID, x, y, z, o, 35, 0);
pUnit:Despawn(1,0)
end

if (intid == 2) then
    player:GossipComplete()
    player:SendBroadcastMessage("You walk away, knowing nothing is going to happen untill you talk to him.")
    player:SendAreaTriggerMessage("You walk away, knowing nothing is going to happen untill you talk to him.")
end
end

RegisterUnitGossipEvent(SurvivorID, 1, "OrgrimmarStory_OnGossipTalk")
RegisterUnitGossipEvent(SurvivorID, 2, "OrgrimmarStory_OnGossipSelect")
----Walk And Talk, Just Walk And Talk-----
function HordeStartTimeStart(pUnit, Event)
Walker = pUnit
Walker:SetNPCFlags(0) -- resets flags
Walker:PlaySoundToSet(11708)
Walker:RegisterEvent("HordeStartTimea", 5000, 0)
end

RegisterUnitEvent(WalkerID, 18, "HordeStartTimeStart")

-------================================================================----
function HordeStartTimea(pUnit, Event)
pUnit:RemoveEvents()
       Walker:MoveTo(1269.905518, -6012.689453, 114.563278, 1.542135)
       Walker:SendChatMessage(12, 0, "Its good seeing that you had waken up. Can you remember anything? Orgrimmar has been taken by the Lich king. Sadly, this boat is the only one that made it.")
       Walker:RegisterEvent("HordeStartTimeb", 12000, 0)
end

function HordeStartTimeb(pUnit, Event)
pUnit:RemoveEvents()
       Walker:SendChatMessage(12, 0, "We found you knocked out in Orgrimmar while we retreated, you seem to only have minor injuries.")
       Walker:MoveTo(1265.977783, -6022.860352, 114.403969, 4.5)
       Walker:RegisterEvent("HordeStartTimec", 6000, 0)
end

function HordeStartTimec(pUnit, Event)
pUnit:RemoveEvents()
       Walker:SendChatMessage(12, 0, "As you can see, there isnt many Survivors.")
       Walker:RegisterEvent("HordeStartTimed", 4000, 0)
end
function HordeStartTimed(pUnit, Event)
pUnit:RemoveEvents()
       Walker:SendChatMessage(12, 0, "Let me introduce you to the Captain of the ship.")
       Walker:MoveTo(1265.780151, -6028.758301, 116.193649, 4.6)
       Walker:RegisterEvent("HordeStartTimee", 6000, 0)
end
function HordeStartTimee(pUnit, Event)
pUnit:RemoveEvents()
       Walker:SendChatMessage(12, 0, "He doesnt quite know what to do right now...but we'll find a way.")
       Walker:MoveTo(1269.263184, -6029.102539, 116.186691, 6.184)
       Walker:RegisterEvent("HordeStartTimef", 6000, 0)
end

function HordeStartTimef(pUnit, Event)
pUnit:RemoveEvents()
       Walker:SendChatMessage(12, 0, "Hey Captain A Survivor has awaken.")
       Walker:MoveTo(1269.310547, -6020.925781, 120.210464, 1.5)
       Walker:RegisterEvent("HordeStartTimeg", 6000, 0)
end 
----=======Captain Joins the fun========--
function HordeStartTimeg(pUnit, Event)
pUnit:RemoveEvents()
	   Captain:SendChatMessage(12, 0, "Thank goodness! Come, I made a decision.")
       Walker:MoveTo(1264.833496, -6019.955566, 120.225868, 3)
       Walker:RegisterEvent("HordeStartTimeh", 6000, 0)
end

function HordeStartTimeh(pUnit, Event)
pUnit:RemoveEvents()
	   Captain:MoveTo(1265.354736, -6036.503906, 122.379593, 1.98)
       Walker:MoveTo(1265.194580, -6031.454590, 121.026855, 4.71)
       Walker:RegisterEvent("HordeStartTimei", 6000, 0)
end

function HordeStartTimei(pUnit, Event)
pUnit:RemoveEvents()
	   Captain:MoveTo(1264.880615, -6034.465332, 121.776939, 1.63)
       Walker:SendChatMessage(12, 0, "What are your orders Captain?")
       Walker:RegisterEvent("HordeStartTimej", 3000, 0)
end


function HordeStartTimej(pUnit, Event)
pUnit:RemoveEvents()
	   Captain:SendChatMessage(12, 0, "Im afraid going to Thunder Bluff can be dangerous...Who knows if the Lich King will strike there.")
       Walker:RegisterEvent("HordeStartTimek", 4000, 0)
end

function HordeStartTimek(pUnit, Event)
pUnit:RemoveEvents()
	   Walker:SendChatMessage(12, 0, "I see...but where else would we go sir?")
       Walker:RegisterEvent("HordeStartTimel", 3000, 0)
end

function HordeStartTimel(pUnit, Event)
pUnit:RemoveEvents()
	   Captain:SendChatMessage(12, 0, "Theres only one other place we can go for a time like this...")
       Walker:RegisterEvent("HordeStartTimem", 4500, 0)
end

function HordeStartTimem(pUnit, Event)
pUnit:RemoveEvents()
       Captain:SendChatMessage(12, 0, "...The Horde Retreat Zone, Lost Refugee.")
       Walker:RegisterEvent("HordeStartTimen", 4000, 0)
end

function HordeStartTimen(pUnit, Event)
pUnit:RemoveEvents()
	   Walker:SendChatMessage(12, 0, "Ugh... Where?")
       Walker:RegisterEvent("HordeStartTimeo", 3000, 0)
end

function HordeStartTimeo(pUnit, Event)
pUnit:RemoveEvents()
       Captain:SendChatMessage(12, 0, "Lost Refugee is a retreat zone for emergencies, and I do believe this is a emergency...Let us set sail to there...NOW!")
       Walker:RegisterEvent("HordeStartTimep", 5000, 0)
end

function HordeStartTimep(pUnit, Event)
pUnit:RemoveEvents()
	   Walker:SendChatMessage(12, 0, "Right away Captain")
	   Walker:RegisterEvent("HordeStartTimeq", 3000, 0)
end

function HordeStartTimeq(pUnit, Event)
pUnit:RemoveEvents()
    Walker:SpawnCreature(TLK, 1269.953979, -6033.398438, 122, 3.074723, 35, 0);
    Walker:RegisterEvent("HordeStoryDEATH", 3500, 0)
end

function HordeStoryDEATH(pUnit, Event)
pUnit:RemoveEvents()
Captain:Despawn(1,0)
Walker:Despawn(1,0)
Captain = nil
end
-------------==============------------
function TLKe2(pUnit, Event)
    Lich = pUnit
    Lich:SendChatMessage(14, 0, "HAHAHAHA Let Us See How Far You Go!")
	Lich:RegisterEvent("LichKingNilCheckHordeStartz", 100, 0) ---When players go bye-bye
	Lich:RegisterEvent("LichKingNilCheckHordeStartzz", 30000, 0) ---This is a safty in case there is a AFK player nearby
end

function LichKingNilCheckHordeStartz(pUnit, Event)
local LichNilCheck = pUnit:GetInRangePlayers()
for k, IfNil in pairs(LichNilCheck) do
    if (IfNil == nil) then
	Lich:RemoveEvents()
	Lich:SpawnCreature(SurvivorID, 1272.94, -6023.49, 115.75, 4.674, 35, 0);
	Lich:SpawnCreature(CaptainID, 1268.79, -6040.63, 125.27, 4.681, 35, 0);
    Lich:Despawn(1,0)
    else
    end
end
end

function LichKingNilCheckHordeStartzz(pUnit, Event)
    Lich:RemoveEvents()
    Lich:SpawnCreature(SurvivorID, 1272.94, -6023.49, 115.75, 4.674, 35, 0);
	Lich:SpawnCreature(CaptainID, 1268.79, -6040.63, 125.27, 4.681, 35, 0);
    Lich:Despawn(1,0)
end

function TLKr_OnGossipTalk2(pUnit, event, player, pMisc)
   pUnit:GossipCreateMenu(3544, player, 0)
   pUnit:GossipMenuAddItem(9, "Oh yea? Bring it on!", 1, 0)
   pUnit:GossipMenuAddItem(9, "No, Please! Spare me!", 2, 0)
   pUnit:GossipSendMenu(player)
end

function TLKr_OnGossipSelect2(pUnit, event, player, id, intid, code, pMisc)
if(intid == 1) then
pUnit:SendChatMessage(14, 0, "HAHAHAHA! Dont worry...youll have your chance soon enough!")
local GetName = player:GetName()
ScriptDBQuery("UPDATE characters_graveyards SET Graveyard_ID=null, SetFacing=1, Flags=3 WHERE Character_Name='"..GetName.."'", 0)
Lich:Kill(player)
player:Repop()
player:RemoveAura(8326)
player:Teleport(0, 1642, 239.8, 62.6)
player:GossipComplete()
end

if(intid == 2) then
pUnit:SendChatMessage(14, 0, "HAHAHAHA! Resisting is futile, you will die... I Shall Not Hold Back!")
local GetName = player:GetName()
ScriptDBQuery("UPDATE characters_graveyards SET Graveyard_ID=null, SetFacing=1, Flags=3 WHERE Character_Name='"..GetName.."'", 0)
Lich:Kill(player)
player:Repop()
player:RemoveAura(8326)
player:Teleport(0, 1642, 239.8, 62.6)
player:GossipComplete()
end
end

RegisterUnitEvent(TLK, 18, "TLKe2")
RegisterUnitGossipEvent(TLK, 1, "TLKr_OnGossipTalk2")
RegisterUnitGossipEvent(TLK, 2, "TLKr_OnGossipSelect2")