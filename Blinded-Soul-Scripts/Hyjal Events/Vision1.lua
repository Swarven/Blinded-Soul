----=========Defines========----
local Fortellone = 11123
local Fortelltwo = 11124
local Fortellthree = 66522
local Lichkingvision = 11175
local Playerselfpast1 = 11125
local Playerselfpast2 = 11126
local Playerselfpast3 = 11127
local Playerselfpast4 = 11128
local Playerselfpast5 = 11129
local Playerselfpast6 = 11130
local Playerselfpast7 = 11131
local Playerselfpast8 = 11132
local Playerselfpast9 = 11134
local Playerselfpast10 = 11135
local DarkPortal = 66521
-----------------------------------
function AllianceVisionStart_OnGossipTalk(pUnit, event, player, pMisc)
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "Who are you?", 3, 0)
   pUnit:GossipMenuAddItem(9, "[FORCE START] Who are you?", 500, 0)
   pUnit:GossipMenuAddItem(0, "Never Mind", 2, 0)
   pUnit:GossipSendMenu(player)
end

function AllianceVisionStart_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
if (intid == 2) then
player:GossipComplete()
end

if (intid == 1) then
if (player:GetItemCount(99840) == 1) then
pUnit:SendChatMessage(12, 0, "I can see your past...Its dark...and evil. Would you like me to go on?")
pUnit:GossipCreateMenu(99, player, 0)
   pUnit:GossipMenuAddItem(9, "Yes please.", 4, 0)
   pUnit:GossipMenuAddItem(9, "I dont have time for your lies.", 2, 0)
pUnit:GossipSendMenu(player)
else
if (player:HasFinishedQuest(2000023) == true) or (player:HasFinishedQuest(1000023) == true) then
pUnit:SendChatMessage(12, 0, "I have already told you your past!")
player:GossipComplete()
else
pUnit:SendChatMessage(12, 0, "Leave me be, I dont have time to Foretell your past without payment.")
player:GossipComplete()
end
end
end

if (intid == 500) then
pUnit:SendChatMessage(12, 0, "I can see your past...Its dark...and evil. Would you like me to go on?")
pUnit:GossipCreateMenu(99, player, 0)
   pUnit:GossipMenuAddItem(9, "Yes please.", 4, 0)
   pUnit:GossipMenuAddItem(9, "I dont have time for your lies.", 2, 0)
pUnit:GossipSendMenu(player)
end

if (intid == 4) then
   player:SendBroadcastMessage("To go on. You must `NOT` be in a group! Are you sure you want to go on?")
   player:SendAreaTriggerMessage("To go on. You must `NOT` be in a group! Are you sure you want to go on?")
pUnit:GossipCreateMenu(99, player, 0)
   pUnit:GossipMenuAddItem(9, "I am not in a group. I am ready to see my past.", 5, 0)
   pUnit:GossipMenuAddItem(9, "I dont have time for your lies.", 2, 0)
pUnit:GossipSendMenu(player)
end

if (intid == 5) then
pUnit:SendChatMessage(12, 0, "I see Pain and Suffering...Countless deaths was made because of you...")
pUnit:GossipCreateMenu(99, player, 0)
   pUnit:GossipMenuAddItem(9, "Go on...", 6, 0)
   pUnit:GossipMenuAddItem(9, "I dont have time for your lies.", 2, 0)
pUnit:GossipSendMenu(player)
end

if (intid == 6) then
pUnit:SendChatMessage(12, 0, "It seems some of these Events are Unspeakable...to move on, I will put you into a sleep like state, for you to see your past for yourself. would you like to go on?")
pUnit:GossipCreateMenu(99, player, 0)
   pUnit:GossipMenuAddItem(9, "Yes Please.", 7, 0)
   pUnit:GossipMenuAddItem(9, "I dont have time for your lies.", 2, 0)
pUnit:GossipSendMenu(player)
end

if(intid == 7) then ---The Vision!!! [Script Below]
player:Teleport(609, 2375.824219, -5650.244141, 430)
pUnit:GossipComplete(player)
end
end

RegisterUnitGossipEvent(Fortellone, 1, "AllianceVisionStart_OnGossipTalk")
RegisterUnitGossipEvent(Fortellone, 2, "AllianceVisionStart_OnGossipSelect")
------------------Vision---------------
function AllianceVisionspawn_OnGossipTalk(pUnit, event, player, pMisc)
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "where am I?", 1, 0)
   pUnit:GossipMenuAddItem(0, "Never Mind", 2, 0)
   pUnit:GossipSendMenu(player)
end

function AllianceVisionspawn_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
if (intid == 2) then
pUnit:GossipSendMenu(player)
end


if (intid == 1) then
pUnit:SendChatMessage(12, 0, "You are at your Vision realm. This vision is from your most deepest and darkest moment. Be prepared, you are about to see your forgotten past.")
pUnit:GossipCreateMenu(99, player, 0)
local race=player:GetPlayerRace()
if race==1 then
   pUnit:GossipMenuAddItem(9, "I am prepared.", 5, 0)
   end
local race=player:GetPlayerRace()
if race==2 then
   pUnit:GossipMenuAddItem(9, "I am prepared.", 6, 0)
   end
local race=player:GetPlayerRace()
if race==3 then
   pUnit:GossipMenuAddItem(9, "I am prepared.", 7, 0)
   end
local race=player:GetPlayerRace()
if race==4 then
   pUnit:GossipMenuAddItem(9, "I am prepared.", 8, 0)
   end
local race=player:GetPlayerRace()
if race==5 then
   pUnit:GossipMenuAddItem(9, "I am prepared.", 9, 0)
   end
local race=player:GetPlayerRace()
if race==6 then
   pUnit:GossipMenuAddItem(9, "I am prepared.", 10, 0)
   end
local race=player:GetPlayerRace()
if race==7 then
   pUnit:GossipMenuAddItem(9, "I am prepared.", 11, 0)
   end
local race=player:GetPlayerRace()
if race==8 then
   pUnit:GossipMenuAddItem(9, "I am prepared.", 12, 0)
   end
local race=player:GetPlayerRace()
if race==10 then
   pUnit:GossipMenuAddItem(9, "I am prepared.", 13, 0)
   end
local race=player:GetPlayerRace()
if race==11 then
   pUnit:GossipMenuAddItem(9, "I am prepared.", 14, 0)
end
pUnit:GossipMenuAddItem(9, "I dont have time for your lies.", 2, 0)
pUnit:GossipSendMenu(player)
end

if (intid == 5) then
pUnit:SpawnCreature(Lichkingvision, 2363.707031, -5683.645020, 425.934998, 2.183074, 35, 0);
pUnit:SpawnCreature(Playerselfpast1, 2341.196045, -5650.306152, 426.026978, 5.307717, 35, 0);
	pUnit:Despawn(1,0)
end

if (intid == 6) then
pUnit:SpawnCreature(Lichkingvision, 2363.707031, -5683.645020, 425.934998, 2.183074, 35, 0);
pUnit:SpawnCreature(Playerselfpast2, 2341.196045, -5650.306152, 426.026978, 5.307717, 35, 0);
	pUnit:Despawn(1,0)
end

if (intid == 7) then
pUnit:SpawnCreature(Lichkingvision, 2363.707031, -5683.645020, 425.934998, 2.183074, 35, 0);
pUnit:SpawnCreature(Playerselfpast3, 2341.196045, -5650.306152, 426.026978, 5.307717, 35, 0);
	pUnit:Despawn(1,0)
end

if (intid == 8) then
pUnit:SpawnCreature(Lichkingvision, 2363.707031, -5683.645020, 425.934998, 2.183074, 35, 0);
pUnit:SpawnCreature(Playerselfpast4, 2341.196045, -5650.306152, 426.026978, 5.307717, 35, 0);
	pUnit:Despawn(1,0)
end

if (intid == 9) then
pUnit:SpawnCreature(Lichkingvision, 2363.707031, -5683.645020, 425.934998, 2.183074, 35, 0);
pUnit:SpawnCreature(Playerselfpast5, 2341.196045, -5650.306152, 426.026978, 5.307717, 35, 0);
	pUnit:Despawn(1,0)
end

if (intid == 10) then
pUnit:SpawnCreature(Lichkingvision, 2363.707031, -5683.645020, 425.934998, 2.183074, 35, 0);
pUnit:SpawnCreature(Playerselfpast6, 2341.196045, -5650.306152, 426.026978, 5.307717, 35, 0);
	pUnit:Despawn(1,0)
end

if (intid == 11) then
pUnit:SpawnCreature(Lichkingvision, 2363.707031, -5683.645020, 425.934998, 2.183074, 35, 0);
pUnit:SpawnCreature(Playerselfpast7, 2341.196045, -5650.306152, 426.026978, 5.307717, 35, 0);
	pUnit:Despawn(1,0)
end

if (intid == 12) then
pUnit:SpawnCreature(Lichkingvision, 2363.707031, -5683.645020, 425.934998, 2.183074, 35, 0);
pUnit:SpawnCreature(Playerselfpast8, 2341.196045, -5650.306152, 426.026978, 5.307717, 35, 0);
	pUnit:Despawn(1,0)
end

if (intid == 13) then
pUnit:SpawnCreature(Lichkingvision, 2363.707031, -5683.645020, 425.934998, 2.183074, 35, 0);
pUnit:SpawnCreature(Playerselfpast9, 2341.196045, -5650.306152, 426.026978, 5.307717, 35, 0);
	pUnit:Despawn(1,0)
end

if (intid == 14) then
pUnit:SpawnCreature(Lichkingvision, 2363.707031, -5683.645020, 425.934998, 2.183074, 35, 0);
pUnit:SpawnCreature(Playerselfpast10, 2341.196045, -5650.306152, 426.026978, 5.307717, 35, 0);
	pUnit:Despawn(1,0)
end
end

RegisterUnitGossipEvent(Fortelltwo, 1, "AllianceVisionspawn_OnGossipTalk")
RegisterUnitGossipEvent(Fortelltwo, 2, "AllianceVisionspawn_OnGossipSelect")

-----------Race Change npc----------
function StartRaceVisual_Human(pUnit, Event, Player)
pUnit:CastSpell(51520)
pUnit:RegisterEvent("VisionScriptStartPlayer", 1000, 0)
end

function StartRaceVisual_Orc(pUnit, Event, Player)
pUnit:CastSpell(51543)
pUnit:RegisterEvent("VisionScriptStartPlayer", 1000, 0)
end

function StartRaceVisual_Dwarf(pUnit, Event, Player)
pUnit:CastSpell(51538)
pUnit:RegisterEvent("VisionScriptStartPlayer", 1000, 0)
end

function StartRaceVisual_NiteElf(pUnit, Event, Player)
pUnit:CastSpell(51535)
pUnit:RegisterEvent("VisionScriptStartPlayer", 1000, 0)
end

function StartRaceVisual_Undead(pUnit, Event, Player)
pUnit:CastSpell(51549)
pUnit:RegisterEvent("VisionScriptStartPlayer", 1000, 0)
end

function StartRaceVisual_Tauren(pUnit, Event, Player)
pUnit:CastSpell(51547)
pUnit:RegisterEvent("VisionScriptStartPlayer", 1000, 0)
end

function StartRaceVisual_Gnome(pUnit, Event, Player)
pUnit:CastSpell(51539)
pUnit:RegisterEvent("VisionScriptStartPlayer", 1000, 0)
end

function StartRaceVisual_Troll(pUnit, Event, Player)
pUnit:CastSpell(51546)
pUnit:RegisterEvent("VisionScriptStartPlayer", 1000, 0)
end

function StartRaceVisual_BloodElf(pUnit, Event, Player)
pUnit:CastSpell(51551)
pUnit:RegisterEvent("VisionScriptStartPlayer", 1000, 0)
end

function StartRaceVisual_Draenei(pUnit, Event, Player)
pUnit = pUnit
pUnit:CastSpell(51541)
pUnit:RegisterEvent("VisionScriptStartPlayer", 1000, 0)
end
----------Vision Past Self Starts Walking---------
function VisionScriptStartPlayer(pUnit, Event, Player)
	pUnit:RemoveEvents()
	pUnit:MoveTo(2350.760498, -5665.842773, 426.028412, 5.251172)
	pUnit:RegisterEvent("PlayerVision1", 10000, 0)
end

function PlayerVision1(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:Emote(1,3000)
	pUnit:SendChatMessage(12, 0, "What is it that you need master.")
	pUnit:RegisterEvent("PlayerVision2", 6000, 0)
end

function PlayerVision2(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:Emote(1,3000)
	pUnit:SendChatMessage(12, 0, "Already done master, they are weak and foolish and expect nothing.")
	pUnit:RegisterEvent("PlayerVision3", 10000, 0)
end

function PlayerVision3(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:CastSpell(33344)
	pUnit:RegisterEvent("PlayerVision4", 3000, 0)
end

function PlayerVision4(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:Emote(1,3000)
	pUnit:RemoveAura(33344)
	pUnit:SendChatMessage(12, 0, "What is this?")
	pUnit:RegisterEvent("PlayerVision5", 7000, 0)
end

function PlayerVision5(pUnit, Event)
	pUnit:RemoveEvents()
    pUnit:Emote(1,3000)
	pUnit:SendChatMessage(12, 0, "thank you master, I will not fail you.")
	pUnit:RegisterEvent("PlayerVision6", 5000, 0)
end

function PlayerVision6(pUnit, Event)
	pUnit:RemoveEvents()
    pUnit:Emote(1,3000)
	pUnit:SendChatMessage(12, 0, "Yes, Master.")
	pUnit:RegisterEvent("PlayerVision7", 6000, 0)
end

function PlayerVision7(pUnit, Event, Player)
	pUnit:RemoveEvents()
	pUnit:MoveTo(2348.387207, -5669.540527, 426.028687, 3.634036)
	pUnit:RegisterEvent("PlayerVision8", 2500, 0)
end

function PlayerVision8(pUnit, Event, Player)
	pUnit:RemoveEvents()
	pUnit:MoveTo(2343.281982, -5672.988281, 426.028381, 3.634036)
	pUnit:RegisterEvent("PlayerVisionDespawn", 2500, 0)
end

function PlayerVisionDespawn(pUnit, Event, Player)
	pUnit:RemoveEvents()
    pUnit:Despawn(1,0)
end

RegisterUnitEvent(Playerselfpast1, 18, "StartRaceVisual_Human")
RegisterUnitEvent(Playerselfpast2, 18, "StartRaceVisual_Orc")
RegisterUnitEvent(Playerselfpast3, 18, "StartRaceVisual_Dwarf")
RegisterUnitEvent(Playerselfpast4, 18, "StartRaceVisual_NiteElf")
RegisterUnitEvent(Playerselfpast5, 18, "StartRaceVisual_Undead")
RegisterUnitEvent(Playerselfpast6, 18, "StartRaceVisual_Tauren")
RegisterUnitEvent(Playerselfpast7, 18, "StartRaceVisual_Gnome")
RegisterUnitEvent(Playerselfpast8, 18, "StartRaceVisual_Troll")
RegisterUnitEvent(Playerselfpast9, 18, "StartRaceVisual_BloodElf")
RegisterUnitEvent(Playerselfpast10, 18, "StartRaceVisual_Draenei")
---------The Lich King----------
function LichKingWaitForRace(pUnit, Event, Player)
pUnit:RegisterEvent("VisionScriptStartTLK", 1000, 0)
end

function VisionScriptStartTLK(pUnit, Event, Player)
	pUnit:RemoveEvents()
	pUnit:MoveTo(2353.486328, -5670.402344, 426.028412, 2.219534)
	pUnit:RegisterEvent("TLKVision1", 7500, 0)
end

function TLKVision1(pUnit, Event)
	pUnit:RemoveEvents()
	local PlrName = pUnit:GetClosestPlayer()
	pUnit:Emote(1,4000)
	pUnit:SendChatMessage(12, 0, "Ive been expecting you young knight, "..PlrName:GetName()) ---This will add alot of excitement having a player hear his/her own name from the lich king
	pUnit:RegisterEvent("TLKVision2", 6000, 0)
end

function TLKVision2(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:Emote(1,4000)
	pUnit:SendChatMessage(12, 0, "I need you to spy on Orgrimmar and Stormwind to make preparations.")
	pUnit:RegisterEvent("TLKVision3", 6000, 0)
end

function TLKVision3(pUnit, Event)
	pUnit:RemoveEvents()
	local PlrName = pUnit:GetClosestPlayer()
	pUnit:Emote(1,4000)
	pUnit:SendChatMessage(12, 0, "You have done well "..PlrName:GetName().." ...Heres a gift for your great work young one...")
	pUnit:RegisterEvent("TLKVision4", 4500, 0)
end

function TLKVision4(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:Emote(25,4000)
	pUnit:RegisterEvent("TLKVision5", 7000, 0)
end

function TLKVision5(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:Emote(1,4000)
	pUnit:SendChatMessage(12, 0, "That young knight, is the Insignia of the Scourge. This makes you forever in debt to me.")
	pUnit:RegisterEvent("TLKVision6", 7000, 0)
end

function TLKVision6(pUnit, Event)
	pUnit:RemoveEvents()
	pUnit:Emote(1,4000)
	pUnit:SendChatMessage(12, 0, "Let us go then. We must attack now while they are weak!")
	pUnit:SpawnCreature(66521, 2343.281982, -5672.988281, 426.028381, 0.583552, 35, 0);
	pUnit:RegisterEvent("TLKVision7", 5000, 0)
end

function TLKVision7(pUnit, Event, Player)
	pUnit:RemoveEvents()
	pUnit:MoveTo(2348.387207, -5669.540527, 426.028687, 3.634036)
	pUnit:RegisterEvent("TLKVision8", 2500, 0)
end

function TLKVision8(pUnit, Event, Player)
	pUnit:RemoveEvents()
	pUnit:MoveTo(2343.281982, -5672.988281, 426.028381, 3.634036)
	pUnit:RegisterEvent("TLKVisionDespawn", 2500, 0)
end

function TLKVisionDespawn(pUnit, Event, Player)
	pUnit:RemoveEvents()
    pUnit:Despawn(1,0)
end

RegisterUnitEvent(Lichkingvision, 18, "LichKingWaitForRace")

--------Dark Portal---------
function DPVision1(pUnit, Event)
pUnit:RegisterEvent("DPVision2", 100, 0)
end

function DPVision2(pUnit, Event)
pUnit:RemoveEvents()
pUnit:FullCastSpell(40280)
pUnit:RegisterEvent("DPVision3", 20000, 0)
end

function DPVision3(pUnit, Event)
pUnit:RemoveEvents()
pUnit:SpawnCreature(Fortellthree, 2360.636963, -5661.312500, 426.025482, 3.732997, 35, 0);
pUnit:Despawn(1,0)
end

RegisterUnitEvent(66521, 18, "DPVision1")

---------Foreteller teleport out------------

function Visionend_OnGossipTalk(pUnit, event, player, pMisc)
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "I had seen my Vision", 1, 0)
   pUnit:GossipMenuAddItem(0, "This cant be real", 2, 0)
   pUnit:GossipSendMenu(player)
end

function Visionend_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
if (intid == 2) then
pUnit:SendChatMessage(12, 0, "Im sorry to say, but all of this IS real. Its quite Obvoius that you helped The lich King on the attack of Stormwind and Orgrimmar!")
pUnit:GossipCreateMenu(99, player, 0)
   pUnit:GossipMenuAddItem(9, "I...Suppose so.", 4, 0)
   pUnit:GossipMenuAddItem(9, "No! Thats not possible!", 3, 0)
pUnit:GossipSendMenu(player)
end

if (intid == 1) then
pUnit:SendChatMessage(12, 0, "It seems you helped The Lich King destroy Orgrimmar and Stormwind.")
pUnit:GossipCreateMenu(99, player, 0)
   pUnit:GossipMenuAddItem(9, "I...Suppose so.", 4, 0)
   pUnit:GossipMenuAddItem(9, "No! Thats not possible!", 3, 0)
pUnit:GossipSendMenu(player)
end

if (intid == 3) then
pUnit:SendChatMessage(12, 0, "Believe what you want to believe, but you KNOW that its true!")
pUnit:GossipCreateMenu(99, player, 0)
   pUnit:GossipMenuAddItem(9, "NO! This cant be TRUE!", 10, 0)
   pUnit:GossipMenuAddItem(9, "I think i remember it now!", 10, 0)
pUnit:GossipSendMenu(player)
end

if (intid == 4) then
pUnit:SendChatMessage(12, 0, "And you cant remember any of it?")
pUnit:GossipCreateMenu(99, player, 0)
   pUnit:GossipMenuAddItem(9, "No, I cant remember a thing.", 10, 0)
   pUnit:GossipMenuAddItem(9, "I think i remember it now!", 10, 0)
pUnit:GossipSendMenu(player)
end

if (intid == 10) then
pUnit:SendChatMessage(12, 0, "Well, Are you ready for me to wake you up out of your vision realm?")
pUnit:GossipCreateMenu(99, player, 0)
   pUnit:GossipMenuAddItem(9, "Yes Please, I want to forget all of this.", 11, 0)
   pUnit:GossipMenuAddItem(9, "Yes, But I still dont beleive any of this.", 11, 0)
pUnit:GossipSendMenu(player)
end

if(intid == 11) then ---End Of Script
local race=player:GetPlayerRace()
if race==2 or race==5 or race==6 or race==8 or race==10 then
player:RemoveItem(99840,1)
player:RemoveItem(55891,1)
player:AddItem(99842,1)
player:AddItem(99841,1)
player:Teleport(1, 5259.363281, -2171.119385, 1259.5)
pUnit:GossipComplete(player)
end
local race=player:GetPlayerRace()
if race==1 or race==3 or race==4 or race==7 or race==11 then
player:RemoveItem(99840,1)
player:RemoveItem(55891,1)
player:AddItem(99842,1)
player:AddItem(99841,1)
player:Teleport(1, 5100.521484, -3334.022949, 1643)
pUnit:GossipComplete(player)
end
end
end

RegisterUnitGossipEvent(Fortellthree, 1, "Visionend_OnGossipTalk")
RegisterUnitGossipEvent(Fortellthree, 2, "Visionend_OnGossipSelect")
