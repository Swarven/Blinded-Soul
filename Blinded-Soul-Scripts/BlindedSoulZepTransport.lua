----------MALL <NEUTRAL>------------
local npcid = 0
function BlindedSoulMallZep_OnGossipTalk(pUnit, event, player, pMisc)
if (player:IsInCombat() == true) then
player:SendAreaTriggerMessage("You are in combat!")
else
pUnit:GossipCreateMenu(3544, player, 0)
pUnit:GossipMenuAddItem(3, "Show me where I can fly!", 1, 0)
pUnit:GossipMenuAddItem(3, "Where am I?", 2, 0)
pUnit:GossipSendMenu(player)
end
end

function BlindedSoulMallZep_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
if(intid == 999) then
pUnit:GossipCreateMenu(99, player, 0)
pUnit:GossipMenuAddItem(3, "Show me where I can fly!", 1, 0)
pUnit:GossipMenuAddItem(3, "Where am I?", 2, 0)
pUnit:GossipSendMenu(player)
end


if(intid == 1) then
pUnit:SendChatMessage(12, 0, "Where would you like to go, traveller?")
pUnit:GossipCreateMenu(99, player, 0)
local race=player:GetPlayerRace()
if race==2 or race==5 or race==6 or race==8 or race==10 then
pUnit:GossipMenuAddItem(1, "The Lost Refuge", 3, 0)
end
if (player:HasFinishedQuest(1000008) == true) then
pUnit:GossipMenuAddItem(1, "Horde Encampment", 6, 0)
end
local race=player:GetPlayerRace()
if race==1 or race==3 or race==4 or race==7 or race==11 then
pUnit:GossipMenuAddItem(1, "The Sanctuary", 4, 0)
end
if (player:HasFinishedQuest(2000008) == true) then
pUnit:GossipMenuAddItem(1, "Alliance Encampment", 5, 0)
end
pUnit:GossipMenuAddItem(0, "[Back]", 999, 0)
pUnit:GossipSendMenu(player)
end

if(intid == 2) then
pUnit:SendChatMessage(12, 0, "You are currently at Blinded-Soul World Mall! If you would like to go somewhere else, speak to me again.")
pUnit:GossipCreateMenu(99, player, 0)
pUnit:GossipMenuAddItem(0, "[Back]", 999, 0)
pUnit:GossipSendMenu(player)
end


if(intid == 3) then --The Lost Refuge
player:Teleport(1, 5170.971191, -1355.381104, 1392)
pUnit:GossipComplete(player)
end

if(intid == 4) then --The Sactuary
player:Teleport(1, 5672.955078, -3365.400291, 1627.5)
pUnit:GossipComplete(player)
end

if(intid == 5) then --Alliance Encampment
player:Teleport(1, 5618.556152, -3740.845947, 1661)
pUnit:GossipComplete(player)
end

if(intid == 6) then --Horde Encampment
player:Teleport(1, 4962.861816, -1843.767578, 1359)
pUnit:GossipComplete(player)
end

intid = 0
end

RegisterUnitGossipEvent(2867000, 1, "BlindedSoulMallZep_OnGossipTalk")
RegisterUnitGossipEvent(2867000, 2, "BlindedSoulMallZep_OnGossipSelect")

-------------Lost Refugee <HORDE>------------
local npcid = 0
function LostRefugeeZep_OnGossipTalk(pUnit, event, player, pMisc)
if (player:IsInCombat() == true) then
player:SendAreaTriggerMessage("You are in combat!")
else
pUnit:GossipCreateMenu(3544, player, 0)
pUnit:GossipMenuAddItem(3, "Show me where I can fly!", 1, 0)
pUnit:GossipMenuAddItem(3, "Where am I?", 2, 0)
pUnit:GossipSendMenu(player)
end
end

function LostRefugeeZep_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
if(intid == 999) then
pUnit:GossipCreateMenu(99, player, 0)
pUnit:GossipMenuAddItem(3, "Show me where I can fly!", 1, 0)
pUnit:GossipMenuAddItem(3, "Where am I?", 2, 0)
pUnit:GossipSendMenu(player)
end

if(intid == 1) then
pUnit:SendChatMessage(12, 0, "Where would you like to go, traveller?")
pUnit:GossipCreateMenu(99, player, 0)
pUnit:GossipMenuAddItem(1, "Blinded-Soul Mall", 3, 0)
if (player:HasFinishedQuest(1000008) == true) then
pUnit:GossipMenuAddItem(1, "Horde Encampment", 4, 0)
end
pUnit:GossipMenuAddItem(0, "[Back]", 999, 0)
pUnit:GossipSendMenu(player)
end

if(intid == 2) then
pUnit:SendChatMessage(12, 0, "You are currently at The Lost Refuge! If you would like to go somewhere else, speak to me again.")
pUnit:GossipCreateMenu(99, player, 0)
pUnit:GossipMenuAddItem(0, "[Back]", 999, 0)
pUnit:GossipSendMenu(player)
end


if(intid == 3) then --Blinded-Soul Mall
player:Teleport(0, -1009.669922, 1548.671509, 148)
pUnit:GossipComplete(player)
end

if(intid == 4) then --Horde Encampment
player:Teleport(1, 4962.861816, -1843.767578, 1359)
pUnit:GossipComplete(player)
end


intid = 0
end

RegisterUnitGossipEvent(2877000, 1, "LostRefugeeZep_OnGossipTalk")
RegisterUnitGossipEvent(2877000, 2, "LostRefugeeZep_OnGossipSelect")
---------The Sanctuary <ALLIANCE>-----------
local npcid = 0
function TheSanctuaryZep_OnGossipTalk(pUnit, event, player, pMisc)
if (player:IsInCombat() == true) then
player:SendAreaTriggerMessage("You are in combat!")
else
pUnit:GossipCreateMenu(3544, player, 0)
pUnit:GossipMenuAddItem(3, "Show me where I can fly!", 1, 0)
pUnit:GossipMenuAddItem(3, "Where am I?", 2, 0)
pUnit:GossipSendMenu(player)
end
end

function TheSanctuaryZep_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
if(intid == 999) then
pUnit:GossipCreateMenu(99, player, 0)
pUnit:GossipMenuAddItem(3, "Show me where I can fly!", 1, 0)
pUnit:GossipMenuAddItem(3, "Where am I?", 2, 0)
pUnit:GossipSendMenu(player)
end

if(intid == 1) then
pUnit:SendChatMessage(12, 0, "Where would you like to go Traveler?")
pUnit:GossipCreateMenu(99, player, 0)
pUnit:GossipMenuAddItem(1, "Blinded-Soul Mall", 3, 0)
if (player:HasFinishedQuest(2000008) == true) then
pUnit:GossipMenuAddItem(1, "Alliance Encampment", 4, 0)
end
pUnit:GossipMenuAddItem(0, "[Back]", 999, 0)
pUnit:GossipSendMenu(player)
end

if(intid == 2) then
pUnit:SendChatMessage(12, 0, "You are currently at The Sanctuary! If you would like to go somewhere else, speak to me again.")
pUnit:GossipCreateMenu(99, player, 0)
pUnit:GossipMenuAddItem(0, "[Back]", 999, 0)
pUnit:GossipSendMenu(player)
end


if(intid == 3) then --Blinded-Soul Mall
player:Teleport(0, -1009.669922, 1548.671509, 148)
pUnit:GossipComplete(player)
end

if(intid == 4) then --Alliance Encampment
player:Teleport(1, 5618.556152, -3740.845947, 1661)
pUnit:GossipComplete(player)
end


intid = 0
end

RegisterUnitGossipEvent(2887000, 1, "TheSanctuaryZep_OnGossipTalk")
RegisterUnitGossipEvent(2887000, 2, "TheSanctuaryZep_OnGossipSelect")
-------------Horde Encampment<HORDE>------------
local npcid = 0
function HordeEncampmentZep_OnGossipTalk(pUnit, event, player, pMisc)
if (player:IsInCombat() == true) then
player:SendAreaTriggerMessage("You are in combat!")
else
pUnit:GossipCreateMenu(3544, player, 0)
pUnit:GossipMenuAddItem(3, "Show me where I can fly!", 1, 0)
pUnit:GossipMenuAddItem(3, "Where am I?", 2, 0)
pUnit:GossipSendMenu(player)
end
end

function HordeEncampmentZep_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
if(intid == 999) then
pUnit:GossipCreateMenu(99, player, 0)
pUnit:GossipMenuAddItem(3, "Show me where I can fly!", 1, 0)
pUnit:GossipMenuAddItem(3, "Where am I?", 2, 0)
pUnit:GossipSendMenu(player)
end

if(intid == 1) then
pUnit:SendChatMessage(12, 0, "Where would you like to go, traveller?")
pUnit:GossipCreateMenu(99, player, 0)
pUnit:GossipMenuAddItem(1, "Blinded-Soul Mall", 3, 0)
pUnit:GossipMenuAddItem(1, "The Lost Refuge", 4, 0)
pUnit:GossipMenuAddItem(0, "[Back]", 999, 0)
pUnit:GossipSendMenu(player)
end

if(intid == 2) then
pUnit:SendChatMessage(12, 0, "You are currently at Horde Encampment! If you would like to go somewhere else, speak to me again.")
pUnit:GossipCreateMenu(99, player, 0)
pUnit:GossipMenuAddItem(0, "[Back]", 999, 0)
pUnit:GossipSendMenu(player)
end


if(intid == 3) then --Blinded-Soul Mall
player:Teleport(0, -1009.669922, 1548.671509, 148)
pUnit:GossipComplete(player)
end

if(intid == 4) then --The Lost Refuge
player:Teleport(1, 5170.971191, -1355.381104, 1392)
pUnit:GossipComplete(player)
end


intid = 0
end


RegisterUnitGossipEvent(2877001, 1, "HordeEncampmentZep_OnGossipTalk")
RegisterUnitGossipEvent(2877001, 2, "HordeEncampmentZep_OnGossipSelect")
-------------Alliance Encampment<Alliance>------------
local npcid = 0
function AllianceEncampmentZep_OnGossipTalk(pUnit, event, player, pMisc)
if (player:IsInCombat() == true) then
player:SendAreaTriggerMessage("You are in combat!")
else
pUnit:GossipCreateMenu(3544, player, 0)
pUnit:GossipMenuAddItem(3, "Show me where I can fly!", 1, 0)
pUnit:GossipMenuAddItem(3, "Where am I?", 2, 0)
pUnit:GossipSendMenu(player)
end
end

function AllianceEncampmentZep_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
if(intid == 999) then
pUnit:GossipCreateMenu(99, player, 0)
pUnit:GossipMenuAddItem(3, "Show me where I can fly!", 1, 0)
pUnit:GossipMenuAddItem(3, "Where am I?", 2, 0)
pUnit:GossipSendMenu(player)
end

if(intid == 1) then
pUnit:SendChatMessage(12, 0, "Where would you like to go, traveller?")
pUnit:GossipCreateMenu(99, player, 0)
pUnit:GossipMenuAddItem(1, "Blinded-Soul Mall", 3, 0)
pUnit:GossipMenuAddItem(1, "The Sanctuary", 4, 0)
pUnit:GossipMenuAddItem(0, "[Back]", 999, 0)
pUnit:GossipSendMenu(player)
end

if(intid == 2) then
pUnit:SendChatMessage(12, 0, "You are currently at Alliance Encampment! If you would like to go somewhere else, speak to me again.")
pUnit:GossipCreateMenu(99, player, 0)
pUnit:GossipMenuAddItem(0, "[Back]", 999, 0)
pUnit:GossipSendMenu(player)
end


if(intid == 3) then --Blinded-Soul Mall
player:Teleport(0, -1009.669922, 1548.671509, 148)
pUnit:GossipComplete(player)
end

if(intid == 4) then --The Sactuary
player:Teleport(1, 5672.955078, -3365.400291, 1627.5)
pUnit:GossipComplete(player)
end


intid = 0
end


RegisterUnitGossipEvent(2887001, 1, "AllianceEncampmentZep_OnGossipTalk")
RegisterUnitGossipEvent(2887001, 2, "AllianceEncampmentZep_OnGossipSelect")

