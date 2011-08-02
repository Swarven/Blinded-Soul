--[[This is for some special Graveyards that are blocked.]]--
--[[
function GraveYard_Safty_Teleport_Exita(pUnit, Event)
pUnit:RegisterEvent("GraveYard_Safty_Teleport_Exit_Loopa", 1000, 0)
end

function GraveYard_Safty_Teleport_Exit_Loopa(pUnit, Event, player, Player)
local Alivea = pUnit:GetInRangePlayers()
for k, Aliveb in pairs(Alivea) do
    if (Aliveb ~= nil) then
	    if (Aliveb:IsAlive() == true) then
	    local Alivec = pUnit:GetDistanceYards(Aliveb)
		    if (Alivec < 11 ) then
            Aliveb:Teleport(1, 5172.10, -2381.50, 1424.5)
			Aliveb:SetFacing(3.061037)
            else
			end
        else
	    end
    else
	end
end
end
RegisterUnitEvent(455090, 18, "GraveYard_Safty_Teleport_Exita")

function GraveYard_Safty_Teleport_Exitb(pUnit, Event)
pUnit:RegisterEvent("GraveYard_Safty_Teleport_Exit_Loopb", 1000, 0)
end

function GraveYard_Safty_Teleport_Exit_Loopb(pUnit, Event, player, Player)
local Alivea = pUnit:GetInRangePlayers()
for k, Aliveb in pairs(Alivea) do
    if (Aliveb ~= nil) then
	    if (Aliveb:IsAlive() == true) then
	    local Alivec = pUnit:GetDistanceYards(Aliveb)
		    if (Alivec < 11 ) then
            Aliveb:Teleport(1, 5225.48, -2380.88, 1432.5)
			Aliveb:SetFacing(0.583879)
            else
			end
        else
	    end
    else
	end
end
end
RegisterUnitEvent(455091, 18, "GraveYard_Safty_Teleport_Exitb")
--]]


--[[This Here The Re-Directer Spirit. This Should Be Placed In ALL Grave Yards--]]
function GraveYard_NPC_OnSpawn(pUnit, Event)
pUnit:RegisterEvent("Global_GraveYard_Teleport_Loop", 100, 0)
end

function Global_GraveYard_Teleport_Loop(pUnit, Event, player, Player)
local Deatha = pUnit:GetInRangePlayers()
for k, Deathb in pairs(Deatha) do
local PlayerCharacter = Deathb:GetName()
    if (Deathb ~= nil) then
		if (ScriptDBQuery("SELECT Character_Name FROM characters_graveyards WHERE Character_Name = '"..PlayerCharacter.."'", 0) ~= nil) then
		local GraveYardGUID = pUnit:GetSpawnId()
		local GYIDO = "SELECT orientation FROM creature_spawns WHERE id = '"..GraveYardGUID.."'", 0
	            local Deathc = pUnit:GetDistanceYards(Deathb)
	            if (Deathb:IsDead() == true) and (ScriptDBQuery("SELECT Flags FROM characters_graveyards WHERE Character_Name = '"..PlayerCharacter.."'", 0):GetColumn(0):GetString() == "5") then
		            if (Deathc < 10 ) then
					    if (ScriptDBQuery("SELECT Flags FROM characters_graveyards WHERE Character_Name = '"..PlayerCharacter.."'", 0):GetColumn(0):GetString() == "3") then
						local GraveYardGUID = pUnit:GetSpawnId()
						Deathb:Teleport(0, 1642, 239.8, 62.6, 3.14)
						ScriptDBQuery("UPDATE characters_graveyards SET Graveyard_ID = '"..GraveYardGUID.."', SetFacing = '1', Flags = '2' WHERE Character_Name = '"..PlayerCharacter.."' LIMIT 1;", 0)
						else
                            local GraveYardGUID = pUnit:GetSpawnId()
		                    if (ScriptDBQuery("SELECT Flags FROM characters_graveyards WHERE Character_Name = '"..PlayerCharacter.."'", 0) == nil) then
				            else
						        ScriptDBQuery("UPDATE characters_graveyards SET Graveyard_ID = '"..GraveYardGUID.."', SetFacing = '1' WHERE Character_Name = '"..PlayerCharacter.."' LIMIT 1;", 0)
                                Deathb:Teleport(0, 1642, 239.8, 62.6, 3.14)
			                end
						end
			        else
	                end
                else
	            end
		    end
		else
		end
	end
end
RegisterUnitEvent(455020, 18, "GraveYard_NPC_OnSpawn")

--//////////////////////////////////////////////////////////////--

function Global_GraveYard_KingTerenas_OnGossipTalk(pUnit, event, player, pMisc)
local PlayerCharacter = player:GetName()
pUnit:GossipCreateMenu(50, player, 0)
   if (ScriptDBQuery("SELECT Flags FROM characters_graveyards WHERE Character_Name = '"..PlayerCharacter.."'", 0):GetColumn(0):GetString() == "3") then
   pUnit:GossipMenuAddItem(9, "...Am I Dead?", 1, 0)
   else
   if (ScriptDBQuery("SELECT Flags FROM characters_graveyards WHERE Character_Name = '"..PlayerCharacter.."'", 0):GetColumn(0):GetString() == "2") then
   pUnit:GossipMenuAddItem(9, "...Am I Dead?", 11, 0)
   else
   pUnit:GossipMenuAddItem(9, "Resurrect Me, Terenas.", 2, 0)
   --pUnit:GossipMenuAddItem(9, "Let Me Find My Corpse, Terenas.", 3, 0)
   end
   end
pUnit:GossipMenuAddItem(9, "Never Mind", 4, 0)
pUnit:GossipSendMenu(player)
end

function Global_GraveYard_KingTerenas_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
if (intid == 1) then
player:SendBroadcastMessage("\124c00FFA500Terenas Menethil\124r: \124c00FF3333Do not be alarmed, you are not dead, But Arthas is trying to take your soul. I am Terenas Menethil, Father of Arthas Menethil. I was murdered by my son... Hmmm... I see darkness in you "..player:GetName().. "...I shall bring you back to your physical body, But promise me you will not let the scourge rule Azeroth.")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "I Will Try With All My Might!", 10, 0)
   pUnit:GossipMenuAddItem(9, "Never Mind", 4, 0)
   pUnit:GossipSendMenu(player)
end

if (intid == 10) then
player:SendBroadcastMessage("\124c00FFA500Terenas Menethil\124r: \124c00FF3333Very Well, I Shall Try To Help You When You Are At Your Darkest Hour...")
player:ResurrectPlayer()
if (player:GetTeam() == 1) then -- Horde
player:Teleport(1, 5163.930176, -1350.209961, 1386.781982, 0.98)
end
if (player:GetTeam() == 0) then -- Alliance
player:Teleport(1, 5490.788086, -3538.179932, 1564.836060, 0.67)
end
end

if (intid == 11) then
player:SendBroadcastMessage("\124c00FFA500Terenas Menethil\124r: \124c00FF3333I'm Afraid This Time You Are Dead... Do Not Be Alarmed Though, I Still Have Some Blessings Left In Me, I Shall Resurrect You!")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "Resurrect Me, Terenas.", 2, 0)
   --pUnit:GossipMenuAddItem(9, "Let Me Find My Corpse, Terenas.", 3, 0)
   pUnit:GossipMenuAddItem(9, "Never Mind", 4, 0)
   pUnit:GossipSendMenu(player)
end

if (intid == 2) then
local PlayerCharacter = player:GetName()
local PlayerGetGY = "SELECT Graveyard_ID FROM characters_graveyards WHERE Character_Name = '"..PlayerCharacter.."'", 0
local GYIDMAP = "SELECT map FROM creature_spawns WHERE id = '"..ScriptDBQuery(PlayerGetGY):GetColumn(0):GetString().."'", 0
local GYIDX = "SELECT position_x FROM creature_spawns WHERE id = '"..ScriptDBQuery(PlayerGetGY):GetColumn(0):GetString().."'", 0
local GYIDY = "SELECT position_y FROM creature_spawns WHERE id = '"..ScriptDBQuery(PlayerGetGY):GetColumn(0):GetString().."'", 0
local GYIDZ = "SELECT position_z FROM creature_spawns WHERE id = '"..ScriptDBQuery(PlayerGetGY):GetColumn(0):GetString().."'", 0
local GYIDO = "SELECT orientation FROM creature_spawns WHERE id = '"..ScriptDBQuery(PlayerGetGY):GetColumn(0):GetString().."'", 0
player:SendBroadcastMessage("\124c00FFA500Terenas Menethil\124r: \124c00FF3333Good Luck Champion! Let The Light Guide You!")
player:ResurrectPlayer()
ScriptDBQuery("UPDATE characters_graveyards SET Graveyard_ID = NULL, SetFacing = '0' WHERE Character_Name = '"..PlayerCharacter.."' LIMIT 1;", 0)
--ScriptDBQuery("REPLACE INTO characters_graveyards(Character_Name, Graveyard_ID, SetFacing, Flags) VALUES ('"..PlayerCharacter.."', NULL, '0', '0')", 0)
player:Teleport(WorldDBQuery(GYIDMAP):GetColumn(0):GetString(), WorldDBQuery(GYIDX):GetColumn(0):GetString(), WorldDBQuery(GYIDY):GetColumn(0):GetString(), WorldDBQuery(GYIDZ):GetColumn(0):GetString(), WorldDBQuery(GYIDO):GetColumn(0):GetString())
player:GossipComplete()
end

if (intid == 3) then
local PlayerCharacter = player:GetName()
local PlayerGetGY = "SELECT Graveyard_ID FROM characters_graveyards WHERE Character_Name = '"..PlayerCharacter.."'", 0
local GYIDMAP = "SELECT map FROM creature_spawns WHERE id = '"..ScriptDBQuery(PlayerGetGY):GetColumn(0):GetString().."'", 0
local GYIDX = "SELECT position_x FROM creature_spawns WHERE id = '"..ScriptDBQuery(PlayerGetGY):GetColumn(0):GetString().."'", 0
local GYIDY = "SELECT position_y FROM creature_spawns WHERE id = '"..ScriptDBQuery(PlayerGetGY):GetColumn(0):GetString().."'", 0
local GYIDZ = "SELECT position_z FROM creature_spawns WHERE id = '"..ScriptDBQuery(PlayerGetGY):GetColumn(0):GetString().."'", 0
player:SendBroadcastMessage("\124c00FFA500Terenas Menethil\124r: \124c00FF3333Good Luck Champion! Let The Light Guide You!")
ScriptDBQuery("REPLACE INTO characters_graveyards(Character_Name, Graveyard_ID, SetFacing, Flags) VALUES ('"..PlayerCharacter.."', NULL, '2', '1')", 0)
player:Teleport(WorldDBQuery(GYIDMAP):GetColumn(0):GetString(), WorldDBQuery(GYIDX):GetColumn(0):GetString(), WorldDBQuery(GYIDY):GetColumn(0):GetString(), WorldDBQuery(GYIDZ):GetColumn(0):GetString())
player:GossipComplete()
end

if (intid == 4) then
player:GossipComplete()
end
end

RegisterUnitGossipEvent(455021, 1, "Global_GraveYard_KingTerenas_OnGossipTalk")
RegisterUnitGossipEvent(455021, 2, "Global_GraveYard_KingTerenas_OnGossipSelect")



--/////////Some Small Server Hooks////////////--
function Player_on_Repop(event, plr, message, type, language, unit)
local PlayerCharacter = plr:GetName()
if (ScriptDBQuery("SELECT Flags FROM characters_graveyards WHERE Character_Name = '"..PlayerCharacter.."'", 0):GetColumn(0):GetString() == "3") then
else
if (ScriptDBQuery("SELECT Flags FROM characters_graveyards WHERE Character_Name = '"..PlayerCharacter.."'", 0):GetColumn(0):GetString() == "2") then
else
ScriptDBQuery("UPDATE characters_graveyards SET Flags = '5' WHERE Character_Name = '"..PlayerCharacter.."'", 0)
end
end
end

RegisterServerHook(7, "Player_on_Repop")
--//////////////////////////////////////////////--
function Player_on_Death(event, plr, message, type, language, unit)
local PlayerCharacter = plr:GetName()
if (ScriptDBQuery("SELECT Flags FROM characters_graveyards WHERE Character_Name = '"..PlayerCharacter.."'", 0):GetColumn(0):GetString() == "3") then
else
plr:SendBroadcastMessage("\124c00FFA500Terenas Menethil\124r: \124c00FF3333It Is Not Your Time To Die Champion...")
end
end

RegisterServerHook(6, "Player_on_Death")
--/////////////////////////////////////////////--
function Player_on_Resurrect(event, plr, message, type, language, unit)
local PlayerCharacter = plr:GetName()
ScriptDBQuery("UPDATE characters_graveyards SET Flags = '0' WHERE Character_Name = '"..PlayerCharacter.."' LIMIT 1;", 0)
end

RegisterServerHook(32, "Player_on_Resurrect")
