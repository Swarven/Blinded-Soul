--local packet = LuaPacket:CreatePacket(0x0F9, 4) -- Move type 4
---------------------------------------------------------------------------------------------------------------------------------------------------
function Player_on_First_Enter_World(event, plr, message, type, language, unit)
local GetName = plr:GetName()
if (ScriptDBQuery("SELECT Character_Name FROM characters_graveyards WHERE Character_Name = '"..GetName.."'", 0) == nil) then
ScriptDBQuery("INSERT INTO characters_graveyards(Character_Name, Graveyard_ID, SetFacing, Flags) VALUES ('"..GetName.."', NULL, '0', '0')", 0)
else
ScriptDBQuery("UPDATE characters_graveyards SET Graveyard_ID=null, SetFacing=0, Flags=0 WHERE Character_Name='"..GetName.."'", 0)
end
		local plrs = GetPlayersInWorld()
	    for k, v in pairs(plrs) do
	        --packet:WriteULong(2)
	        --plr:SendPacketToPlayer(packet)
			local PlayerCharacter = plr:GetName()
		    plr:SendBroadcastMessage("\124c001eff00Welcome to Blinded-Soul\124r\124c0000868B " ..plr:GetName().. "\124r")
			v:SendBroadcastMessage("\124c001eff00Welcome our New Player\124r\124c0000868B " ..plr:GetName().. "\124r")
	    end
end
---------------------------------------------------------------------------------------------------------------------------------------------------
RegisterServerHook(3, "Player_on_First_Enter_World")
---------------------------------------------------------------------------------------------------------------------------------------------------