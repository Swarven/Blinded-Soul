-- ==================== Let's define some stuff ===========================================================
local TLK = 5556791
local CaptainID = 5556781
local SurvivorID = 5556761
local WalkerID = 5556771
local FallOffAndTele = 195861
local Captain = nil
local GMGetWorld = GetPlayersInWorld()
-- =============================== Starter ================================================================
function AllianceStoryTeleport_OnSpawn(pUnit, Event)
pUnit:RegisterEvent("AllianceStoryTeleport_Loop", 1000, 0)
end

function AllianceStoryTeleport_Loop(pUnit, Event)
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

RegisterUnitEvent(FallOffAndTele, 18, "AllianceStoryTeleport_OnSpawn")


function AllianceStoryTime_OnSpawn(pUnit, Event)
local GetID = pUnit:GetSpawnId()
WorldDBQuery("UPDATE creature_spawns SET CanFly = '2' WHERE id = '"..GetID.."' LIMIT 1;", 0)
Survivor = pUnit
Survivor:SetNPCFlags(1) -- resets flags
end

RegisterUnitEvent(SurvivorID, 18, "AllianceStoryTime_OnSpawn")

function AllianceStoryCaptain_OnSpawn(pUnit, Event)
local GetID = pUnit:GetSpawnId()
WorldDBQuery("UPDATE creature_spawns SET CanFly = '2' WHERE id = '"..GetID.."' LIMIT 1;", 0)
Captain = pUnit
end

RegisterUnitEvent(CaptainID, 18, "AllianceStoryCaptain_OnSpawn")
--=================--
function StormwindStory_OnGossipTalk(pUnit, event, player, pMisc)
   Survivor:GossipCreateMenu(50, player, 0)
   Survivor:GossipMenuAddItem(9, "Where am I?", 1, 0)
   Survivor:GossipMenuAddItem(0, "Im going back to bed.", 2, 0)
   Survivor:GossipSendMenu(player)
end

function StormwindStory_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
if (intid == 1) then
if Captain == nil then -- Do a check
	Survivor:SpawnCreature(CaptainID, 1268.79, -6040.63, 125.27, 4.681, 35, 0);
	for k, SendGMMessage in pairs(GMGetWorld) do
	if SendGMMessage:IsGm() then
	SendGMMessage:SendBroadcastMessage("\124c00FF3333[LUA ERROR]\124r on \124c0033FF33[AllianceStortTimeStart.lua]\124r")
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

RegisterUnitGossipEvent(SurvivorID, 1, "StormwindStory_OnGossipTalk")
RegisterUnitGossipEvent(SurvivorID, 2, "StormwindStory_OnGossipSelect")
----Walk And Talk, Just Walk And Talk-----
function AllianceStartTimeStart(pUnit, Event)
Walker = pUnit
Walker:SetNPCFlags(0) -- resets flags
Walker:PlaySoundToSet(11708)
Walker:RegisterEvent("AllianceStartTimea", 5000, 0)
end

RegisterUnitEvent(WalkerID, 18, "AllianceStartTimeStart")

-------================================================================----
function AllianceStartTimea(pUnit, Event)
pUnit:RemoveEvents()
       Walker:MoveTo(-8519.118164, 2268.691895, 6.098160, 5.237036)
       Walker:SendChatMessage(12, 0, "Its good seeing that you had waken up. Can you remember anything? Orgrimmar has been taken by the Lich king. Sadly, this boat is the only one that made it.")
       Walker:RegisterEvent("AllianceStartTimeb", 12000, 0)
end

function AllianceStartTimeb(pUnit, Event)
pUnit:RemoveEvents()
       Walker:SendChatMessage(12, 0, "We found you knocked out in Orgrimmar while we retreated, you seem to only have minor injuries.")
       Walker:MoveTo(-8511.036133, 2259.098877, 6.098977, 5.468727)
       Walker:RegisterEvent("AllianceStartTimec", 6000, 0)
end

function AllianceStartTimec(pUnit, Event)
pUnit:RemoveEvents()
       Walker:SendChatMessage(12, 0, "As you can see, there isnt many Survivors.")
       Walker:RegisterEvent("AllianceStartTimed", 4000, 0)
end
function AllianceStartTimed(pUnit, Event)
pUnit:RemoveEvents()
       Walker:SendChatMessage(12, 0, "Let me introduce you to the Captain of the ship.")
       Walker:MoveTo(-8497.645508, 2262.025635, 6.097630, 6.245483)
       Walker:RegisterEvent("AllianceStartTimee", 6000, 0)
end
function AllianceStartTimee(pUnit, Event)
pUnit:RemoveEvents()
       Walker:SendChatMessage(12, 0, "He doesnt quite know what to do right now...but we'll find a way.")
       Walker:MoveTo(-8498.278320, 2269.915527, 11.150537, 1.581005)
       Walker:RegisterEvent("AllianceStartTimef", 6000, 0)
end

function AllianceStartTimef(pUnit, Event)
pUnit:RemoveEvents()
       Walker:SendChatMessage(12, 0, "Hey Captain A Survivor has awaken.")
       Walker:MoveTo(-8504.613281, 2271.406006, 12.181767, 3.075772)
       Walker:RegisterEvent("AllianceStartTimeg", 6000, 0)
end 
----=======Captain Joins the fun========--
function AllianceStartTimeg(pUnit, Event)
pUnit:RemoveEvents()
	   Captain:SendChatMessage(12, 0, "Thank goodness! Come, I made a decision.")
       Walker:MoveTo(-8510.734375, 2258.729248, 11.864030, 0.178282)
       Walker:RegisterEvent("AllianceStartTimeh", 6000, 0)
end

function AllianceStartTimeh(pUnit, Event)
pUnit:RemoveEvents()
	   Captain:MoveTo(-8490.205078, 2262.610596, 17.847300, 3.426292)
       Walker:MoveTo(-8504.271484, 2259.321045, 12.133082, 0.224625)
       Walker:RegisterEvent("AllianceStartTimei", 6000, 0)
end

function AllianceStartTimei(pUnit, Event)
pUnit:RemoveEvents()
	   Captain:MoveTo(-8494.747070, 2261.877930, 16.961065, 3.333615)
	   Walker:MoveTo(-8496.916992, 2261.359863, 16.525257, 0.219127)
       Walker:SendChatMessage(12, 0, "What are your orders Captain?")
       Walker:RegisterEvent("AllianceStartTimej", 3000, 0)
end

function AllianceStartTimej(pUnit, Event)
pUnit:RemoveEvents()
	   Captain:SendChatMessage(12, 0, "Im afraid going to Darnassus can be dangerous...Who knows if the Lich King will strike there.")
       Walker:RegisterEvent("AllianceStartTimek", 4000, 0)
end

function AllianceStartTimek(pUnit, Event)
pUnit:RemoveEvents()
	   Walker:SendChatMessage(12, 0, "I see...but where else would we go sir?")
       Walker:RegisterEvent("AllianceStartTimel", 3000, 0)
end

function AllianceStartTimel(pUnit, Event)
pUnit:RemoveEvents()
	   Captain:SendChatMessage(12, 0, "Theres only one other place we can go for a time like this...")
       Walker:RegisterEvent("AllianceStartTimem", 4500, 0)
end

function AllianceStartTimem(pUnit, Event)
pUnit:RemoveEvents()
       Captain:SendChatMessage(12, 0, "...The Alliance Retreat Zone, The Sanctuary.")
       Walker:RegisterEvent("AllianceStartTimen", 4000, 0)
end

function AllianceStartTimen(pUnit, Event)
pUnit:RemoveEvents()
	   Walker:SendChatMessage(12, 0, "Ugh... Where?")
       Walker:RegisterEvent("AllianceStartTimeo", 3000, 0)
end

function AllianceStartTimeo(pUnit, Event)
pUnit:RemoveEvents()
       Captain:SendChatMessage(12, 0, "The Sanctuary is a retreat zone for emergencies, and I do believe this is a emergency...Let us set sail to there...NOW!")
       Walker:RegisterEvent("AllianceStartTimep", 5000, 0)
end

function AllianceStartTimep(pUnit, Event)
pUnit:RemoveEvents()
	   Walker:SendChatMessage(12, 0, "Right away Captain")
	   Walker:RegisterEvent("AllianceStartTimeq", 3000, 0)
end

function AllianceStartTimeq(pUnit, Event)
pUnit:RemoveEvents()
    Walker:SpawnCreature(TLK, -8499.941406, 2271.544922, 16.192915, 4.877323, 35, 0);
    Walker:RegisterEvent("AllianceStoryDEATH", 3500, 0)
end

function AllianceStoryDEATH(pUnit, Event)
pUnit:RemoveEvents()
Captain:Despawn(1,0)
Walker:Despawn(1,0)
Captain = nil
end
----------===========================================================-----
function TLKe(pUnit, Event)
    Lich = pUnit
    Lich:SendChatMessage(14, 0, "HAHAHAHA Let Us See How Far You Go!")
	Lich:RegisterEvent("LichKingNilCheckAllianceStartz", 100, 0) ---When players go bye-bye
	Lich:RegisterEvent("LichKingNilCheckAllianceStartzz", 30000, 0) ---This is a safty in case there is a AFK player nearby
end

function LichKingNilCheckAllianceStartz(pUnit, Event)
local LichNilCheck = pUnit:GetInRangePlayers()
for k, IfNil in pairs(LichNilCheck) do
    if (IfNil == nil) then
	Lich:RemoveEvents()
	Lich:SpawnCreature(SurvivorID, -8502.39, 2271.42, 7.1, 0.044767, 35, 0);
	Lich:SpawnCreature(CaptainID, -8491.83, 2266.17, 19.7, 3.246497, 35, 0);
    Lich:Despawn(1,0)
    else
    end
end
end

function LichKingNilCheckAllianceStartzz(pUnit, Event)
    Lich:RemoveEvents()
    Lich:SpawnCreature(SurvivorID, -8502.39, 2271.42, 7.1, 0.044767, 35, 0);
	Lich:SpawnCreature(CaptainID, -8491.83, 2266.17, 19.7, 3.246497, 35, 0);
    Lich:Despawn(1,0)
end

function TLKr_OnGossipTalk(pUnit, event, player, pMisc)
   pUnit:GossipCreateMenu(3544, player, 0)
   pUnit:GossipMenuAddItem(9, "Oh yea? Bring it on!", 1, 0)
   pUnit:GossipMenuAddItem(9, "No, Please! Spare me!", 2, 0)
   pUnit:GossipSendMenu(player)
end

function TLKr_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
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

RegisterUnitEvent(TLK, 18, "TLKe")
RegisterUnitGossipEvent(TLK, 1, "TLKr_OnGossipTalk")
RegisterUnitGossipEvent(TLK, 2, "TLKr_OnGossipSelect")