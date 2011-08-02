--------=========Defines===========-------
local CommanderStart
local CommanderQuest
local CommanderFight
local Guard1
local Guard2
local Guard3 ----All of these MEANS NOTHING! this helps me Define a pUnit so i can multitask functions
local Guard4
local Cloud
local Lightningmob
local Lightningspell
local Boss
-----------------------------------------
function AllianceCommanderStart_OnGossipTalk(pUnit, event, player, pMisc)
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "Defend The Camp! [Quest]", 1, 0)
   pUnit:GossipMenuAddItem(0, "Never Mind", 2, 0)
   pUnit:GossipSendMenu(player)
end

function AllianceCommanderStart_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
if (intid == 1) then
   if (player:HasFinishedQuest(2000023) == false) then
   player:GossipComplete()
   player:SendBroadcastMessage("You dont meet the requirments for this quest!")
   player:SendAreaTriggerMessage("You dont meet the requirments for this quest!")
   else
   if (player:HasFinishedQuest(2000024) == true) then
   player:GossipComplete()
   player:SendBroadcastMessage("You ALREADY did this quest!")
   player:SendAreaTriggerMessage("You ALREADY did this quest!")
   else
   player:SendBroadcastMessage("It is recomended to have at least 2 players! Are you sure you want to go on?")
   player:SendAreaTriggerMessage("It is recomended to have at least 2 players! Are you sure you want to go on?")
pUnit:GossipCreateMenu(99, player, 0)
   pUnit:GossipMenuAddItem(9, "I have at least 2 players for this group quest, I am ready!", 3, 0)
   pUnit:GossipMenuAddItem(9, "I am not ready yet.", 2, 0)
pUnit:GossipSendMenu(player)
end
end
end

if (intid == 3) then
   	pUnit:SendChatMessage(42, 0, "Grab the Defend Quest. The quest WILL NOT be acceptable in 20 seconds!")
       x = pUnit:GetX();
       y = pUnit:GetY();
       z = pUnit:GetZ();
       o = pUnit:GetO();
	   z = z + 0.5
       pUnit:SpawnCreature(244584, x, y, z, o, 1, 0);
       pUnit:Despawn(1,0)
end
end

RegisterUnitGossipEvent(244583, 1, "AllianceCommanderStart_OnGossipTalk")
RegisterUnitGossipEvent(244583, 2, "AllianceCommanderStart_OnGossipSelect")

function AllianceDefendQuest(pUnit, Event)
    pUnit:Emote(1,2000)
	pUnit:SendChatMessage(12, 0, "Alright Get ready, I have a feeling trouble will be here at any moment!")
	pUnit:RegisterEvent("AllianceDefendQuestDespawn", 20000, 0)
end

function AllianceDefendQuestDespawn(pUnit, Event)
       x = pUnit:GetX();
       y = pUnit:GetY();
       z = pUnit:GetZ();
       o = pUnit:GetO();
	   z = z + 0.5
       pUnit:SpawnCreature(244582, x, y, z, o, 1, 0);
       pUnit:Despawn(1,0)
end

RegisterUnitEvent(244584, 18, "AllianceDefendQuest")
----------Defines (For Cinimetic and Drama, Hard Scripting)-----------
---Define Stage 1----------
local Commander_Fight -----umm...not defineing anything?....
local Guard_1
local Guard_2
local Guard_3
local Guard_4
local Cloud_Effect
local Main_Boss
-----Define Stage 2-------
function Commander_Fight_Define(pUnit, event)
	Commander_Fight = pUnit
	Commander_Fight:RegisterEvent("AllianceDefend1", 1000, 0)
end

RegisterUnitEvent(244582, 18, "Commander_Fight_Define")

function Guard_1_Define(pUnit, event)
	Guard_1 = pUnit
end

RegisterUnitEvent(244585, 18, "Guard_1_Define")

function Guard_2_Define(pUnit, event)
	Guard_2 = pUnit
end

RegisterUnitEvent(244586, 18, "Guard_2_Define")

function Guard_3_Define(pUnit, event)
	Guard_3 = pUnit
end

RegisterUnitEvent(244587, 18, "Guard_3_Define")

function Guard_4_Define(pUnit, event)
	Guard_4 = pUnit
end

RegisterUnitEvent(244588, 18, "Guard_4_Define")

function Cloud_Effect_Define(pUnit, event)
	Cloud_Effect = pUnit
end

RegisterUnitEvent(5559821, 18, "Cloud_Effect_Define")

function Main_Boss_Define(pUnit, event)
	Main_Boss = pUnit
	Main_Boss:CastSpell(24240)
	Main_Boss:SendChatMessage(12, 0, "Arthas is giving me a great reward for killing you all!")
	Main_Boss:RegisterEvent("MainBossAttack", 500, 0)
end

RegisterUnitEvent(244590, 18, "Main_Boss_Define")

function Timer_Define(pUnit, event)
	Timer = pUnit
end

RegisterUnitEvent(244591, 18, "Timer_Define")
----------Script Start--------
function AllianceDefend1(pUnit, Event)
	Commander_Fight:RemoveEvents()
	Guard_1:RemoveEvents()
	Guard_2:RemoveEvents()
	Guard_3:RemoveEvents()
	Guard_4:RemoveEvents()
	Commander_Fight:SendChatMessage(12, 0, "Everyone Get Ready!")
	Commander_Fight:MoveTo(5154.557129, -3322.852295, 1639.848511, 6.213498)
	Guard_1:MoveTo(5154.412109, -3324.922363, 1639.477051, 6.213498)
	Guard_2:MoveTo(5154.069336, -3329.833008, 1638.539307, 6.213498)
	Guard_3:MoveTo(5154.783203, -3319.610107, 1640.429688, 6.213498)
	Guard_4:MoveTo(5155.043945, -3315.871826, 1641.150635, 6.213498)
	Commander_Fight:RegisterEvent("AllianceDefend2", 7500, 0)
end

function AllianceDefend2(pUnit, Event)
    Commander_Fight:RemoveEvents()
	Guard_1:RemoveEvents()
	Guard_2:RemoveEvents()
	Guard_3:RemoveEvents()
	Guard_4:RemoveEvents()
	Commander_Fight:SendChatMessage(12, 0, "Alright! Everyone hold your ground!")
	Commander_Fight:Emote(48,10000)
	Guard_1:Emote(45,10000)
	Guard_2:Emote(45,10000)
	Guard_3:Emote(45,10000)
	Guard_4:Emote(45,10000)
	Guard_1:RegisterEvent("AllianceDefend3", 3000, 0)
end

function AllianceDefend3(pUnit, Event)
	Commander_Fight:RemoveEvents()
	Guard_1:RemoveEvents()
	Guard_2:RemoveEvents()
	Guard_3:RemoveEvents()
	Guard_4:RemoveEvents()
	Guard_1:SpawnCreature(244591, 5164.85887, -3292.781250, 1650, 5, 35, 0);
	Guard_1:SendChatMessage(12, 0, "Yes Sir!")
	Commander_Fight:RegisterEvent("AllianceDefend4", 5000, 0)
end

function AllianceDefend4(pUnit, Event)
	Commander_Fight:RemoveEvents()
	Guard_1:RemoveEvents()
	Guard_2:RemoveEvents()
	Guard_3:RemoveEvents()
	Guard_4:RemoveEvents()
	Timer:SpawnCreature(5559821, 5172.104004, -3318.311523, 1664, 5, 35, 65000);
	Timer:SpawnCreature(5559821, 5172.836914, -3309.038330, 1664, 5, 35, 65000);
	Timer:SpawnCreature(5559821, 5180.127441, -3310.215820, 1664, 5, 35, 65000);
	Timer:SpawnCreature(5559821, 5179.936523, -3318.514648, 1664, 5, 35, 65000);
	Timer:SpawnCreature(5559821, 5187.360352, -3326.174072, 1664, 5, 35, 65000);
	Timer:SpawnCreature(5559821, 5189.148438, -3317.030762, 1664, 5, 35, 65000);
	Commander_Fight:SendChatMessage(12, 0, "Here they come! From Above! Looks like Arthas has a new trick up his sleeve!")
	Timer:RegisterEvent("TimerSpawn1", 5000, 0)
	Commander_Fight:RegisterEvent("AllianceDefend5", 3000, 0)
end

function AllianceDefend5(pUnit, Event)
	Commander_Fight:RemoveEvents()
	Commander_Fight:SetMovementType(256)
	Commander_Fight:ModifyWalkSpeed(7)
	Guard_1:SetMovementType(256)
	Guard_1:ModifyWalkSpeed(7)
	Guard_2:SetMovementType(256)
	Guard_2:ModifyWalkSpeed(7)
	Guard_3:SetMovementType(256)
	Guard_3:ModifyWalkSpeed(7)
	Guard_4:SetMovementType(256)
	Guard_4:ModifyWalkSpeed(7)
	Commander_Fight:MoveTo(5177.360352, -3321.459229, 1641.745605, 6.213498)
	Guard_1:MoveTo(5177.360352, -3321.459229, 1641.745605, 6.213498)
	Guard_2:MoveTo(5177.360352, -3321.459229, 1641.745605, 6.213498)
	Guard_3:MoveTo(5177.360352, -3321.459229, 1641.745605, 6.213498)
	Guard_4:MoveTo(5177.360352, -3321.459229, 1641.745605, 6.213498)
	Commander_Fight:SendChatMessage(14, 0, "CHARGE!")
end
--------Remove Events On Combat--------
function Commander_Fight_Entercombat(pUnit, Event)
    Commander_Fight:RemoveEvents()
end

RegisterUnitEvent(244582, 1, "Commander_Fight_Entercombat")

function Guard_1_Entercombat(pUnit, Event)
    Guard_1:RemoveEvents()
end

RegisterUnitEvent(244585, 1, "Guard_1_Entercombat")

function Guard_2_Entercombat(pUnit, Event)
    Guard_2:RemoveEvents()
end

RegisterUnitEvent(244586, 1, "Guard_2_Entercombat")

function Guard_3_Entercombat(pUnit, Event)
    Guard_3:RemoveEvents()
end

RegisterUnitEvent(244587, 1, "Guard_3_Entercombat")

function Guard_4_Entercombat(pUnit, Event)
    Guard_4:RemoveEvents()
end

RegisterUnitEvent(244588, 1, "Guard_4_Entercombat")
-------Remove Events On Death-------
function Commander_Fight_Die(pUnit, Event)
	Commander_Fight:RemoveEvents()
	Commander_Fight:Despawn(1,0)
	Guard_1:Despawn(1,0)
	Guard_2:Despawn(1,0)
	Guard_3:Despawn(1,0)
	Guard_4:Despawn(1,0)
	Timer:SpawnCreature(244586, 5147.229980, -3329.870117, 1638.2, 6.229420, 1, 0);
	Timer:SpawnCreature(244585, 5147.060059, -3325.449951, 1638.9, 6.229420, 1, 0);
	Timer:SpawnCreature(244587, 5146.350098, -3319.040039, 1640.8, 6.229420, 1, 0);
	Timer:SpawnCreature(244588, 5146.560059, -3315.139893, 1641.9, 6.229420, 1, 0);
	Timer:SpawnCreature(244583, 5144.37, -3321.93, 1639.7, 6.22942, 1, 0);
	Timer:RegisterEvent("ScriptResetDeath", 1000, 0)
end

RegisterUnitEvent(244582, 4, "Commander_Fight_Die")

function Guard_1_Die(pUnit, Event)
	Guard_1:RemoveEvents()
	Guard_1:SendChatMessage(12, 0, "UGH!")
end

RegisterUnitEvent(244585, 4, "Guard_1_Die")

function Guard_2_Die(pUnit, Event)
	Guard_2:RemoveEvents()
	Guard_2:SendChatMessage(12, 0, "I let you down...Captain.")
end

RegisterUnitEvent(244586, 4, "Guard_2_Die")

function Guard_3_Die(pUnit, Event)
	Guard_3:RemoveEvents()
	Guard_3:SendChatMessage(12, 0, "I cant fight any longer, Farwell Captain.")
end

RegisterUnitEvent(244587, 4, "Guard_3_Die")

function Guard_4_Die(pUnit, Event)
	Guard_4:RemoveEvents()
	Guard_4:SendChatMessage(12, 0, "Arthas has beaten me!")
end

RegisterUnitEvent(244588, 4, "Guard_4_Die")
--------Timer Events--------
function TimerSpawn1(pUnit, Event)
	Timer:RemoveEvents()
	Timer:SpawnCreature(244593, 5178.359375, -3317.666504, 1642.3, 5, 35, 0);
	Timer:SpawnCreature(244593, 5177.068359, -3310.028320, 1643.9, 5, 35, 0);
	Timer:SpawnCreature(244593, 5179.159180, -3324.205566, 1641.6, 5, 35, 0);
	Timer:RegisterEvent("TimerSpawn2", 20000, 0)
end

function TimerSpawn2(pUnit, Event)
	Timer:RemoveEvents()
	Timer:SendChatMessage(42, 0, "1 Minute And 20 seconds Untill Boss Arrives!")
	Timer:SpawnCreature(244593, 5178.359375, -3317.666504, 1642.3, 5, 35, 0);
	Timer:SpawnCreature(244593, 5177.068359, -3310.028320, 1643.9, 5, 35, 0);
	Timer:SpawnCreature(244593, 5179.159180, -3324.205566, 1641.6, 5, 35, 0);
	Timer:SpawnCreature(244593, 5184.381348, -3317.535889, 1642.9, 5, 35, 0);
	Timer:RegisterEvent("TimerSpawn3", 20000, 0)
end

function TimerSpawn3(pUnit, Event)
	Timer:RemoveEvents()
	Timer:SendChatMessage(42, 0, "1 Minute Untill Boss Arrives!")
	Timer:SpawnCreature(244593, 5178.359375, -3317.666504, 1642.3, 5, 35, 0);
	Timer:SpawnCreature(244593, 5177.068359, -3310.028320, 1643.9, 5, 35, 0);
	Timer:SpawnCreature(244593, 5179.159180, -3324.205566, 1641.6, 5, 35, 0);
	Timer:SpawnCreature(244593, 5184.381348, -3317.535889, 1642.9, 5, 35, 0);
	Timer:SpawnCreature(244593, 5185.192871, -3325.400635, 1642.1, 5, 35, 0);
	Timer:RegisterEvent("TimerSpawn4", 20000, 0)
end

function TimerSpawn4(pUnit, Event)
	Timer:RemoveEvents()
	Timer:SendChatMessage(42, 0, "40 Seconds Untill Boss Arrives!")
	Timer:SpawnCreature(244593, 5178.359375, -3317.666504, 1642.3, 5, 35, 0);
	Timer:SpawnCreature(244593, 5177.068359, -3310.028320, 1643.9, 5, 35, 0);
	Timer:SpawnCreature(244593, 5179.159180, -3324.205566, 1641.6, 5, 35, 0);
	Timer:SpawnCreature(244593, 5184.381348, -3317.535889, 1642.9, 5, 35, 0);
	Timer:SpawnCreature(244593, 5185.192871, -3325.400635, 1642.1, 5, 35, 0);
	Timer:RegisterEvent("TimerSpawn5", 20000, 0)
end

function TimerSpawn5(pUnit, Event)
	Timer:RemoveEvents()
	Timer:SendChatMessage(42, 0, "20 Seconds Untill Boss Arrives!")
	Timer:RegisterEvent("TimerSpawn6", 20000, 0)
end

function TimerSpawn6(pUnit, Event)
	Timer:RemoveEvents()
	Timer:SendChatMessage(42, 0, "The Boss Has Arrived!")
	Timer:SpawnCreature(244590, 5183.368164, -3319.854248, 1642.492676, 3.0492676, 1626, 0);
	Timer:RegisterEvent("TimerSpawn7", 300000, 0) ----Registers a Event if nothing happens for 5 minutes
end

function TimerSpawn7(pUnit, Event) ----A Event that Resets Script when nothing happens for 5 minutes
	Commander_Fight:RemoveEvents()
	Commander_Fight:Despawn(1,0) ---Despawns OLD Captain
	Guard_1:Despawn(1,0) ---Despawns Old Guards
	Guard_2:Despawn(1,0)
	Guard_3:Despawn(1,0)
	Guard_4:Despawn(1,0)
	Timer:SpawnCreature(244586, 5147.229980, -3329.870117, 1638.2, 6.229420, 1, 0);
	Timer:SpawnCreature(244585, 5147.060059, -3325.449951, 1638.9, 6.229420, 1, 0);
	Timer:SpawnCreature(244587, 5146.350098, -3319.040039, 1640.8, 6.229420, 1, 0);
	Timer:SpawnCreature(244588, 5146.560059, -3315.139893, 1641.9, 6.229420, 1, 0);
	Timer:SpawnCreature(244583, 5144.37, -3321.93, 1639.7, 6.22942, 1, 0);
	Timer:RegisterEvent("ScriptResetDeath", 1000, 0)
end
----------Timer Event when Commander Dies--------
function ScriptResetDeath(pUnit, Event)
    Timer:RemoveEvents()
    Timer:SendChatMessage(42, 0, "Quest Failed: Captain Burnside Died!")
	Timer:Despawn(1,0)
	Main_Boss:Despawn(1,0)
end
--------Lightning Spawn Mob-------
function Light_Spell_Wait(pUnit, event)
	pUnit:RegisterEvent("SpellSpawnMob", 500, 0)
end

function SpellSpawnMob(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:CastSpell(47693)
    x = pUnit:GetX();
    y = pUnit:GetY();
    z = pUnit:GetZ();
    o = pUnit:GetO();
    pUnit:SpawnCreature(244592, x, y, z, o, 1626, 0);
	pUnit:RegisterEvent("LightningDespawn", 5000, 0)
end

function LightningDespawn(pUnit, Event)
    pUnit:RemoveEvents()
	pUnit:Despawn(1,0)
end

RegisterUnitEvent(244593, 18, "Light_Spell_Wait")
--------------Lightning Mobs------------
function Light_Mob_Wait(pUnit, event)
	pUnit:RegisterEvent("LightningMobAttack", 500, 0)
end

function LightningMobAttack(pUnit, Event)
    pUnit:RemoveEvents()
	pUnit:MoveTo(5152.980857, -3322.870605, 1639.791382, 2.996323)
end

function LightningMob_Entercombat(pUnit, Event)
    pUnit:RemoveEvents()
end

function LightningMob_Die(pUnit, Event)
    pUnit:RemoveEvents()
	pUnit:Despawn(1,0)
end

function LightningMob_Leavecombat(pUnit, Event)
    pUnit:RemoveEvents()
	pUnit:RegisterEvent("LightningMobDespawn", 5000, 0)
end

function LightningMobDespawn(pUnit, Event)
    pUnit:RemoveEvents()
	pUnit:Despawn(1,0)
end

RegisterUnitEvent(244592, 18, "Light_Mob_Wait")
RegisterUnitEvent(244592, 4, "LightningMob_Die")
RegisterUnitEvent(244592, 1, "LightningMob_Entercombat")
RegisterUnitEvent(244592, 2, "LightningMob_Leavecombat")
----------Boss----------
function MainBossAttack(pUnit, Event)
	Main_Boss:RemoveEvents()
	Main_Boss:MoveTo(5152.980857, -3322.870605, 1639.791382, 2.996323)
end

function MainBoss_Entercombat(pUnit, Event)
    Main_Boss:RemoveEvents()
end

function MainBoss_Die(pUnit, Event)
    Main_Boss:RemoveEvents()
	Timer:RemoveEvents()
	Main_Boss:SendChatMessage(12, 0, "NOOOOOOOOOO!")
	Commander_Fight:Despawn(1,0)
	Guard_1:Despawn(1,0)
	Guard_2:Despawn(1,0)
	Guard_3:Despawn(1,0)
	Guard_4:Despawn(1,0)
	Timer:SpawnCreature(244586, 5147.229980, -3329.870117, 1638.2, 6.229420, 1, 0);
	Timer:SpawnCreature(244585, 5147.060059, -3325.449951, 1638.9, 6.229420, 1, 0);
	Timer:SpawnCreature(244587, 5146.350098, -3319.040039, 1640.8, 6.229420, 1, 0);
	Timer:SpawnCreature(244588, 5146.560059, -3315.139893, 1641.9, 6.229420, 1, 0);
	Timer:SpawnCreature(244583, 5144.37, -3321.93, 1639.7, 6.22942, 1, 0);
	Timer:Despawn(1,0)
	Main_Boss:Despawn(1,0)
end

function MainBoss_Leavecombat(pUnit, Event)
    pUnit:RemoveEvents()
	pUnit:RegisterEvent("MainBossDespawn", 5000, 0)
end

function MainBossDespawn(pUnit, Event)
    pUnit:RemoveEvents()
	pUnit:Despawn(1,0)
end


RegisterUnitEvent(244590, 2, "MainBoss_Leavecombat")
RegisterUnitEvent(244590, 4, "MainBoss_Die")
RegisterUnitEvent(244590, 1, "MainBoss_Entercombat")
