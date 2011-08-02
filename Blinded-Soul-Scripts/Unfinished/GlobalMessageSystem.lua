local GetPlayers = GetPlayersInWorld()
local Red = "\124c00FF3333"
local Blue = "\124c000070dd"
local Green = "\124c0033FF33"
local Orange = "\124c00FFA500"
local EndColor = "\124r"
local MessagesCount = 3 --- How Many Messages is in the database
local GetID1 = ScriptDBQuery("SELECT * FROM global_messages_system WHERE id = '1'", 0)
    local GetFaction1 = GetID1:GetColumn(1):GetString()
	local GetType1 = GetID1:GetColumn(2):GetString()
    local GetMessage1 = GetID1:GetColumn(4):GetString()
local GetID2 = ScriptDBQuery("SELECT * FROM global_messages_system WHERE id = '2'", 0)
    local GetFaction2 = GetID2:GetColumn(1):GetString()
	local GetType2 = GetID2:GetColumn(2):GetString()
	local GetMessage2 = GetID2:GetColumn(4):GetString()
local GetID3 = ScriptDBQuery("SELECT * FROM global_messages_system WHERE id = '3'", 0)
    local GetFaction3 = GetID3:GetColumn(1):GetString()
	local GetType3 = GetID3:GetColumn(2):GetString()
	local GetMessage3 = GetID3:GetColumn(4):GetString()
--[[
local GetID4 = WorldDBQuery("SELECT * FROM global_messages_system WHERE id = '4'", 0)
    local GetFaction4 = GetID4:GetColumn(1):GetString()
	local GetType4 = GetID4:GetColumn(2):GetString()
	local GetMessage4 = GetID4:GetColumn(4):GetString()
local GetID5 = WorldDBQuery("SELECT * FROM global_messages_system WHERE id = '5'", 0)
    local GetFaction5 = GetID5:GetColumn(1):GetString()
	local GetType4 = GetID4:GetColumn(2):GetString()
	local GetMessage5 = GetID5:GetColumn(4):GetString()
--]]

function SendGlobalMessage()
--=====Settings For ID: 1=====--
if (GetFaction1 == "0") then
Faction1 = Blue.."[Alliance] "..EndColor
end
if (GetFaction1 == "1") then
Faction1 = Red.."[Horde] "..EndColor
end
if (GetFaction1 == "2") then
Faction1 = Orange.."[World] "..EndColor
end
----
if (GetType1 == "0") then
Type1 = "[News] "
end
if (GetType1 == "1") then
Type1 = "[Event] "
end
if (GetType1 == "2") then
Type1 = "[Reminder] "
end
--=====Settings For ID: 2=====--
if (GetFaction2 == "0") then
Faction2 = Blue.."[Alliance] "..EndColor
end
if (GetFaction2 == "1") then
Faction2 = Red.."[Horde] "..EndColor
end
if (GetFaction2 == "2") then
Faction2 = Orange.."[World] "..EndColor
end
----
if (GetType2 == "0") then
Type2 = "[News] "
end
if (GetType2 == "1") then
Type2 = "[Event] "
end
if (GetType2 == "2") then
Type2 = "[Reminder] "
end
--=====Settings For ID: 3=====--
if (GetFaction3 == "0") then
Faction3 = Blue.."[Alliance] "..EndColor
end
if (GetFaction3 == "1") then
Faction3 = Red.."[Horde] "..EndColor
end
if (GetFaction3 == "2") then
Faction3 = Orange.."[World] "..EndColor
end
----
if (GetType3 == "0") then
Type3 = "[News] "
end
if (GetType3 == "1") then
Type3 = "[Event] "
end
if (GetType3 == "2") then
Type3 = "[Reminder] "
end
--=====Settings For ID: 4=====--
--[[
if (GetFaction4 == "0") then
Faction4 = Blue.."[Alliance] "..EndColor
end
if (GetFaction4 == "1") then
Faction4 = Red.."[Horde] "..EndColor
end
if (GetFaction4 == "2") then
Faction4 = Orange.."[World] "..EndColor
end
----
if (GetType4 == "0") then
Type4 = "[News] "
end
if (GetType4 == "1") then
Type4 = "[Event] "
end
if (GetType4 == "2") then
Type4 = "[Reminder] "
end
--]]
--=====Settings For ID: 5=====--
--[[
if (GetFaction5 == "0") then
Faction5 = Blue.."[Alliance] "..EndColor
end
if (GetFaction5 == "1") then
Faction5 = Red.."[Horde] "..EndColor
end
if (GetFaction5 == "2") then
Faction5 = Orange.."[World] "..EndColor
end
----
if (GetType5 == "0") then
Type5 = "[News] "
end
if (GetType5 == "1") then
Type5 = "[Event] "
end
if (GetType5 == "2") then
Type5 = "[Reminder] "
end
--]]
    if (GetPlayers ~= nil) then
        for k, SendMessageToPlayers in pairs(GetPlayers) do
            if math.random(1,MessagesCount) == 1 then
			SendMessageToPlayers:SendBroadcastMessage(Faction1..Type1..Green..GetMessage1..EndColor)
			else
            if math.random(1,MessagesCount) == 2 then
			SendMessageToPlayers:SendBroadcastMessage(Faction2..Type2..Green..GetMessage2..EndColor)
			else
			if math.random(1,MessagesCount) == 3 then
			SendMessageToPlayers:SendBroadcastMessage(Faction3..Type3..Green..GetMessage3..EndColor)
            else
--[[
            if math.random(1,MessagesCount) == 4 then
			SendMessageToPlayers:SendBroadcastMessage(Faction4..Type4..Green..GetMessage4..EndColor)
			else
			if math.random(1,MessagesCount) == 5 then
			SendMessageToPlayers:SendBroadcastMessage(Faction5..Type5..Green..GetMessage5..EndColor)
            else
--]]
            end
			end
			end
		end
    end
end



RegisterTimedEvent("SendGlobalMessage", 300000, 0)