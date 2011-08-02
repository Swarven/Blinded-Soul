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
-- FireL:SetUInt32Value(58, 26) -- fail... but usefull...
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
FireA = pUnit
FireA:SendChatMessage(14, 0, "\124c000070ddWait Ragnaros!")
FireA:Emote(5, 2000)
FireA:EquipWeapons(23456, 18825, 0)
end
RegisterUnitEvent(990110, 18, "Charles_AllianceKing_OnSpawn")

function Gorlock_HordeKing_OnSpawn(pUnit, Event)
FireH = pUnit
FireH:EquipWeapons(19363, 34676, 0)
end
RegisterUnitEvent(990109, 18, "Gorlock_HordeKing_OnSpawn")

function LichKing_OnSpawn(pUnit, Event)
    FireL = pUnit
	FireL:EquipWeapons(36942, 0, 0)
	FireL:SetByteValue(0x7A, 0, 1) ---Weild Weapon Test.... Success WEWT!
	FireL:RegisterEvent("LichKing_TalkBegin", 500, 1) --<---- Never Knew This, But Adding The 1 = Only Registers Once... weird but usefull
end

---this Function changes its phase....--
function LichKing_TalkBegin(pUnit, Event)
FireL:SendChatMessage(12, 0, "\124c007FFFD4I Will Not Allow You To Do This...")
FireL:MoveTo(-243.800919, 145.987686, -18.642220, 1.865927)
end
-----------------------------------------
RegisterUnitEvent(990112, 18, "LichKing_OnSpawn")
--================--
function Draco_OnCombat(pUnit, Event)
pUnit:SendChatMessage(14, 0, "You go no further, prepare to die.")
--pUnit:RegisterEvent("Draco_Fire", 16000, 0)
pUnit:RegisterEvent("Draco_HPCheckc", 2500, 0)
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
pUnit:SendChatMessage(14, 0, "Alright, You champions has proven your worth listening to, I shall summon Ragnaros!")
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
pUnit:ModifyWalkSpeed(10)
pUnit:MoveTo(-248.328094, 162.778381, -18.64566, 2.26384)
DracoFight:Despawn(1,0)
pUnit:RegisterEvent("Draco_Cinematicb", 7000, 0)
end

RegisterUnitEvent(DracoCin, 18, "Draco_Cinematica")
--===========--
function Draco_Cinematicb(pUnit, Event)
pUnit:RemoveEvents()
pUnit:SendChatMessage(14, 0, "Ragnaros My Lord, I Summon You! Some Travelers Wish To Have A Auidiance with You!")
pUnit:SetFacing(2.26384)
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
player:SendBroadcastMessage("==========================")
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
	FireR = pUnit
    pUnit:RegisterEvent("Rag_Cinematica", 4100, 0)
end

RegisterUnitEvent(990106, 18, "Ragnaros_OnSpawn")

function Rag_Cinematica(pUnit, Event)
    pUnit:RemoveEvents()
	pUnit:SendChatMessage(14, 0, "\124c00FFA500Draco, What is The Meaning Of This? Me And Arthas Are About to close The Agreement With The Treaty!")
    pUnit:RegisterEvent("Rag_Cinematicb", 6000, 0)
end

function Rag_Cinematicb(pUnit, Event)
    pUnit:RemoveEvents()
	Draco:SendChatMessage(12, 0, "Forgive Me My Lord, These Mortals Wish To Have A Auidiance With You.")
    pUnit:RegisterEvent("Rag_Cinematicc", 4500, 0)
end

function Rag_Cinematicc(pUnit, Event)
    pUnit:RemoveEvents()
	pUnit:SendChatMessage(14, 0, "\124c00FFA500You Let Mortals Run Around In My Chasm?!")
    pUnit:RegisterEvent("Rag_Cinematicd", 4000, 0)
end

function Rag_Cinematicd(pUnit, Event)
    pUnit:RemoveEvents()
	Draco:SendChatMessage(12, 0, "I Tried To Stop Them, But They Seem Very Determined To Speak To You, Master.")
    pUnit:RegisterEvent("Rag_Cinematice", 6000, 0)
end

function Rag_Cinematice(pUnit, Event)
    pUnit:RemoveEvents()
	pUnit:SendChatMessage(14, 0, "\124c00FFA500Very Well Then I Shall Talk To Them Just For A Moment, I Have Things I Must Finish With Arthas, You May Leave Now Draco.")
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
	pUnit:SendChatMessage(14, 0, "\124c00FFA500Now, What is it That you Mortals Need?")
	pUnit:RegisterEvent("Rag_Cinematici", 2500, 0)
end

function Rag_Cinematici(pUnit, Event, Player)
    pUnit:RemoveEvents()
    local Player = FireClosePlayer:GetClosestPlayer()
	Player:PlayerSendChatMessage(1, 0, "Well... Your Treaty With Arthas, He Will Betray You! He Cannot Be Trusted!")
	pUnit:RegisterEvent("Rag_Cinematicj", 4500, 0)
end

function Rag_Cinematicj(pUnit, Event)
    pUnit:RemoveEvents()
	pUnit:SendChatMessage(14, 0, "\124c00FFA500Enough With Your Lies! DIE MORTALS!")
	pUnit:RegisterEvent("Rag_Cinematick", 1500, 0)
end
--=====Kings Spawn=====--
function Rag_Cinematick(pUnit, Event)
local PlayerColorb = pUnit:GetInRangePlayers()
for index, player in pairs(PlayerColorb) do
player:SendAreaTriggerMessage("Cinematic Color Text Added")
player:SendBroadcastMessage("==Cinematic Color Text Added==")
player:SendBroadcastMessage("\124c00FF3333Red\124r = \124c0033FF33Horde King (Gorlock)\124r")
player:SendBroadcastMessage("\124c000070ddBlue\124r = \124c0033FF33Alliance King (Charles)\124r")
player:SendBroadcastMessage("========================")
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
    FireR:SetFacing(5.36497)
    pUnit:SetOrientation(5.36497)
	FireR:SendChatMessage(14, 0, "\124c00FFA500Whats This?...")
	pUnit:RegisterEvent("Rag_Cinematicm", 3000, 0)
end

function Rag_Cinematicm(pUnit, Event)
    pUnit:RemoveEvents()
	FireA:Emote(1, 2000)
	FireA:SendChatMessage(12, 0, "\124c000070ddI am Charles, King Of The Alliance.")
	pUnit:RegisterEvent("Rag_Cinematicn", 3000, 0)
end

function Rag_Cinematicn(pUnit, Event)
    pUnit:RemoveEvents()
	FireH:Emote(1, 2000)
	FireH:SetFacing(2.112275)
    FireH:SetOrientation(2.112275)
	FireA:SetFacing(2.344839)
    FireA:SetOrientation(2.344839)
	FireH:SendChatMessage(12, 0, "\124c00FF3333And I'm Gorlock, King Of The Mighty Horde.")
	pUnit:RegisterEvent("Rag_Cinematico", 3000, 0)
end

function Rag_Cinematico(pUnit, Event)
    pUnit:RemoveEvents()
	FireA:Emote(1, 2000)
	FireA:SendChatMessage(12, 0, "\124c000070ddWe Are Here To Negociate This Matter.")
	pUnit:RegisterEvent("Rag_Cinematicp", 2500, 0)
end

function Rag_Cinematicp(pUnit, Event)
    pUnit:RemoveEvents()
	FireR:SendChatMessage(12, 0, "\124c00FFA500I Don't Have Time For This! I Have More Important Matters With...")
	pUnit:RegisterEvent("Rag_Cinematicq", 4000, 0)
end

function Rag_Cinematicq(pUnit, Event)
    pUnit:RemoveEvents()
	FireH:Emote(15, 3000)
	FireH:SendChatMessage(12, 0, "\124c00FF3333Matters With Arthas?! Perhaps You Don't Understand! He's Planing To Dominate Azeroth! He Will Just Use You Till He Accomplishes His Goals!")
	FireH:RegisterEvent("HEmotea", 3000, 0)
end
---Emotes... Long Talk---
        function HEmotea(pUnit, Event)
        pUnit:RemoveEvents()
	    FireH:Emote(5, 2000)
	    FireH:RegisterEvent("HEmoteb", 3500, 0)
        end
		
		function HEmoteb(pUnit, Event)
        pUnit:RemoveEvents()
	    FireH:Emote(1, 2000)
	    FireR:RegisterEvent("FireHeartCina", 4500, 0) --New Register Name, Running out of letters...
        end
-----------------------
function FireHeartCina(pUnit, Event)
    pUnit:RemoveEvents()
	FireR:SendChatMessage(12, 0, "\124c00FFA500Perhaps This Is True... Perhaps It Is A Lie...")
	FireR:RegisterEvent("FireHeartCinb", 3000, 0)
end

function FireHeartCinb(pUnit, Event)
    pUnit:RemoveEvents()
	FireA:Emote(1, 4000)
	FireA:SendChatMessage(12, 0, "\124c000070ddI'm Afraid This Is No Lie... He Has Already Devistated Us... You Could Be Next.")
	FireR:RegisterEvent("FireHeartCinc", 6000, 0)
end

function FireHeartCinc(pUnit, Event)
    pUnit:RemoveEvents()
    local ALL = FireR:GetInRangePlayers()
	for k, v in pairs(ALL) do
    v:SendBroadcastMessage("Ragnaros Thinks For A Moment...")
	end
	FireR:RegisterEvent("FireHeartCind", 3000, 0)
end

function FireHeartCind(pUnit, Event)
    pUnit:RemoveEvents()
    FireH:Emote(1, 4000)
	FireH:SendChatMessage(12, 0, "\124c00FF3333Arthas Needs You Ragnaros, Once He Is Done With You, He Will Take Your Throne.")
	FireR:RegisterEvent("FireHeartCine", 6000, 0)
end

function FireHeartCine(pUnit, Event)
    pUnit:RemoveEvents()
    FireA:Emote(1, 4000)
	FireA:SendChatMessage(12, 0, "\124c000070ddJust Look What He Has Done So Far... So Many Innocent Lives Lost...")
	FireR:RegisterEvent("FireHeartCinf", 5000, 0)
end

function FireHeartCinf(pUnit, Event)
    pUnit:RemoveEvents()
	FireR:SendChatMessage(12, 0, "\124c00FFA500Very Well... I Shall Decline The Treaty...")
	FireR:RegisterEvent("FireHeartCing", 2000, 0)
end

function FireHeartCing(pUnit, Event)
	local PlayerColorc = FireR:GetInRangePlayers()
    for index, player in pairs(PlayerColorc) do
    player:SendAreaTriggerMessage("Cinematic Color Text Added")
    player:SendBroadcastMessage("==Cinematic Color Text Added==")
    player:SendBroadcastMessage("\124c007FFFD4Ice\124r = \124c0033FF33The Lich King (Arthas)")
    player:SendBroadcastMessage("========================")
	end
	pUnit:RemoveEvents()
	FireR:RegisterEvent("FireHeartCinh", 2000, 0)
end

function FireHeartCinh(pUnit, Event)
    pUnit:RemoveEvents()
	local LichYell = pUnit:GetInRangePlayers()
    for index, player in pairs(LichYell) do
    player:SendBroadcastMessage("\124c00FF3333The Lich King yells:\124r \124c007FFFD4NO!")
	end
	FireR:RegisterEvent("FireHeartCini", 2000, 0)
end

function FireHeartCini(pUnit, Event)
    pUnit:RemoveEvents()
	pUnit:SpawnGameObject(668871, -241.506485, 140.222244, -18.680859, 5.166350, 0)
	LichKingPortal:SetScale(2.5)--Makes Portal Bigger For The Lich King's Big Ass...
	FireR:RegisterEvent("FireHeartCinj", 2000, 0)
end

function FireHeartCinj(pUnit, Event)
    pUnit:RemoveEvents()
	FireA:SetFacing(4.804136)
    FireA:SetOrientation(4.804136)
    FireH:SetFacing(5.266430)
    FireH:SetOrientation(5.266430)
	FireR:SpawnCreature(LichKing, -240.731, 139.047, -18.6238, 1.86733, 35, 0);
	FireR:RegisterEvent("FireHeartCink", 4000, 0)
end

function FireHeartCink(pUnit, Event)
    pUnit:RemoveEvents()
	FireA:Emote(45, 10000)
	FireH:Emote(45, 10000)
    FireA:SendChatMessage(12, 0, "\124c000070ddArthas!")
	FireR:RegisterEvent("FireHeartCinl", 2500, 0)
end

function FireHeartCinl(pUnit, Event)
    pUnit:RemoveEvents()
    FireH:SendChatMessage(12, 0, "\124c00FF3333You Shall Die For What You Have Done Arthas!")
	FireR:RegisterEvent("FireHeartCinaa", 3000, 0)
end

function FireHeartCinaa(pUnit, Event)
    pUnit:RemoveEvents()
	FireH:SetMovementType(256)
	FireH:ModifyWalkSpeed(7)
	FireH:MoveTo(-245.224640, 147.438416, -18.7)
    FireH:SendChatMessage(12, 0, "\124c00FF3333DIE!")
	FireR:RegisterEvent("FireHeartCinab", 1000, 0)
end

function FireHeartCinab(pUnit, Event)
    pUnit:RemoveEvents()
	FireL:SetFacing(2.309550)
    FireL:SetOrientation(2.309550)
	FireH:Emote(35, 5000)
	FireR:RegisterEvent("FireHeartCinac", 2000, 0)
end

function FireHeartCinac(pUnit, Event)
    pUnit:RemoveEvents()
	FireL:Emote(54, 1500)
	FireR:RegisterEvent("FireHeartCinad", 1200, 0)
end

function FireHeartCinad(pUnit, Event)
    pUnit:RemoveEvents()
	FireH:CastSpell(71614)
	FireR:RegisterEvent("FireHeartCinae", 1000, 0)
end

function FireHeartCinae(pUnit, Event)
    pUnit:RemoveEvents()
	FireL:MoveTo(-238.745773, 148.538925, -18.7)
	FireL:SendChatMessage(12, 0, "\124c007FFFD4Pathetic!")
	FireR:RegisterEvent("FireHeartCinaf", 2500, 0)
end

function FireHeartCinaf(pUnit, Event)
    pUnit:RemoveEvents()
	FireL:SetFacing(1.883513)
    FireL:SetOrientation(1.883513)
	FireR:RegisterEvent("FireHeartCinag", 3000, 0)
end

function FireHeartCinag(pUnit, Event)
    pUnit:RemoveEvents()
	FireA:Emote(375, 1000)
    FireA:SendChatMessage(14, 0, "\124c000070ddRRRAAAAAA! Champions Attack!")
	FireR:RegisterEvent("FireHeartCinah", 2000, 1)
end

function FireHeartCinah(pUnit, Event)
    pUnit:RemoveEvents()
    FireL:SendChatMessage(14, 0, "\124c007FFFD4HA HA HA! I Don't Think So.....")
	FireR:RegisterEvent("FireHeartCinai", 1000, 0)
end

function FireHeartCinai(pUnit, Event)
    pUnit:RemoveEvents()
	FireL:FullCastSpell(68981)
	FireR:RegisterEvent("FireHeartCinaj", 4500, 0)
end

function FireHeartCinaj(pUnit, Event)
    pUnit:RemoveEvents()
	local FreezeAll = FireL:GetInRangePlayers()
	for k, v in pairs(FreezeAll) do
	v:CastSpell(71614) ---You Can Dispell Think By Clicking It, Making A Function To Keep Casting On Players....
	v:SetPlayerLock(true)
	end
	FireA:CastSpell(71614)
	FireL:RemoveAura(68981)
	FireL:CancelSpell(68981)
	FireL:SendChatMessage(14, 0, "\124c007FFFD4Weak!")
	FireR:SpawnCreature(KeepFreezing, -244.445099, 180.548996, -29.92, 5.555173, 35, 0);
	FireR:RegisterEvent("FireHeartCinak", 2000, 0)
end

function FireHeartCinak(pUnit, Event)
    pUnit:RemoveEvents()
	FireL:MoveTo(-249.227280, 161.655136, -18.7)
	FireR:RegisterEvent("FireHeartCinal", 6500, 0)
end

function FireHeartCinal(pUnit, Event)
    pUnit:RemoveEvents()
	FireR:SendChatMessage(14, 0, "\124c00FFA500Arthas, Leave This Place... NOW!")
	FireR:RegisterEvent("FireHeartCinam", 2500, 0)
end

function FireHeartCinam(pUnit, Event)
    pUnit:RemoveEvents()
	FireL:SendChatMessage(14, 0, "\124c007FFFD4But... I Believe We Had A Deal...")
	FireR:RegisterEvent("FireHeartCinan", 2500, 0)
end

function FireHeartCinan(pUnit, Event)
    pUnit:RemoveEvents()
	FireR:SendChatMessage(14, 0, "\124c00FFA500The Treaty Is Over, I am Not Accepting It... Leave!")
	FireR:RegisterEvent("FireHeartCinao", 2500, 0)
end

function FireHeartCinao(pUnit, Event)
    pUnit:RemoveEvents()
	FireL:Emote(397, 3000)
	FireL:SendChatMessage(14, 0, "\124c007FFFD4Then I'm Sorry To Say This, But You Had Just Sealed Your Fate!")
	FireR:RegisterEvent("FireHeartCinap", 3500, 0)
end

function FireHeartCinap(pUnit, Event)
    pUnit:RemoveEvents()
	FireR:SendChatMessage(14, 0, "\124c00FFA500NO ARTHAS! IT IS YOU WHO HAS SEALED YOUR OWN!")
	FireR:RegisterEvent("FireHeartCinaq", 2500, 0)
end

function FireHeartCinaq(pUnit, Event)
    pUnit:RemoveEvents()
	FireR:Emote(434, 500)
	FireR:RegisterEvent("FireHeartCinar", 2000, 0)
end

function FireHeartCinar(pUnit, Event)
	local DefrostAll = FireR:GetInRangePlayers()
	for k, v in pairs(DefrostAll) do
	local x = v:GetX();
    local y = v:GetY();
    local z = v:GetZ();
    pUnit:RemoveEvents()
	pUnit:SpawnGameObject(70324, x, y, z, 0, 3501)
	end
	pUnit:SpawnGameObject(70324, FireH:GetX(), FireH:GetY(), FireH:GetZ(), 0, 3500)
	pUnit:SpawnGameObject(70324, FireA:GetX(), FireA:GetY(), FireA:GetZ(), 0, 3500)
	FireR:RegisterEvent("FireHeartCinas", 2500, 0)
end

function FireHeartCinas(pUnit, Event)
    pUnit:RemoveEvents()
	FireR:SendChatMessage(14, 0, "\124c00FFA500Rise Up Friends...")
	FireR:RegisterEvent("FreezingDespawn", 999, 0)
end

function FreezingDespawn(pUnit, Event)
    pUnit:RemoveEvents()
	KF:Despawn(1,0)
	FireR:RegisterEvent("FireHeartCinat", 1, 0)
end

function FireHeartCinat(pUnit, Event)
    pUnit:RemoveEvents()
	local DefrostAll = FireR:GetInRangePlayers()
	for k, v in pairs(DefrostAll) do
	v:RemoveAura(71614)
	v:SetPlayerLock(false)
	end
	FireA:RemoveAura(71614)
	FireH:RemoveAura(71614)
	FireR:RegisterEvent("FireHeartCinau", 1000, 0)
end

function FireHeartCinau(pUnit, Event)
    pUnit:RemoveEvents()
	FireL:SetFacing(5.330630)
	FireL:SendChatMessage(14, 0, "\124c007FFFD4Impossible...")
	FireR:RegisterEvent("FireHeartCinav", 2000, 0)
end

function FireHeartCinav(pUnit, Event)
    pUnit:RemoveEvents()
	FireA:MoveTo(-241.8, 160.7, -18.7)
	FireH:MoveTo(-247.1, 155.1, -18.7)
	FireA:SendChatMessage(12, 0, "\124c000070ddgive Up Arthas, You Are Defeated!")
	FireR:RegisterEvent("FireHeartCinaw", 3000, 0)
end

function FireHeartCinaw(pUnit, Event)
    pUnit:RemoveEvents()
	FireA:Emote(375, 4500)
	FireH:Emote(375, 4500)
	FireL:SendChatMessage(14, 0, "\124c007FFFD4This Isn't Over, Next time we meet, you wont have assistance!")
	FireR:RegisterEvent("FireHeartCinax", 3000, 0)
end

function FireHeartCinax(pUnit, Event)
    pUnit:RemoveEvents()
    --FireR:SpawnCreature(Ghoula, -251.9, 145.2, -18.65, 1.029608, 35, 0);
    --FireR:SpawnCreature(Ghoulb, -234.8, 160.5, -18.68, 3.172174, 35, 0);
	FireR:RegisterEvent("FireHeartCinay", 1500, 0)
end

function FireHeartCinay(pUnit, Event)
    pUnit:RemoveEvents()
	FireL:SetMovementType(256)
	FireL:ModifyWalkSpeed(7)
	FireL:MoveTo(-244.4, 154.1, -18.8)
	--FireGa:MoveTo(-240.8, 139.5, -18.7)
	--FireGb:MoveTo(-240.8, 139.5, -18.7)
	FireA:SetFacing(6.260360)
	FireH:SetFacing(4.167274)
	FireA:SendChatMessage(12, 0, "\124c000070ddArthas You Coward!")
	FireR:RegisterEvent("FireHeartCinaz", 2000, 0)
end

function FireHeartCinaz(pUnit, Event)
    pUnit:RemoveEvents()
	FireL:MoveTo(-240.8, 139.5, -18.7)
	--FireR:RegisterEvent("FireHeartCinba", 2000, 0)
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