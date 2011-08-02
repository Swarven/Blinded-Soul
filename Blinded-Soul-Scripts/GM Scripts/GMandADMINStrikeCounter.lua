----locals------
local XDemonicAccessLocked = 0
local HadesAccessLocked = 0
--Strikes------
local XDemonicStrike = 0
local HadesStrike = 0
local BrandonStrike = 0
local LoganStrike = 0
local XenonStrike = 0
--local MikeStrike = 0
--local FallenStrike = 0
local FroglordStrike = 0
---------------------
function GMandAdminStrikeCounter_OnGossipTalk(pUnit, event, player, pMisc)
   pUnit:GossipCreateMenu(50, player, 0)
   if (player:GetItemCount(26582) == 1) then
   pUnit:SendChatMessage(12, 0, "Hello XDemonic, What would you like to do?")
   pUnit:GossipMenuAddItem(9, "XDemonic's Control Panel", 1, 0)
   end
   if (player:GetItemCount(26585) == 1) then
   pUnit:SendChatMessage(12, 0, "Hello Hades, What would you like to do?")
   pUnit:GossipMenuAddItem(9, "Hades Control Panel", 2, 0)
   end
   pUnit:GossipMenuAddItem(0, "Show me GM's and Admin's Strikes", 3, 0)
   pUnit:GossipMenuAddItem(0, "Never Mind", 4, 0)
   pUnit:GossipSendMenu(player)
end

function GMandAdminStrikeCounter_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
if (intid == 1) then
if XDemonicAccessLocked == 0 then
pUnit:SendChatMessage(12, 0, "XDemonic, Sorry But I will need some Identification to prove you are who you say you are.")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(3, "Heres My ID", 5, 0)
   pUnit:GossipMenuAddItem(2, "Never Mind", 4, 0)
   pUnit:GossipSendMenu(player)
   else
   pUnit:SendChatMessage(12, 0, "ACCESS DENIED! Your Control Panel Has Been Locked!")
   player:GossipComplete()
end
end

if (intid == 2) then
if HadesAccessLocked == 0 then
pUnit:SendChatMessage(12, 0, "Hades, Sorry But I will need some Identification to prove you are who you say you are.")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(3, "Heres My ID", 6, 0)
   pUnit:GossipMenuAddItem(2, "Never Mind", 4, 0)
   pUnit:GossipSendMenu(player)
   else
   pUnit:SendChatMessage(12, 0, "ACCESS DENIED! Your Control Panel Has Been Locked!")
   player:GossipComplete()
end
end

if (intid == 5) then
if (player:GetItemCount(26586) == 1) then
pUnit:SendChatMessage(12, 0, "Everything Checks out, now accessing Control Panel... Completed, How can I help you?")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(3, "Show or Modify Strikes", 22, 0)
   if HadesAccessLocked == 1 then
   pUnit:GossipMenuAddItem(3, "Unlock Hades Control Panel", 21, 0)
   end
   pUnit:GossipMenuAddItem(2, "Never Mind", 4, 0)
   pUnit:GossipSendMenu(player)
   else
XDemonicAccessLocked = 1
pUnit:SendChatMessage(12, 0, "Access DENIED! Control Panel for XDemonic HAS BEEN LOCKED!")
player:GossipComplete()
end
end

if (intid == 6) then
if (player:GetItemCount(26587) == 1) then
pUnit:SendChatMessage(12, 0, "Everything Checks out, now accessing Control Panel... Completed, How can I help you?")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(3, "Show or Modify Strikes", 22, 0)
   if XDemonicAccessLocked == 1 then
   pUnit:GossipMenuAddItem(3, "Unlock XDemonic's Control Panel", 20, 0)
   end
   pUnit:GossipMenuAddItem(2, "Never Mind", 4, 0)
   pUnit:GossipSendMenu(player)
   else
HadesAccessLocked = 1
pUnit:SendChatMessage(12, 0, "Access DENIED! Control Panel for Hades HAS BEEN LOCKED!")
player:GossipComplete()
end
end

if (intid == 20) then
pUnit:SendChatMessage(12, 0, "XDemonic's Control Panel Has Been Unlocked!")
XDemonicAccessLocked = 0
player:GossipComplete()
end

if (intid == 21) then
pUnit:SendChatMessage(12, 0, "Hades Control Panel Has Been Unlocked!")
HadesAccessLocked = 0
player:GossipComplete()
end

if (intid == 4) then
player:GossipComplete()
end

if (intid == 3) then
   player:SendBroadcastMessage("<GM Level> Real Name [Main Character] Strikes")
   player:SendBroadcastMessage("___________________________________________")
   player:SendBroadcastMessage("<OWNER> Justin [XDemonic]: " ..XDemonicStrike)
   player:SendBroadcastMessage("<HOST> Randy [Hades]: " ..HadesStrike)
   player:SendBroadcastMessage("<ADMIN> Brandon[ Mort]: " ..FroglordStrike)
   player:SendBroadcastMessage("<GM> Logan [UNKNOWN]: " ..LoganStrike)
   --player:SendBroadcastMessage("<GM> Mike [UNKNOWN]: " ..MikeStrike)
   --player:SendBroadcastMessage("<GM> UNKNOWN [Fallenhero]: " ..FallenStrike)
   player:SendBroadcastMessage("<GM> Jason [Xenon]: " ..XenonStrike)
   player:SendBroadcastMessage("___________________________________________")
player:GossipComplete()
end

if (intid == 22) then
pUnit:SendChatMessage(12, 0, "Click on The Player You Would Like to Edit...")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(3, "<OWNER> Justin [XDemonic]", 23, 0)
   pUnit:GossipMenuAddItem(2, "<HOST> Randy [Hades]", 24, 0)
   pUnit:GossipMenuAddItem(2, "<GM> Brandon [Brandon]", 26, 0) ---Not being used since Brandon isnt a gm anymore
   pUnit:GossipMenuAddItem(3, "<GM> Logan [UNKNOWN]", 27, 0)
   --pUnit:GossipMenuAddItem(2, "<GM> Mike [UNKNOWN]", 28, 0)
   pUnit:GossipMenuAddItem(3, "<ADMIN> Brandon [Mort]", 29, 0)
   --pUnit:GossipMenuAddItem(2, "<GM> UNKNOWN [Fallenhero]", 30, 0)
   pUnit:GossipMenuAddItem(3, "<GM> Jason [Xenon]", 100, 0)
   pUnit:GossipMenuAddItem(2, "Never Mind", 4, 0)
   pUnit:GossipSendMenu(player)
end

if (intid == 23) then
if (player:GetItemCount(26582) == 1) then
pUnit:SendChatMessage(12, 0, "Sorry XDemonic, You Cannot Edit Your own Strikes")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(2, "[Back to List]", 22, 0)
   pUnit:GossipMenuAddItem(9, "[Back to Main Menu]", 999, 0)
   pUnit:GossipSendMenu(player)
else
pUnit:SendChatMessage(12, 0, "XDemonic Currently Has "..XDemonicStrike.." Strikes, Would You Like to Add or Remove Strikes?")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(3, "Add Strike", 31, 0)
   pUnit:GossipMenuAddItem(2, "Remove Strike", 32, 0)
   pUnit:GossipMenuAddItem(9, "[Back]", 22, 0)
   pUnit:GossipSendMenu(player)
end
end

if (intid == 24) then
if (player:GetItemCount(26585) == 1) then
pUnit:SendChatMessage(12, 0, "Sorry Hades, You Cannot Edit Your own Strikes")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(2, "[Back to List]", 22, 0)
   pUnit:GossipMenuAddItem(9, "[Back to Main Menu]", 999, 0)
   pUnit:GossipSendMenu(player)
else
pUnit:SendChatMessage(12, 0, "Randy Currently Has "..HadesStrike.." Strikes, Would You Like to Add or Remove Strikes?")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(3, "Add Strike", 33, 0)
   pUnit:GossipMenuAddItem(2, "Remove Strike", 34, 0)
   pUnit:GossipMenuAddItem(9, "[Back]", 22, 0)
   pUnit:GossipSendMenu(player)
end
end
---26 was "BRANDON" but deleted since he lost his gm

if (intid == 27) then
pUnit:SendChatMessage(12, 0, "Logan Currently Has "..LoganStrike.." Strikes, Would You Like to Add or Remove Strikes?")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(3, "Add Strike", 39, 0)
   pUnit:GossipMenuAddItem(2, "Remove Strike", 40, 0)
   pUnit:GossipMenuAddItem(9, "[Back]", 22, 0)
   pUnit:GossipSendMenu(player)
end

if (intid == 28) then
pUnit:SendChatMessage(12, 0, "Mike Currently Has "..MikeStrike.." Strikes, Would You Like to Add or Remove Strikes?")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(3, "Add Strike", 41, 0)
   pUnit:GossipMenuAddItem(2, "Remove Strike", 42, 0)
   pUnit:GossipMenuAddItem(9, "[Back]", 22, 0)
   pUnit:GossipSendMenu(player)
end

if (intid == 29) then
pUnit:SendChatMessage(12, 0, "Brandon [Mort] Currently Has "..FroglordStrike.." Strikes, Would You Like to Add or Remove Strikes?")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(3, "Add Strike", 43, 0)
   pUnit:GossipMenuAddItem(2, "Remove Strike", 44, 0)
   pUnit:GossipMenuAddItem(9, "[Back]", 22, 0)
   pUnit:GossipSendMenu(player)
end

if (intid == 30) then
pUnit:SendChatMessage(12, 0, "Fallenhero Currently Has "..FallenStrike.." Strikes, Would You Like to Add or Remove Strikes?")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(3, "Add Strike", 45, 0)
   pUnit:GossipMenuAddItem(2, "Remove Strike", 46, 0)
   pUnit:GossipMenuAddItem(9, "[Back]", 22, 0)
   pUnit:GossipSendMenu(player)
end

if (intid == 100) then
pUnit:SendChatMessage(12, 0, "Xenon Currently Has "..XenonStrike.." Strikes, Would You Like to Add or Remove Strikes?")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(3, "Add Strike", 101, 0)
   pUnit:GossipMenuAddItem(2, "Remove Strike", 102, 0)
   pUnit:GossipMenuAddItem(9, "[Back]", 22, 0)
   pUnit:GossipSendMenu(player)
end

if (intid == 31) then
XDemonicStrike = XDemonicStrike + 1
pUnit:SendChatMessage(12, 0, "[Strike Added]XDemonic Now Has "..XDemonicStrike.." Strikes!")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(2, "[Back to List]", 22, 0)
   pUnit:GossipMenuAddItem(9, "[Back to Main Menu]", 999, 0)
   pUnit:GossipSendMenu(player)
end

if (intid == 32) then
if XDemonicStrike == 0 then
pUnit:SendChatMessage(12, 0, "XDemonic Already Has 0 Strikes!")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(2, "[Back to List]", 22, 0)
   pUnit:GossipMenuAddItem(9, "[Back to Main Menu]", 999, 0)
   pUnit:GossipSendMenu(player)
else
XDemonicStrike = XDemonicStrike - 1
pUnit:SendChatMessage(12, 0, "[Strike Removed]XDemonic Now Has "..XDemonicStrike.." Strikes!")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(2, "[Back to List]", 22, 0)
   pUnit:GossipMenuAddItem(9, "[Back to Main Menu]", 999, 0)
   pUnit:GossipSendMenu(player)
end
end

if (intid == 33) then
HadesStrike = HadesStrike + 1
pUnit:SendChatMessage(12, 0, "[Strike Added]Hades Now Has "..HadesStrike.." Strikes!")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(2, "[Back to List]", 22, 0)
   pUnit:GossipMenuAddItem(9, "[Back to Main Menu]", 999, 0)
   pUnit:GossipSendMenu(player)
end

if (intid == 34) then
if HadesStrike == 0 then
pUnit:SendChatMessage(12, 0, "Hades Already Has 0 Strikes!")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(2, "[Back to List]", 22, 0)
   pUnit:GossipMenuAddItem(9, "[Back to Main Menu]", 999, 0)
   pUnit:GossipSendMenu(player)
else
HadesStrike = HadesStrike - 1
pUnit:SendChatMessage(12, 0, "[Strike Removed]Hades Now Has "..HadesStrike.." Strikes!")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(2, "[Back to List]", 22, 0)
   pUnit:GossipMenuAddItem(9, "[Back to Main Menu]", 999, 0)
   pUnit:GossipSendMenu(player)
end
end


----37 and 38 was "Brandon" Deleted since he lost his GM

if (intid == 37) then
LoganStrike = LoganStrike + 1
pUnit:SendChatMessage(12, 0, "[Strike Added]Logan Now Has "..BrandonStrike.." Strikes!")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(2, "[Back to List]", 22, 0)
   pUnit:GossipMenuAddItem(9, "[Back to Main Menu]", 999, 0)
   pUnit:GossipSendMenu(player)
end

if (intid == 38) then
if BrandonStrike == 0 then
pUnit:SendChatMessage(12, 0, "Logan Already Has 0 Strikes!")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(2, "[Back to List]", 22, 0)
   pUnit:GossipMenuAddItem(9, "[Back to Main Menu]", 999, 0)
   pUnit:GossipSendMenu(player)
else
BrandonStrike = BrandonStrike - 1
pUnit:SendChatMessage(12, 0, "[Strike Removed]Logan Now Has "..BrandonStrike.." Strikes!")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(2, "[Back to List]", 22, 0)
   pUnit:GossipMenuAddItem(9, "[Back to Main Menu]", 999, 0)
   pUnit:GossipSendMenu(player)
end
end

if (intid == 39) then
LoganStrike = LoganStrike + 1
pUnit:SendChatMessage(12, 0, "[Strike Added]Logan Now Has "..LoganStrike.." Strikes!")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(2, "[Back to List]", 22, 0)
   pUnit:GossipMenuAddItem(9, "[Back to Main Menu]", 999, 0)
   pUnit:GossipSendMenu(player)
end

if (intid == 40) then
if LoganStrike == 0 then
pUnit:SendChatMessage(12, 0, "Logan Already Has 0 Strikes!")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(2, "[Back to List]", 22, 0)
   pUnit:GossipMenuAddItem(9, "[Back to Main Menu]", 999, 0)
   pUnit:GossipSendMenu(player)
else
LoganStrike = LoganStrike - 1
pUnit:SendChatMessage(12, 0, "[Strike Removed]Logan Now Has "..LoganStrike.." Strikes!")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(2, "[Back to List]", 22, 0)
   pUnit:GossipMenuAddItem(9, "[Back to Main Menu]", 999, 0)
   pUnit:GossipSendMenu(player)
end
end

if (intid == 41) then
MikeStrike = MikeStrike + 1
pUnit:SendChatMessage(12, 0, "[Strike Added]Mike Now Has "..MikeStrike.." Strikes!")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(2, "[Back to List]", 22, 0)
   pUnit:GossipMenuAddItem(9, "[Back to Main Menu]", 999, 0)
   pUnit:GossipSendMenu(player)
end

if (intid == 42) then
if MikeStrike == 0 then
pUnit:SendChatMessage(12, 0, "Mike Already Has 0 Strikes!")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(2, "[Back to List]", 22, 0)
   pUnit:GossipMenuAddItem(9, "[Back to Main Menu]", 999, 0)
   pUnit:GossipSendMenu(player)
else
MikeStrike = MikeStrike - 1
pUnit:SendChatMessage(12, 0, "[Strike Removed]Mike Now Has "..MikeStrike.." Strikes!")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(2, "[Back to List]", 22, 0)
   pUnit:GossipMenuAddItem(9, "[Back to Main Menu]", 999, 0)
   pUnit:GossipSendMenu(player)
end
end

if (intid == 43) then
FroglordStrike = FroglordStrike + 1
pUnit:SendChatMessage(12, 0, "[Strike Added]Brandon [Mort] Now Has "..FroglordStrike.." Strikes!")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(2, "[Back to List]", 22, 0)
   pUnit:GossipMenuAddItem(9, "[Back to Main Menu]", 999, 0)
   pUnit:GossipSendMenu(player)
end

if (intid == 44) then
if FroglordStrike == 0 then
pUnit:SendChatMessage(12, 0, "Brandon [Mort] Already Has 0 Strikes!")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(2, "[Back to List]", 22, 0)
   pUnit:GossipMenuAddItem(9, "[Back to Main Menu]", 999, 0)
   pUnit:GossipSendMenu(player)
else
FroglordStrike = FroglordStrike - 1
pUnit:SendChatMessage(12, 0, "[Strike Removed]Brandon [Mort] Now Has "..FroglordStrike.." Strikes!")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(2, "[Back to List]", 22, 0)
   pUnit:GossipMenuAddItem(9, "[Back to Main Menu]", 999, 0)
   pUnit:GossipSendMenu(player)
end
end

if (intid == 45) then
FallenStrike = FallenStrike + 1
pUnit:SendChatMessage(12, 0, "[Strike Added]Fallenhero Now Has "..FallenStrike.." Strikes!")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(2, "[Back to List]", 22, 0)
   pUnit:GossipMenuAddItem(9, "[Back to Main Menu]", 999, 0)
   pUnit:GossipSendMenu(player)
end

if (intid == 46) then
if FallenStrike == 0 then
pUnit:SendChatMessage(12, 0, "Fallenhero Already Has 0 Strikes!")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(2, "[Back to List]", 22, 0)
   pUnit:GossipMenuAddItem(9, "[Back to Main Menu]", 999, 0)
   pUnit:GossipSendMenu(player)
else
FallenStrike = FallenStrike - 1
pUnit:SendChatMessage(12, 0, "[Strike Removed]Fallenhero Now Has "..FallenStrike.." Strikes!")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(2, "[Back to List]", 22, 0)
   pUnit:GossipMenuAddItem(9, "[Back to Main Menu]", 999, 0)
   pUnit:GossipSendMenu(player)
end
end

if (intid == 101) then
XenonStrike = XenonStrike + 1
pUnit:SendChatMessage(12, 0, "[Strike Added]Xenon Now Has "..XenonStrike.." Strikes!")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(2, "[Back to List]", 22, 0)
   pUnit:GossipMenuAddItem(9, "[Back to Main Menu]", 999, 0)
   pUnit:GossipSendMenu(player)
end

if (intid == 102) then
if XenonStrike == 0 then
pUnit:SendChatMessage(12, 0, "Xenon Already Has 0 Strikes!")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(2, "[Back to List]", 22, 0)
   pUnit:GossipMenuAddItem(9, "[Back to Main Menu]", 999, 0)
   pUnit:GossipSendMenu(player)
else
XenonStrike = XenonStrike - 1
pUnit:SendChatMessage(12, 0, "[Strike Removed]Xenon Now Has "..XenonStrike.." Strikes!")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(2, "[Back to List]", 22, 0)
   pUnit:GossipMenuAddItem(9, "[Back to Main Menu]", 999, 0)
   pUnit:GossipSendMenu(player)
end
end


if (intid == 999) then
   pUnit:GossipCreateMenu(50, player, 0)
   if (player:GetItemCount(26582) == 1) then
   pUnit:SendChatMessage(12, 0, "Hello XDemonic, What would you like to do?")
   pUnit:GossipMenuAddItem(9, "XDemonic's Control Panel", 1, 0)
   end
   if (player:GetItemCount(26585) == 1) then
   pUnit:SendChatMessage(12, 0, "Hello Hades, What would you like to do?")
   pUnit:GossipMenuAddItem(9, "Hades Control Panel", 2, 0)
   end
   pUnit:GossipMenuAddItem(0, "Show me GM's and Admin's Strikes", 3, 0)
   pUnit:GossipMenuAddItem(0, "Never Mind", 4, 0)
   pUnit:GossipSendMenu(player)
end
end

RegisterUnitGossipEvent(12394, 1, "GMandAdminStrikeCounter_OnGossipTalk")
RegisterUnitGossipEvent(12394, 2, "GMandAdminStrikeCounter_OnGossipSelect")