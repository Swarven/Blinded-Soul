local QuestID = 1000020
local Quest_ID = 1000020
---------RE-Defining some Stuff--------
local Hfreecaptive = 59846 ---Gossip/Quest Giver
local Hescortstart = 59847 ----Escort
local HescortFinish = 59848 ----Quest Finisher
local Hlichkingwhisper = 45454 ---1st LK
local Hlichkingwhisperb = 48734 ---2nd...
local Hlichkingwhisperc = 45455 ----3rd...
local GhoulPatrola = 12744 ---Kill 3 of these
local GhoulPatrolb = 12743 ---Kill 8 of these [2 waves; 4 each wave]
local GhoulBirthPortala = 127446
local GhoulBirthPortal = 127445
------Portal Effect-----
local GhoulSummona = 48740 ----Portal summoner #1
local GhoulSummonb = 48741 -----#2
local GhoulSummonc = 48742 ----#3
local GhoulSummond = 48743 ---------#4
local BlackHolea = 48735
local BlackHoleb = 48736
local BlackHolec = 48737
local BlackHoled = 48738
-------------BOSS---------
local HEscortBoss = 559881 ----Boss
local GeneralKalthen = 99841 ---Person to kill for key [Script already made in alliance section]
----------DB Sets--------
local SetEnableQuest = "REPLACE INTO quests_scripts(Quest_ID, Flags1, Flags2, Disabled, Staff_Name, Reason) VALUES ('"..QuestID.."', '0', '0', '0', NULL, NULL)", 0
----------DB Gets--------
local GetFlags1 = ScriptDBQuery("SELECT Flags1 FROM quests_scripts WHERE Quest_ID = '"..QuestID.."'", 0):GetColumn(0):GetString()
local GetFlags2 = ScriptDBQuery("SELECT Flags2 FROM quests_scripts WHERE Quest_ID = '"..QuestID.."'", 0):GetColumn(0):GetString()
local GetDisabled = ScriptDBQuery("SELECT Disabled FROM quests_scripts WHERE Quest_ID = '"..QuestID.."'", 0):GetColumn(0):GetString()
local GetStaffName = ScriptDBQuery("SELECT Staff_Name FROM quests_scripts WHERE Quest_ID = '"..QuestID.."'", 0):GetColumn(0):GetString()
local GetDisableReason = ScriptDBQuery("SELECT Reason FROM quests_scripts WHERE Quest_ID = '"..QuestID.."'", 0):GetColumn(0):GetString()
--------Progress------
local JustStart = "UPDATE quests_scripts SET Flags1='1' WHERE Quest_ID='"..QuestID.."'", 0
local AboutEnd = "UPDATE quests_scripts SET Flags1='2' WHERE Quest_ID='"..QuestID.."'", 0
-----------Horde Escorting quest---------
function HordeEscortFree_OnGossipTalk2(pUnit, event, player, pMisc)
--/////Re stateing the DB Gets////--
local GetDisabled = ScriptDBQuery("SELECT Disabled FROM quests_scripts WHERE Quest_ID = '"..QuestID.."'", 0):GetColumn(0):GetString()
--------------============-------==========--------======--------
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "I will escort you out of here!", 1, 0)
   pUnit:GossipMenuAddItem(0, "What are you doing here?", 2, 0)
   if player:IsGm() then
   pUnit:GossipMenuAddItem(5, "[ADMIN] Force Start", 3, 0)
        if (GetDisabled == "0") then
        pUnit:GossipMenuAddItem(5, "[ADMIN] Disable Quest", 4, 1)
        end
		if (GetDisabled == "1") then
        pUnit:GossipMenuAddItem(5, "[ADMIN] Enable Quest", 5, 0)
		end
   end
   pUnit:GossipSendMenu(player)
end

function HordeEscortFree_OnGossipSelect2(pUnit, event, player, id, intid, code, pMisc)
local GetFlags1 = ScriptDBQuery("SELECT Flags1 FROM quests_scripts WHERE Quest_ID = '"..QuestID.."'", 0):GetColumn(0):GetString()
local GetDisabled = ScriptDBQuery("SELECT Disabled FROM quests_scripts WHERE Quest_ID = '"..QuestID.."'", 0):GetColumn(0):GetString()
local GetStaffName = ScriptDBQuery("SELECT Staff_Name FROM quests_scripts WHERE Quest_ID = '"..QuestID.."'", 0):GetColumn(0):GetString()
local GetDisableReason = ScriptDBQuery("SELECT Reason FROM quests_scripts WHERE Quest_ID = '"..QuestID.."'", 0):GetColumn(0):GetString()
if (intid == 1) then
if (GetDisabled == "1") then
	    player:SendBroadcastMessage("The Admin "..GetStaffName.." Has Disabled This Quest For This Reason: "..GetDisableReason)
	    player:GossipComplete()
else
if (player:HasFinishedQuest(1000020) == true) then
    player:GossipComplete()
	player:SendBroadcastMessage("You ALREADY did this quest!")
    player:SendAreaTriggerMessage("You ALREADY did this quest!")
else
if (GetFlags1 == "1") then
	    player:SendBroadcastMessage("Another Escort Has Just Started, Please Wait...")
        player:SendAreaTriggerMessage("Another Escort Has Just Started, Please Wait...")
	    player:GossipComplete()
else
if (GetFlags1 == "2") then
	    player:SendBroadcastMessage("Another Escort Is Almost Finished, Please Wait...")
        player:SendAreaTriggerMessage("Another Escort Is Almost Finished, Please Wait...")
	    player:GossipComplete()
else
if (player:GetItemCount(122072) == 1) then
        ScriptDBQuery(JustStart)
	    player:RemoveItem(122072,1)
	    player:GossipComplete()
	    pUnit:SetNPCFlags(2)
	    pUnit:Emote(1,2000)
	    pUnit:SendChatMessage(12, 0, "Alright, Get ready. Just let my ankle rest for a second and we shall move on!")
	    pUnit:MoveTo(5059.944336, -2067.080566, 1368.621216, 4.804277)
	    pUnit:RegisterEvent("HordeEscortQuestDespawn2", 15000, 0) ----NPC is able to registerevents even though hes a Gossip....God i love my scripting - XDemonic
	    pUnit:SendChatMessage(42, 0, "Grab the Escort Quest. The quest WILL NOT be acceptable in 15 seconds!")
    else
        pUnit:Emote(1,2000)
	    pUnit:SendChatMessage(12, 0, "ugh, your no help! you need the key to unlock my shackles!")
	    player:GossipComplete()
end
end
end
end
end
end

if (intid == 2) then
   player:GossipComplete()
   player:SendBroadcastMessage("You walk away, knowing nothing is going to happen untill you talk to him.")
   player:SendAreaTriggerMessage("You walk away, knowing nothing is going to happen untill you talk to him.")
end

if (intid == 3) then
if (GetDisabled == "1") then
   player:SendBroadcastMessage("The Admin "..GetStaffName.." Has Disabled This Quest For This Reason: "..GetDisableReason.." [Going On May Cause Crash or Other Bugs, If You Are A LUA Scripter For Blinded-Soul, You May Go On Even With This Quest Being Disabled. Do You Wish To Proceed?")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "Yes", 6, 0)
   pUnit:GossipMenuAddItem(0, "No", 7, 0)
   pUnit:GossipSendMenu(player)
else
if (GetFlags1 == "1") then
	    player:SendBroadcastMessage("Another Escort Has Just Started, Please Wait...")
        player:SendAreaTriggerMessage("Another Escort Has Just Started, Please Wait...")
	    player:GossipComplete()
else
if (GetFlags1 == "2") then
	    player:SendBroadcastMessage("Another Escort Is Almost Finished, Please Wait...")
        player:SendAreaTriggerMessage("Another Escort Is Almost Finished, Please Wait...")
	    player:GossipComplete()
else
        ScriptDBQuery(JustStart)
	    player:GossipComplete()
	    pUnit:SetNPCFlags(2)
	    pUnit:Emote(1,2000)
	    pUnit:SendChatMessage(12, 0, "Alright, Get ready. Just let my ankle rest for a second and we shall move on!")
	    pUnit:MoveTo(5059.944336, -2067.080566, 1368.621216, 4.804277)
	    pUnit:RegisterEvent("HordeEscortQuestDespawn2", 15000, 0) ----NPC is able to registerevents even though hes a Gossip....God i love my scripting - XDemonic
	    pUnit:SendChatMessage(42, 0, "Grab the Escort Quest. The quest WILL NOT be acceptable in 15 seconds!")
end
end
end
end

if (intid == 6) then
        ScriptDBQuery(JustStart)
	    player:GossipComplete()
	    pUnit:SetNPCFlags(2)
	    pUnit:Emote(1,2000)
	    pUnit:SendChatMessage(12, 0, "Alright, Get ready. Just let my ankle rest for a second and we shall move on!")
	    pUnit:MoveTo(5059.944336, -2067.080566, 1368.621216, 4.804277)
	    pUnit:RegisterEvent("HordeEscortQuestDespawn2", 15000, 0) ----NPC is able to registerevents even though hes a Gossip....God i love my scripting - XDemonic
	    pUnit:SendChatMessage(42, 0, "Grab the Escort Quest. The quest WILL NOT be acceptable in 15 seconds!")
end

if (intid == 7) then
	    player:GossipComplete()
end

if (intid == 4) then
    if (code == nil) then
	player:SendBroadcastMessage("You Need To Type In A Reason For Disableing The Quest!")
	player:GossipComplete()
	else
    ScriptDBQuery("UPDATE quests_scripts SET Disabled='1', Staff_Name='"..player:GetName().."', Reason='"..code.."' WHERE Quest_ID='"..QuestID.."'", 0)
	player:SendBroadcastMessage("Disabled Complete! Quest ID: ["..QuestID.. "] Has Been Disabled For: " ..code)
    player:GossipComplete()
end
end

if (intid == 5) then
    ScriptDBQuery("UPDATE quests_scripts SET Disabled='0', Staff_Name=NULL, Reason=NULL WHERE Quest_ID='"..QuestID.."'", 0)
	player:SendBroadcastMessage("Enable Complete! Quest ID: ["..QuestID.. "] Has Been Enabled!")
	player:GossipComplete()
end
end


function Horde_GelGor_Escort_Start(pUnit, Event) ---This Function does nothing, but allows the NPC to register Events...
end

RegisterUnitEvent(59846, 18, "Horde_GelGor_Escort_Start")


function HordeEscortQuestDespawn2(pUnit, Event)
	pUnit:RemoveEvents()
    x = pUnit:GetX();
    y = pUnit:GetY();
    z = pUnit:GetZ();
    o = pUnit:GetO();
    pUnit:SpawnCreature(Hescortstart, x, y, z, o, 35, 0);
    pUnit:Despawn(1,0)
end

RegisterUnitGossipEvent(59846, 1, "HordeEscortFree_OnGossipTalk2")
RegisterUnitGossipEvent(59846, 2, "HordeEscortFree_OnGossipSelect2")

function HordeEscorta(pUnit, Event)
    Horde_Escort_Scourge = pUnit
    pUnit:Emote(1,2000)
	Horde_Escort_Scourge:SendChatMessage(12, 0, "Alright, everyone ready? good, lets move!")
	pUnit:RegisterEvent("HordeEscortb2", 3000, 0)
end

function HordeEscortb2(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:SetMovementType(256)
	pUnit:ModifyWalkSpeed(7)
	pUnit:MoveTo(5081.604980, -2117.033691, 1372.957886, 5)
	pUnit:RegisterEvent("HordeEscortc2", 4000, 0)
end

function HordeEscortc2(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:MoveTo(5086.341309, -2168.456055, 1381.131836, 5)
	pUnit:RegisterEvent("HordeEscortd2", 3000, 0)
end

function HordeEscortd2(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:MoveTo(5088.468750, -2207.105225, 1386.230591, 5)
	pUnit:RegisterEvent("HordeEscorte2", 5000, 0)
end

function HordeEscorte2(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:Emote(1,2000)
	pUnit:SendChatMessage(12, 0, "alright we are out of the camp, we should be fine now...")
	pUnit:MoveTo(5087.047363, -2237.426270, 1390.482300, 5)
		pUnit:RegisterEvent("HordeEscortf2", 13000, 0)
end

function HordeEscortf2(pUnit, Event)
local GetPlayers = pUnit:GetInRangePlayers()
	pUnit:RemoveEvents()
	pUnit:ModifyWalkSpeed(2.5)
    for k, GetPlayersDo in pairs(GetPlayers) do
local PlayerCharacter = GetPlayersDo:GetName()
--//////////////////////////////////////////////--
        if (GetPlayersDo ~= nil) and
		(GetPlayersDo:IsAlive() == true) and
		(GetPlayersDo:HasQuest(Quest_ID) == true) then
--////////////////////////////////////////////////--
            --GetPlayersDo:SendBroadcastMessage("\124c00FFA500The Lich King\124r: \124c00FF3333"..PlayerCharacter.."!...hahaha, lost you memory? dont worry, you will see me soon enough!")
		end
	end
	pUnit:SpawnCreature(Hlichkingwhisper, 5048.094727, -2267.062256, 1390.5, 4, 35, 1000);
	pUnit:MoveTo(5085.675781, -2247.017822, 1392.197021, 5)
	pUnit:RegisterEvent("HordeEscortg2", 3000, 0)
end

function HordeEscortg2(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:Emote(1,2000)
	pUnit:SendChatMessage(12, 0, "Are you ok? you act like you just heard a ghost or somthing...")
	pUnit:RegisterEvent("HordeEscorth2", 3000, 0)
end

function HordeEscorth2(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:Emote(48,2000)
	pUnit:SetFaction(2)
	pUnit:SpawnCreature(Hfreecaptive, 5059.060059, -2060.870117, 1368.579956, 4.802710, 2, 0); ---Making another escort person
	pUnit:SendChatMessage(12, 0, "Uh oh! we got trouble! how did they find us so fast?!")
	pUnit:SpawnCreature(127445, 5084.758789, -2262.991699, 1394.388306, 5, 35, 5000);
	pUnit:SpawnCreature(127445, 5091.014648, -2262.026123, 1394.043945, 5, 35, 5000);
	pUnit:SpawnCreature(127445, 5096.282227, -2261.212891, 1393.681519, 5, 35, 5000);
	pUnit:RegisterEvent("HordeEscorti2", 2100, 0)
end

function HordeEscorti2(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:Emote(48,5000)
	pUnit:SendChatMessage(12, 0, "Get Ready!")
end
-----------The first waves of ghouls, indicates for Thomus to be in combat, makes it so i dont have multiple thomus.-----

function HordeEscorta_Entercombat(pUnit, Event)
    pUnit:RemoveEvents()
end

function HordeEscorta_Die(pUnit, Event)
local Reset = "UPDATE quests_scripts SET Flags1='0', Flags2='0' WHERE Quest_ID='"..QuestID.."'", 0
local GetPlayers = pUnit:GetInRangePlayers()
    ScriptDBQuery(Reset)
	pUnit:RemoveEvents()
	pUnit:Despawn(1,0)
	    for k, GetPlayersDo in pairs(GetPlayers) do
--//////////////////////////////////////////////--
        if (GetPlayersDo ~= nil) and
		(GetPlayersDo:IsAlive() == true) and
		(GetPlayersDo:HasQuest(Quest_ID) == true) then
--////////////////////////////////////////////////--
local PlayerQuestFailed = GetPlayersDo
            QuestFailed_Global(event, PlayerQuestFailed)
            GetPlayersDo:SendAreaTriggerMessage("|cFFFF0000Quest Failed: Gel'gor Died!")
		end
	end
end

RegisterUnitEvent(Hescortstart, 4, "HordeEscorta_Die")
RegisterUnitEvent(Hescortstart, 1, "HordeEscorta_Entercombat")
RegisterUnitEvent(Hescortstart, 18, "HordeEscorta")

function HordeLichKingwhisper2(pUnit, Event)
	pUnit:SendChatMessage(8, 0, "YOU!...hahaha, lost you memory? dont worry, you will see me soon enough!")
end

RegisterUnitEvent(Hlichkingwhisper, 18, "HordeLichKingwhisper2")

function GhoulPatrolBirthPortala2(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:SetScale(.12)
    x = pUnit:GetX();
    y = pUnit:GetY();
    z = pUnit:GetZ();
    o = pUnit:GetO();
    pUnit:SpawnCreature(GhoulPatrola, x, y, z, o, 35, 0);
end

RegisterUnitEvent(GhoulBirthPortal, 18, "GhoulPatrolBirthPortala2")
------------------------
function GhoulPatrolBirth2(pUnit, Event)
	pUnit:Emote(449,4000)
	pUnit:RegisterEvent("GhoulAttack2", 4100, 0)
end

function GhoulAttack2(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:SetFaction(45)
	pUnit:MoveTo(5085.675781, -2241.182861, 1391.235840, 5)
end

function GhoulDie2(pUnit, Event)
local GetFlags2 = ScriptDBQuery("SELECT Flags2 FROM quests_scripts WHERE Quest_ID = '"..QuestID.."'", 0):GetColumn(0):GetString()
local GetKillCount = ScriptDBQuery("SELECT Flags2 FROM quests_scripts WHERE Quest_ID = '"..QuestID.."'", 0):GetColumn(0):GetString() + 1
local SetFlags2 = "UPDATE quests_scripts SET Flags2='".. GetFlags2 + 1 .."' WHERE Quest_ID='"..QuestID.."'", 0
ScriptDBQuery(SetFlags2)
	pUnit:RemoveEvents()
	pUnit:Despawn(1,0)
	if GetKillCount == 1 then
	Horde_Escort_Scourge:SendChatMessage(12, 0, "DIE SCOURGE!")
	end
	if GetKillCount == 2 then
	Horde_Escort_Scourge:SendChatMessage(12, 0, "Another one down!")
	end
    if GetKillCount == 3 then
	Horde_Escort_Scourge:SendChatMessage(12, 0, "Alright, thats all three. Lets move on...")
	Horde_Escort_Scourge:RegisterEvent("GhoulWave1End", 2000, 0)
	end
	if GetKillCount == 11 then
	Horde_Escort_Scourge:SendChatMessage(12, 0, "Lets move before more come!")
	ScriptDBQuery(AboutEnd)
	Horde_Escort_Scourge:RegisterEvent("GhoulWave2End", 2000, 0)
	end
	if GetKillCount == 12 then
	Horde_Escort_Scourge:RegisterEvent("GhoulWave3End", 2000, 0)
	end
end

RegisterUnitEvent(GhoulPatrola, 4, "GhoulDie2")
RegisterUnitEvent(GhoulPatrola, 18, "GhoulPatrolBirth2")
------------second escort guy--------
function GhoulWave1End(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:SetMovementType(256)
	pUnit:ModifyWalkSpeed(7)
	pUnit:MoveTo(5088.704590, -2290.437012, 1399.990234, 1.897561)
	pUnit:RegisterEvent("HordeEscortab2", 2000, 0)
end

function HordeEscortab2(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:SendChatMessage(12, 0, "Lets move on! I have a feeling there is going to be more of them!...But..why are they after us?...Im not important...Unless...they want you! In any case..lets move on.")
	pUnit:MoveTo(5092.060059, -2317.663086, 1405.765625, 1.862218)
	pUnit:RegisterEvent("HordeEscortac2", 7000, 0)
end

function HordeEscortac2(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:MoveTo(5122.346191, -2348.522217, 1413.106201, 0.339312)
	pUnit:RegisterEvent("HordeEscortad2", 5000, 0)
end

function HordeEscortad2(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:SendChatMessage(12, 0, "I have a bad feeling about this...")
	pUnit:MoveTo(5122.594238, -2376.311035, 1419.066040, 0.462613)
	pUnit:RegisterEvent("HordeEscortaf2", 3000, 0)
end

function HordeEscortaf2(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:MoveTo(5105.919922, -2400.274170, 1425.597534, 0.578851)
	pUnit:RegisterEvent("HordeEscortag2", 2000, 0)
end

function HordeEscortag2(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:MoveTo(5093.327637, -2420.077881, 1429.084595, 0.624118)
	pUnit:RegisterEvent("HordeEWalka", 2000, 0)
end
----------------Extra Walk-----------
function HordeEWalka(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:MoveTo(5100.390137, -2405.110107, 1426.25, 1)
	pUnit:RegisterEvent("HordeEWalkb", 3000, 0)
end

function HordeEWalkb(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:MoveTo(5085.359375, -2435.648438, 1432.601074, 1)
	pUnit:RegisterEvent("HordeEWalkc", 4000, 0)
end

function HordeEWalkc(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:MoveTo(5062.021484, -2469.706787, 1435.135010, 1)
	pUnit:RegisterEvent("HordeEWalkd", 4000, 0)
end

function HordeEWalkd(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:MoveTo(5036.251465, -2506.392822, 1432.979736, 1)
	pUnit:RegisterEvent("HordeEscortah2", 4000, 0)
end
------------------
function HordeEscortah2(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:SpawnCreature(GhoulBirthPortala, 5002.633301, -2516.963379, 1430.785889, 3.5, 35, 0);
	pUnit:SpawnCreature(GhoulBirthPortala, 5008.233398, -2525.120117, 1430.403931, 3.5, 35, 0);
	pUnit:SpawnCreature(GhoulBirthPortala, 5012.419922, -2532.016357, 1430.175415, 3.5, 35, 0);
	pUnit:SpawnCreature(GhoulBirthPortala, 5018.287109, -2537.860840, 1430.488770, 3.5, 35, 0);
	pUnit:SendChatMessage(12, 0, "They got reinforcements! Get ready!")
	pUnit:MoveTo(5025.853027, -2517.385010, 1431.684814, 1)
end

function GhoulPatrolBirthPortalb(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:SetScale(.25)
    x = pUnit:GetX();
    y = pUnit:GetY();
    z = pUnit:GetZ();
    o = pUnit:GetO();
    pUnit:SpawnCreature(12743, x, y, z, o, 35, 0);
	pUnit:RegisterEvent("GhoulPatrolBirthPortalc", 15000, 0)
end

function GhoulPatrolBirthPortalc(pUnit, Event)
	pUnit:RemoveEvents()
    x = pUnit:GetX();
    y = pUnit:GetY();
    z = pUnit:GetZ();
    o = pUnit:GetO();
    pUnit:SpawnCreature(12743, x, y, z, o, 35, 0);
	pUnit:RegisterEvent("GhoulPatrolBirthPortald", 4000, 0)
end

function GhoulPatrolBirthPortald(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:Despawn(1,0)
end

RegisterUnitEvent(GhoulBirthPortala, 18, "GhoulPatrolBirthPortalb")

function GhoulPatrolBirtha(pUnit, Event)
	pUnit:Emote(449,4000)
	pUnit:RegisterEvent("GhoulAttackb", 4100, 0)
end

function GhoulAttackb(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:SetFaction(1626)
	pUnit:MoveTo(5032.184570, -2513.060059, 1432.181519, 1)
end

RegisterUnitEvent(GhoulPatrolb, 4, "GhoulDie2")
RegisterUnitEvent(GhoulPatrolb, 18, "GhoulPatrolBirtha")
-----------------------------
function GhoulWave2End(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:SpawnCreature(Hlichkingwhisperb, 5010.156738, -2528.738770, 1409.9, 3.5, 35, 1000);
	pUnit:MoveTo(4989.931152, -2526.774170, 1429.144409, 1)
	pUnit:RegisterEvent("HordeEscortbb2", 4000, 0)
end

function HordeEscortbb2(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:SendChatMessage(12, 0, "Cmon, we are almost at the camp!")
	pUnit:MoveTo(4953.385254, -2566.036621, 1428.137573, 1)
	pUnit:RegisterEvent("HordeEscortExtraa", 5000, 0)
end

function HordeEscortExtraa(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:MoveTo(4969.034668, -2590.043213, 1423.317383, 1)
	pUnit:RegisterEvent("HordeEscortbc2", 2000, 0)
end

function HordeEscortbc2(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:SpawnCreature(BlackHolea, 4962.739746, -2599.951416, 1423.862915, 1, 35, 37500);
	pUnit:SpawnCreature(BlackHoleb, 4976.885254, -2596.976318, 1423.713379, 1, 35, 37500);
	pUnit:SpawnCreature(BlackHolec, 4983.363770, -2604.595215, 1423.951538, 1, 35, 37500);
	pUnit:SpawnCreature(BlackHoled, 4962.128418, -2609.061523, 1423.603760, 1, 35, 37500);
	pUnit:SpawnCreature(6665, 4973.547852, -2619.525635, 1424.046753, 1.734899, 35, 0);
	pUnit:SendChatMessage(12, 0, "...did you hear somthing?...")
	pUnit:RegisterEvent("HordeEscortbd", 6000, 0)
end

function HordeEscortbd(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:SetMovementType(0)
	pUnit:ModifyWalkSpeed(2.5)
	pUnit:MoveTo(4969.531250, -2594.645996, 1423.609253, 1)
	pUnit:SendChatMessage(12, 0, "Watch out! theres more of them!....huh? they are not atacking...")
	pUnit:RegisterEvent("HordeEscortbe", 6000, 0)
end

function HordeEscortbe(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:SendChatMessage(12, 0, "That Doesnt look good!")
end
------------------------------
function HordeLichKingwhisperb(pUnit, Event)
	pUnit:SendChatMessage(8, 0, "You failed to amuse me...Lets see what I can do to finish you off!")
end

RegisterUnitEvent(Hlichkingwhisperb, 18, "HordeLichKingwhisperb")
-----------Black Holes Summons Casting Ghouls!---------
function BlackHoleGhoula(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:SetScale(.12)
    x = pUnit:GetX();
    y = pUnit:GetY();
    z = pUnit:GetZ();
	
    pUnit:SpawnCreature(GhoulSummona, x, y, z, 4.625949, 35, 0);
end

RegisterUnitEvent(BlackHolea, 18, "BlackHoleGhoula")

function BlackHoleGhoulb(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:SetScale(.12)
    x = pUnit:GetX();
    y = pUnit:GetY();
    z = pUnit:GetZ();
	
    pUnit:SpawnCreature(GhoulSummonb, x, y, z, 4.625949, 35, 0);
end

RegisterUnitEvent(BlackHoleb, 18, "BlackHoleGhoulb")

function BlackHoleGhoulc(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:SetScale(.12)
    x = pUnit:GetX();
    y = pUnit:GetY();
    z = pUnit:GetZ();
	
    pUnit:SpawnCreature(GhoulSummonc, x, y, z, 4.625949, 35, 0);
end

RegisterUnitEvent(BlackHolec, 18, "BlackHoleGhoulc")

function BlackHoleGhould(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:SetScale(.12)
    x = pUnit:GetX();
    y = pUnit:GetY();
    z = pUnit:GetZ();
	
    pUnit:SpawnCreature(GhoulSummond, x, y, z, 4.625949, 35, 0);
end

RegisterUnitEvent(BlackHoled, 18, "BlackHoleGhould")
--------Portal Define, Took idea from another script, easy way to make npc cast spells on another npc-----
local Boss_Portal -----umm...not defineing anything?....
local Ghoul_Define_a
local Ghoul_Define_b
local Ghoul_Define_c
local Ghoul_Define_d

function Ghoul_Define_a_Def(pUnit, event)
	Ghoul_Define_a = pUnit
	    Ghoul_Define_a:Emote(449,4000)
	    Ghoul_Define_a:RegisterEvent("GhoulCastercasta", 10000, 0)
end
RegisterUnitEvent(GhoulSummona, 18, "Ghoul_Define_a_Def")
function Ghoul_Define_b_Def(pUnit, event)
	Ghoul_Define_b = pUnit
		Ghoul_Define_b:Emote(449,4000)
	    Ghoul_Define_b:RegisterEvent("GhoulCastercastb", 10000, 0)
end
RegisterUnitEvent(GhoulSummonb, 18, "Ghoul_Define_b_Def")
function Ghoul_Define_c_Def(pUnit, event)
	Ghoul_Define_c = pUnit
		Ghoul_Define_c:Emote(449,4000)
	    Ghoul_Define_c:RegisterEvent("GhoulCastercastc", 10000, 0)
end
RegisterUnitEvent(GhoulSummonc, 18, "Ghoul_Define_c_Def")
function Ghoul_Define_d_Def(pUnit, event)
	Ghoul_Define_d = pUnit
	    Ghoul_Define_d:Emote(449,4000)
	    Ghoul_Define_d:RegisterEvent("GhoulCastercastd", 10000, 0)
end
RegisterUnitEvent(GhoulSummond, 18, "Ghoul_Define_d_Def")

function Boss_Portal_Define(pUnit, event)
	Boss_Portal = pUnit
		Boss_Portal:RegisterEvent("setportalvisual", 20000, 0)
end
RegisterUnitEvent(6665, 18, "Boss_Portal_Define")
-------------------------------------------------------

function setportalvisual(pUnit, event)
       	Boss_Portal:RemoveEvents()
        Boss_Portal:FullCastSpell(40280) -- The awesome portal visual
		Boss_Portal:RegisterEvent("Portal_Spawn_Boss", 10000, 0)
end

function Portal_Spawn_Boss(pUnit, event)
       	Boss_Portal:RemoveEvents()
    x = Boss_Portal:GetX();
    y = Boss_Portal:GetY();
    z = Boss_Portal:GetZ();
    o = Boss_Portal:GetO();
    Ghoul_Define_a:SpawnCreature(559881, x, y, z, o, 35, 0);
		Boss_Portal:RegisterEvent("Boss_Portal_Despawna", 5000, 0)
end

function Boss_Portal_Despawna(pUnit, event)
       	Boss_Portal:RemoveEvents()
        Ghoul_Define_a:Despawn(1,0)
		Ghoul_Define_b:Despawn(1,0)
		Ghoul_Define_c:Despawn(1,0)
		Ghoul_Define_d:Despawn(1,0)
		Boss_Portal:RegisterEvent("Boss_Portal_Despawnb", 2500, 0)
end

function Boss_Portal_Despawnb(pUnit, event)
       	Boss_Portal:RemoveEvents()
		Boss_Portal:Despawn(1,0)
end
-------------The Ghouls Doing the Portal Event Beam!---------
function GhoulCastercasta(pUnit, Event)
	Ghoul_Define_a:FullCastSpellOnTarget(30402, Boss_Portal)
end
-------------------
function GhoulCastercastb(pUnit, Event)
	Ghoul_Define_b:FullCastSpellOnTarget(30402, Boss_Portal)
end
------------------
function GhoulCastercastc(pUnit, Event)
	Ghoul_Define_c:FullCastSpellOnTarget(30402, Boss_Portal)
end
-------------------
function GhoulCastercastd(pUnit, Event)
	Ghoul_Define_d:FullCastSpellOnTarget(30402, Boss_Portal)
end
----------------------
function ABossFight(pUnit, Event)
	pUnit:MoveTo(4972.899414, -2615.088623, 1423.965576, 1)
	pUnit:RegisterEvent("ABossFighta", 5000, 0)
end

function ABossFighta(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:SendChatMessage(12, 0, "So, Arthas has sent me to defeat you? what a joke!")
	pUnit:RegisterEvent("ABossFightb", 3000, 0)
end

function ABossFightb(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:MoveTo(4971.179688, -2604.730469, 1423.974121, 1)
	pUnit:SendChatMessage(12, 0, "If you stand still, Ill make this quick and painless!")
	pUnit:RegisterEvent("ABossFightc", 3000, 0)
end

function ABossFightc(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:SetFaction(1626)
	pUnit:SendChatMessage(12, 0, "DIE!")
end

function ABossFight_Leavecombat(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:SendChatMessage(12, 0, "HAHAHAHA! Weak!")
end

function ABossFight_Kill(pUnit, Event)
    pUnit:RemoveEvents()
	pUnit:SendChatMessage(12, 0, "HAHAHA! Pethetic!")
end

function ABossFight_Die(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:Despawn(5000,0)
	pUnit:SpawnCreature(Hlichkingwhisperc, 4975.277832, -2607.412598, 1409.66, 3.5, 35, 1000);
	pUnit:SendChatMessage(12, 0, "Master...I...Failed you...")
	Horde_Escort_Scourge:RegisterEvent("GhoulWave3End", 2000, 0)
end

RegisterUnitEvent(HEscortBoss, 3, "ABossFight_Kill")
RegisterUnitEvent(HEscortBoss, 4, "ABossFight_Die")
RegisterUnitEvent(HEscortBoss, 2, "ABossFight_Leavecombat")
RegisterUnitEvent(HEscortBoss, 18, "ABossFight")
-------------------------------------
function HordeLichKingwhisperc(pUnit, Event)
	pUnit:SendChatMessage(8, 0, "Hmmmm, perhaps I have under estimated you...It seems you are not worthless afterall. You are free to go...For now.")
end

RegisterUnitEvent(Hlichkingwhisperc, 18, "HordeLichKingwhisperc")
-------------------------------------
function GhoulWave3End(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:SetMovementType(256)
	pUnit:ModifyWalkSpeed(7)
	pUnit:SendChatMessage(12, 0, "Lets Get out of here!")
	pUnit:MoveTo(5004.223145, -2651.906494, 1427.032104, 1)
	pUnit:RegisterEvent("HordeEscortcb", 9000, 0)
end

function HordeEscortcb(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:MoveTo(4986.737793, -2678.495361, 1425.880127, 1)
	pUnit:SendChatMessage(12, 0, "Quickly! I see the camp!")
	pUnit:RegisterEvent("HordeEscortcc", 4000, 0)
end

function HordeEscortcc(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:MoveTo(4959.237793, -2677.502930, 1424.992798, 1)
	pUnit:RegisterEvent("HescortquestCompleteSpawn", 4000, 0)
end

function HescortquestCompleteSpawn(pUnit, Event)
local Reset = "UPDATE quests_scripts SET Flags1='0', Flags2='0' WHERE Quest_ID='"..QuestID.."'", 0
    ScriptDBQuery(Reset)
	pUnit:RemoveEvents()
    x = pUnit:GetX();
    y = pUnit:GetY();
    z = pUnit:GetZ();
    o = pUnit:GetO();
    pUnit:SpawnCreature(HescortFinish, x, y, z, o, 2, 35000);
    pUnit:Despawn(1,0)
end
----------Quest Finisher----------
function HescortquestComplete(pUnit, Event)
local GetPlayers = pUnit:GetInRangePlayers()
	pUnit:RemoveEvents()
	pUnit:SendChatMessage(42, 0, "[Quest] Escort Gel'gor: COMPLETED")
	pUnit:SendChatMessage(12, 0, "We are here! Thanks again Travelers for escorting me here, Talk to my friend Haluum to Teleport you back to the Horde Encampment.")
	pUnit:MoveTo(4954.539551, -2672.403320, 1425.332153, 1)
		    for k, GetPlayersDo in pairs(GetPlayers) do
--//////////////////////////////////////////////--
local GetCompleted = ScriptDBQuery("SELECT quest_completed FROM characters_script_quest WHERE name = '"..GetPlayersDo:GetName().."'", 0):GetColumn(0):GetString()
        if (GetPlayersDo ~= nil) and
		(GetPlayersDo:IsAlive() == true) and
		(GetPlayersDo:HasQuest(Quest_ID) == true) and
		(string.find(GetCompleted, Quest_ID) == nil) then
		ScriptDBQuery("UPDATE characters_script_quest SET quest_completed='"..GetCompleted..Quest_ID..", ' WHERE name = '"..GetPlayersDo:GetName().."'", 0)
		end
		end
	pUnit:RegisterEvent("HordeEscortdb", 4000, 0)
end

function HordeEscortdb(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:SetOrientation(5.416181)
	pUnit:SetFacing(5.416181)
	pUnit:RegisterEvent("CompleteQuestDespawn", 30000, 0)
end

function CompleteQuestDespawn(pUnit, Event)
	pUnit:RemoveEvents()
    pUnit:Despawn(1,0)
end

RegisterUnitEvent(59848, 18, "HescortquestComplete")


function HordeEscorQuestFinishCheck_OnGossipTalk(pUnit, event, player, pMisc)
local GetCompleted = ScriptDBQuery("SELECT quest_completed FROM characters_script_quest WHERE name = '"..player:GetName().."'", 0):GetColumn(0):GetString()
    if (player:HasFinishedQuest(Quest_ID) == true) then
	player:SendAreaTriggerMessage("|cFFFF0000You Have Already Completed This Quest!")
	player:GossipComplete()
	else
	if (string.find(GetCompleted, Quest_ID) == nil) then
    QuestFailed_Global(event, player)
    player:SendAreaTriggerMessage("|cFFFF0000You Have Not Completed This Quest Yet!")
    else
	pUnit:GossipCreateMenu(50, player, 0)
    pUnit:GossipSendMenu(player)
	end
	end
end

RegisterUnitGossipEvent(HescortFinish, 1, "HordeEscorQuestFinishCheck_OnGossipTalk")
--------- Cause of my amazing scripting skills, I managed to only use 2 NPCs for this escort quest [1 NPC: Gossip/GuestGiver] [2nd NPC: Escort/GuestFinisher]
----------Plus shortening the old script by 50 lines.... and its even more stable :)
----------Escort Quest Teleporter--------
function HordeEscorQuestTeleportHaluum_OnGossipTalk(pUnit, event, player, pMisc)
if (player:IsInCombat() == true) then
player:SendAreaTriggerMessage("You are in combat!")
else
pUnit:GossipCreateMenu(99, player, 0)
pUnit:GossipMenuAddItem(3, "I would like to Teleport to the Horde Encampment.", 1, 0)
pUnit:GossipMenuAddItem(3, "Never Mind...I'll walk", 2, 0)
pUnit:GossipSendMenu(player)
end
end

function HordeEscorQuestTeleportHaluum_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
if(intid == 1) then
player:Teleport(1, 5052.294922, -1754.794800, 1321.642578)
player:GossipComplete()
end

if(intid == 2) then
pUnit:SendChatMessage(12, 0, "Suit yourself...")
player:GossipComplete()
end
end

RegisterUnitGossipEvent(100923, 1, "HordeEscorQuestTeleportHaluum_OnGossipTalk")
RegisterUnitGossipEvent(100923, 2, "HordeEscorQuestTeleportHaluum_OnGossipSelect")