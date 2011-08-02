local QuestID = 2000020
local Quest_ID = 2000020
---------Define some Stuff--------
local Afreecaptive = 45459
local Aescortstart = 45460
local AescortFinish = 45461
local Alichkingwhisper = 45454
local Alichkingwhisperb = 48734
local Alichkingwhisperc = 45455
local GhoulPatrola = 55460
local GhoulPatrolb = 55467
local GhoulBirthPortala = 45466
local GhoulBirthPortal = 45453
------Portal Effect-----
local GhoulSummona = 48740
local GhoulSummonb = 48741
local GhoulSummonc = 48742
local GhoulSummond = 48743
local BlackHolea = 48735
local BlackHoleb = 48736
local BlackHolec = 48737
local BlackHoled = 48738
-------------BOSS---------
local AEscortBoss = 45476
local GeneralKalthen = 99841
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
-----------Alliance Escorting quest---------
function AllianceEscortFree_OnGossipTalk(pUnit, event, player, pMisc)
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

function AllianceEscortFree_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
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
	    pUnit:MoveTo(5342.601563, -3545.736084, 1574.412109, 3.421881)
	    pUnit:RegisterEvent("AllianceEscortQuestDespawn", 15000, 0) ----NPC is able to registerevents even though hes a Gossip....God i love my scripting - XDemonic
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
	    pUnit:MoveTo(5342.601563, -3545.736084, 1574.412109, 3.421881)
	    pUnit:RegisterEvent("AllianceEscortQuestDespawn", 15000, 0) ----NPC is able to registerevents even though hes a Gossip....God i love my scripting - XDemonic
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
	    pUnit:MoveTo(5342.601563, -3545.736084, 1574.412109, 3.421881)
	    pUnit:RegisterEvent("AllianceEscortQuestDespawn", 15000, 0) ----NPC is able to registerevents even though hes a Gossip....God i love my scripting - XDemonic
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


function Alliance_Thomus_Escort_Start(pUnit, Event) ---This Function does nothing, but allows the NPC to register Events...
end

RegisterUnitEvent(45459, 18, "Alliance_Thomus_Escort_Start")


function AllianceEscortQuestDespawn(pUnit, Event)
	pUnit:RemoveEvents()
    x = pUnit:GetX();
    y = pUnit:GetY();
    z = pUnit:GetZ();
    o = pUnit:GetO();
    pUnit:SpawnCreature(Aescortstart, x, y, z, o, 35, 0);
    pUnit:Despawn(1,0)
end

RegisterUnitGossipEvent(45459, 1, "AllianceEscortFree_OnGossipTalk")
RegisterUnitGossipEvent(45459, 2, "AllianceEscortFree_OnGossipSelect")
------------Excorting START!----------
function AllianceEscorta(pUnit, Event)
    Alliance_Escort_Scourge = pUnit
    pUnit:Emote(1,2000)
	Alliance_Escort_Scourge:SendChatMessage(12, 0, "Alright, everyone ready? good, lets move!")
	pUnit:RegisterEvent("AllianceEscortb", 3000, 0)
end

function AllianceEscortb(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:SetMovementType(256)
	pUnit:ModifyWalkSpeed(7)
	pUnit:MoveTo(5324.362793, -3560.384521, 1579.447998, 3.5)
	pUnit:RegisterEvent("AllianceEscortc", 4000, 0)
end

function AllianceEscortc(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:MoveTo(5303.715332, -3564.889404, 1590.776001, 2.881331)
	pUnit:RegisterEvent("AllianceEscortd", 3000, 0)
end

function AllianceEscortd(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:MoveTo(5267.804199, -3560.978516, 1593.898193, 3.055689)
	pUnit:RegisterEvent("AllianceEscorte", 5000, 0)
end

function AllianceEscorte(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:Emote(1,2000)
	pUnit:SendChatMessage(12, 0, "alright we are out of the camp, we should be fine now...")
	pUnit:MoveTo(5267.804199, -3560.978516, 1593.898193, 3.055689)
		pUnit:RegisterEvent("AllianceEscortf", 5000, 0)
end

function AllianceEscortf(pUnit, Event)
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
	pUnit:SpawnCreature(Alichkingwhisper, 5257.467773, -3530.171875, 1583, 4, 35, 1000);
	pUnit:MoveTo(5265.754883, -3554.574707, 1594.111206, 1.889667)
	pUnit:RegisterEvent("AllianceEscortg", 3000, 0)
end

function AllianceEscortg(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:Emote(1,2000)
	pUnit:SendChatMessage(12, 0, "Are you ok? you act like you just heard a ghost or somthing...")
	pUnit:RegisterEvent("AllianceEscorth", 3000, 0)
end

function AllianceEscorth(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:Emote(48,2000)
	pUnit:SetFaction(1)
	pUnit:SpawnCreature(Afreecaptive, 5347.456055, -3544.146484, 1573.453613, 3.550279, 1, 0);
	pUnit:SendChatMessage(12, 0, "Uh oh! we got trouble! how did they find us so fast?!")
    pUnit:SpawnCreature(45453, 5263.120605, -3536.412842, 1595.109326, 4.948006, 35, 5000);
	pUnit:SpawnCreature(45453, 5259.484375, -3537.932373, 1594.074463, 5.108230, 35, 5000);
	pUnit:SpawnCreature(45453, 5256.015625, -3538.205078, 1594.013794, 5.356416, 35, 5000);
	pUnit:RegisterEvent("AllianceEscorti", 2100, 0)
end

function AllianceEscorti(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:Emote(48,5000)
	pUnit:SendChatMessage(12, 0, "Get Ready!")
end
-----------The first waves of ghouls, indicates for Thomus to be in combat, makes it so i dont have multiple thomus.-----

function AllianceEscorta_Entercombat(pUnit, Event)
    pUnit:RemoveEvents()
end

function AllianceEscorta_Die(pUnit, Event)
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

RegisterUnitEvent(Aescortstart, 4, "AllianceEscorta_Die")
RegisterUnitEvent(Aescortstart, 1, "AllianceEscorta_Entercombat")
RegisterUnitEvent(Aescortstart, 18, "AllianceEscorta")

function AllianceLichKingwhisper(pUnit, Event)
	pUnit:SendChatMessage(8, 0, "YOU!...hahaha, lost you memory? dont worry, you will see me soon enough!")
end

RegisterUnitEvent(Alichkingwhisper, 18, "AllianceLichKingwhisper")

function GhoulPatrolBirthPortala(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:SetScale(.12)
    x = pUnit:GetX();
    y = pUnit:GetY();
    z = pUnit:GetZ();
    o = pUnit:GetO();
    pUnit:SpawnCreature(GhoulPatrola, x, y, z, o, 35, 0);
end

RegisterUnitEvent(GhoulBirthPortal, 18, "GhoulPatrolBirthPortala")
--------------
function GhoulPatrolBirth(pUnit, Event)
	pUnit:Emote(449,4000)
	pUnit:RegisterEvent("GhoulAttack", 4100, 0)
end

function GhoulAttack(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:SetFaction(45)
	pUnit:MoveTo(5265.738281, -3554.521240, 1594.110596, 5.243025)
end

function GhoulDie(pUnit, Event)
local GetFlags2 = ScriptDBQuery("SELECT Flags2 FROM quests_scripts WHERE Quest_ID = '"..QuestID.."'", 0):GetColumn(0):GetString()
local GetKillCount = ScriptDBQuery("SELECT Flags2 FROM quests_scripts WHERE Quest_ID = '"..QuestID.."'", 0):GetColumn(0):GetString() + 1
local SetFlags2 = "UPDATE quests_scripts SET Flags2='".. GetFlags2 + 1 .."' WHERE Quest_ID='"..QuestID.."'", 0
ScriptDBQuery(SetFlags2)
	pUnit:RemoveEvents()
	pUnit:Despawn(1,0)
	if GetKillCount == 1 then
	Alliance_Escort_Scourge:SendChatMessage(12, 0, "DIE SCOURGE!")
	end
	if GetKillCount == 2 then
	Alliance_Escort_Scourge:SendChatMessage(12, 0, "Another one down!")
	end
    if GetKillCount == 3 then
	Alliance_Escort_Scourge:SendChatMessage(12, 0, "Alright, thats all three. Lets move on...")
	Alliance_Escort_Scourge:RegisterEvent("A_GhoulWave1End", 2000, 0)
	end
	if GetKillCount == 11 then
	Alliance_Escort_Scourge:SendChatMessage(12, 0, "Lets move before more come!")
	ScriptDBQuery(AboutEnd)
	Alliance_Escort_Scourge:RegisterEvent("A_GhoulWave2End", 2000, 0)
	end
	if GetKillCount == 12 then
	Alliance_Escort_Scourge:RegisterEvent("GhoulWave3End", 2000, 0)
	end
end

RegisterUnitEvent(GhoulPatrola, 4, "GhoulDie")
RegisterUnitEvent(GhoulPatrola, 18, "GhoulPatrolBirth")
------------second escort guy--------
function A_GhoulWave1End(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:SetMovementType(256)
	pUnit:ModifyWalkSpeed(7)
	pUnit:MoveTo(5263.49, -3547.18, 1594.04, 1.88)
	pUnit:RegisterEvent("AllyEscortab2", 1000, 0)
end

function AllyEscortab2(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:SendChatMessage(12, 0, "Lets move on! I have a feeling there is going to be more of them!...But..why are they after us?...Im not important...Unless...they want you! In any case..lets move on.")
	pUnit:MoveTo(5248.45, -3503.95, 1593.45, 1.97)
	pUnit:RegisterEvent("AllyEscortac2", 7000, 0)
end

function AllyEscortac2(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:MoveTo(5254.65, -3490.62, 1593.6, 1)
	pUnit:RegisterEvent("AllyEscortad2", 3000, 0)
end

function AllyEscortad2(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:SendChatMessage(12, 0, "I have a bad feeling about this...")
	pUnit:MoveTo(5279.89, -3499.23, 1591.3, 1)
	pUnit:RegisterEvent("AllyEscortaf2", 3000, 0)
end

function AllyEscortaf2(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:MoveTo(5300.49, -3493.94, 1577.89, 1)
	pUnit:RegisterEvent("AllyEscortag2", 4000, 0)
end

function AllyEscortag2(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:MoveTo(5321.24, -3478.90, 1576.29, 1)
	pUnit:RegisterEvent("AllyEscortah2", 2000, 0)
end
--[[
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
------------------]]
function AllyEscortah2(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:SpawnCreature(GhoulBirthPortala, 5354.14, -3484.21, 1571.72, 2.9, 35, 0);
	pUnit:SpawnCreature(GhoulBirthPortala, 5354.81, -3476.50, 1571.56, 2.9, 35, 0);
	pUnit:SpawnCreature(GhoulBirthPortala, 5352.39, -3469.32, 1571.74, 3.4, 35, 0);
	pUnit:SpawnCreature(GhoulBirthPortala, 5347.90, -3463.42, 1571.46, 3.5, 35, 0);
	pUnit:SendChatMessage(12, 0, "They got reinforcements! Get ready!")
	pUnit:MoveTo(5332.73, -3475.33, 1573.80, 1)
end

function AGhoulPatrolBirthPortal(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:SetScale(.25)
    x = pUnit:GetX();
    y = pUnit:GetY();
    z = pUnit:GetZ();
    o = pUnit:GetO();
    pUnit:SpawnCreature(55467, x, y, z, o, 35, 0);
	pUnit:RegisterEvent("AGhoulPatrolBirthPortalc", 15000, 0)
end

function AGhoulPatrolBirthPortalc(pUnit, Event)
	pUnit:RemoveEvents()
    x = pUnit:GetX();
    y = pUnit:GetY();
    z = pUnit:GetZ();
    o = pUnit:GetO();
    pUnit:SpawnCreature(55467, x, y, z, o, 35, 0);
	pUnit:RegisterEvent("AGhoulPatrolBirthPortalb", 4000, 0)
end

function AGhoulPatrolBirthPortalb(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:Despawn(1,0)
end

RegisterUnitEvent(GhoulBirthPortala, 18, "AGhoulPatrolBirthPortal")

function AGhoulPatrolBirth(pUnit, Event)
	pUnit:Emote(449,4000)
	pUnit:RegisterEvent("AGhoulAttackb", 4100, 0)
end

function AGhoulAttackb(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:SetFaction(1626)
	pUnit:MoveTo(5327.35, -3478.00, 1575.43, 1)
end

RegisterUnitEvent(GhoulPatrolb, 4, "GhoulDie")
RegisterUnitEvent(GhoulPatrolb, 18, "AGhoulPatrolBirth")
------------------
function A_GhoulWave2End(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:SpawnCreature(Alichkingwhisperb, 5322.71, -3452.36, 1566.32, 1, 35, 1000);
	pUnit:MoveTo(5340.00, -3457.00, 1571.24, 1)
	pUnit:RegisterEvent("AllyEscortbb2", 4000, 0)
end

function AllyEscortbb2(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:SendChatMessage(12, 0, "Cmon, we are almost at the camp!")
	pUnit:MoveTo(5315.31, -3445.92, 1571.41, 1)
	pUnit:RegisterEvent("AllyEscortbc2", 5000, 0)
end
--[[
function HordeEscortExtraa(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:MoveTo(4969.034668, -2590.043213, 1423.317383, 1)
	pUnit:RegisterEvent("HordeEscortbc2", 2000, 0)
end
--]]
function AllyEscortbc2(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:SpawnCreature(BlackHolea, 5309.60, -3432.71, 1569.97, 1, 35, 37500);
	pUnit:SpawnCreature(BlackHoleb, 5299.91, -3444.70, 1571.43, 1, 35, 37500);
	pUnit:SpawnCreature(BlackHolec, 5304.89, -3424.05, 1570.53, 1, 35, 37500);
	pUnit:SpawnCreature(BlackHoled, 5291.40, -3441.46, 1570.96, 1, 35, 37500);
	pUnit:SpawnCreature(6664, 5289.88, -3426.92, 1570.66, 5.608, 35, 0);
	pUnit:SendChatMessage(12, 0, "...did you hear somthing?...")
	pUnit:RegisterEvent("AllyEscortbd", 6000, 0)
end

function AllyEscortbd(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:SetMovementType(0)
	pUnit:ModifyWalkSpeed(2.5)
	pUnit:MoveTo(5308.29, -3441.25, 1570.96, 1)
	pUnit:SendChatMessage(12, 0, "Watch out! theres more of them!....huh? they are not atacking...")
	pUnit:RegisterEvent("AllyEscortbe", 6000, 0)
end

function AllyEscortbe(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:SendChatMessage(12, 0, "That Doesnt look good!")
end
--[[
function HordeLichKingwhisperb(pUnit, Event)
	pUnit:SendChatMessage(8, 0, "You failed to amuse me...Lets see what I can do to finish you off!")
end

RegisterUnitEvent(Hlichkingwhisperb, 18, "HordeLichKingwhisperb")
---------------------]]
function ABlackHoleGhoula(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:SetScale(.12)
    x = pUnit:GetX();
    y = pUnit:GetY();
    z = pUnit:GetZ();
	o = pUnit:GetZ();
    pUnit:SpawnCreature(GhoulSummona, x, y, z, o, 35, 0);
end

RegisterUnitEvent(BlackHolea, 18, "ABlackHoleGhoula")

function ABlackHoleGhoulb(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:SetScale(.12)
    x = pUnit:GetX();
    y = pUnit:GetY();
    z = pUnit:GetZ();
	o = pUnit:GetZ();
    pUnit:SpawnCreature(GhoulSummonb, x, y, z, o, 35, 0);
end

RegisterUnitEvent(BlackHoleb, 18, "ABlackHoleGhoulb")

function ABlackHoleGhoulc(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:SetScale(.12)
    x = pUnit:GetX();
    y = pUnit:GetY();
    z = pUnit:GetZ();
	o = pUnit:GetZ();
    pUnit:SpawnCreature(GhoulSummonc, x, y, z, o, 35, 0);
end

RegisterUnitEvent(BlackHolec, 18, "ABlackHoleGhoulc")

function ABlackHoleGhould(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:SetScale(.12)
    x = pUnit:GetX();
    y = pUnit:GetY();
    z = pUnit:GetZ();
	o = pUnit:GetZ();
    pUnit:SpawnCreature(GhoulSummond, x, y, z, o, 35, 0);
end

RegisterUnitEvent(BlackHoled, 18, "ABlackHoleGhould")
----------------------------------
local ABoss_Portal -----umm...not defineing anything?....
local AGhoul_Define_a
local AGhoul_Define_b
local AGhoul_Define_c
local AGhoul_Define_d

function AGhoul_Define_a_Def(pUnit, event)
	AGhoul_Define_a = pUnit
	    AGhoul_Define_a:Emote(449,4000)
	    AGhoul_Define_a:RegisterEvent("AGhoulCastercasta", 10000, 1)
end
RegisterUnitEvent(GhoulSummona, 18, "AGhoul_Define_a_Def")
function AGhoul_Define_b_Def(pUnit, event)
	AGhoul_Define_b = pUnit
		AGhoul_Define_b:Emote(449,4000)
	    AGhoul_Define_b:RegisterEvent("AGhoulCastercastb", 10000, 1)
end
RegisterUnitEvent(GhoulSummonb, 18, "AGhoul_Define_b_Def")
function AGhoul_Define_c_Def(pUnit, event)
	AGhoul_Define_c = pUnit
		AGhoul_Define_c:Emote(449,4000)
	    AGhoul_Define_c:RegisterEvent("AGhoulCastercastc", 10000, 1)
end
RegisterUnitEvent(GhoulSummonc, 18, "AGhoul_Define_c_Def")
function AGhoul_Define_d_Def(pUnit, event)
	AGhoul_Define_d = pUnit
	    AGhoul_Define_d:Emote(449,4000)
	    AGhoul_Define_d:RegisterEvent("AGhoulCastercastd", 10000, 1)
end
RegisterUnitEvent(GhoulSummond, 18, "AGhoul_Define_d_Def")

function ABoss_Portal_Define(pUnit, event)
	ABoss_Portal = pUnit
		ABoss_Portal:RegisterEvent("A_setportalvisual", 20000, 0)
end
RegisterUnitEvent(6664, 18, "ABoss_Portal_Define")
-------------------------------------------------------

function A_setportalvisual(pUnit, event)
       	ABoss_Portal:RemoveEvents()
        ABoss_Portal:FullCastSpell(40280) -- The awesome portal visual
		ABoss_Portal:RegisterEvent("A_Portal_Spawn_Boss", 10000, 0)
end

function A_Portal_Spawn_Boss(pUnit, event)
       	ABoss_Portal:RemoveEvents()
    x = ABoss_Portal:GetX();
    y = ABoss_Portal:GetY();
    z = ABoss_Portal:GetZ();
    o = ABoss_Portal:GetO();
    ABoss_Portal:SpawnCreature(45476, x, y, z, o, 35, 0);
		ABoss_Portal:RegisterEvent("A_Boss_Portal_Despawna", 5000, 0)
end

function A_Boss_Portal_Despawna(pUnit, event)
       	ABoss_Portal:RemoveEvents()
        AGhoul_Define_a:Despawn(1,0)
		AGhoul_Define_b:Despawn(1,0)
		AGhoul_Define_c:Despawn(1,0)
		AGhoul_Define_d:Despawn(1,0)
		ABoss_Portal:RegisterEvent("ABoss_Portal_Despawnb", 2500, 0)
end

function ABoss_Portal_Despawnb(pUnit, event)
       	ABoss_Portal:RemoveEvents()
		ABoss_Portal:Despawn(1,0)
end
-------------The Ghouls Doing the Portal Event Beam!---------
function AGhoulCastercasta(pUnit, Event)
	pUnit:FullCastSpellOnTarget(30402, ABoss_Portal)
end
-------------------
function AGhoulCastercastb(pUnit, Event)
	pUnit:FullCastSpellOnTarget(30402, ABoss_Portal)
end
------------------
function AGhoulCastercastc(pUnit, Event)
	pUnit:FullCastSpellOnTarget(30402, ABoss_Portal)
end
-------------------
function AGhoulCastercastd(pUnit, Event)
	pUnit:FullCastSpellOnTarget(30402, ABoss_Portal)
end
----------------------
function AABossFight(pUnit, Event)
	pUnit:MoveTo(5297.45, -3433.25, 1570.81, 1)
	pUnit:RegisterEvent("AABossFighta", 4000, 0)
end

function AABossFighta(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:SendChatMessage(12, 0, "So, Arthas has sent me to defeat you? what a joke!")
	pUnit:RegisterEvent("AABossFightb", 3000, 0)
end

function AABossFightb(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:MoveTo(5309.01, -3442.14, 1571.04, 1)
	pUnit:SendChatMessage(12, 0, "If you stand still, Ill make this quick and painless!")
	pUnit:RegisterEvent("AABossFightc", 3000, 0)
end

function AABossFightc(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:SetFaction(1626)
	pUnit:SendChatMessage(12, 0, "DIE!")
end

function AABossFight_Leavecombat(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:SendChatMessage(12, 0, "HAHAHAHA! Weak!")
end

function AABossFight_Kill(pUnit, Event)
    pUnit:RemoveEvents()
	pUnit:SendChatMessage(12, 0, "HAHAHA! Pethetic!")
end

function AABossFight_Die(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:Despawn(5000,0)
	pUnit:SpawnCreature(Alichkingwhisperc, 5322.71, -3452.36, 1566.32, 1, 35, 1000);
	pUnit:SendChatMessage(12, 0, "Master...I...Failed you...")
	--Alliance_Escort_Scourge:RegisterEvent("GhoulWave3End", 2000, 0)
end

RegisterUnitEvent(AEscortBoss, 3, "AABossFight_Kill")
RegisterUnitEvent(AEscortBoss, 4, "AABossFight_Die")
RegisterUnitEvent(AEscortBoss, 2, "AABossFight_Leavecombat")
RegisterUnitEvent(AEscortBoss, 18, "AABossFight")
-------------------------------------
function AllyLichKingwhisperc(pUnit, Event)
	pUnit:SendChatMessage(8, 0, "Hmmmm, perhaps I have under estimated you...It seems you are not worthless afterall. You are free to go...For now.")
end

RegisterUnitEvent(Alichkingwhisperc, 18, "AllyLichKingwhisperc")
----------------------------------
function GenK_Entercombat(pUnit, Event)
    	pUnit:SendChatMessage(12, 0, "Fools! You dare cross blades with an immortal?")
end

RegisterUnitEvent(GeneralKalthen, 1, "GenK_Entercombat")