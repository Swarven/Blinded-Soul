local AdminPlayall = GetPlayersInWorld()
------------------------
function JukeBox_Click(item, event, player, pMisc, unit)
local GetName = player:GetName()
if (ScriptDBQuery("SELECT name FROM Jukebox_Settings WHERE name = '"..GetName.."'", 0) == nil) then
ScriptDBQuery("INSERT INTO Jukebox_Settings(name, flags) VALUES ('"..GetName.."', '0')", 0)
player:SendBroadcastMessage("Welcome To The JukeBox, This Is Your First Time Opening This, Your [World Music] Is Set To (UnBlocked) By Default, This will Allow GM's And Admin To Play Music, And MAY Interupt Your Songs, To Lock It, Go To Your Block Settings As Seen On The Menu, But You May Also Miss out on Admin's Playlists to Enjoy, So Dont Always Keep It Locked.")
player:SendBroadcastMessage("--XDemonic [Owner]")
player:SendBroadcastMessage(">Default Settings Saved, Restart Jukebox<")
player:GossipComplete()
else
player:SendBroadcastMessage("Welcome to the Jukebox.")
item:GossipCreateMenu(50, player, 0)
item:GossipMenuAddItem(3, "Jukebox", 1, 0)
--------------------------
if player:IsGm() then
item:GossipMenuAddItem(3, "Admin - Jukebox", 2, 0)
end
-----------------------
if (ScriptDBQuery("SELECT flags FROM Jukebox_Settings WHERE name = '"..GetName.."'", 0):GetColumn(0):GetString() == "0") then
item:GossipMenuAddItem(3, "Block World Music", 500, 0)
end
---------------------------
if (ScriptDBQuery("SELECT flags FROM Jukebox_Settings WHERE name = '"..GetName.."'", 0):GetColumn(0):GetString() == "1") then
item:GossipMenuAddItem(3, "UnBlock World Music", 501, 0)
end
---------------------------
item:GossipMenuAddItem(3, "Stop Current Song", 1000, 0)
if player:IsGm() then
item:GossipMenuAddItem(3, "Admin - Stop Current Song", 1001, 0)
end
item:GossipMenuAddItem(3, "Test...", 5555, 0)
item:GossipMenuAddItem(3, "Never Mind", 3, 0)
item:GossipSendMenu(player)
end
return 0
end

function JukeBox_Click2(item, event, player, id, intid, code, pMisc)
if (intid == 9999) then
local GetName = player:GetName()
player:SendBroadcastMessage("Welcome to the Jukebox.")
item:GossipCreateMenu(50, player, 0)
item:GossipMenuAddItem(3, "Jukebox", 1, 0)
--------------
if player:IsGm() then
item:GossipMenuAddItem(3, "Admin - Jukebox", 2, 0)
end
---------------------------------
if (ScriptDBQuery("SELECT flags FROM Jukebox_Settings WHERE name = '"..GetName.."'", 0):GetColumn(0):GetString() == "0") then
item:GossipMenuAddItem(3, "Block World Music", 500, 0)
end
-------------------------------
if (ScriptDBQuery("SELECT flags FROM Jukebox_Settings WHERE name = '"..GetName.."'", 0):GetColumn(0):GetString() == "1") then
item:GossipMenuAddItem(3, "UnBlock World Music", 501, 0)
end
--item:GossipMenuAddItem(3, "Stop Current Song", 1000, 0)
item:GossipMenuAddItem(3, "Never Mind", 3, 0)
item:GossipSendMenu(player)
end

if (intid == 1) then
player:SendBroadcastMessage("Pick a song you wish to play.")
item:GossipCreateMenu(50, player, 0)
item:GossipMenuAddItem(3, "Ten Thousand Fists", 100, 0)
item:GossipMenuAddItem(3, "Click Click Boom", 101, 0)
item:GossipMenuAddItem(3, "I Will Not Bow", 102, 0)
item:GossipMenuAddItem(3, "Blow Me Away", 103, 0)
item:GossipMenuAddItem(3, "Remember The Name", 104, 0)
item:GossipMenuAddItem(3, "Kryptonite", 105, 0)
item:GossipMenuAddItem(3, "Dragula [New]", 106, 0)
item:GossipMenuAddItem(3, "Canon Rock [New]", 107, 0)
item:GossipMenuAddItem(3, "World Of Warcraft Songs", 125, 0)
item:GossipMenuAddItem(3, "Parody Stuff", 150, 0)
item:GossipSendMenu(player)
end

if (intid == 2) then
dofile("scripts/JukeBox.lua")
player:SendBroadcastMessage("JukeBox blobally reloaded. Pick a Song you wish to play. These songs will be played by everyone in the server.")
item:GossipCreateMenu(50, player, 0)
item:GossipMenuAddItem(3, "Ten Thousand Fists", 200, 0)
item:GossipMenuAddItem(3, "Click Click Boom", 201, 0)
item:GossipMenuAddItem(3, "I Will Not Bow", 202, 0)
item:GossipMenuAddItem(3, "Blow Me Away", 203, 0)
item:GossipMenuAddItem(3, "Remember The Name", 204, 0)
item:GossipMenuAddItem(3, "Kryptonite", 205, 0)
item:GossipMenuAddItem(3, "Dragula [New]", 206, 0)
item:GossipMenuAddItem(3, "Canon Rock [New]", 207, 0)
item:GossipMenuAddItem(3, "World Of Warcraft Songs", 225, 0)
item:GossipMenuAddItem(3, "Parody Stuff", 250, 0)
item:GossipSendMenu(player)
end

if (intid == 3) then
player:GossipComplete()
end

if (intid == 1000) then
player:PlaySoundToPlayer(1)
player:SendBroadcastMessage("Stopping Current Song.")
player:GossipComplete()
end

----------Songs----------
if (intid == 100) then
player:PlaySoundToPlayer(75000)
player:SendBroadcastMessage("---Song Playing [Revision-1]---")
player:SendBroadcastMessage("Title: Ten Thousand Fists")
player:SendBroadcastMessage("Artist: Disturbed")
player:SendBroadcastMessage("Album: Ten Thousand Fists")
player:SendBroadcastMessage("================================")
player:GossipComplete()
end

if (intid == 101) then
player:PlaySoundToPlayer(75001)
player:SendBroadcastMessage("---Song Playing [Revision-1]---")
player:SendBroadcastMessage("Title: Click Click Boom")
player:SendBroadcastMessage("Artist: Saliva")
player:SendBroadcastMessage("Album: Every Six Seconds")
player:SendBroadcastMessage("================================")
player:GossipComplete()
end

if (intid == 102) then
player:PlaySoundToPlayer(75002)
player:SendBroadcastMessage("---Song Playing [Revision-1]---")
player:SendBroadcastMessage("Title: I Will Not Bow")
player:SendBroadcastMessage("Artist: Breaking Benjamin")
player:SendBroadcastMessage("Album: Dear Agony")
player:SendBroadcastMessage("================================")
player:GossipComplete()
end

if (intid == 103) then
player:PlaySoundToPlayer(75003)
player:SendBroadcastMessage("---Song Playing [Revision-1]---")
player:SendBroadcastMessage("Title: Blow Me Away")
player:SendBroadcastMessage("Artist: Breaking Benjamin")
player:SendBroadcastMessage("Album: Halo2")
player:SendBroadcastMessage("================================")
player:GossipComplete()
end

if (intid == 104) then
player:PlaySoundToPlayer(75004)
player:SendBroadcastMessage("---Song Playing [Revision-1]---")
player:SendBroadcastMessage("Title: Remember The Name")
player:SendBroadcastMessage("Artist: Fort Minor")
player:SendBroadcastMessage("Album: Rising Tied")
player:SendBroadcastMessage("================================")
player:GossipComplete()
end

if (intid == 105) then
player:PlaySoundToPlayer(75005)
player:SendBroadcastMessage("---Song Playing [Revision-1]---")
player:SendBroadcastMessage("Title: Kryptonite")
player:SendBroadcastMessage("Artist: 3 Doors Down")
player:SendBroadcastMessage("Album: Now, Vol.5")
player:SendBroadcastMessage("================================")
player:GossipComplete()
end

if (intid == 106) then
player:PlaySoundToPlayer(75007)
player:SendBroadcastMessage("---Song Playing [Revision-2]---")
player:SendBroadcastMessage("Title: Dragula")
player:SendBroadcastMessage("Artist: Rob Zombie")
player:SendBroadcastMessage("Album: American Made Music To Strip By")
player:SendBroadcastMessage("================================")
player:GossipComplete()
end

if (intid == 107) then
player:PlaySoundToPlayer(75006)
player:SendBroadcastMessage("---Song Playing [Revision-2]---")
player:SendBroadcastMessage("Title: Canon Rock")
player:SendBroadcastMessage("Artist: Jerry C")
player:SendBroadcastMessage("Album: Unknown")
player:SendBroadcastMessage("================================")
player:GossipComplete()
end
-----JukeBox World Of Warcraft Songs-----
if (intid == 125) then
item:GossipCreateMenu(50, player, 0)
item:GossipMenuAddItem(3, "Rogues Do It From Behind", 126, 0)
item:GossipMenuAddItem(3, "I Am Murloc [New]", 128, 0)
item:GossipMenuAddItem(3, "Boom De Yada", 127, 0)
item:GossipMenuAddItem(3, "Ulduar", 129, 0)
item:GossipMenuAddItem(3, "Welcome To The Deadmines", 130, 0)
item:GossipMenuAddItem(2, "Back", 1, 0)
item:GossipSendMenu(player)
end

if (intid == 126) then
player:PlaySoundToPlayer(75101)
player:SendBroadcastMessage("---Song Playing [Revision-1]---")
player:SendBroadcastMessage("Title: Rogues Do It From Behind")
player:SendBroadcastMessage("Artist: L80ETC")
player:SendBroadcastMessage("Album: Under Chaos")
player:SendBroadcastMessage("================================")
player:GossipComplete()
end

if (intid == 127) then
player:PlaySoundToPlayer(75102)
player:SendBroadcastMessage("---Song Playing [Revision-1]---")
player:SendBroadcastMessage("Title: Boom De Yada")
player:SendBroadcastMessage("Artist: Irdeen")
player:SendBroadcastMessage("Album: Irdeen")
player:SendBroadcastMessage("================================")
player:GossipComplete()
end

if (intid == 128) then
player:PlaySoundToPlayer(75103)
player:SendBroadcastMessage("---Song Playing [Revision-2]---")
player:SendBroadcastMessage("Title: I Am Murloc")
player:SendBroadcastMessage("Artist: L80ETC")
player:SendBroadcastMessage("Album: Under Chaos")
player:SendBroadcastMessage("================================")
player:GossipComplete()
end

if (intid == 129) then
player:PlaySoundToPlayer(75104)
player:SendBroadcastMessage("---Song Playing [Revision-3]---")
player:SendBroadcastMessage("Title: Ulduar")
player:SendBroadcastMessage("Artist: Nyhm")
player:SendBroadcastMessage("Album: Unknown")
player:SendBroadcastMessage("================================")
player:GossipComplete()
end

if (intid == 130) then
player:PlaySoundToPlayer(75105)
player:SendBroadcastMessage("---Song Playing [Revision-3]---")
player:SendBroadcastMessage("Title: Welcome To The Deadmines")
player:SendBroadcastMessage("Artist: Irdeen")
player:SendBroadcastMessage("Album: X-Cross")
player:SendBroadcastMessage("================================")
player:GossipComplete()
end
-----JukeBox Parody Songs-----
if (intid == 150) then
player:SendBroadcastMessage("The Parody Songs category is currently unavailiable")
item:GossipCreateMenu(50, player, 0)
item:GossipMenuAddItem(2, "Back", 1, 0)
item:GossipSendMenu(player)
end
----------------------------------
-----Admin JukeBox------
if (intid == 200) then
for k, All in pairs(AdminPlayall) do
if (ScriptDBQuery("SELECT flags FROM Jukebox_Settings WHERE name = '"..All:GetName().."'", 0):GetColumn(0):GetString() == "0") then
All:PlaySoundToPlayer(75000)
All:SendBroadcastMessage("---Song Playing [Revision-1]---")
All:SendBroadcastMessage("Title: Ten Thousand Fists")
All:SendBroadcastMessage("Artist: Disturbed")
All:SendBroadcastMessage("Album: Ten Thousand Fists")
All:SendBroadcastMessage("================================")
player:GossipComplete()
else
end
end
end

if (intid == 201) then
for k, All in pairs(AdminPlayall) do
if (ScriptDBQuery("SELECT flags FROM Jukebox_Settings WHERE name = '"..All:GetName().."'", 0):GetColumn(0):GetString() == "0") then
All:PlaySoundToPlayer(75001)
All:SendBroadcastMessage("---Song Playing [Revision-1]---")
All:SendBroadcastMessage("Title: Click Click Boom")
All:SendBroadcastMessage("Artist: Saliva")
All:SendBroadcastMessage("Album: Every Six Seconds")
All:SendBroadcastMessage("================================")
player:GossipComplete()
else
end
end
end

if (intid == 202) then
for k, All in pairs(AdminPlayall) do
if (ScriptDBQuery("SELECT flags FROM Jukebox_Settings WHERE name = '"..All:GetName().."'", 0):GetColumn(0):GetString() == "0") then
All:PlaySoundToPlayer(75002)
All:SendBroadcastMessage("---Song Playing [Revision-1]---")
All:SendBroadcastMessage("Title: I Will Not Bow")
All:SendBroadcastMessage("Artist: Breaking Benjamin")
All:SendBroadcastMessage("Album: Dear Agony")
All:SendBroadcastMessage("================================")
player:GossipComplete()
else
end
end
end

if (intid == 203) then
for k, All in pairs(AdminPlayall) do
if (ScriptDBQuery("SELECT flags FROM Jukebox_Settings WHERE name = '"..All:GetName().."'", 0):GetColumn(0):GetString() == "0") then
All:PlaySoundToPlayer(75003)
All:SendBroadcastMessage("---Song Playing [Revision-1]---")
All:SendBroadcastMessage("Title: Blow Me Away")
All:SendBroadcastMessage("Artist: Breaking Benjamin")
All:SendBroadcastMessage("Album: Halo2")
All:SendBroadcastMessage("================================")
player:GossipComplete()
else
end
end
end

if (intid == 204) then
for k, All in pairs(AdminPlayall) do
if (ScriptDBQuery("SELECT flags FROM Jukebox_Settings WHERE name = '"..All:GetName().."'", 0):GetColumn(0):GetString() == "0") then
All:PlaySoundToPlayer(75004)
All:SendBroadcastMessage("---Song Playing [Revision-1]---")
All:SendBroadcastMessage("Title: Remember The Name")
All:SendBroadcastMessage("Artist: Fort Minor")
All:SendBroadcastMessage("Album: Rising Tied")
All:SendBroadcastMessage("================================")
player:GossipComplete()
else
end
end
end

if (intid == 205) then
for k, All in pairs(AdminPlayall) do
if (ScriptDBQuery("SELECT flags FROM Jukebox_Settings WHERE name = '"..All:GetName().."'", 0):GetColumn(0):GetString() == "0") then
All:PlaySoundToPlayer(75005)
All:SendBroadcastMessage("---Song Playing [Revision-1]---")
All:SendBroadcastMessage("Title: Kryptonite")
All:SendBroadcastMessage("Artist: 3 Doors Down")
All:SendBroadcastMessage("Album: Now, Vol.5")
All:SendBroadcastMessage("================================")
player:GossipComplete()
else
end
end
end

if (intid == 206) then
for k, All in pairs(AdminPlayall) do
if (ScriptDBQuery("SELECT flags FROM Jukebox_Settings WHERE name = '"..All:GetName().."'", 0):GetColumn(0):GetString() == "0") then
All:PlaySoundToPlayer(75007)
All:SendBroadcastMessage("---Song Playing [Revision-2]---")
All:SendBroadcastMessage("Title: Dragula")
All:SendBroadcastMessage("Artist: Rob Zombie")
All:SendBroadcastMessage("Album: American Made Music To Strip By")
All:SendBroadcastMessage("================================")
player:GossipComplete()
else
end
end
end

if (intid == 207) then
for k, All in pairs(AdminPlayall) do
if (ScriptDBQuery("SELECT flags FROM Jukebox_Settings WHERE name = '"..All:GetName().."'", 0):GetColumn(0):GetString() == "0") then
All:PlaySoundToPlayer(75006)
All:SendBroadcastMessage("---Song Playing [Revision-2]---")
All:SendBroadcastMessage("Title: Cannon Rock")
All:SendBroadcastMessage("Artist: Jerry C")
All:SendBroadcastMessage("Album: Unknown")
All:SendBroadcastMessage("================================")
player:GossipComplete()
else
end
end
end
-----Admin JukeBox World Of Warcraft Songs-----
if (intid == 225) then
item:GossipCreateMenu(50, player, 0)
item:GossipMenuAddItem(3, "Rogues Do It From Behind", 226, 0)
item:GossipMenuAddItem(3, "I Am Murloc [New]", 228, 0)
item:GossipMenuAddItem(3, "Boom De Yada", 227, 0)
item:GossipMenuAddItem(3, "Ulduar", 229, 0)
item:GossipMenuAddItem(3, "Welcome To The Deadmines", 230, 0)
item:GossipMenuAddItem(2, "Back", 2, 0)
item:GossipSendMenu(player)
end

if (intid == 226) then
for k, All in pairs(AdminPlayall) do
if (ScriptDBQuery("SELECT flags FROM Jukebox_Settings WHERE name = '"..All:GetName().."'", 0):GetColumn(0):GetString() == "0") then
All:PlaySoundToPlayer(75101)
All:SendBroadcastMessage("---Song Playing [Revision-1]---")
All:SendBroadcastMessage("Title: Rogues Do It From Behind")
All:SendBroadcastMessage("Artist: L80ETC")
All:SendBroadcastMessage("Album: Under Chaos")
All:SendBroadcastMessage("================================")
player:GossipComplete()
else
end
end
end

if (intid == 227) then
for k, All in pairs(AdminPlayall) do
if (ScriptDBQuery("SELECT flags FROM Jukebox_Settings WHERE name = '"..All:GetName().."'", 0):GetColumn(0):GetString() == "0") then
All:PlaySoundToPlayer(75102)
All:SendBroadcastMessage("---Song Playing [Revision-1]---")
All:SendBroadcastMessage("Title: Boom De Yada")
All:SendBroadcastMessage("Artist: Irdeen")
All:SendBroadcastMessage("Album: Irdeen")
All:SendBroadcastMessage("================================")
player:GossipComplete()
else
end
end
end

if (intid == 228) then
for k, All in pairs(AdminPlayall) do
if (ScriptDBQuery("SELECT flags FROM Jukebox_Settings WHERE name = '"..All:GetName().."'", 0):GetColumn(0):GetString() == "0") then
All:PlaySoundToPlayer(75103)
All:SendBroadcastMessage("---Song Playing [Revision-2]---")
All:SendBroadcastMessage("Title: I Am Murloc")
All:SendBroadcastMessage("Artist: L80ETC")
All:SendBroadcastMessage("Album: Under Chaos")
All:SendBroadcastMessage("================================")
player:GossipComplete()
else
end
end
end

if (intid == 229) then
for k, All in pairs(AdminPlayall) do
if (ScriptDBQuery("SELECT flags FROM Jukebox_Settings WHERE name = '"..All:GetName().."'", 0):GetColumn(0):GetString() == "0") then
All:PlaySoundToPlayer(75104)
All:SendBroadcastMessage("---Song Playing [Revision-3]---")
All:SendBroadcastMessage("Title: Ulduar")
All:SendBroadcastMessage("Artist: Nyhm")
All:SendBroadcastMessage("Album: Unknown")
All:SendBroadcastMessage("================================")
player:GossipComplete()
else
end
end
end

if (intid == 230) then
for k, All in pairs(AdminPlayall) do
if (ScriptDBQuery("SELECT flags FROM Jukebox_Settings WHERE name = '"..All:GetName().."'", 0):GetColumn(0):GetString() == "0") then
All:PlaySoundToPlayer(75105)
All:SendBroadcastMessage("---Song Playing [Revision-3]---")
All:SendBroadcastMessage("Title: Welcome To The Deadmines")
All:SendBroadcastMessage("Artist: Irdeen")
All:SendBroadcastMessage("Album: X-Cross")
All:SendBroadcastMessage("================================")
player:GossipComplete()
else
end
end
end
-----Admin JukeBox Parody Songs-----
if (intid == 250) then
player:SendBroadcastMessage("The Parody Songs category is currently unavailiable")
item:GossipCreateMenu(50, player, 0)
item:GossipMenuAddItem(2, "Back", 2, 0)
item:GossipSendMenu(player)
end

----Test----
if (intid == 500) then
local GetName = player:GetName()
player:SendBroadcastMessage("Your [World Music] Is Now Blocked")
ScriptDBQuery("REPLACE INTO Jukebox_Settings(name, flags) VALUES ('"..GetName.."', '1')", 0)
player:GossipComplete()
end

if (intid == 501) then
local GetName = player:GetName()
player:SendBroadcastMessage("Your [World Music] Is Now UnBlocked")
ScriptDBQuery("REPLACE INTO Jukebox_Settings(name, flags) VALUES ('"..GetName.."', '0')", 0)
player:GossipComplete()
end

if (intid == 1000) then
player:PlaySoundToPlayer(113)
player:SendBroadcastMessage("---Song Stopped---")
player:SendBroadcastMessage("NOTE: This may not always stop the song. It will only stop if you are in the same area as when you started the song.")
player:SendBroadcastMessage("---XDemonic")
player:GossipComplete()
end

if (intid == 1001) then
dofile("scripts/JukeBox.lua")
for k, All in pairs(AdminPlayall) do
if (ScriptDBQuery("SELECT flags FROM Jukebox_Settings WHERE name = '"..All:GetName().."'", 0):GetColumn(0):GetString() == "0") then
All:PlaySoundToPlayer(113)
All:SendBroadcastMessage("---Global Song Stopped---")
All:SendBroadcastMessage("NOTE: This may not always stop the song. It will only stop if you are in the same area as when you started the song.")
All:SendBroadcastMessage("---XDemonic")
player:GossipComplete()
else
end
end
end

if (intid == 5555) then
item:GetItemLink()
player:GossipComplete()
end
end

RegisterItemGossipEvent(199950, 1, "JukeBox_Click")
RegisterItemGossipEvent(199950, 2, "JukeBox_Click2")