----Chat Locals----
local Reload_Engine = "xreload"
local Get_Phase = "xphase"
-----------------------
function Custom_Admin_Commands_OnChat(event, plr, message, type, language, unit)
	if(message == Reload_Engine) then
	    ReloadLuaEngine()
		plr:SendBroadcastMessage("LUA Engine Reloaded...")
	    end
		
	if(message == Get_Phase) then
		plr:SendBroadcastMessage("Your Phase Is Currently At " ..plr:GetPhase())
	    end
    end

		
RegisterServerHook(16, "Custom_Admin_Commands_OnChat")