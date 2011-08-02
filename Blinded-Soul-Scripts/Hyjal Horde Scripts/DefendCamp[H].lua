--------=========Defines===========-------
local HCommanderStart
local HCommanderQuest
local HCommanderFight
local HGuard1
local HGuard2
local HGuard3 ----All of these MEANS NOTHING! this helps me Define a pUnit so i can multitask functions
local HGuard4
local Cloud
local Lightningmob
local Lightningspell
local Boss
-----------------------------------------
function HordeHCommanderStart_OnGossipTalk(pUnit, event, player, pMisc)
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "Defend The Camp! [Quest]", 1, 0)
   pUnit:GossipMenuAddItem(0, "Never Mind", 2, 0)
   pUnit:GossipSendMenu(player)
end

function HordeHCommanderStart_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
if (intid == 1) then
   if (player:HasFinishedQuest(1000023) == false) then
   player:GossipComplete()
   player:SendBroadcastMessage("You dont meet the requirments for this quest!")
   player:SendAreaTriggerMessage("You dont meet the requirments for this quest!")
   else
   if (player:HasFinishedQuest(1000024) == true) then
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
       pUnit:SpawnCreature(99836, x, y, z, o, 2, 0);
       pUnit:Despawn(1,0)
end
end

RegisterUnitGossipEvent(99835, 1, "HordeHCommanderStart_OnGossipTalk")
RegisterUnitGossipEvent(99835, 2, "HordeHCommanderStart_OnGossipSelect")

function HordeDefendQuest(pUnit, Event)
    pUnit:Emote(1,2000)
	pUnit:SendChatMessage(12, 0, "Alright Get ready, I have a feeling trouble will be here at any moment!")
	pUnit:RegisterEvent("HordeDefendQuestDespawn", 20000, 0)
end

function HordeDefendQuestDespawn(pUnit, Event)
       x = pUnit:GetX();
       y = pUnit:GetY();
       z = pUnit:GetZ();
       o = pUnit:GetO();
	   z = z + 0.5
       pUnit:SpawnCreature(99837, x, y, z, o, 2, 0);
       pUnit:Despawn(1,0)
end

RegisterUnitEvent(99836, 18, "HordeDefendQuest")
----------Defines (For Cinimetic and Drama, Hard Scripting)-----------
---Define Stage 1----------
local HCommander_Fight -----umm...not defineing anything?....
local HGuard_1
local HGuard_2
local HGuard_3
local HGuard_4
local Cloud_Effect
local Main_Boss
-----Define Stage 2-------
function HCommander_Fight_Define(pUnit, event)
	HCommander_Fight = pUnit
	HCommander_Fight:RegisterEvent("HordeDefend1", 1000, 0)
end

RegisterUnitEvent(99837, 18, "HCommander_Fight_Define")

function HGuard_1_Define(pUnit, event)
	HGuard_1 = pUnit
end

RegisterUnitEvent(59842, 18, "HGuard_1_Define")

function HGuard_2_Define(pUnit, event)
	HGuard_2 = pUnit
end

RegisterUnitEvent(59843, 18, "HGuard_2_Define")

function HGuard_3_Define(pUnit, event)
	HGuard_3 = pUnit
end

RegisterUnitEvent(59844, 18, "HGuard_3_Define")

function HGuard_4_Define(pUnit, event)
	HGuard_4 = pUnit
end

RegisterUnitEvent(59845, 18, "HGuard_4_Define")

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

RegisterUnitEvent(244580, 18, "Main_Boss_Define")

function Timer_Define(pUnit, event)
	Timer = pUnit
end

RegisterUnitEvent(244495, 18, "Timer_Define")
----------Script Start--------
function HordeDefend1(pUnit, Event)
	HCommander_Fight:RemoveEvents()
	HGuard_1:RemoveEvents()
	HGuard_2:RemoveEvents()
	HGuard_3:RemoveEvents()
	HGuard_4:RemoveEvents()
	HCommander_Fight:SendChatMessage(12, 0, "Everyone Get Ready!")
	HCommander_Fight:MoveTo(5332.104004, -2170.062744, 1269.985962, 1)
	HGuard_1:MoveTo(5329.975098, -2167.717529, 1269.480469, 1)
	HGuard_2:MoveTo(5329.299805, -2165.256104, 1269.522461, 1)
	HGuard_3:MoveTo(5331.572754, -2173.538574, 1269.607788, 1)
	HGuard_4:MoveTo(5332.181152, -2175.756592, 1269.817749, 1)
	HCommander_Fight:RegisterEvent("HordeDefend2", 7500, 0)
end

function HordeDefend2(pUnit, Event)
    HCommander_Fight:RemoveEvents()
	HGuard_1:RemoveEvents()
	HGuard_2:RemoveEvents()
	HGuard_3:RemoveEvents()
	HGuard_4:RemoveEvents()
	HCommander_Fight:SendChatMessage(12, 0, "Alright! Everyone hold your ground!")
	HCommander_Fight:Emote(48,10000)
	HGuard_1:Emote(45,10000)
	HGuard_2:Emote(45,10000)
	HGuard_3:Emote(45,10000)
	HGuard_4:Emote(45,10000)
	HGuard_2:RegisterEvent("HordeDefend3", 3000, 0)
end

function HordeDefend3(pUnit, Event)
	HCommander_Fight:RemoveEvents()
	HGuard_1:RemoveEvents()
	HGuard_2:RemoveEvents()
	HGuard_3:RemoveEvents()
	HGuard_4:RemoveEvents()
	HGuard_2:SpawnCreature(244495, 5344.438965, -2195.222900, 128.5, 5, 35, 0);
	HGuard_2:SendChatMessage(12, 0, "Yes Sir!")
	HCommander_Fight:RegisterEvent("HordeDefend4", 5000, 0)
end

function HordeDefend4(pUnit, Event)
	HCommander_Fight:RemoveEvents()
	HGuard_1:RemoveEvents()
	HGuard_2:RemoveEvents()
	HGuard_3:RemoveEvents()
	HGuard_4:RemoveEvents()
	Timer:SpawnCreature(5559821, 5343.053223, -2149.955566, 1275, 5, 35, 65000);
	Timer:SpawnCreature(5559821, 5349.076172, -2154.360596, 1278, 5, 35, 65000);
	Timer:SpawnCreature(5559821, 5348.669434, -2161.499268, 1278, 5, 35, 65000);
	Timer:SpawnCreature(5559821, 5349.127930, -2168.741455, 1280, 5, 35, 65000);
	Timer:SpawnCreature(5559821, 5347.574219, -2173.669434, 1280, 5, 35, 65000);
	HCommander_Fight:SendChatMessage(12, 0, "Here they come! From Above! Looks like Arthas has a new trick up his sleeve!")
	Timer:RegisterEvent("TimerSpawn1", 5000, 0)
	HCommander_Fight:RegisterEvent("HordeDefend5", 3000, 0)
end

function HordeDefend5(pUnit, Event)
	HCommander_Fight:RemoveEvents()
	HCommander_Fight:SetMovementType(256)
	HCommander_Fight:ModifyWalkSpeed(7)
	HGuard_1:SetMovementType(256)
	HGuard_1:ModifyWalkSpeed(7)
	HGuard_2:SetMovementType(256)
	HGuard_2:ModifyWalkSpeed(7)
	HGuard_3:SetMovementType(256)
	HGuard_3:ModifyWalkSpeed(7)
	HGuard_4:SetMovementType(256)
	HGuard_4:ModifyWalkSpeed(7)
	HCommander_Fight:MoveTo(5343.510742, -2164.695557, 1274.038818, 6.213498)
	HGuard_1:MoveTo(5343.510742, -2164.695557, 1274.038818, 6.213498)
	HGuard_2:MoveTo(5343.510742, -2164.695557, 1274.038818, 6.213498)
	HGuard_3:MoveTo(5343.510742, -2164.695557, 1274.038818, 6.213498)
	HGuard_4:MoveTo(5343.510742, -2164.695557, 1274.038818, 6.213498)
	HCommander_Fight:SendChatMessage(14, 0, "CHARGE!")
end
--------Remove Events On Combat--------
function HCommander_Fight_Entercombat(pUnit, Event)
    HCommander_Fight:RemoveEvents()
end

RegisterUnitEvent(244582, 1, "HCommander_Fight_Entercombat")

function HGuard_1_Entercombat(pUnit, Event)
    HGuard_1:RemoveEvents()
end

RegisterUnitEvent(244585, 1, "HGuard_1_Entercombat")

function HGuard_2_Entercombat(pUnit, Event)
    HGuard_2:RemoveEvents()
end

RegisterUnitEvent(244586, 1, "HGuard_2_Entercombat")

function HGuard_3_Entercombat(pUnit, Event)
    HGuard_3:RemoveEvents()
end

RegisterUnitEvent(244587, 1, "HGuard_3_Entercombat")

function HGuard_4_Entercombat(pUnit, Event)
    HGuard_4:RemoveEvents()
end

RegisterUnitEvent(244588, 1, "HGuard_4_Entercombat")
-------Remove Events On Death-------
function HCommander_Fight_Die(pUnit, Event)
	HCommander_Fight:RemoveEvents()
	HCommander_Fight:Despawn(1,0)
	HGuard_1:Despawn(1,0)
	HGuard_2:Despawn(1,0)
	HGuard_3:Despawn(1,0)
	HGuard_4:Despawn(1,0)
	Timer:SpawnCreature(244586, 5147.229980, -3329.870117, 1638.2, 6.229420, 1, 0);
	Timer:SpawnCreature(244585, 5147.060059, -3325.449951, 1638.9, 6.229420, 1, 0);
	Timer:SpawnCreature(244587, 5146.350098, -3319.040039, 1640.8, 6.229420, 1, 0);
	Timer:SpawnCreature(244588, 5146.560059, -3315.139893, 1641.9, 6.229420, 1, 0);
	Timer:SpawnCreature(244583, 5144.37, -3321.93, 1639.7, 6.22942, 1, 0);
	Timer:RegisterEvent("ScriptResetDeath", 1000, 0)
end

RegisterUnitEvent(244582, 4, "HCommander_Fight_Die")

function HGuard_1_Die(pUnit, Event)
	HGuard_1:RemoveEvents()
	HGuard_1:SendChatMessage(12, 0, "UGH!")
end

RegisterUnitEvent(244585, 4, "HGuard_1_Die")

function HGuard_2_Die(pUnit, Event)
	HGuard_2:RemoveEvents()
	HGuard_2:SendChatMessage(12, 0, "I let you down...Captain.")
end

RegisterUnitEvent(244586, 4, "HGuard_2_Die")

function HGuard_3_Die(pUnit, Event)
	HGuard_3:RemoveEvents()
	HGuard_3:SendChatMessage(12, 0, "I cant fight any longer, Farwell Captain.")
end

RegisterUnitEvent(244587, 4, "HGuard_3_Die")

function HGuard_4_Die(pUnit, Event)
	HGuard_4:RemoveEvents()
	HGuard_4:SendChatMessage(12, 0, "Arthas has beaten me!")
end

RegisterUnitEvent(244588, 4, "HGuard_4_Die")
--------Timer Events--------
function TimerSpawn1(pUnit, Event)
	Timer:RemoveEvents()
	Timer:SpawnCreature(244493, 5348.664551, -2161.149902, 1276.114624, 3.506330, 35, 0);
	Timer:SpawnCreature(244493, 5348.252411, -2172.160645, 1277.8, 5, 35, 0);
	Timer:SpawnCreature(244493, 5343.105957, -2150.596680, 1273.9, 5, 35, 0);
	Timer:RegisterEvent("TimerSpawn2", 20000, 0)
end

function TimerSpawn2(pUnit, Event)
	Timer:RemoveEvents()
	Timer:SendChatMessage(42, 0, "1 Minute And 20 seconds Untill Boss Arrives!")
	Timer:SpawnCreature(244493, 5348.664551, -2161.149902, 1276.114624, 3.506330, 35, 0);
	Timer:SpawnCreature(244493, 5348.252411, -2172.160645, 1277.8, 5, 35, 0);
	Timer:SpawnCreature(244493, 5343.105957, -2150.596680, 1273.9, 5, 35, 0);
	Timer:SpawnCreature(244493, 5348.258301, -2153.243896, 1275.6, 5, 35, 0);
	Timer:RegisterEvent("TimerSpawn3", 20000, 0)
end

function TimerSpawn3(pUnit, Event)
	Timer:RemoveEvents()
	Timer:SendChatMessage(42, 0, "1 Minute Untill Boss Arrives!")
	Timer:SpawnCreature(244493, 5348.664551, -2161.149902, 1276.114624, 3.506330, 35, 0);
	Timer:SpawnCreature(244493, 5348.252411, -2172.160645, 1277.8, 5, 35, 0);
	Timer:SpawnCreature(244493, 5343.105957, -2150.596680, 1273.9, 5, 35, 0);
	Timer:SpawnCreature(244493, 5348.258301, -2153.243896, 1275.6, 5, 35, 0);
	Timer:SpawnCreature(244493, 5349.194336, -2166.637695, 1277.3, 5, 35, 0);
	Timer:RegisterEvent("TimerSpawn4", 20000, 0)
end

function TimerSpawn4(pUnit, Event)
	Timer:RemoveEvents()
	Timer:SendChatMessage(42, 0, "40 Seconds Untill Boss Arrives!")
	Timer:SpawnCreature(244493, 5348.664551, -2161.149902, 1276.114624, 3.506330, 35, 0);
	Timer:SpawnCreature(244493, 5348.252411, -2172.160645, 1277.8, 5, 35, 0);
	Timer:SpawnCreature(244493, 5343.105957, -2150.596680, 1273.9, 5, 35, 0);
	Timer:SpawnCreature(244493, 5348.258301, -2153.243896, 1275.6, 5, 35, 0);
	Timer:SpawnCreature(244493, 5349.194336, -2166.637695, 1277.3, 5, 35, 0);
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
	Timer:SpawnCreature(244580, 5348.664551, -2161.149902, 1276.114624, 3.506330, 1626, 0);
	--Timer:RegisterEvent("TimerSpawn7", 300000, 0) ----Registers a Event if nothing happens for 5 minutes [Disabled Due To Bug]
end

function TimerSpawn7(pUnit, Event) ----A Event that Resets Script when nothing happens for 5 minutes
	HCommander_Fight:RemoveEvents()
	HCommander_Fight:Despawn(1,0) ---Despawns OLD Captain
	HGuard_1:Despawn(1,0) ---Despawns Old Guards
	HGuard_2:Despawn(1,0)
	HGuard_3:Despawn(1,0)
	HGuard_4:Despawn(1,0)
	Timer:SpawnCreature(59842, 5316.649902, -2171.110107, 1265.1, 0.226978, 2, 0);
	Timer:SpawnCreature(59843, 5315.770020, -2167.280029, 1265, 0.226978, 2, 0);
	Timer:SpawnCreature(59844, 5318.009766, -2177.000000, 1265.1, 0.226978, 2, 0);
	Timer:SpawnCreature(59845, 5318.779785, -2180.310059, 1265.6, 0.226978, 2, 0);
	Timer:SpawnCreature(99835, 5318.508789, -2173.674561, 1265.6, 0.226978, 2, 0);
	Timer:RegisterEvent("ScriptResetDeath", 1000, 0)
end
----------Timer Event when HHCommander Dies--------
function ScriptResetDeath(pUnit, Event)
    Timer:RemoveEvents()
    Timer:SendChatMessage(42, 0, "Quest Failed: Captain Burnside Died!")
	Timer:Despawn(1,0)
	if (Main_Boss ~= nil) then --Checks if Boss is Spawned, If true, Despawns
	Main_Boss:Despawn(1,0)
	end
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
    pUnit:SpawnCreature(244492, x, y, z, o, 1626, 0);
	pUnit:RegisterEvent("LightningDespawn", 5000, 0)
end

function LightningDespawn(pUnit, Event)
    pUnit:RemoveEvents()
	pUnit:Despawn(1,0)
end

RegisterUnitEvent(244493, 18, "Light_Spell_Wait")
--------------Lightning Mobs------------
function Light_Mob_Wait(pUnit, event)
	pUnit:RegisterEvent("LightningMobAttack", 500, 0)
end

function LightningMobAttack(pUnit, Event)
    pUnit:RemoveEvents()
	pUnit:MoveTo(5330.431152, -2170.724365, 1269.395, 2.996323)
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
	Main_Boss:MoveTo(5330.431152, -2170.724365, 1269.395, 2.996323)
end

function MainBoss_Entercombat(pUnit, Event)
    Main_Boss:RemoveEvents()
end

function MainBoss_Die(pUnit, Event)
    Main_Boss:RemoveEvents()
	Timer:RemoveEvents()
	Main_Boss:SendChatMessage(12, 0, "NOOOOOOOOOO!")
	HCommander_Fight:Despawn(1,0)
	HGuard_1:Despawn(1,0)
	HGuard_2:Despawn(1,0)
	HGuard_3:Despawn(1,0)
	HGuard_4:Despawn(1,0)
	Timer:SpawnCreature(59842, 5316.649902, -2171.110107, 1265.1, 0.226978, 2, 0);
	Timer:SpawnCreature(59843, 5315.770020, -2167.280029, 1265, 0.226978, 2, 0);
	Timer:SpawnCreature(59844, 5318.009766, -2177.000000, 1265.1, 0.226978, 2, 0);
	Timer:SpawnCreature(59845, 5318.779785, -2180.310059, 1265.6, 0.226978, 2, 0);
	Timer:SpawnCreature(99835, 5318.508789, -2173.674561, 1265.6, 0.226978, 2, 0);
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


RegisterUnitEvent(244580, 2, "MainBoss_Leavecombat")
RegisterUnitEvent(244580, 4, "MainBoss_Die")
RegisterUnitEvent(244580, 1, "MainBoss_Entercombat")
