--Inventory Is Full Script (Audio)--
function InventoryIsFull_Global(event, player)
local GetRace = player:GetPlayerRace()
local GetGender = player:GetGender()
if GetRace == 1 then ---Human
    if GetGender == 0 then ---Male
    player:PlaySoundToPlayer(1875)
	end
	if GetGender == 1 then ---Female
	player:PlaySoundToPlayer(1999)
	end
end
if GetRace == 2 then ---Orc
    if GetGender == 0 then ---Male
    player:PlaySoundToPlayer(2284)
	end
	if GetGender == 1 then ---Female
	player:PlaySoundToPlayer(2341)
	end
end
if GetRace == 3 then ---Dwarf
    if GetGender == 0 then ---Male
    player:PlaySoundToPlayer(1581)
	end
	if GetGender == 1 then ---Female
	player:PlaySoundToPlayer(1654)
	end
end
if GetRace == 4 then ---Night Elf
    if GetGender == 0 then ---Male
    player:PlaySoundToPlayer(2118)
	end
	if GetGender == 1 then ---Female
	player:PlaySoundToPlayer(2229)
	end 
end
if GetRace == 5 then ---Undead
    if GetGender == 0 then ---Male
    player:PlaySoundToPlayer(2054)
	end
	if GetGender == 1 then ---Female
	player:PlaySoundToPlayer(2173)
	end
end
if GetRace == 6 then ---Tauren
    if GetGender == 0 then ---Male
    player:PlaySoundToPlayer(2396)
	end
	if GetGender == 1 then ---Female
	player:PlaySoundToPlayer(2397)
	end 
end
if GetRace == 7 then ---Gnome
    if GetGender == 0 then ---Male
    player:PlaySoundToPlayer(1708)
	end
	if GetGender == 1 then ---Female
	player:PlaySoundToPlayer(1709)
	end 
end
if GetRace == 8 then ---Troll
    if GetGender == 0 then ---Male
    player:PlaySoundToPlayer(1820)
	end
	if GetGender == 1 then ---Female
	player:PlaySoundToPlayer(1930)
	end
end
if GetRace == 10 then ---Blood Elf
    if GetGender == 0 then ---Male
    player:PlaySoundToPlayer(9549)
	end
	if GetGender == 1 then ---Female
	player:PlaySoundToPlayer(9550)
	end
end
if GetRace == 11 then ---Draenei
    if GetGender == 0 then ---Male
    player:PlaySoundToPlayer(9465)
	end
	if GetGender == 1 then ---Female
	player:PlaySoundToPlayer(9466)
	end
end
player:SendAreaTriggerMessage("|cFFFF0000You Don't Have Enough Bag Space!")
player:GossipComplete()
end
--[[





--]]
--Not Enough Money Script (Audio)--
function NotEnoughMoney_Global(event, player)
local GetRace = player:GetPlayerRace()
local GetGender = player:GetGender()
if GetRace == 1 then ---Human
    if GetGender == 0 then ---Male
    player:PlaySoundToPlayer(1908)
	end
	if GetGender == 1 then ---Female
	player:PlaySoundToPlayer(2032)
	end
end
if GetRace == 2 then ---Orc
    if GetGender == 0 then ---Male
    player:PlaySoundToPlayer(2319)
	end
	if GetGender == 1 then ---Female
	player:PlaySoundToPlayer(2356)
	end
end
if GetRace == 3 then ---Dwarf
    if GetGender == 0 then ---Male
    player:PlaySoundToPlayer(1630)
	end
	if GetGender == 1 then ---Female
	player:PlaySoundToPlayer(1686)
	end
end
if GetRace == 4 then ---Night Elf
    if GetGender == 0 then ---Male
    player:PlaySoundToPlayer(2151)
	end
	if GetGender == 1 then ---Female
	player:PlaySoundToPlayer(2262)
	end 
end
if GetRace == 5 then ---Undead
    if GetGender == 0 then ---Male
    player:PlaySoundToPlayer(2096)
	end
	if GetGender == 1 then ---Female
	player:PlaySoundToPlayer(2207)
	end
end
if GetRace == 6 then ---Tauren
    if GetGender == 0 then ---Male
    player:PlaySoundToPlayer(2463)
	end
	if GetGender == 1 then ---Female
	player:PlaySoundToPlayer(2462)
	end 
end
if GetRace == 7 then ---Gnome
    if GetGender == 0 then ---Male
    player:PlaySoundToPlayer(1743)
	end
	if GetGender == 1 then ---Female
	player:PlaySoundToPlayer(1798)
	end 
end
if GetRace == 8 then ---Troll
    if GetGender == 0 then ---Male
    player:PlaySoundToPlayer(1853)
	end
	if GetGender == 1 then ---Female
	player:PlaySoundToPlayer(1963)
	end
end
if GetRace == 10 then ---Blood Elf
    if GetGender == 0 then ---Male
    player:PlaySoundToPlayer(9583)
	end
	if GetGender == 1 then ---Female
	player:PlaySoundToPlayer(9584)
	end
end
if GetRace == 11 then ---Draenei
    if GetGender == 0 then ---Male
    player:PlaySoundToPlayer(9498)
	end
	if GetGender == 1 then ---Female
	player:PlaySoundToPlayer(9499)
	end
end
player:SendAreaTriggerMessage("|cFFFF0000You Don't Have Enough Money!")
player:GossipComplete()
end
--[[





--]]
--Quest Failed Script (Audio)--
function QuestFailed_Global(event, PlayerQuestFailed)
	PlayerQuestFailed:PlaySoundToPlayer(846)
	PlayerQuestFailed:GossipComplete()
end