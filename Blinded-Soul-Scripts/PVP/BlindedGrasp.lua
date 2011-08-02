--------============TIME TO DEFINE!=============----------
local AllianceGuardGrasp = 8885561
local HordeGuardGrasp = 8885562
local AllianceKingGrasp = 8885563
local HordeKingGrasp = 8885564
local GuardSpawner = 8885565
--------------Alliance Guards----------------
function AllianceGuardPVP_die (pUnit, event)
         pUnit:RemoveEvents()
	pUnit:SendChatMessage(14, 0, "The Horde has killed a unit!")
	pUnit:Despawn(1,0)
end

RegisterUnitEvent (AllianceGuardGrasp, 4, "AllianceGuardPVP_die")
---------------------------------------------------------------------------------
------------------Horde Guards---------------
function HordeGuardPVP_die (pUnit, event)
         pUnit:RemoveEvents()
	pUnit:SendChatMessage(14, 0, "The Alliance has killed a unit!")
	pUnit:Despawn(1,0)
end

RegisterUnitEvent (HordeGuardGrasp, 4, "HordeGuardPVP_die")
---------------------------------------------------------------------------------
--------------------Alliance King-----------
function AllianceKingPVP_Combat (pUnit, event)
	pUnit:RemoveEvents()
	pUnit:SendChatMessage(14, 0, "Who Dares Attack this kingdom?!")
end

function AllianceKingPVP_die (pUnit, event)
	pUnit:RemoveEvents()
pUnit:RegisterEvent("DeSpawn_Alliance_Guards", 1000, 4)
pUnit:RegisterEvent("Spawn_Horde_Guards", 1000, 4)
	pUnit:SendChatMessage(14, 0, "The Horde Has Taken the kingdom!")
end

RegisterUnitEvent (AllianceKingGrasp, 1, "AllianceKingPVP_Combat")
RegisterUnitEvent (AllianceKingGrasp, 4, "AllianceKingPVP_die")
---------------------------------------------------------------------------------
------------------Horde King---------------
function HordeKingPVP_Combat (pUnit, event)
	pUnit:RemoveEvents()
	pUnit:SendChatMessage(14, 0, "Who Dares Attack this kingdom?!")
end

function HordeKingPVP_die (pUnit, event)
	pUnit:RemoveEvents()
	pUnit:RegisterEvent("DeSpawn_Horde_Guards", 1000, 4)
	pUnit:RegisterEvent("Spawn_Alliance_Guards", 1000, 4)
	pUnit:SendChatMessage(14, 0, "The Alliance Has Taken the kingdom!")
end

RegisterUnitEvent (HordeKingGrasp, 1, "HordeKingPVP_Combat")
RegisterUnitEvent (HordeKingGrasp, 4, "HordeKingPVP_die")
---------------------------------------------------------------------------------
-------------------SPAWN GUARDS--------------------
function Spawn_Alliance_Guards (pUnit, event)
pUnit:SpawnCreature(8885561, -5136.512695, 1057.150635, 384.092041, 6.172237, 1, 0);
pUnit:SpawnCreature(8885561, -5134.677734, 1067.605713, 383.347260, 6.172237, 1, 0);
pUnit:SpawnCreature(8885561, -5106.250488, 1041.184570, 385.999481, 1.966431, 1, 0);
pUnit:SpawnCreature(8885561, -5177.784668, 1062.786865, 405.125732, 1.427645, 1, 0);
pUnit:SpawnCreature(8885561, -5175.886719, 1075.950806, 403.125732, 4.566096, 1, 0);
pUnit:SpawnCreature(8885561, -5209.524414, 1079.621094, 412.918488, 6.029120, 1, 0);
pUnit:SpawnCreature(8885561, -5211.706055, 1071.219849, 412.918488, 6.029120, 1, 0);
pUnit:SpawnCreature(8885561, -5007.621582, 947.184448, 396.534698, 5.291647, 1, 0);
pUnit:SpawnCreature(8885561, -4990.356934, 958.477417, 396.610535, 5.291647, 1, 0);
pUnit:SpawnCreature(8885561, -5056.584961, 995.358337, 393.461853, 6.205850, 1, 0);
pUnit:SpawnCreature(8885561, -5046.393066, 1010.624573, 391.962280, 5.210751, 1, 0);
pUnit:SpawnCreature(8885561, -5042.859863, 972.652527, 395.027832, 0.704924, 1, 0);
pUnit:SpawnCreature(8885561, -5073.428223, 1019.055298, 389.947083, 0.693143, 1, 0);
pUnit:SpawnCreature(8885561, -5062.329590, 1034.609375, 388.265198, 4.088420, 1, 0);
pUnit:SpawnCreature(8885561, -5084.036133, 1055.810547, 386.425659, 4.207800, 1, 0);
pUnit:SpawnCreature(8885561, -5169.920898, 1029.111816, 386.511780, 1.212292, 1, 0);
pUnit:SpawnCreature(8885563, -5243.312012, 1080.405151, 438.628021, 6.030107, 1, 0);
pUnit:SendChatMessage(14, 0, "The Alliance Guards has been Spawned!")
end

function Spawn_Horde_Guards (pUnit, event)
pUnit:SpawnCreature(8885562, -5136.512695, 1057.150635, 384.092041, 6.172237, 2, 0);
pUnit:SpawnCreature(8885562, -5134.677734, 1067.605713, 383.347260, 6.172237, 2, 0);
pUnit:SpawnCreature(8885562, -5106.250488, 1041.184570, 385.999481, 1.966431, 2, 0);
pUnit:SpawnCreature(8885562, -5177.784668, 1062.786865, 405.125732, 1.427645, 2, 0);
pUnit:SpawnCreature(8885562, -5175.886719, 1075.950806, 403.125732, 4.566096, 2, 0);
pUnit:SpawnCreature(8885562, -5209.524414, 1079.621094, 412.918488, 6.029120, 2, 0);
pUnit:SpawnCreature(8885562, -5211.706055, 1071.219849, 412.918488, 6.029120, 2, 0);
pUnit:SpawnCreature(8885562, -5007.621582, 947.184448, 396.534698, 5.291647, 2, 0);
pUnit:SpawnCreature(8885562, -4990.356934, 958.477417, 396.610535, 5.291647, 2, 0);
pUnit:SpawnCreature(8885562, -5056.584961, 995.358337, 393.461853, 6.205850, 2, 0);
pUnit:SpawnCreature(8885562, -5046.393066, 1010.624573, 391.962280, 5.210751, 2, 0);
pUnit:SpawnCreature(8885562, -5042.859863, 972.652527, 395.027832, 0.704924, 2, 0);
pUnit:SpawnCreature(8885562, -5073.428223, 1019.055298, 389.947083, 0.693143, 2, 0);
pUnit:SpawnCreature(8885562, -5062.329590, 1034.609375, 388.265198, 4.088420, 2, 0);
pUnit:SpawnCreature(8885562, -5084.036133, 1055.810547, 386.425659, 4.207800, 2, 0);
pUnit:SpawnCreature(8885562, -5169.920898, 1029.111816, 386.511780, 1.212292, 2, 0);
pUnit:SpawnCreature(8885564, -5243.312012, 1080.405151, 438.628021, 6.030107, 2, 0);
pUnit:SendChatMessage(14, 0, "The Horde Guards has been Spawned!")
end

RegisterUnitEvent(GuardSpawner, 18, "Spawn_Alliance_Guards")
RegisterUnitEvent(GuardSpawner, 18, "Spawn_Horde_Guards")
-------------------------END-------------------
--------------------DESPAWNS GUARDS----------------
function DeSpawn_Horde_Guards (pUnit, event)
pUnit:RemoveEvents()
	pUnit:Despawn(1,0)
end

function DeSpawn_Alliance_Guards (pUnit, event)
pUnit:RemoveEvents()
	pUnit:Despawn(1,0)
end

RegisterUnitEvent(AllianceGuardGrasp, 18, "DeSpawn_Alliance_Guards")
RegisterUnitEvent(HordeGuardGrasp, 18, "DeSpawn_Horde_Guards")
-------------------END-----------------------------
