--=======Locals NPCs=======--
local DNDQuakeNPC = 990105
local Ragnaros = 990106
local DracoCin = 990107
local AllianceKing = 990110
local HordeKing = 990109
local LichKing = 990112
local FireGetClosest = 990115
local KeepFreezing = 990113
--=======Locals GOs=======--
local KingPortal = 668872
local LichKingPortal = 668871
--=========================--
-- SoFArthas:SetUInt32Value(58, 26) -- fail... but usefull...
function LichKing_Portal_OnSpawn(Event, GObj)
LichKingPortal = Event
end

RegisterGameObjectEvent(668871, 1, "LichKing_Portal_OnSpawn")

--===============--
function KeepFreezingPlayers_OnSpawn(pUnit, Event)
KF = pUnit
KF:RegisterEvent("KeepFreezingPlayersAndRepeat", 1, 0)
end

function KeepFreezingPlayersAndRepeat(pUnit, Event)
local FREEZTHEMALL = KF:GetInRangePlayers()
for index, KFz in pairs(FREEZTHEMALL) do
if (KFz:HasAura(71614) == false) then
KFz:CastSpell(71614)
else
end
end
end

RegisterUnitEvent(990113, 18, "KeepFreezingPlayers_OnSpawn")

function FireClosestNPC_OnSpawn(pUnit, Event)
FireClosePlayer = pUnit
end
RegisterUnitEvent(990115, 18, "FireClosestNPC_OnSpawn")

function Charles_AllianceKing_OnSpawn(pUnit, Event)
SoFTirion = pUnit
SoFTirion:SendChatMessage(14, 0, "\124c000070ddWait Ragnaros!")
SoFTirion:Emote(5, 2000)
SoFTirion:EquipWeapons(23456, 18825, 0)
end
RegisterUnitEvent(990110, 18, "Charles_AllianceKing_OnSpawn")

function Gorlock_HordeKing_OnSpawn(pUnit, Event)
SoFGurlock = pUnit
SoFGurlock:EquipWeapons(19363, 34676, 0)
end
RegisterUnitEvent(990109, 18, "Gorlock_HordeKing_OnSpawn")

function LichKing_OnSpawn(pUnit, Event)
    SoFArthas = pUnit
	SoFArthas:EquipWeapons(36942, 0, 0)
	SoFArthas:SetByteValue(0x7A, 0, 1) ---Weild Weapon Test.... Success WEWT!
	SoFArthas:RegisterEvent("LichKing_TalkBegin", 500, 1) --<---- Never Knew This, But Adding The 1 = Only Registers Once... weird but usefull
end

---this Function changes its phase....--
function LichKing_TalkBegin(pUnit, Event)
SoFArthas:SendChatMessage(12, 0, "\124c007FFFD4I will not allow you to do this...")
SoFArthas:MoveTo(-243.800919, 145.987686, -18.642220, 1.865927)
end
-----------------------------------------
RegisterUnitEvent(990112, 18, "LichKing_OnSpawn")
--================--
function Draco_OnCombat(pUnit, Event)
pUnit:SendChatMessage(14, 0, "You go no further, heroes. Prepare to die.")
--pUnit:RegisterEvent("Draco_Fire", 16000, 0)
pUnit:RegisterEvent("Draco_HPCheckc", 1000, 0)
end

 --[[
function Draco_Fire(pUnit, Event)
pUnit:SendChatMessage(14, 0, "I will turn you to ashes were you stand!")
pUnit:PlaySoundToSet(1283)
pUnit:CastSpellOnTarget(42950, pUnit:GetMainTank())
end
]]

function Draco_spawn(pUnit, Event)
DracoFight = pUnit
end
RegisterUnitEvent(990104, 18, "Draco_spawn")

function Draco_HPCheckc(pUnit, Event)
if pUnit:GetHealthPct() < 10 then
pUnit:GetHealth()
pUnit:RemoveEvents()
pUnit:SetFaction(35)
pUnit:SetCombatCapable(1)
pUnit:SetCombatTargetingCapable(1)
pUnit:ClearThreatList()
pUnit:ChangeTarget(pUnit)
pUnit:SendChatMessage(14, 0, "You have proven your worth.. I submit.. I will call upon Ragnaros, as per your requests.")
pUnit:RegisterEvent("Draco_Cinematicstart", 100, 0)
end
end

function Draco_Cinematicstart(pUnit, Event)
pUnit:RemoveEvents()
x = pUnit:GetX()
y = pUnit:GetY()
z = pUnit:GetZ()
o = pUnit:GetO()
pUnit:SpawnCreature(DracoCin, x, y, z, o, 35, 0);
end
--============--
function Draco_Cinematica(pUnit, Event)
pUnit:RemoveEvents()
Draco = pUnit
pUnit:SetHealth(DracoFight:GetHealth())
pUnit:SetMovementType(256)
pUnit:ModifyWalkSpeed(7)
pUnit:MoveTo(-248.328094, 162.778381, -18.64566, 2.26384)
DracoFight:Despawn(1,0)
pUnit:RegisterEvent("Draco_Cinematicb", 7000, 0)
end

RegisterUnitEvent(DracoCin, 18, "Draco_Cinematica")
--===========--
function Draco_Cinematicb(pUnit, Event)
pUnit:RemoveEvents()
pUnit:SendChatMessage(14, 0, "Ragnaros, my lord! I summon you! These adventurers wish to have an audience with you!")
pUnit:SetOrientation(2.26384)
pUnit:SpawnCreature(DNDQuakeNPC, -244.445099, 180.548996, -29.92, 5.555173, 35, 0);
pUnit:RegisterEvent("Draco_Cinematicc", 2000, 0)
end
--====EarthQuake====--
function DNDQuake_OnSpawn(pUnit, Event)
Earthquake = pUnit
Earthquake:RegisterEvent("Draco_CinematicQuake", 6500, 0)
end

RegisterUnitEvent(990105, 18, "DNDQuake_OnSpawn")
--====EarthQuake====--
function Draco_Cinematicc(pUnit, Event, player)
local PlayerColora = Draco:GetInRangePlayers()
for index, player in pairs(PlayerColora) do
pUnit:RemoveEvents()
player:SendAreaTriggerMessage("Cinematic Color Text Activated")
player:SendBroadcastMessage("==Cinematic Color Text Activated==")
player:SendBroadcastMessage("\124c00FFA500Orange\124r = \124c0033FF33Ragnaros\124r")
player:SendBroadcastMessage("============================")
pUnit:CastSpell(17086)
pUnit:RegisterEvent("Draco_Cinematicd", 7500, 0)
end
end

function Draco_CinematicQuake(pUnit, Event)
pUnit:RemoveEvents()
Earthquake:CastSpell(19798)
Earthquake:RegisterEvent("Draco_CinematicQuake", 1000, 0)
end

function Draco_Cinematicd(pUnit, Event)
pUnit:RemoveEvents()
pUnit:SpawnCreature(Ragnaros, -264.612762, 181.256348, -38.423225, 5.555173, 35, 0);
Earthquake:Despawn(1,0)
end

--=========Ragnaros Takes Over The Script===========--
function Ragnaros_OnSpawn(pUnit, Event)
	pUnit:Emote(449, 2700)
	SoFRaggy = pUnit
    pUnit:RegisterEvent("Rag_Cinematica", 4100, 0)
end

RegisterUnitEvent(990106, 18, "Ragnaros_OnSpawn")

function Rag_Cinematica(pUnit, Event)
    pUnit:RemoveEvents()
	pUnit:SendChatMessage(14, 0, "\124c00FFA500Draco, What is the meaning of this? I am trying to finalise the conditions of our treaty with Arthas!")
    pUnit:RegisterEvent("Rag_Cinematicb", 6000, 0)
end

function Rag_Cinematicb(pUnit, Event)
    pUnit:RemoveEvents()
	Draco:SendChatMessage(12, 0, "Forgive me, my lord, these mortals have an important message for you.")
    pUnit:RegisterEvent("Rag_Cinematicc", 4500, 0)
end

function Rag_Cinematicc(pUnit, Event)
    pUnit:RemoveEvents()
	pUnit:SendChatMessage(14, 0, "\124c00FFA500You let these.. mortals intrude into my inner sanctum?!")
    pUnit:RegisterEvent("Rag_Cinematicd", 4000, 0)
end

function Rag_Cinematicd(pUnit, Event)
    pUnit:RemoveEvents()
	Draco:SendChatMessage(12, 0, "I tried to stop them, but they were very determined to speak to you, Master.")
    pUnit:RegisterEvent("Rag_Cinematice", 6000, 0)
end

function Rag_Cinematice(pUnit, Event)
    pUnit:RemoveEvents()
	pUnit:SendChatMessage(14, 0, "\124c00FFA500Very well then, I shall grace them with my attention for now, I have other important matters to attend to. You may leave now, Draco.")
    pUnit:RegisterEvent("Rag_Cinematicf", 6500, 0)
end
--=====Draco Dismiss=====--
function Rag_Cinematicf(pUnit, Event)
    pUnit:RemoveEvents()
    pUnit:RegisterEvent("Rag_Cinematicg", 1000, 0)
end

function Rag_Cinematicg(pUnit, Event)
    pUnit:RemoveEvents()
	Draco:CastSpell(64611)
	Draco:CastSpell(20203)
	Draco:RegisterEvent("Draco_Despawn", 100, 0)
    pUnit:RegisterEvent("Rag_Cinematich", 2500, 0)
end

function Draco_Despawn(pUnit, Event)
    pUnit:RemoveEvents()
	pUnit:Despawn(1,0)
end
--======================--
function Rag_Cinematich(pUnit, Event)
    pUnit:RemoveEvents()
	pUnit:SpawnCreature(FireGetClosest, -243.182373, 153.253586, -18.75, 2.344138, 35, 10000);
	pUnit:SendChatMessage(14, 0, "\124c00FFA500What, may I ask, is the reason that you have requested an audience with me?")
	pUnit:RegisterEvent("Rag_Cinematici", 2500, 0)
end

function Rag_Cinematici(pUnit, Event, Player)
    pUnit:RemoveEvents()
    local Player = FireClosePlayer:GetClosestPlayer()
	Player:PlayerSendChatMessage(1, 0, "Your treaty with Arthas.. He will betray you. He cannot be trusted!")
	pUnit:RegisterEvent("Rag_Cinematicj", 4500, 0)
end

function Rag_Cinematicj(pUnit, Event)
    pUnit:RemoveEvents()
	pUnit:SendChatMessage(14, 0, "\124c00FFA500Nonsense! Enough of your lies! DIE, MORTALS!")
	pUnit:RegisterEvent("Rag_Cinematick", 1500, 0)
end
--=====Kings Spawn=====--
function Rag_Cinematick(pUnit, Event)
local PlayerColorb = pUnit:GetInRangePlayers()
for index, player in pairs(PlayerColorb) do
player:SendAreaTriggerMessage("Cinematic Color Text Added")
player:SendBroadcastMessage("==Cinematic Color Text Added==")
player:SendBroadcastMessage("\124c00FF3333Red\124r = \124c0033FF33Warchief of the Horde (Gorlock)\124r")
player:SendBroadcastMessage("\124c000070ddBlue\124r = \124c0033FF33Alliance King (Tirion Fordring)\124r")
player:SendBroadcastMessage("==========================")
end
pUnit:RemoveEvents()
pUnit:SpawnGameObject(668872, -228.109802, 152.140320, -18.906729, 0, 4000)
pUnit:SpawnGameObject(668872, -248.732208, 135.933365, -18.480621, 0, 4000)
pUnit:SpawnCreature(AllianceKing, -228.109802, 152.140320, -18.906729, 3.101795, 35, 0);
pUnit:SpawnCreature(HordeKing, -248.732208, 135.933365, -18.480621, 1.229930, 35, 0);
pUnit:RegisterEvent("Rag_Cinematicl", 2100, 0)
end

function Rag_Cinematicl(pUnit, Event)
    pUnit:RemoveEvents()
    SoFRaggy:SetOrientation(5.36497)
    pUnit:SetOrientation(5.36497)
	SoFRaggy:SendChatMessage(14, 0, "\124c00FFA500What is the meaning of this..?")
	pUnit:RegisterEvent("Rag_Cinematicm", 3000, 0)
end

function Rag_Cinematicm(pUnit, Event)
    pUnit:RemoveEvents()
	SoFTirion:Emote(1, 2000)
	SoFTirion:SendChatMessage(12, 0, "\124c000070ddI am Tirion Fordring, King of the Alliance.")
	pUnit:RegisterEvent("Rag_Cinematicn", 3000, 0)
end

function Rag_Cinematicn(pUnit, Event)
    pUnit:RemoveEvents()
	SoFGurlock:Emote(1, 2000)
	SoFGurlock:SetOrientation(2.112275)
	SoFTirion:SetOrientation(2.344839)
	SoFGurlock:SendChatMessage(12, 0, "\124c00FF3333And I am Gorlock, Warchief of the Horde.")
	pUnit:RegisterEvent("Rag_Cinematico", 3000, 0)
end

function Rag_Cinematico(pUnit, Event)
    pUnit:RemoveEvents()
	SoFTirion:Emote(1, 2000)
	SoFTirion:SendChatMessage(12, 0, "\124c000070ddWe are here to discuss matters pertaining to your treaty with Arthas.")
	pUnit:RegisterEvent("Rag_Cinematicp", 2500, 0)
end

function Rag_Cinematicp(pUnit, Event)
    pUnit:RemoveEvents()
	SoFRaggy:SendChatMessage(14, 0, "\124c00FFA500I tire of this. I have more important matters to attend to...")
	pUnit:RegisterEvent("Rag_Cinematicq", 4000, 0)
end

function Rag_Cinematicq(pUnit, Event)
    pUnit:RemoveEvents()
	SoFGurlock:Emote(15, 3000)
	SoFGurlock:SendChatMessage(14, 0, "\124c00FF3333With Arthas? You are being manipulated, Ragnaros! He plans to use you to achieve his ultimate goal: To dominate Azeroth and extinquish all of those living in it!")
	SoFGurlock:RegisterEvent("HEmotea", 3000, 0)
end
---Emotes... Long Talk---
        function HEmotea(pUnit, Event)
        pUnit:RemoveEvents()
	    SoFGurlock:Emote(5, 2000)
	    SoFGurlock:RegisterEvent("HEmoteb", 3500, 0)
        end
		
		function HEmoteb(pUnit, Event)
        pUnit:RemoveEvents()
	    SoFGurlock:Emote(1, 2000)
	    SoFRaggy:RegisterEvent("SancOfFlameCina", 4500, 0) --New Register Name, Running out of letters...
        end
-----------------------
function SancOfFlameCina(pUnit, Event)
    pUnit:RemoveEvents()
	SoFRaggy:SendChatMessage(14, 0, "\124c00FFA500I see.. Perhaps I am making a mistake..")
	SoFRaggy:RegisterEvent("SancOfFlameCinb", 3000, 0)
end

function SancOfFlameCinb(pUnit, Event)
    pUnit:RemoveEvents()
	SoFTirion:Emote(1, 4000)
	SoFTirion:SendChatMessage(12, 0, "\124c000070ddI am afraid to say that this is no lie. His forces have already crippled our cities and our armies, you could well be next.")
	SoFRaggy:RegisterEvent("SancOfFlameCinc", 6000, 0)
end

function SancOfFlameCinc(pUnit, Event)
    pUnit:RemoveEvents()
    local ALL = SoFRaggy:GetInRangePlayers()
	for k, v in pairs(ALL) do
    v:SendBroadcastMessage("Ragnaros enters a deep thought...")
	end
	SoFRaggy:RegisterEvent("SancOfFlameCind", 3000, 0)
end

function SancOfFlameCind(pUnit, Event)
    pUnit:RemoveEvents()
    SoFGurlock:Emote(1, 4000)
	SoFGurlock:SendChatMessage(12, 0, "\124c00FF3333Arthas NEEDS you Ragnaros, and once you have outlived your usefulness to him, he will destroy you, and take your power for his own.")
	SoFRaggy:RegisterEvent("SancOfFlameCine", 6000, 0)
end

function SancOfFlameCine(pUnit, Event)
    pUnit:RemoveEvents()
    SoFTirion:Emote(1, 4000)
	SoFTirion:SendChatMessage(12, 0, "\124c000070ddJust take a look at what he has done already, so many innocent lives have been lost. We cannot let this continue!")
	SoFRaggy:RegisterEvent("SancOfFlameCinf", 5000, 0)
end

function SancOfFlameCinf(pUnit, Event)
    pUnit:RemoveEvents()
	SoFRaggy:SendChatMessage(14, 0, "\124c00FFA500Very well, I will end my negotiations with Arthas, and pledge myself and my forces against Arthas and the Scourge!")
	SoFRaggy:RegisterEvent("SancOfFlameCing", 2000, 0)
end

function SancOfFlameCing(pUnit, Event)
	local PlayerColorc = SoFRaggy:GetInRangePlayers()
    for index, player in pairs(PlayerColorc) do
    player:SendAreaTriggerMessage("Cinematic Color Text Added")
    player:SendBroadcastMessage("==Cinematic Color Text Added==")
    player:SendBroadcastMessage("\124c007FFFD4Ice\124r = \124c0033FF33The Lich King (Arthas)")
    player:SendBroadcastMessage("==========================")
	end
	pUnit:RemoveEvents()
	SoFRaggy:RegisterEvent("SancOfFlameCinh", 2000, 0)
end

function SancOfFlameCinh(pUnit, Event)
    pUnit:RemoveEvents()
	local LichYell = pUnit:GetInRangePlayers()
    for index, player in pairs(LichYell) do
    player:SendBroadcastMessage("\124c00FF3333The Lich King yells:\124r \124c007FFFD4NO!")
	end
	SoFRaggy:RegisterEvent("SancOfFlameCini", 2000, 0)
end

function SancOfFlameCini(pUnit, Event)
    pUnit:RemoveEvents()
	pUnit:SpawnGameObject(668871, -241.506485, 140.222244, -18.680859, 5.166350, 0)
	LichKingPortal:SetScale(2.5)--Makes Portal Bigger For The Lich King's Big Ass...
	SoFRaggy:RegisterEvent("SancOfFlameCinj", 2000, 0)
end

function SancOfFlameCinj(pUnit, Event)
    pUnit:RemoveEvents()
    SoFTirion:SetOrientation(3.834716)
    SoFGurlock:SetOrientation(5.266430)
	SoFRaggy:SpawnCreature(LichKing, -240.731, 139.047, -18.6238, 1.86733, 35, 0);
	SoFRaggy:RegisterEvent("SancOfFlameCink", 4000, 0)
end

function SancOfFlameCink(pUnit, Event)
    pUnit:RemoveEvents()
	SoFTirion:Emote(45, 10000)
	SoFGurlock:Emote(45, 10000)
    SoFTirion:SendChatMessage(14, 0, "\124c000070ddARTHAS!")
	SoFRaggy:RegisterEvent("SancOfFlameCinl", 2500, 0)
end

function SancOfFlameCinl(pUnit, Event)
    pUnit:RemoveEvents()
    SoFGurlock:SendChatMessage(14, 0, "\124c00FF3333You shall pay for what you have done, you monster!")
	SoFRaggy:RegisterEvent("SancOfFlameCinaa", 3000, 0)
end

function SancOfFlameCinaa(pUnit, Event)
    pUnit:RemoveEvents()
	SoFGurlock:SetMovementType(256)
	SoFGurlock:ModifyRunSpeed(8)
	SoFGurlock:SetOrientation(1.334732)
	SoFGurlock:MoveTo(-245.224640, 147.438416, -18.7)
    SoFGurlock:SendChatMessage(14, 0, "\124c00FF3333Lok'tar Ogar!")
	SoFRaggy:RegisterEvent("SancOfFlameCinab", 1000, 0)
end

function SancOfFlameCinab(pUnit, Event)
    pUnit:RemoveEvents()
    SoFArthas:SetOrientation(2.309550)
	SoFGurlock:Emote(35, 5000)
	SoFRaggy:RegisterEvent("SancOfFlameCinac", 2000, 0)
end

function SancOfFlameCinac(pUnit, Event)
    pUnit:RemoveEvents()
	SoFArthas:Emote(54, 1500)
	SoFRaggy:RegisterEvent("SancOfFlameCinad", 1200, 0)
end

function SancOfFlameCinad(pUnit, Event)
    pUnit:RemoveEvents()
	SoFGurlock:CastSpell(71614)
	SoFRaggy:RegisterEvent("SancOfFlameCinae", 1000, 0)
end

function SancOfFlameCinae(pUnit, Event)
    pUnit:RemoveEvents()
	SoFArthas:MoveTo(-238.745773, 148.538925, -18.7)
	SoFArthas:SendChatMessage(12, 0, "\124c007FFFD4Pathetic..")
	SoFRaggy:RegisterEvent("SancOfFlameCinaf", 2500, 0)
end

function SancOfFlameCinaf(pUnit, Event)
    pUnit:RemoveEvents()
    SoFArthas:SetOrientation(1.883513)
	SoFRaggy:RegisterEvent("SancOfFlameCinag", 3000, 0)
end

function SancOfFlameCinag(pUnit, Event)
    pUnit:RemoveEvents()
	SoFTirion:Emote(375, 1000)
    SoFTirion:SendChatMessage(14, 0, "\124c000070ddATTACK!")
	SoFRaggy:RegisterEvent("SancOfFlameCinah", 2000, 1)
end

function SancOfFlameCinah(pUnit, Event)
    pUnit:RemoveEvents()
    SoFArthas:SendChatMessage(14, 0, "\124c007FFFD4HA HA HA! so weak and powerless.. you will fall by the Wrath of the Lich King!")
	SoFRaggy:RegisterEvent("SancOfFlameCinai", 1000, 0)
end

function SancOfFlameCinai(pUnit, Event)
    pUnit:RemoveEvents()
	SoFArthas:FullCastSpell(68981)
	SoFRaggy:RegisterEvent("SancOfFlameCinaj", 4500, 0)
end

function SancOfFlameCinaj(pUnit, Event)
    pUnit:RemoveEvents()
	local FreezeAll = SoFArthas:GetInRangePlayers()
	for k, v in pairs(FreezeAll) do
	v:CastSpell(71614) ---You Can Dispell Think By Clicking It, Making A Function To Keep Casting On Players....
	v:SetPlayerLock(true)
	end
	SoFTirion:CastSpell(71614)
	SoFArthas:RemoveAura(68981)
	SoFArthas:CancelSpell(68981)
	SoFArthas:SendChatMessage(14, 0, "\124c007FFFD4Pathetic mortals..")
	SoFRaggy:SpawnCreature(KeepFreezing, -244.445099, 180.548996, -29.92, 5.555173, 35, 0);
	SoFRaggy:RegisterEvent("SancOfFlameCinak", 2000, 0)
end

function SancOfFlameCinak(pUnit, Event)
    pUnit:RemoveEvents()
	SoFArthas:MoveTo(-249.227280, 161.655136, -18.7)
	SoFRaggy:RegisterEvent("SancOfFlameCinal", 6500, 0)
end

function SancOfFlameCinal(pUnit, Event)
    pUnit:RemoveEvents()
	SoFRaggy:SendChatMessage(14, 0, "\124c00FFA500Arthas, leave this place, and never return!")
	SoFRaggy:RegisterEvent("SancOfFlameCinam", 2500, 0)
end

function SancOfFlameCinam(pUnit, Event)
    pUnit:RemoveEvents()
	SoFArthas:SendChatMessage(14, 0, "\124c007FFFD4I believe we had a deal..")
	SoFRaggy:RegisterEvent("SancOfFlameCinan", 2500, 0)
end

function SancOfFlameCinan(pUnit, Event)
    pUnit:RemoveEvents()
	SoFRaggy:SendChatMessage(14, 0, "\124c00FFA500Negotiations are over! I will never ally myself with the likes of you!")
	SoFRaggy:RegisterEvent("SancOfFlameCinao", 2500, 0)
end

function SancOfFlameCinao(pUnit, Event)
    pUnit:RemoveEvents()
	SoFArthas:Emote(397, 3000)
	SoFArthas:SendChatMessage(14, 0, "\124c007FFFD4Then I will have to destroy you. You have sealed your own fate.")
	SoFRaggy:RegisterEvent("SancOfFlameCinap", 3500, 0)
end

function SancOfFlameCinap(pUnit, Event)
    pUnit:RemoveEvents()
	SoFRaggy:SendChatMessage(14, 0, "\124c00FFA500NO ARTHAS! IT IS YOU WHO HAS SEALED YOUR OWN!")
	SoFRaggy:RegisterEvent("SancOfFlameCinaq", 2500, 0)
end

function SancOfFlameCinaq(pUnit, Event)
    pUnit:RemoveEvents()
	SoFRaggy:Emote(434, 500)
	SoFRaggy:RegisterEvent("SancOfFlameCinar", 2000, 0)
end

function SancOfFlameCinar(pUnit, Event)
	local DefrostAll = SoFRaggy:GetInRangePlayers()
	for k, v in pairs(DefrostAll) do
	local x = v:GetX();
    local y = v:GetY();
    local z = v:GetZ();
    pUnit:RemoveEvents()
	pUnit:SpawnGameObject(70324, x, y, z, 0, 3501)
	end
	pUnit:SpawnGameObject(70324, SoFGurlock:GetX(), SoFGurlock:GetY(), SoFGurlock:GetZ(), 0, 3500)
	pUnit:SpawnGameObject(70324, SoFTirion:GetX(), SoFTirion:GetY(), SoFTirion:GetZ(), 0, 3500)
	SoFRaggy:RegisterEvent("SancOfFlameCinas", 2500, 0)
end

function SancOfFlameCinas(pUnit, Event)
    pUnit:RemoveEvents()
	SoFRaggy:SendChatMessage(14, 0, "\124c00FFA500Rise up, heroes!")
	SoFRaggy:RegisterEvent("FreezingDespawn", 999, 0)
end

function FreezingDespawn(pUnit, Event)
    pUnit:RemoveEvents()
	KF:Despawn(1,0)
	SoFRaggy:RegisterEvent("SancOfFlameCinat", 1, 0)
end

function SancOfFlameCinat(pUnit, Event)
    pUnit:RemoveEvents()
	local DefrostAll = SoFRaggy:GetInRangePlayers()
	for k, v in pairs(DefrostAll) do
	v:RemoveAura(71614)
	v:SetPlayerLock(false)
	end
	SoFTirion:RemoveAura(71614)
	SoFGurlock:RemoveAura(71614)
	SoFRaggy:RegisterEvent("SancOfFlameCinau", 1000, 0)
end

function SancOfFlameCinau(pUnit, Event)
    pUnit:RemoveEvents()
	SoFArthas:SetOrientation(5.330630)
	SoFArthas:SendChatMessage(14, 0, "\124c007FFFD4Impossible...")
	SoFRaggy:RegisterEvent("SancOfFlameCinav", 2000, 0)
end

function SancOfFlameCinav(pUnit, Event)
    pUnit:RemoveEvents()
	SoFTirion:MoveTo(-241.8, 160.7, -18.7)
	SoFGurlock:MoveTo(-247.1, 155.1, -18.7)
	SoFTirion:SetOrientation(4.754189)
	SoFGurlock:SetOrientation(4.167274)
	SoFTirion:SendChatMessage(12, 0, "\124c000070ddGive up Arthas, you are beaten! Lay down Frostmourne and surrender youself!")
	SoFRaggy:RegisterEvent("SancOfFlameCinaw", 3000, 0)
end

function SancOfFlameCinaw(pUnit, Event)
    pUnit:RemoveEvents()
	SoFTirion:Emote(375, 4500)
	SoFGurlock:Emote(375, 4500)
	SoFArthas:SendChatMessage(12, 0, "\124c007FFFD4This isn't over. When next we meet, it will be on my grounds..")
	SoFRaggy:RegisterEvent("SancOfFlameCinax", 3000, 0)
end

function SancOfFlameCinax(pUnit, Event)
    pUnit:RemoveEvents()
    --SoFRaggy:SpawnCreature(Ghoula, -251.9, 145.2, -18.65, 1.029608, 35, 0);
    --SoFRaggy:SpawnCreature(Ghoulb, -234.8, 160.5, -18.68, 3.172174, 35, 0);
	SoFRaggy:RegisterEvent("SancOfFlameCinay", 1500, 0)
end

function SancOfFlameCinay(pUnit, Event)
    pUnit:RemoveEvents()
	SoFArthas:SetMovementType(256)
	SoFArthas:ModifyWalkSpeed(7)
	SoFArthas:MoveTo(-244.4, 154.1, -18.8)
	--FireGa:MoveTo(-240.8, 139.5, -18.7)
	--FireGb:MoveTo(-240.8, 139.5, -18.7)
	SoFTirion:SetOrientation(4.754189)
	SoFGurlock:SetOrientation(5.016736)
	SoFTirion:SendChatMessage(14, 0, "\124c000070ddYOU COWARD!")
	SoFRaggy:RegisterEvent("SancOfFlameCinaz", 2000, 0)
end

function SancOfFlameCinaz(pUnit, Event)
    pUnit:RemoveEvents()
	SoFArthas:MoveTo(-240.8, 139.5, -18.7)
	--SoFRaggy:RegisterEvent("SancOfFlameCinba", 2000, 0)
end




--[[
function ForgemasterGarfrost_Phase2(pUnit, Event)

if pUnit:GetHealthPct() < 45 then

pUnit:SendChatMessage (12, 0, "You cant withstand the power of the elements.")
pUnit:SendChatMessage (12, 0, "Ragnaros will see you dead and the deal will be complete.")

pUnit:CastSpell(70334)

end

end

 if pUnit:GetHealthPct() < 30 then

function NPC_FlyUp(pUnit, Event)
x = pUnit:GetX()
y = pUnit:GetY()
z = pUnit:GetZ()
o = pUnit:GetO()
pUnit:SetCombatCapable(0)
pUnit:SetCombatMeleeCapable(1)
pUnit:SetMovementType(768)
pUnit:SetFlying()
pUnit:ModifyFlySpeed(8)
pUnit:MoveTo(x, y, z + 10, o)
end


function ForgemasterGarfrost_Phase2(pUnit, Event)
if pUnit:GetHealthPct() < 1 then
pUnit:SendChatMessage (12, 0, "You are to late the deal is complete.")
pUnit:SendChatMessage (12, 0, "The darkness will consume you and Aezoth with it.")
pUnit:CastSpell(70334)

end
end
]]

RegisterUnitEvent(990104, 1, "Draco_OnCombat")
--RegisterUnitEvent(990104, 2, "Drecor_OnDied")