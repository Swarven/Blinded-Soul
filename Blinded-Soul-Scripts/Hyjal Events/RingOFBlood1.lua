--=========Defines!=========--
local PVPRINGTART = 858691
local CountPlayers = 0
----------------------------------------
------Betray Mage one and two + Mage-------------
function ScourgeMageBetray_OnGossipTalk(pUnit, event, player, pMisc)
pUnit:SendChatMessage(12, 0, "Hey There! are you intrested in winning gold to the fight to the death?")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "Oh YEA!", 1, 0)
   pUnit:GossipMenuAddItem(0, "No Thanks.", 2, 0)
   pUnit:GossipSendMenu(player)
end

function ScourgeMageBetray_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
if (intid == 1) then
pUnit:SendChatMessage(12, 0, "Alright! Just tell me when your ready!")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:Emote(11,4000)
   pUnit:GossipMenuAddItem(9, "I'm Ready!", 3, 0)
   pUnit:GossipMenuAddItem(0, "I'm Not Ready.", 4, 0)
   pUnit:GossipSendMenu(player)
end

if (intid == 2) then
pUnit:SendChatMessage(12, 0, "C'mon I will not take a no for a answer!")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:Emote(11,4000)
   pUnit:GossipMenuAddItem(9, "Fine I'll go.", 3, 0)
   pUnit:GossipMenuAddItem(0, "I'm Not Ready.", 4, 0)
   pUnit:GossipSendMenu(player)
end

if(intid == 4) then
player:GossipComplete()
end

if (intid == 3) then
   player:SendBroadcastMessage("Your HearthStone will be Temporarly Removed, Would you like to move on?")
   player:SendAreaTriggerMessage("Your HearthStone will be Temporarly Removed, Would you like to move on?")
pUnit:GossipCreateMenu(99, player, 0)
   pUnit:GossipMenuAddItem(9, "I am aware that my hearthstone will be removed for this event.", 5, 0)
   pUnit:GossipMenuAddItem(9, "I am not ready yet.", 4, 0)
pUnit:GossipSendMenu(player)
end

if(intid == 5) then ---Teleport [Ring]
player:RemoveItem(6948,1)
player:Teleport(1, 2131.135498, -4752.926758, 51)
pUnit:GossipComplete(player)
end
end

RegisterUnitGossipEvent(858696, 1, "ScourgeMageBetray_OnGossipTalk")
RegisterUnitGossipEvent(858696, 2, "ScourgeMageBetray_OnGossipSelect")
----------------------------------------------------------------------------------
function ScourgeMageServant_OnGossipTalk(pUnit, event, player, pMisc)
pUnit:SendChatMessage(12, 0, "HAHAHA! Welcome to your Doom!")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "What is this place?", 1, 0)
   pUnit:GossipMenuAddItem(0, "What is going on here?", 1, 0)
   pUnit:GossipSendMenu(player)
end

function ScourgeMageServant_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)

if (intid == 1) then
pUnit:SendChatMessage(12, 0, "I tricked you into coming here, The lich king wants to speak to you...")
pUnit:GossipCreateMenu(99, player, 0)
   pUnit:GossipMenuAddItem(9, "What! Where is he?", 2, 0)
   pUnit:GossipMenuAddItem(9, "What does he want from me?", 3, 0)
pUnit:GossipSendMenu(player)
end

if (intid == 2) then
pUnit:SendChatMessage(12, 0, "Hes in the Arena down the hall...")
pUnit:GossipCreateMenu(99, player, 0)
   pUnit:GossipMenuAddItem(9, "Alright, I will talk to him.", 4, 0)
   pUnit:GossipMenuAddItem(9, "I would like a word with him also.", 4, 0)
pUnit:GossipSendMenu(player)
end

if (intid == 3) then
pUnit:SendChatMessage(12, 0, "He wants you dead! Hes holding a little surprise for you in the arena!")
pUnit:GossipCreateMenu(99, player, 0)
   pUnit:GossipMenuAddItem(9, "I want him dead to! Let me talk to him!", 4, 0)
   pUnit:GossipMenuAddItem(9, "Hes going down for all the lives he took away!", 4, 0)
pUnit:GossipSendMenu(player)
end

if(intid == 4) then
player:Teleport(1, 2152.083984, -4749.151367, 68)
pUnit:GossipComplete(player)
end
end

RegisterUnitGossipEvent(858697, 1, "ScourgeMageServant_OnGossipTalk")
RegisterUnitGossipEvent(858697, 2, "ScourgeMageServant_OnGossipSelect")
--------------------------------------------------------------------------------
function MageHelperEscape_OnGossipTalk(pUnit, event, player, pMisc)
pUnit:SendChatMessage(12, 0, "I can port you out of here. Do you want to leave?")
pUnit:GossipCreateMenu(99, player, 0)
   pUnit:GossipMenuAddItem(9, "Yes, But I'll be back!", 1, 0)
   pUnit:GossipMenuAddItem(9, "No Thanks", 2, 0)
pUnit:GossipSendMenu(player)
end

function MageHelperEscape_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)

if(intid == 2) then
player:GossipComplete()
end

if (intid == 1) then
player:AddItem(6948,1)
player:Teleport(1, 5491.252441, -2843, 1476)
pUnit:GossipComplete(player)
end
end

RegisterUnitGossipEvent(858698, 1, "MageHelperEscape_OnGossipTalk")
RegisterUnitGossipEvent(858698, 2, "MageHelperEscape_OnGossipSelect")
-----------The Lich King + Starter------------
function RingStartAnnounce_OnGossipTalk(pUnit, event, player, pMisc)
pUnit:SendChatMessage(12, 0, "I have brought you here because I have been watching you. And it seems that you have betrayed me and became a great threat.")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "What do you mean?", 6, 0)
   pUnit:GossipMenuAddItem(0, "I Dont have to listen to your lies! Release me!", 5, 0)
   pUnit:GossipSendMenu(player)
end

function RingStartAnnounce_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
if (intid == 6) then
pUnit:SendChatMessage(12, 0, "Ive been watching you, Your helping the people we are trying to destroy!")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "What? WE?", 7, 0)
   pUnit:GossipMenuAddItem(0, "I Dont have to listen to your lies! Release me!", 5, 0)
   pUnit:GossipSendMenu(player)
end

if (intid == 5) then
pUnit:SendChatMessage(12, 0, "Believe what you want to believe, but your my slave!")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "I Wont Ever Work for a low life scum like you!", 8, 0)
   pUnit:GossipMenuAddItem(0, "I Dont have to listen to your lies! Release me!", 10, 0)
   pUnit:GossipSendMenu(player)
end

if (intid == 10) then
pUnit:SendChatMessage(12, 0, "I dont care what you believe! You are here to die for your betrayal!")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "Bring it on!", 1, 0)
   pUnit:GossipMenuAddItem(0, "Spare me please!", 9, 0)
   pUnit:GossipSendMenu(player)
end

if (intid == 7) then
pUnit:SendChatMessage(12, 0, "You work for me! That inignia you got binds your soul in my grasp! It just seems you have lost your memory!")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "I Wont Ever Work for a low life scum like you!", 8, 0)
   pUnit:GossipMenuAddItem(0, "I Dont have to listen to your lies! Release me!", 5, 0)
   pUnit:GossipSendMenu(player)
end

if (intid == 8) then
pUnit:SendChatMessage(12, 0, "Just keep thinking that, But I brought you here to suffer because of your betrayal!")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "Bring it on!", 1, 0)
   pUnit:GossipMenuAddItem(0, "Spare me please!", 9, 0)
   pUnit:GossipSendMenu(player)
end

if (intid == 9) then
   pUnit:SendChatMessage(12, 0, "HAHAHA! Its to late for that!")
   player:SendBroadcastMessage("It is recomended to have at least 3 players! Are you sure you want to go on?")
   player:SendAreaTriggerMessage("It is recomended to have at least 3 players! Are you sure you want to go on?")
pUnit:GossipCreateMenu(99, player, 0)
   pUnit:GossipMenuAddItem(9, "I have at least 3 players for this group quest, I am ready!", 4, 0)
   pUnit:GossipMenuAddItem(9, "I am not ready yet.", 2, 0)
pUnit:GossipSendMenu(player)
end

if (intid == 1) then
   pUnit:SendChatMessage(12, 0, "HAHAHA! Let the Duel Begin!")
   player:SendBroadcastMessage("It is recomended to have at least 3 players! Are you sure you want to go on?")
   player:SendAreaTriggerMessage("It is recomended to have at least 3 players! Are you sure you want to go on?")
pUnit:GossipCreateMenu(99, player, 0)
   pUnit:GossipMenuAddItem(9, "I have at least 3 players for this group quest, I am ready!", 4, 0)
   pUnit:GossipMenuAddItem(9, "I am not ready yet.", 2, 0)
pUnit:GossipSendMenu(player)
end

if(intid == 2) then
player:GossipComplete()
end

if(intid == 4) then ---The Blood Script [Script Below]
CountPlayers = CountPlayers + 1 -- Counting :)
if CountPlayers == 1 then
pUnit:SendChatMessage(14, 0, "You are here to DIE!")
end
if CountPlayers == 2 then
pUnit:SendChatMessage(14, 0, "I see you brought some friends...This will get interesting.")
end
if CountPlayers == 3 then
CountPlayers = CountPlayers - 1 ----Deleting more players thats geting in so it doesnt bug script
end
player:Teleport(1, 2208.361572, -4739.262207, 55)
pUnit:GossipComplete(player)
end
end

RegisterUnitGossipEvent(858693, 1, "RingStartAnnounce_OnGossipTalk")
RegisterUnitGossipEvent(858693, 2, "RingStartAnnounce_OnGossipSelect")
------Defineing a few things for the Begining of Script--------
function The_Lich_King_Start_Define(pUnit, event)
	The_Lich_King_Start = pUnit
end

RegisterUnitEvent(858693, 18, "The_Lich_King_Start_Define")
-----------------------------------------------------------
function RingStartAssistance_OnGossipTalk(pUnit, event, player, pMisc)
   pUnit:GossipCreateMenu(50, player, 0)
   if CountPlayers == 1 then
   pUnit:GossipMenuAddItem(9, "Im Ready!", 1, 0)
   end
   if CountPlayers > 1 then
   pUnit:GossipMenuAddItem(9, "Were Ready!", 1, 0)
   end
   pUnit:GossipMenuAddItem(0, "Never Mind, we are not ready yet", 2, 0)
   pUnit:GossipMenuAddItem(0, "Never Mind, I Forfeit", 3, 0)
   pUnit:GossipSendMenu(player)
end

function RingStartAssistance_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
if (intid == 1) then
CountPlayers = 0 ---Reseting The Counter
     x = The_Lich_King_Start:GetX();
      y = The_Lich_King_Start:GetY();
      z = The_Lich_King_Start:GetZ();
      o = The_Lich_King_Start:GetO();
	  z = z + 0.5
The_Lich_King_Start:SpawnCreature(858695, x, y, z, o, 35, 0);
The_Lich_King_Start:Despawn(1,0)
pUnit:Despawn(1,0)
end

if (intid == 2) then
The_Lich_King_Start:SendChatMessage(14, 0, "Hurry it up! I Want You DEAD!")
player:GossipComplete()
end

if (intid == 3) then
CountPlayers = CountPlayers - 1 ---Deleting one because one forfeit out of the arena
if CountPlayers < 0 then
CountPlayers = 0
end
if CountPlayers > 0 then
The_Lich_King_Start:SendChatMessage(14, 0, "You Cant Run Forever!")
end
player:Teleport(1, 2152.083984, -4749.151367, 68)
pUnit:GossipComplete(player)
end
end

RegisterUnitGossipEvent(858694, 1, "RingStartAssistance_OnGossipTalk")
RegisterUnitGossipEvent(858694, 2, "RingStartAssistance_OnGossipSelect")
---------Battle Begins----------
function The_Lich_King_Announce_Define(pUnit, event)
	The_Lich_King_Announce = pUnit
	The_Lich_King_Announce:RegisterEvent("RingofBloodStart", 2500, 0)
end

function RingofBloodStart(pUnit, event)
    The_Lich_King_Announce:RemoveEvents()
	The_Lich_King_Announce:SendChatMessage(14, 0, "Time for you All to Die for your Betrayal!")
	The_Lich_King_Announce:RegisterEvent("RingofBloodSummonPatchy", 2500, 0)
end

function RingofBloodPatchy(pUnit, event)
    The_Lich_King_Announce:RemoveEvents()
	The_Lich_King_Announce:SendChatMessage(14, 0, "Lets see how you do agaisnt my pet!")
	The_Lich_King_Announce:RegisterEvent("RingofBloodSummonPatchyb", 2500, 0)
end

function RingofBloodPatchy(pUnit, event)
    The_Lich_King_Announce:RemoveEvents()
	The_Lich_King_Announce:SpawnCreature(858700, 2170.317139, -4799.618652, 55.138485, 1.307681, 35, 0);
	The_Lich_King_Announce:SendChatMessage(14, 0, "HAHAHAHA!")
end

RegisterUnitEvent(858695, 18, "The_Lich_King_Announce_Define")
