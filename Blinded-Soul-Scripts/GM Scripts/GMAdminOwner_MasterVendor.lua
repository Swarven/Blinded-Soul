function GMAdminOwnerVendor_OnGossipTalk(pUnit, event, player, pMisc)
pUnit:GossipCreateMenu(3544, player, 0)
pUnit:GossipMenuAddItem(3, "I Would Like A Tier Set!", 1, 0)
if (player:CanUseCommand("az") == true) then
pUnit:GossipMenuAddItem(3, "Admin Panel", 5000, 0)
end
pUnit:GossipMenuAddItem(3, "Never Mind", 2, 0)
pUnit:GossipSendMenu(player)
end

function GMAdminOwnerVendor_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc, plr, sPlayer)
if(intid == 1) then
if (player:GetItemCount(175020) == 1) then
local PlrName = pUnit:GetClosestPlayer()
pUnit:SendChatMessage(12, 0, "Accessing DataBase... Done, Welcome [GM] " ..PlrName:GetName().. ", How Can I Help you?")
pUnit:GossipCreateMenu(99, player, 0)
pUnit:GossipMenuAddItem(3, "I would Like The GM/Admin Set!", 3, 0)
pUnit:GossipMenuAddItem(3, "I Would Like a Player Tier! [Not Finished]", 2, 0)
pUnit:GossipMenuAddItem(3, "Never Mind", 2, 0)
pUnit:GossipSendMenu(player)
else
if (player:GetItemCount(175021) == 1) then
local PlrName = pUnit:GetClosestPlayer()
pUnit:SendChatMessage(12, 0, "Accessing DataBase... Done, Welcome [ADMIN] " ..PlrName:GetName().. ", How Can I Help you?")
pUnit:GossipCreateMenu(99, player, 0)
pUnit:GossipMenuAddItem(3, "I would Like The GM/Admin Set!", 3, 0)
pUnit:GossipMenuAddItem(3, "I Would Like a Player Tier! [Not Finished]", 2, 0)
pUnit:GossipMenuAddItem(3, "Never Mind", 2, 0)
pUnit:GossipSendMenu(player)
else
if (player:GetItemCount(175022) == 1) then
local PlrName = pUnit:GetClosestPlayer()
pUnit:SendChatMessage(12, 0, "Accessing DataBase... Done, Welcome [OWNER] " ..PlrName:GetName().. ", How Can I Help you?")
pUnit:GossipCreateMenu(99, player, 0)
pUnit:GossipMenuAddItem(3, "I would Like The GM/Admin Set!", 3, 0)
pUnit:GossipMenuAddItem(3, "I Would Like a Player Tier! [Not Finished]", 2, 0)
pUnit:GossipMenuAddItem(3, "Never Mind", 2, 0)
pUnit:GossipSendMenu(player)
else
if (player:GetItemCount(175035) == 1) then ---VIP Insignia
local PlrName = pUnit:GetClosestPlayer()
pUnit:SendChatMessage(12, 0, "Accessing DataBase... Done, Welcome [VIP] " ..PlrName:GetName().. ", How Can I Help you?")
pUnit:GossipCreateMenu(99, player, 0)
pUnit:GossipMenuAddItem(3, "I Would Like a Player Tier!", 25, 0)
pUnit:GossipMenuAddItem(3, "Never Mind", 2, 0)
pUnit:GossipSendMenu(player)
else
local PlrName = pUnit:GetClosestPlayer()
pUnit:SendChatMessage(12, 0, "Accessing DataBase... Failed, You are not In the DataBase " ..PlrName:GetName().. ", If you Know your a GM or Admin, Please contact [XDemonic] or [Hades]")
player:GossipComplete()
end
end
end
end
end

if(intid == 2) then
player:GossipComplete()
end

if(intid == 3) then
pUnit:GossipCreateMenu(99, player, 0)
pUnit:GossipMenuAddItem(3, "-Armor-", 4, 0)
pUnit:GossipMenuAddItem(3, "-Weapons-", 5, 0)
pUnit:GossipMenuAddItem(3, "-Jewerly-", 17, 0)
pUnit:GossipMenuAddItem(3, "-Misc-", 18, 0)
pUnit:GossipSendMenu(player)
end

if (intid == 4) then
local PlrName = pUnit:GetClosestPlayer()
if (player:GetItemCount(175000) == 0) then
player:AddItem(175000,1)
end
if (player:GetItemCount(175001) == 0) then
player:AddItem(175001,1)
end
if (player:GetItemCount(175002) == 0) then
player:AddItem(175002,1)
end
if (player:GetItemCount(175003) == 0) then
player:AddItem(175003,1)
end
if (player:GetItemCount(175004) == 0) then
player:AddItem(175004,1)
end
if (player:GetItemCount(175005) == 0) then
player:AddItem(175005,1)
end
if (player:GetItemCount(175006) == 0) then
player:AddItem(175006,1)
end
if (player:GetItemCount(175007) == 0) then
player:AddItem(175007,1)
end
if (player:GetItemCount(175008) == 0) then
player:AddItem(175008,1)
end
if (player:GetItemCount(175009) == 0) then
player:AddItem(175009,1)
end
if (player:GetItemCount(175010) == 0) then
player:AddItem(175010,1)
end
player:SendBroadcastMessage("One or More Items May not have been included Because you already have that piece, this prevents over spam on items you already have!")
pUnit:SendChatMessage(12, 0, "There you Go " ..PlrName:GetName().. ".")
player:GossipComplete()
end

if(intid == 5) then
pUnit:GossipCreateMenu(99, player, 0)
pUnit:GossipMenuAddItem(3, "[1-H] Sword", 6, 0)
pUnit:GossipMenuAddItem(3, "[1-H] Axe", 7, 0)
pUnit:GossipMenuAddItem(3, "[1-H] Mace", 8, 0)
pUnit:GossipMenuAddItem(3, "[2-H] Sword", 9, 0)
pUnit:GossipMenuAddItem(3, "[2-H] Axe", 10, 0)
pUnit:GossipMenuAddItem(3, "[2-H] Mace", 11, 0)
pUnit:GossipMenuAddItem(3, "Staff", 12, 0)
pUnit:GossipMenuAddItem(3, "Dagger", 13, 0)
pUnit:GossipMenuAddItem(3, "Bow", 14, 0)
pUnit:GossipMenuAddItem(3, "Gun", 15, 0)
pUnit:GossipMenuAddItem(3, "Wand", 16, 0)
pUnit:GossipMenuAddItem(3, "Shield", 20, 0)
pUnit:GossipMenuAddItem(3, "[BACK]", 3, 0)
pUnit:GossipMenuAddItem(3, "I'M Done", 999, 0)
pUnit:GossipSendMenu(player)
end
-------------------
if (intid == 6) then
player:AddItem(175014,1)
pUnit:GossipCreateMenu(50, player, 0)
pUnit:GossipMenuAddItem(2, "[BACK]", 5, 0)
pUnit:GossipSendMenu(player)
end

if (intid == 7) then
player:AddItem(175012,1)
pUnit:GossipCreateMenu(50, player, 0)
pUnit:GossipMenuAddItem(2, "[BACK]", 5, 0)
pUnit:GossipSendMenu(player)
end

if (intid == 8) then
player:AddItem(175013,1)
pUnit:GossipCreateMenu(50, player, 0)
pUnit:GossipMenuAddItem(2, "[BACK]", 5, 0)
pUnit:GossipSendMenu(player)
end

if (intid == 9) then
player:AddItem(175018,1)
pUnit:GossipCreateMenu(50, player, 0)
pUnit:GossipMenuAddItem(2, "[BACK]", 5, 0)
pUnit:GossipSendMenu(player)
end

if (intid == 10) then
player:AddItem(175016,1)
pUnit:GossipCreateMenu(50, player, 0)
pUnit:GossipMenuAddItem(2, "[BACK]", 5, 0)
pUnit:GossipSendMenu(player)
end

if (intid == 11) then
player:AddItem(175017,1)
pUnit:GossipCreateMenu(50, player, 0)
pUnit:GossipMenuAddItem(2, "[BACK]", 5, 0)
pUnit:GossipSendMenu(player)
end

if (intid == 12) then
player:AddItem(175015,1)
pUnit:GossipCreateMenu(50, player, 0)
pUnit:GossipMenuAddItem(2, "[BACK]", 5, 0)
pUnit:GossipSendMenu(player)
end

if (intid == 13) then
player:AddItem(175011,1)
pUnit:GossipCreateMenu(50, player, 0)
pUnit:GossipMenuAddItem(2, "[BACK]", 5, 0)
pUnit:GossipSendMenu(player)
end

if (intid == 14) then
player:AddItem(175025,1)
pUnit:GossipCreateMenu(50, player, 0)
pUnit:GossipMenuAddItem(2, "[BACK]", 5, 0)
pUnit:GossipSendMenu(player)
end

if (intid == 15) then
player:AddItem(175026,1)
pUnit:GossipCreateMenu(50, player, 0)
pUnit:GossipMenuAddItem(2, "[BACK]", 5, 0)
pUnit:GossipSendMenu(player)
end

if (intid == 16) then
player:AddItem(175027,1)
pUnit:GossipCreateMenu(50, player, 0)
pUnit:GossipMenuAddItem(2, "[BACK]", 5, 0)
pUnit:GossipSendMenu(player)
end

if (intid == 19) then
player:AddItem(175033,1)
pUnit:GossipCreateMenu(50, player, 0)
pUnit:GossipMenuAddItem(2, "[BACK]", 18, 0)
pUnit:GossipSendMenu(player)
end
------------------------------

if(intid == 17) then
local PlrName = pUnit:GetClosestPlayer()
if (player:GetItemCount(175030) == 0) then
player:AddItem(175030,1)
end
if (player:GetItemCount(175031) == 0) then
player:AddItem(175031,2)
end
if (player:GetItemCount(175031) == 1) then
player:AddItem(175031,1)
end
if (player:GetItemCount(175032) == 0) then
player:AddItem(175032,1)
end
player:SendBroadcastMessage("One or More Items May not have been included Because you already have that piece, this prevents over spam on items you already have!")
pUnit:SendChatMessage(12, 0, "There you Go " ..PlrName:GetName().. ".")
player:GossipComplete()
end

if(intid == 18) then
pUnit:GossipCreateMenu(99, player, 0)
pUnit:GossipMenuAddItem(3, "Bullets", 20, 0)
pUnit:GossipMenuAddItem(3, "Arrows", 21, 0)
pUnit:GossipMenuAddItem(3, "Bags", 22, 0)
pUnit:GossipMenuAddItem(3, "[BACK]", 3, 0)
pUnit:GossipMenuAddItem(3, "I'M Done", 999, 0)
pUnit:GossipSendMenu(player)
end

if (intid == 20) then
player:AddItem(175029,5000)
pUnit:GossipCreateMenu(50, player, 0)
pUnit:GossipMenuAddItem(2, "[BACK]", 18, 0)
pUnit:GossipSendMenu(player)
end

if (intid == 21) then
player:AddItem(175028,5000)
pUnit:GossipCreateMenu(50, player, 0)
pUnit:GossipMenuAddItem(2, "[BACK]", 18, 0)
pUnit:GossipSendMenu(player)
end

if (intid == 22) then
if (player:GetItemCount(175034) == 0) then
player:AddItem(175034,4)
end
if (player:GetItemCount(175034) == 1) then
player:AddItem(175034,3)
end
if (player:GetItemCount(175034) == 2) then
player:AddItem(175034,2)
end
if (player:GetItemCount(175034) == 3) then
player:AddItem(175034,1)
end
if (player:GetItemCount(175034) == 4) then
player:SendBroadcastMessage("You Already Have 4 Bags!")
end
pUnit:GossipCreateMenu(50, player, 0)
pUnit:GossipMenuAddItem(2, "[BACK]", 18, 0)
pUnit:GossipSendMenu(player)
end

if(intid == 25) then
pUnit:GossipCreateMenu(99, player, 0)
pUnit:GossipMenuAddItem(3, "-Unclean- [LV 1 - 50] [Not Availiable]", 25, 0)
pUnit:GossipMenuAddItem(3, "-Inferno- [LV 50 - 75]", 30, 0)
pUnit:GossipMenuAddItem(3, "-Never Mind-", 2, 0)
pUnit:GossipSendMenu(player)
end

if(intid == 26) then
pUnit:GossipCreateMenu(99, player, 0)
pUnit:GossipMenuAddItem(3, "-Armor-", 27, 0)
pUnit:GossipMenuAddItem(3, "-Weapons- [Not Availiable]", 26, 0)
pUnit:GossipMenuAddItem(3, "-Never Mind-", 2, 0)
pUnit:GossipSendMenu(player)
end

if (intid == 30) then
local PlrName = pUnit:GetClosestPlayer()
local PlrClass = pUnit:GetPlayerClass()
if PlrClass==1 then --Paladin
-----------Paladin Start--------
if (player:GetItemCount(100257) == 0) then
player:AddItem(100257,1)
end
if (player:GetItemCount(100258) == 0) then
player:AddItem(100258,1)
end
if (player:GetItemCount(100259) == 0) then
player:AddItem(100259,1)
end
if (player:GetItemCount(100260) == 0) then
player:AddItem(100260,1)
end
if (player:GetItemCount(100261) == 0) then
player:AddItem(100261,1)
end
if (player:GetItemCount(100262) == 0) then
player:AddItem(100062,1)
end
if (player:GetItemCount(100263) == 0) then
player:AddItem(100263,1)
end
if (player:GetItemCount(100264) == 0) then
player:AddItem(100264,1)
end
end
if PlrClass==2 then --Paladin
-----------Paladin Start--------
if (player:GetItemCount(175008) == 0) then
player:AddItem(175008,1)
end
if (player:GetItemCount(175009) == 0) then
player:AddItem(175009,1)
end
if (player:GetItemCount(175010) == 0) then
player:AddItem(175010,1)
end
end
player:SendBroadcastMessage("One or More Items May not have been included Because you already have that piece, this prevents over spam on items you already have!")
pUnit:SendChatMessage(12, 0, "There you Go " ..PlrName:GetName().. ".")
player:GossipComplete()
end

if(intid == 999) then
local PlrName = pUnit:GetClosestPlayer()
pUnit:SendChatMessage(12, 0, "Glad I Can Help, " ..PlrName:GetName().. ".")
player:GossipComplete()
end

if(intid == 5000) then
pUnit:GossipCreateMenu(3544, player, 0)
pUnit:GossipMenuAddItem(3, "Reload LUA Scripts", 5001, 0)
pUnit:GossipMenuAddItem(7, "-Test-", 5003, 1)
pUnit:GossipSendMenu(player)
end

if(intid == 5001) then
		player:SendBroadcastMessage("Lua Engine reloaded.")
		--Notify(player:GetName().." reloaded the Lua Engine.", 11)
			--local players = GetPlayersInWorld()
		--for k,v in pairs(players) do
			--v:SendAreaTriggerMessage("\124c001eff00 "..player:GetName().."\124r \124c000070ddHas Reloaded The LUA Engine!\124r")
			--v:SendBroadcastMessage("\124c001eff00 "..player:GetName().."\124r \124c000070ddHas Reloaded The LUA Engine!\124r")
	      		ReloadLuaEngine()
				player:GossipComplete()
	end
--end

	if (intid == 5003) then -- Summon a Friend
		if (code == nil) then
			player:SendBroadcastMessage("You need to enter a player's name first!")
			player:GossipComplete()
		else
			local mapid, x, y, z = player:GetMapId(), player:GetX(), player:GetY(), player:GetZ()
			local sPlayer = GetPlayer(code)
			sPlayer:Teleport(mapid, x, y, z)
			if (sPlayer:GetPhase() ~= player:GetPhase()) then
				sPlayer:PhaseSet(player:GetPhase())
			end
			pUnit:CastSpellOnTarget(41232, sPlayer)
			player:GossipComplete()
		end
		end
	end
	
function Notify(msg, colour)
	logcol(colour)
	print(msg)
	logcol(7)
end

RegisterUnitGossipEvent(572392, 1, "GMAdminOwnerVendor_OnGossipTalk")
RegisterUnitGossipEvent(572392, 2, "GMAdminOwnerVendor_OnGossipSelect")