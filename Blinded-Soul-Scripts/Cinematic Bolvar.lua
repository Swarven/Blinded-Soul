function Quest_Completions(event, pUnit, player)
player:SetPhase(2)
end

RegisterQuestEvent(9100532, 2, "Quest_Completions")
--========================================================================--

function HLBCin_OnTalk(pUnit, event, player, pMisc, unit)
pUnit:GossipCreateMenu(50, player, 0)
-- if (player:HasFinishedQuest(9100532) == true) then
pUnit:GossipMenuAddItem(3, "Yes!", 1, 0)
pUnit:GossipMenuAddItem(3, "Never Mind", 2, 0)
pUnit:GossipSendMenu(player)
pUnit:SendChatMessage(12, 0, "Are my men ready for battle, " ..player:GetName().. "?")
end
--end

function HLBCin_OnSelect(pUnit, Event, player, id, intid, code, pMisc)
if (intid == 1) then
player:PhaseSet(2)
player:GossipComplete()
Highlord_Bolvar:RegisterEvent("HLBolvarPlrCheck", 2000, 0)
end

if (intid == 2) then
pUnit:SendChatMessage(12, 0, "We must hurry " ..player:GetName().. ", we have no time to lose!")
player:GossipComplete()
end
end

RegisterUnitGossipEvent(229757, 1, "HLBCin_OnTalk")
RegisterUnitGossipEvent(229757, 2, "HLBCin_OnSelect")

function Highlord_Bolvar_Cinematic_Define(pUnit, event)
	Highlord_Bolvar = pUnit
end

RegisterUnitEvent(229758, 18, "Highlord_Bolvar_Cinematic_Define")

function HLBolvarPlrCheck(pUnit, event)
    Highlord_Bolvar:RemoveEvents()
	Highlord_Bolvar:ModifyWalkSpeed(2.5)
	Highlord_Bolvar:SendChatMessage(14, 0, "Alright Men, Lets Move!")
	Highlord_Bolvar:RegisterEvent("HLBolvarWalka", 2000, 0)
end

function HLBolvarWalka(pUnit, Event)
	Highlord_Bolvar:RemoveEvents()
	Highlord_Bolvar:MoveTo(4695.286133, 1512.417847, 260.973297, 1.02)
	Highlord_Bolvar:RegisterEvent("HLBolvarWalkb", 4000, 0)
end

function HLBolvarWalkb(pUnit, Event)
	Highlord_Bolvar:RemoveEvents()
	Highlord_Bolvar:MoveTo(4699.152832, 1526.579956, 260.580170, 1.3495)
	Highlord_Bolvar:RegisterEvent("HLBolvarCinematicStart", 10000, 0)
end

function HLBolvarCinematicStart(pUnit, Event)
	Highlord_Bolvar:RemoveEvents()
	local HLBPChecka = GetPlayersInZone(65)
	for k, v in pairs(HLBPChecka) do
	if (v:IsInPhase(2) == true) then	
	local packet = LuaPacket:CreatePacket(0x464, 4)
	packet:WriteULong(14)
	v:SendPacketToPlayer(packet)
	v:SetPhase(4)
end
end
end