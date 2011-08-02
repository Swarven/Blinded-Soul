-- ==================== time to Define Locals! oh boy! ===========================================================

local Stagespellg = 996770
local Lightning = 577841
local Manager = 996766
local Stagespell = 996767
local Stagespellx = 996768
local Stageobject = 996769
local Belfetc = 996765
local Orcetc = 996761
local Undeadetc = 996764
local Trolletc = 996763
local Drumetc = 996762

-- =============================== Starter ================================================================

function L70ETC_OnGossipTalk(pUnit, event, player, pMisc)
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "Play [The Power Of the Horde]", 1, 0)
   pUnit:GossipMenuAddItem(0, "Never Mind", 2, 0)
   pUnit:GossipSendMenu(player)
end

function L70ETC_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
if (intid == 1) then
-----------------------LOCAL------X-Cords------Y-Cords---Z-Cords-O-Cords-Faction-Time-------
   pUnit:SpawnCreature(Belfetc, -1137.825439, 1586.216309, 58, 5.502077, 35, 0); ---Belf Lead Guitar Spawn
   pUnit:SpawnCreature(Orcetc, -1140.945313, 1583.069702, 58, 5.502077, 35, 0); ---Orc Singer Spawn
   pUnit:SpawnCreature(Undeadetc, -1144.722412, 1579.260010, 58, 5.502077, 35, 0); ---Undead Guitar Spawn
   pUnit:SpawnCreature(Trolletc, -1143.534058, 1582.222046, 58, 5.502077, 35, 0); ---Troll Bass Spawn
   pUnit:SpawnCreature(Drumetc, -1146.476929, 1588.553833, 62, 5.502077, 35, 0); ---Tauren Drummer Spawn
   pUnit:SpawnCreature(Stagespell, -1142.712158, 1585.066650, 54.2, 5.502077, 35, 0); ---StageSpell caster (recomended to spawn to a hidden spot near the stage)
   pUnit:SpawnCreature(Stagespellx, -1142.712158, 1585.066650, 54.2, 5.502077, 35, 0); ---StageSpell2 caster (recomended to spawn to a hidden spot near the stage)
   pUnit:SpawnCreature(Stageobject, -1142.712158, 1585.066650, 54.2, 5.502077, 35, 0);   ---GameObject Spawner (recomended to spawn to a hidden spot near the stage)
   pUnit:SpawnCreature(Stagespellg, -1142.712158, 1585.066650, 54.2, 5.502077, 35, 0);
   ----------------Lightning Spawns-------------
   pUnit:SpawnCreature(Lightning, -1126.234619, 1565.003052, 47, 5.502077, 35, 0);
   pUnit:SpawnCreature(Lightning, -1128.028320, 1561.249390, 47, 5.502077, 35, 0);
   pUnit:SpawnCreature(Lightning, -1143.362061, 1565.420288, 47, 5.502077, 35, 0);
   pUnit:SpawnCreature(Lightning, -1138.801636, 1567.364624, 47, 5.502077, 35, 0);
   pUnit:SpawnCreature(Lightning, -1160.369019, 1561.430542, 47, 5.502077, 35, 0);
   pUnit:SpawnCreature(Lightning, -1140.904785, 1584.440796, 47, 5.502077, 35, 0);
   pUnit:SpawnCreature(Lightning, -1137.716797, 1576.669189, 47, 5.502077, 35, 0);
   pUnit:SpawnCreature(Lightning, -1125.806885, 1573.481323, 47, 5.502077, 35, 0);
   ---------------------------------------------
   pUnit:Despawn(1,0)
   pUnit:GossipComplete(player)
end


if (intid == 2) then
   pUnit:GossipComplete(player)
   player:SendBroadcastMessage("No Music For You!")
   player:SendAreaTriggerMessage("No Music For You!")
end
end

RegisterUnitGossipEvent(Manager, 1, "L70ETC_OnGossipTalk")
RegisterUnitGossipEvent(Manager, 2, "L70ETC_OnGossipSelect")

-----------------------LIST!----------------


function Orca(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:CastSpell(35341)
       pUnit:SendChatMessage(14, 0, "1")
       pUnit:RegisterEvent("Orcb", 1000, 0)
end

function Orcb(pUnit, Event)
       pUnit:RemoveEvents()
       pUnit:SendChatMessage(14, 0, "2")
       pUnit:RegisterEvent("Orcc", 1000, 0)
end

function Orcc(pUnit, Event)
       pUnit:RemoveEvents()
       pUnit:SendChatMessage(14, 0, "3")
       pUnit:RegisterEvent("Orcd", 1000, 0)
end

function Orcd(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:PlaySoundToSet(11803)
	   pUnit:SendChatMessage(14, 0, "Storm, Earth and Fire Heed my call!")
       pUnit:RegisterEvent("OrcEmotea", 5000, 0)
end

function OrcEmotea(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Emote(402,40000)
       pUnit:RegisterEvent("Orcf", 40000, 0)
end


function Orcf(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Emote(405,4000)
	   pUnit:SendChatMessage(14, 0, "I am the son of the wind and rain, Thunder beckons and I heed the call.")
       pUnit:RegisterEvent("Orcg", 5000, 0)
end

function Orcg(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:SendChatMessage(14, 0, "If i die upon this day In battle I will fall.")
       pUnit:RegisterEvent("Orch", 7000, 0)
end

function Orch(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Emote(405,4000)
	   pUnit:SendChatMessage(14, 0, "Hear me brothers gather up the wolves to battle we will ride.")
       pUnit:RegisterEvent("Orci", 6000, 0)
end

function Orci(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Emote(406,3000)
	   pUnit:SendChatMessage(14, 0, "Wardrums echo the beating heart, pounding from inside.")
       pUnit:RegisterEvent("Orcj", 8000, 0)
end

function Orcj(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:SendChatMessage(14, 0, "STORM! Black clouds fill the sky!")
       pUnit:RegisterEvent("Orck", 3000, 0)
end

function Orck(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:SendChatMessage(14, 0, "EARTH! I hear my battle cry!")
       pUnit:RegisterEvent("Orcl", 3000, 0)
end

function Orcl(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:SendChatMessage(14, 0, "FIRE! Thunder will bring forth!")
       pUnit:RegisterEvent("Orcm", 4000, 0)
end

function Orcm(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Emote(407,2500)
	   pUnit:SendChatMessage(14, 0, "DEATH! From The Power of the Horde!")
       pUnit:RegisterEvent("Orcrestb", 2500, 0)
end


function Orcrestb(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Emote(402,14000)
       pUnit:RegisterEvent("Orcn", 14500, 0)
end

function Orcn(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Emote(406,3000)
	   pUnit:SendChatMessage(14, 0, "Farseer to the warsong clan to no matter will I kneel.")
       pUnit:RegisterEvent("Orco", 6000, 0)
end

function Orco(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Emote(404,14000)
	   pUnit:SendChatMessage(14, 0, "Feel the power and the energy for the black blood, honor and steel. I feel the fire burning in my veins lightning strikes at my command.")
       pUnit:RegisterEvent("Orcq", 14000, 0)
end

function Orcq(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Emote(406,3000)
	   pUnit:SendChatMessage(14, 0, "By storm and earth, axe and fire we come to claim this land.")
       pUnit:RegisterEvent("Orcr", 5000, 0)
end

function Orcr(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:SendChatMessage(14, 0, "STORM! Black clouds fill the sky!")
       pUnit:RegisterEvent("Orcs", 4000, 0)
end

function Orcs(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:SendChatMessage(14, 0, "EARTH! I hear my battle cry!")
       pUnit:RegisterEvent("Orct", 3000, 0)
end

function Orct(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:SendChatMessage(14, 0, "FIRE! Thunder will bring forth!")
       pUnit:RegisterEvent("Orcu", 3000, 0)
end

function Orcu(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Emote(407,2000)
	   pUnit:SendChatMessage(14, 0, "DEATH! From The Power of the Horde!")
       pUnit:RegisterEvent("Orcresta", 3000, 0)
end

function Orcresta(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Emote(402,63000)
       pUnit:RegisterEvent("Orcv", 63000, 0)
end

function Orcv(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Emote(407,2500)
	   pUnit:SendChatMessage(14, 0, "YEAHHH!")
       pUnit:RegisterEvent("Orcw", 4000, 0)
end

function Orcw(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Emote(403,10000)
	   pUnit:SendChatMessage(14, 0, "Surrounded by the enemy the wolf among the hounds. Thunder turns to silence it took the hundred to bring me down.")
       pUnit:RegisterEvent("Orcendea", 10000, 0)
end

function Orcendea(pUnit, Event)
       pUnit:RemoveEvents()
       pUnit:RegisterEvent("Orcx", 3000, 0)
end

function Orcx(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Emote(406,3000)
	   pUnit:SendChatMessage(14, 0, "Wolf brothers falling at my side with honor I will die.")
       pUnit:RegisterEvent("Orcz", 7000, 0)
end

function Orcz(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Emote(405,4000)
	   pUnit:SendChatMessage(14, 0, "Upon the altar of the storms I will be reborn.")
       pUnit:RegisterEvent("Orcaa", 8000, 0)
end

function Orcaa(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:SendChatMessage(14, 0, "STORM! Black clouds fill the sky!")
       pUnit:RegisterEvent("Orcbb", 4000, 0)
end

function Orcbb(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:SendChatMessage(14, 0, "EARTH! I hear my battle cry!")
       pUnit:RegisterEvent("Orccc", 3000, 0)
end

function Orccc(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:SendChatMessage(14, 0, "FIRE! Thunder will bring forth!")
       pUnit:RegisterEvent("Orcdd", 3000, 0)
end

function Orcdd(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:SendChatMessage(14, 0, "DEATH! For I have been reborn!")
       pUnit:RegisterEvent("Orcee", 4000, 0)
end

function Orcee(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:SendChatMessage(14, 0, "STORM!")
       pUnit:RegisterEvent("Orcff", 3000, 0)
end

function Orcff(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:SendChatMessage(14, 0, "EARTH!")
       pUnit:RegisterEvent("Orcgg", 3000, 0)
end

function Orcgg(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:SendChatMessage(14, 0, "FIRE!")
       pUnit:RegisterEvent("Orchh", 3000, 0)
end

function Orchh(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:SendChatMessage(14, 0, "DEATH!")
       pUnit:RegisterEvent("Orcii", 4000, 0)
end

function Orcii(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Emote(407,2500)
	   pUnit:SendChatMessage(14, 0, "THE POWER OF THE HORDE!")
       pUnit:RegisterEvent("Orcjj", 20000, 0)
end

function Orcjj(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:SpawnCreature(Manager, -1136.840088, 1579.730957, 55, 5.459303, 35, 0); ---Manager Spawn (Spawn next to Stage)
	   pUnit:Despawn(1,0)
end

RegisterUnitEvent(Orcetc, 18, "Orca")

---TROLL---

function Trolla(pUnit, Event)
       pUnit:RegisterEvent("Trollb", 74000, 0)
end


function Trollb(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:SendChatMessage(14, 0, "STORM!")
       pUnit:RegisterEvent("Trollc", 3000, 0)
end

function Trollc(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:SendChatMessage(14, 0, "EARTH!")
       pUnit:RegisterEvent("Trolld", 3000, 0)
end

function Trolld(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Emote(403,4000)
	   pUnit:SendChatMessage(14, 0, "FIRE!")
       pUnit:RegisterEvent("Trolle", 4000, 0)
end

function Trolle(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Emote(402,7000)
	   pUnit:SendChatMessage(14, 0, "DEATH!")
       pUnit:RegisterEvent("Trollf", 43000, 0)
end
---------------------------------------------------
function Trollf(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Emote(403,4000)
	   pUnit:SendChatMessage(14, 0, "STORM!")
       pUnit:RegisterEvent("Trollg", 4000, 0)
end

function Trollg(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:SendChatMessage(14, 0, "EARTH!")
       pUnit:RegisterEvent("Trollh", 3000, 0)
end

function Trollh(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:SendChatMessage(14, 0, "FIRE!")
       pUnit:RegisterEvent("Trolli", 3000, 0)
end

function Trolli(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:SendChatMessage(14, 0, "DEATH!")
       pUnit:RegisterEvent("Trollsolo", 5000, 0)
end
----------------------------------------------------

---Solo Fire Hands stays on NPC for some reason, Fix this if u want but keep the timing right---
function Trollsolo(pUnit, Event)
	   pUnit:CastSpell(45984)
       pUnit:RegisterEvent("TrollEmotea", 1000, 0)
end

function TrollEmotea(pUnit, Event)
pUnit:RemoveEvents()
       pUnit:Emote(402,7000)
       pUnit:RegisterEvent("TrollEmoteb", 7000, 0)
end

function TrollEmoteb(pUnit, Event)
pUnit:RemoveEvents()
       pUnit:Emote(402,7000)
       pUnit:RegisterEvent("TrollEmotec", 7000, 0)
end

function TrollEmotec(pUnit, Event)
pUnit:RemoveEvents()
       pUnit:Emote(403,4000)
       pUnit:RegisterEvent("TrollEmoted", 4000, 0)
end

function TrollEmoted(pUnit, Event)
pUnit:RemoveEvents()
       pUnit:Emote(404,7000)
       pUnit:RegisterEvent("TrollEmotee", 7000, 0)
end

function TrollEmotee(pUnit, Event)
pUnit:RemoveEvents()
       pUnit:Emote(402,7000)
       pUnit:RegisterEvent("TrollEmotef", 7000, 0)
end

function TrollEmotef(pUnit, Event)
pUnit:RemoveEvents()
       pUnit:Emote(404,7000)
       pUnit:RegisterEvent("TrollEmoteg",7000, 0)
end

function TrollEmoteg(pUnit, Event)
pUnit:RemoveEvents()
       pUnit:Emote(403,4000)
       pUnit:RegisterEvent("TrollEmoteh", 4000, 0)
end

function TrollEmoteh(pUnit, Event)
pUnit:RemoveEvents()
       pUnit:Emote(402,7000)
       pUnit:RegisterEvent("TrollEmotei", 7000, 0)
end

function TrollEmotei(pUnit, Event)
pUnit:RemoveEvents()
       pUnit:Emote(403,4000)
       pUnit:RegisterEvent("TrollEmotej", 4000, 0)
end

function TrollEmotej(pUnit, Event)
pUnit:RemoveEvents()
       pUnit:Emote(404,7000)
       pUnit:RegisterEvent("TrollEmotek",7000, 0)
end

function TrollEmotek(pUnit, Event)
pUnit:RemoveEvents()
       pUnit:Emote(403,4000)
       pUnit:RegisterEvent("TrollEmotel", 4000, 0)
end

function TrollEmotel(pUnit, Event)
pUnit:RemoveEvents()
       pUnit:Emote(402,7000)
       pUnit:RegisterEvent("TrollEmoten", 7000, 0)
end

function TrollEmoten(pUnit, Event)
pUnit:RemoveEvents()
       pUnit:Emote(403,4000)
       pUnit:RegisterEvent("TrollEmotem", 4000, 0)
end

function TrollEmotem(pUnit, Event)
pUnit:RemoveEvents()
       pUnit:Emote(404,7000)
       pUnit:RegisterEvent("TrollEmoteend",7000, 0)
end

function TrollEmoteend(pUnit, Event)
       pUnit:RemoveEvents()
       pUnit:RegisterEvent("Trollj", 8000, 0)
end

----------------------------------------------
function Trollj(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:SendChatMessage(14, 0, "STORM!")
       pUnit:RegisterEvent("Trollk", 4000, 0)
end

function Trollk(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:SendChatMessage(14, 0, "EARTH!")
       pUnit:RegisterEvent("Trolll", 3000, 0)
end

function Trolll(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:SendChatMessage(14, 0, "FIRE!")
       pUnit:RegisterEvent("Trollm", 3000, 0)
end

function Trollm(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:SendChatMessage(14, 0, "DEATH!")
       pUnit:RegisterEvent("Trolln", 4000, 0)
end

function Trolln(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:SendChatMessage(14, 0, "STORM!")
       pUnit:RegisterEvent("Trollo", 3000, 0)
end

function Trollo(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:SendChatMessage(14, 0, "EARTH!")
       pUnit:RegisterEvent("Trollp", 3000, 0)
end

function Trollp(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:SendChatMessage(14, 0, "FIRE!")
       pUnit:RegisterEvent("Trollq", 3000, 0)
end

function Trollq(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:SendChatMessage(14, 0, "DEATH!")
       pUnit:RegisterEvent("Trollr", 25000, 0)
end

function Trollr(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Despawn(1,0)
end

RegisterUnitEvent(Trolletc, 18, "Trolla")

-------UNDEAD-------

function Undeada(pUnit, Event)
       pUnit:RegisterEvent("Undeadb", 74000, 0)
end


function Undeadb(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:SendChatMessage(14, 0, "STORM!")
       pUnit:RegisterEvent("Undeadc", 3000, 0)
end

function Undeadc(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:SendChatMessage(14, 0, "EARTH!")
       pUnit:RegisterEvent("Undeadd", 3000, 0)
end

function Undeadd(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Emote(404,4000)
	   pUnit:SendChatMessage(14, 0, "FIRE!")
       pUnit:RegisterEvent("Undeade", 4000, 0)
end

function Undeade(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Emote(405,8000)
	   pUnit:SendChatMessage(14, 0, "DEATH!")
       pUnit:RegisterEvent("Undeadf", 43000, 0)
end
---------------------------------------------------
function Undeadf(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:SendChatMessage(14, 0, "STORM!")
       pUnit:RegisterEvent("Undeadg", 4000, 0)
end

function Undeadg(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:SendChatMessage(14, 0, "EARTH!")
       pUnit:RegisterEvent("Undeadh", 3000, 0)
end

function Undeadh(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:SendChatMessage(14, 0, "FIRE!")
       pUnit:RegisterEvent("Undeadi", 3000, 0)
end

function Undeadi(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:SendChatMessage(14, 0, "DEATH!")
       pUnit:RegisterEvent("Undeadsolo", 5000, 0)
end
-----------------------------------------------------
---Solo Fire Hands stays on NPC for some reason, Fix this if u want but keep the timing right---
function Undeadsolo(pUnit, Event)
	   pUnit:CastSpell(45984)
       pUnit:RegisterEvent("UndeadEmotea", 1000, 0)
end

function UndeadEmotea(pUnit, Event)
pUnit:RemoveEvents()
       pUnit:Emote(402,7000)
       pUnit:RegisterEvent("UndeadEmoteb", 7000, 0)
end

function UndeadEmoteb(pUnit, Event)
pUnit:RemoveEvents()
       pUnit:Emote(404,7000)
       pUnit:RegisterEvent("UndeadEmotec", 7000, 0)
end

function UndeadEmotec(pUnit, Event)
pUnit:RemoveEvents()
       pUnit:Emote(405,8000)
       pUnit:RegisterEvent("UndeadEmoted", 8000, 0)
end

function UndeadEmoted(pUnit, Event)
pUnit:RemoveEvents()
       pUnit:Emote(404,7000)
       pUnit:RegisterEvent("UndeadEmotee", 7000, 0)
end

function UndeadEmotee(pUnit, Event)
pUnit:RemoveEvents()
       pUnit:Emote(405,8000)
       pUnit:RegisterEvent("UndeadEmotef", 8000, 0)
end

function UndeadEmotef(pUnit, Event)
pUnit:RemoveEvents()
       pUnit:Emote(405,8000)
       pUnit:RegisterEvent("UndeadEmoteg", 8000, 0)
end

function UndeadEmoteg(pUnit, Event)
pUnit:RemoveEvents()
       pUnit:Emote(404,7000)
       pUnit:RegisterEvent("UndeadEmoteh", 7000, 0)
end

function UndeadEmoteh(pUnit, Event)
pUnit:RemoveEvents()
       pUnit:Emote(405,8000)
       pUnit:RegisterEvent("UndeadEmotei", 8000, 0)
end

function UndeadEmotei(pUnit, Event)
pUnit:RemoveEvents()
       pUnit:Emote(404,7000)
       pUnit:RegisterEvent("UndeadEmotej", 7000, 0)
end

function UndeadEmotej(pUnit, Event)
pUnit:RemoveEvents()
       pUnit:Emote(405,8000)
       pUnit:RegisterEvent("UndeadEmotek", 8000, 0)
end

function UndeadEmotek(pUnit, Event)
pUnit:RemoveEvents()
       pUnit:Emote(403,13000)
       pUnit:RegisterEvent("UndeadEmoteend", 13000, 0)
end

function UndeadEmoteend(pUnit, Event)
pUnit:RemoveEvents()
       pUnit:RegisterEvent("Undeadj", 3000, 0)
end
------------------------------
function Undeadj(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Emote(404,4000)
	   pUnit:SendChatMessage(14, 0, "STORM!")
       pUnit:RegisterEvent("Undeadk", 4000, 0)
end

function Undeadk(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:SendChatMessage(14, 0, "EARTH!")
       pUnit:RegisterEvent("Undeadl", 3000, 0)
end

function Undeadl(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:SendChatMessage(14, 0, "FIRE!")
       pUnit:RegisterEvent("Undeadm", 3000, 0)
end

function Undeadm(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Emote(404,4000)
	   pUnit:SendChatMessage(14, 0, "DEATH!")
       pUnit:RegisterEvent("Undeadn", 4000, 0)
end

function Undeadn(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:SendChatMessage(14, 0, "STORM!")
       pUnit:RegisterEvent("Undeado", 3000, 0)
end

function Undeado(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:SendChatMessage(14, 0, "EARTH!")
       pUnit:RegisterEvent("Undeadp", 3000, 0)
end

function Undeadp(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:SendChatMessage(14, 0, "FIRE!")
       pUnit:RegisterEvent("Undeadq", 3000, 0)
end

function Undeadq(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:SendChatMessage(14, 0, "DEATH!")
       pUnit:RegisterEvent("Undeadr", 25000, 0)
end

function Undeadr(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Despawn(1,0)
end

RegisterUnitEvent(Undeadetc, 18, "Undeada")

---------------------------------------

function Belfa(pUnit, Event)
       pUnit:RegisterEvent("Belfb", 74000, 0)
end


function Belfb(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:SendChatMessage(14, 0, "STORM!")
       pUnit:RegisterEvent("Belfc", 3000, 0)
end

function Belfc(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Emote(403,1500)
	   pUnit:SendChatMessage(14, 0, "EARTH!")
       pUnit:RegisterEvent("Belfd", 3000, 0)
end

function Belfd(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Emote(404,4000)
	   pUnit:SendChatMessage(14, 0, "FIRE!")
       pUnit:RegisterEvent("Belfe", 4000, 0)
end

function Belfe(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Emote(405,7000)
	   pUnit:SendChatMessage(14, 0, "DEATH!")
       pUnit:RegisterEvent("Belff", 43000, 0)
end
---------------------------------------------------
function Belff(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Emote(404,4000)
	   pUnit:SendChatMessage(14, 0, "STORM!")
       pUnit:RegisterEvent("Belfg", 4000, 0)
end

function Belfg(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Emote(403,1500)
	   pUnit:SendChatMessage(14, 0, "EARTH!")
       pUnit:RegisterEvent("Belfh", 3000, 0)
end

function Belfh(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:SendChatMessage(14, 0, "FIRE!")
       pUnit:RegisterEvent("Belfi", 3000, 0)
end

function Belfi(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Emote(402,4000)
	   pUnit:SendChatMessage(14, 0, "DEATH!")
       pUnit:RegisterEvent("Belfsolo", 5000, 0)
end
-----------------------------------------------------


---Solo Fire Hands stays on NPC for some reason, Fix this if u want but keep the timing right---
function Belfsolo(pUnit, Event)
	   pUnit:CastSpell(45984)
       pUnit:RegisterEvent("BelfEmotea", 1000, 0)
end

function BelfEmotea(pUnit, Event)
	   pUnit:RemoveEvents()
	   pUnit:Emote(403,1500)
       pUnit:RegisterEvent("BelfEmoteb", 2000, 0)
end

function BelfEmoteb(pUnit, Event)
	   pUnit:RemoveEvents()
	   pUnit:Emote(405,7000)
       pUnit:RegisterEvent("BelfEmotec", 8000, 0)
end

function BelfEmotec(pUnit, Event)
	   pUnit:RemoveEvents()
	   pUnit:Emote(404,4000)
       pUnit:RegisterEvent("BelfEmoted", 5000, 0)
end

function BelfEmoted(pUnit, Event)
	   pUnit:RemoveEvents()
	   pUnit:Emote(402,4000)
       pUnit:RegisterEvent("BelfEmotee", 5000, 0)
end

function BelfEmotee(pUnit, Event)
	   pUnit:RemoveEvents()
	   pUnit:Emote(404,4000)
       pUnit:RegisterEvent("BelfEmotef", 5000, 0)
end

function BelfEmotef(pUnit, Event)
	   pUnit:RemoveEvents()
	   pUnit:Emote(403,1500)
       pUnit:RegisterEvent("BelfEmoteg", 2000, 0)
end

function BelfEmoteg(pUnit, Event)
	   pUnit:RemoveEvents()
	   pUnit:Emote(405,7000)
       pUnit:RegisterEvent("BelfEmoteh", 8000, 0)
end

function BelfEmoteh(pUnit, Event)
	   pUnit:RemoveEvents()
	   pUnit:Emote(402,4000)
       pUnit:RegisterEvent("BelfEmotei", 5000, 0)
end

function BelfEmotei(pUnit, Event)
	   pUnit:RemoveEvents()
	   pUnit:Emote(404,4000)
       pUnit:RegisterEvent("BelfEmotej", 5000, 0)
end

function BelfEmotej(pUnit, Event)
	   pUnit:RemoveEvents()
	   pUnit:Emote(403,1500)
       pUnit:RegisterEvent("BelfEmotel", 2000, 0)
end

function BelfEmotel(pUnit, Event)
	   pUnit:RemoveEvents()
	   pUnit:Emote(405,7000)
       pUnit:RegisterEvent("BelfEmoten", 8000, 0)
end

function BelfEmoten(pUnit, Event)
	   pUnit:RemoveEvents()
	   pUnit:Emote(402,4000)
       pUnit:RegisterEvent("BelfEmotem", 4000, 0)
end

function BelfEmotem(pUnit, Event)
	   pUnit:RemoveEvents()
	   pUnit:Emote(404,4000)
       pUnit:RegisterEvent("BelfEmoteo", 5000, 0)
end

function BelfEmoteo(pUnit, Event)
	   pUnit:RemoveEvents()
	   pUnit:Emote(403,1500)
       pUnit:RegisterEvent("BelfEmotep", 2000, 0)
end

function BelfEmotep(pUnit, Event)
	   pUnit:RemoveEvents()
	   pUnit:Emote(405,7000)
       pUnit:RegisterEvent("Belfendsolo", 8000, 0)
end

function Belfendsolo(pUnit, Event)
	   pUnit:RemoveEvents()
       pUnit:RegisterEvent("Belfj", 17000, 0)
end


-----------------------------------------------------
function Belfj(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Emote(404,4000)
	   pUnit:SendChatMessage(14, 0, "STORM!")
       pUnit:RegisterEvent("Belfk", 4000, 0)
end

function Belfk(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:SendChatMessage(14, 0, "EARTH!")
       pUnit:RegisterEvent("Belfl", 3000, 0)
end

function Belfl(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:SendChatMessage(14, 0, "FIRE!")
       pUnit:RegisterEvent("Belfm", 3000, 0)
end

function Belfm(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Emote(402,4000)
	   pUnit:SendChatMessage(14, 0, "DEATH!")
       pUnit:RegisterEvent("Belfn", 4000, 0)
end

function Belfn(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Emote(403,1500)
	   pUnit:SendChatMessage(14, 0, "STORM!")
       pUnit:RegisterEvent("Belfo", 3000, 0)
end

function Belfo(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:SendChatMessage(14, 0, "EARTH!")
       pUnit:RegisterEvent("Belfp", 3000, 0)
end

function Belfp(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:SendChatMessage(14, 0, "FIRE!")
       pUnit:RegisterEvent("Belfq", 3000, 0)
end

function Belfq(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Emote(403,1500)
	   pUnit:SendChatMessage(14, 0, "DEATH!")
       pUnit:RegisterEvent("Belfr", 25000, 0)
end

function Belfr(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Despawn(1,0)
end

RegisterUnitEvent(Belfetc, 18, "Belfa")

------DRUMS------

function Drumsa(pUnit, Event)
       pUnit:RegisterEvent("DrumsEmotea", 17000, 0)
end

function DrumsEmotea(pUnit, Event)
	   pUnit:RemoveEvents()
       pUnit:Emote(402,6000)
       pUnit:RegisterEvent("Drumsb", 57000, 0)
end


function Drumsb(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Emote(405,1000)
	   pUnit:SendChatMessage(14, 0, "STORM!")
       pUnit:RegisterEvent("Drumsc", 3000, 0)
end

function Drumsc(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Emote(405,1000)
	   pUnit:SendChatMessage(14, 0, "EARTH!")
       pUnit:RegisterEvent("Drumsd", 3000, 0)
end

function Drumsd(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Emote(405,1000)
	   pUnit:SendChatMessage(14, 0, "FIRE!")
       pUnit:RegisterEvent("Drumse", 4000, 0)
end

function Drumse(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Emote(405,1000)
	   pUnit:SendChatMessage(14, 0, "DEATH!")
       pUnit:RegisterEvent("Drumsf", 43000, 0)
end
---------------------------------------------------
function Drumsf(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Emote(405,1000)
	   pUnit:SendChatMessage(14, 0, "STORM!")
       pUnit:RegisterEvent("Drumsg", 4000, 0)
end

function Drumsg(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Emote(405,1000)
	   pUnit:SendChatMessage(14, 0, "EARTH!")
       pUnit:RegisterEvent("Drumsh", 3000, 0)
end

function Drumsh(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Emote(405,1000)
	   pUnit:SendChatMessage(14, 0, "FIRE!")
       pUnit:RegisterEvent("Drumsi", 3000, 0)
end

function Drumsi(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Emote(405,1000)
	   pUnit:SendChatMessage(14, 0, "DEATH!")
       pUnit:RegisterEvent("DrumsEmoteb", 1000, 0)
end
---------------Drums Emote Solo----------------------
function DrumsEmoteb(pUnit, Event)
	   pUnit:RemoveEvents()
	   pUnit:Emote(403,5000)
       pUnit:RegisterEvent("DrumsEmotec", 15000, 0)
end

function DrumsEmotec(pUnit, Event)
	   pUnit:RemoveEvents()
	   pUnit:Emote(404,2000)
       pUnit:RegisterEvent("DrumsEmoted", 10000, 0)
end

function DrumsEmoted(pUnit, Event)
	   pUnit:RemoveEvents()
	   pUnit:Emote(404,2000)
       pUnit:RegisterEvent("DrumsEmotee", 7000, 0)
end

function DrumsEmotee(pUnit, Event)
	   pUnit:RemoveEvents()
	   pUnit:Emote(403,5000)
       pUnit:RegisterEvent("DrumsEmotef", 10000, 0)
end

function DrumsEmotef(pUnit, Event)
	   pUnit:RemoveEvents()
	   pUnit:Emote(404,2000)
       pUnit:RegisterEvent("DrumsEmoteg", 15000, 0)
end

function DrumsEmoteg(pUnit, Event)
	   pUnit:RemoveEvents()
	   pUnit:Emote(404,2000)
       pUnit:RegisterEvent("DrumsEmoteh", 10000, 0)
end

function DrumsEmoteh(pUnit, Event)
	   pUnit:RemoveEvents()
	   pUnit:Emote(403,5000)
       pUnit:RegisterEvent("DrumsEmotei", 9000, 0)
end

function DrumsEmotei(pUnit, Event)
	   pUnit:RemoveEvents()
	   pUnit:Emote(404,2000)
       pUnit:RegisterEvent("Drumsendsolo", 4000, 0)
end

function Drumsendsolo(pUnit, Event)
	   pUnit:RemoveEvents()
       pUnit:RegisterEvent("Drumsj", 15000, 0)
end
-----------------------------------------------------


function Drumsj(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Emote(405,1000)
	   pUnit:SendChatMessage(14, 0, "STORM!")
       pUnit:RegisterEvent("Drumsk", 4000, 0)
end

function Drumsk(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Emote(405,1000)
	   pUnit:SendChatMessage(14, 0, "EARTH!")
       pUnit:RegisterEvent("Drumsl", 3000, 0)
end

function Drumsl(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Emote(405,1000)
	   pUnit:SendChatMessage(14, 0, "FIRE!")
       pUnit:RegisterEvent("Drumsm", 3000, 0)
end

function Drumsm(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Emote(405,1000)
	   pUnit:SendChatMessage(14, 0, "DEATH!")
       pUnit:RegisterEvent("Drumsn", 4000, 0)
end

function Drumsn(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Emote(405,1000)
	   pUnit:SendChatMessage(14, 0, "STORM!")
       pUnit:RegisterEvent("Drumso", 3000, 0)
end

function Drumso(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Emote(405,1000)
	   pUnit:SendChatMessage(14, 0, "EARTH!")
       pUnit:RegisterEvent("Drumsp", 3000, 0)
end

function Drumsp(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Emote(405,1000)
	   pUnit:SendChatMessage(14, 0, "FIRE!")
       pUnit:RegisterEvent("Drumsq", 3000, 0)
end

function Drumsq(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Emote(405,1000)
	   pUnit:SendChatMessage(14, 0, "DEATH!")
       pUnit:RegisterEvent("Drumsr", 25000, 0)
end

function Drumsr(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Despawn(1,0)
end

RegisterUnitEvent(Drumetc, 18, "Drumsa")

-----SPELLS-----
function Sspella(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:CastSpellAoF(-1144.570435,1581.852539,57.427872,41482)
       pUnit:RegisterEvent("Sspellb", 20000, 0)
end

function Sspellb(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:CastSpellAoF(-1139.251831,1586.836548,57.427872,42023)
       pUnit:RegisterEvent("Sspellc", 20000, 0)
end

function Sspellc(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:CastSpellAoF(-1144.570435,1581.852539,57.427872,42023)
       pUnit:RegisterEvent("Sspelld", 20000, 0)
end

function Sspelld(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:CastSpellAoF(-1139.251831,1586.836548,57.427872,41482)
       pUnit:RegisterEvent("Sspelle", 20000, 0)
end

function Sspelle(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:CastSpellAoF(-1139.251831,1586.836548,57.427872,42023)
       pUnit:RegisterEvent("Sspellf", 20000, 0)
end

function Sspellf(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:CastSpellAoF(-1144.570435,1581.852539,57.427872,41482)
       pUnit:RegisterEvent("Sspellg", 20000, 0)
end

function Sspellg(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:CastSpellAoF(-1144.570435,1581.852539,57.427872,42023)
       pUnit:RegisterEvent("Sspellh", 20000, 0)
end

function Sspellh(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:CastSpellAoF(-1139.251831,1586.836548,57.427872,41482)
       pUnit:RegisterEvent("Sspelli", 20000, 0)
end

function Sspelli(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:CastSpellAoF(-1144.570435,1581.852539,57.427872,41482)
       pUnit:RegisterEvent("Sspellj", 20000, 0)
end

function Sspellj(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:CastSpellAoF(-1139.251831,1586.836548,57.427872,42023)
	   pUnit:RegisterEvent("Sspelll", 20000, 0)
end

function Sspelll(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:CastSpellAoF(-1144.570435,1581.852539,57.427872,41482)
       pUnit:RegisterEvent("Sspellm", 20000, 0)
end

function Sspellm(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:CastSpellAoF(-1139.251831,1586.836548,57.427872,41482)
       pUnit:RegisterEvent("Sspelln", 10000, 0)
end

function Sspelln(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:CastSpellAoF(-1139.251831,1586.836548,57.427872,41482)
       pUnit:RegisterEvent("Sspellend", 49000, 0)
end
--------------The BIG Explosion at the end----------------
function Sspellend(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:CastSpellAoF(-1142.712158,1585.066650,54.2,59084)
	   pUnit:CastSpellAoF(-1142.712158,1585.066650,54.2,59084)
       pUnit:RegisterEvent("Sspello", 7000, 0)
end
----------------------------------------------------------
function Sspello(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Despawn(1,0)
end

RegisterUnitEvent(Stagespell, 18, "Sspella")

--------------Spells2-------
function Sspellxa(pUnit, Event)
	   pUnit:CastSpell(37764)
       pUnit:RegisterEvent("Sspellxb", 20000, 0)
end


function Sspellxb(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:CastSpell(37764)
       pUnit:RegisterEvent("Sspellxc", 20000, 0)
end


function Sspellxc(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:CastSpell(37764)
       pUnit:RegisterEvent("Sspellxd", 20000, 0)
end


function Sspellxd(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:CastSpell(37764)
       pUnit:RegisterEvent("Sspellxe", 20000, 0)
end


function Sspellxe(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:CastSpell(37764)
       pUnit:RegisterEvent("Sspellxf", 20000, 0)
end


function Sspellxf(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:CastSpell(37764)
       pUnit:RegisterEvent("Sspellxg", 20000, 0)
end


function Sspellxg(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:CastSpell(37764)
       pUnit:RegisterEvent("Sspellxh", 20000, 0)
end


function Sspellxh(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:CastSpell(37764)
       pUnit:RegisterEvent("Sspellxi", 20000, 0)
end


function Sspellxi(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:CastSpell(37764)
       pUnit:RegisterEvent("Sspellxj", 20000, 0)
end


function Sspellxj(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:CastSpell(37764)
       pUnit:RegisterEvent("Sspellxl", 20000, 0)
end


function Sspellxl(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:CastSpell(37764)
       pUnit:RegisterEvent("Sspellxm", 20000, 0)
end


function Sspellxm(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:CastSpell(37764)
       pUnit:RegisterEvent("Sspellxn", 20000, 0)
end


function Sspellxn(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:CastSpell(37764)
       pUnit:RegisterEvent("Sspello", 20000, 0)
end


function Sspellxo(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:CastSpell(37764)
       pUnit:RegisterEvent("Sspellxend", 1000, 0)
end

function Sspellxend(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Despawn(1,0)
end


RegisterUnitEvent(Stagespellx, 18, "Sspellxa")
-----------Lightning Cloud Effects------------
function Lightningspella(pUnit, Event)
	   pUnit:CastSpellAoF(-1141.937500,1583.795288,64.616905,39580)
       pUnit:RegisterEvent("Lightningspellb", 30000, 0)
end

function Lightningspellb(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:CastSpellAoF(-1141.937500,1583.795288,64.616905,39580)
       pUnit:RegisterEvent("Lightningspellc", 30000, 0)
end


function Lightningspellc(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:CastSpellAoF(-1141.937500,1583.795288,64.616905,39580)
       pUnit:RegisterEvent("Lightningspelld", 30000, 0)
end

function Lightningspelld(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:CastSpellAoF(-1141.937500,1583.795288,64.616905,39580)
       pUnit:RegisterEvent("Lightningspelle", 30000, 0)
end

function Lightningspelle(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:CastSpellAoF(-1141.937500,1583.795288,64.616905,39580)
       pUnit:RegisterEvent("Lightningspellf", 30000, 0)
end

function Lightningspellf(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:CastSpellAoF(-1141.937500,1583.795288,64.616905,39580)
       pUnit:RegisterEvent("Lightningspellg", 30000, 0)
end

function Lightningspellg(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:CastSpellAoF(-1141.937500,1583.795288,64.616905,39580)
       pUnit:RegisterEvent("Lightningspellh", 30000, 0)
end

function Lightningspellh(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:CastSpellAoF(-1141.937500,1583.795288,64.616905,39580)
       pUnit:RegisterEvent("Lightningspelli", 30000, 0)
end

function Lightningspelli(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:CastSpellAoF(-1141.937500,1583.795288,64.616905,39580)
       pUnit:RegisterEvent("Lightningspellj", 30000, 0)
end

function Lightningspellj(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:CastSpellAoF(-1141.937500,1583.795288,64.616905,39580)
       pUnit:RegisterEvent("Lightningspellk", 30000, 0)
end

function Lightningspellk(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:CastSpellAoF(-1141.937500,1583.795288,64.616905,39580)
       pUnit:RegisterEvent("Lightningspellend", 19000, 0)
end


function Lightningspellend(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Despawn(1,0)
end

RegisterUnitEvent(Stagespellg, 18, "Lightningspella")

---------------------------------------------
function Lightninga(pUnit, Event)
       pUnit:RegisterEvent("Lightningb", 3000, 0)
end

function Lightningb(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:CastSpell(24240)
	   pUnit:CastSpell(47693)
       pUnit:RegisterEvent("Lightningc", 4000, 0)
end

function Lightningc(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:CastSpell(24240)
	   pUnit:CastSpell(47693)
       pUnit:RegisterEvent("Lightningd", 109000, 0)
end

function Lightningd(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:CastSpell(24240)
	   pUnit:CastSpell(47693)
       pUnit:RegisterEvent("Lightninge", 10000, 0)
end

function Lightninge(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Despawn(1,0)
end

RegisterUnitEvent(Lightning, 18, "Lightninga")

---------Light effects from the solo-----------
function Sobjecta(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:RegisterEvent("Sobjectb", 137000, 0)
end

function Sobjectb(pUnit, Event)
       pUnit:RemoveEvents()
       pUnit:SpawnGameObject(177415, -1139.251831, 1586.836548, 57.424763, 1.370520, 50000)
	   pUnit:SpawnGameObject(177415, -1144.829834, 1581.140747, 57.424763, 1.370520, 50000)
	   pUnit:SpawnGameObject(177415, -1146.735229, 1589.064575, 61.070026, 1.370520, 50000)
	   pUnit:RegisterEvent("Sobjectend", 1000, 0)
end

function Sobjectend(pUnit, Event)
       pUnit:RemoveEvents()
	   pUnit:Despawn(1,0)
end


RegisterUnitEvent(Stageobject, 18, "Sobjecta")

------Below is the update that I added for the EMOTES for the Members (Some emotes are above, but I put some here for bug reasons-----
