------Places in the Chess Game for each square [X-Cords, Y-Cords]-----

-----------------------Other Cords----------------
local Z = 220.668228 ----Both Z-Cords
local A = 0.655557 ----Alliance Orientation
local H = 3.820711 ----Horde Orientation
------------------------Defineing Units------------------------
------------Alliance King--------
function Define_DC_Alliance_King(pUnit, Event)
DC_Alliance_King = pUnit
end

RegisterUnitEvent(1555244, 18, "Define_DC_Alliance_King")
----------Alliance Queen-------
function Define_DC_Alliance_Queen(pUnit, Event)
DC_Alliance_Queen = pUnit
end

RegisterUnitEvent(1555245, 18, "Define_DC_Alliance_Queen")
-------Alliance Pawns-----
function Define_DC_Alliance_Pawn1(pUnit, Event)
DC_Alliance_Pawn1 = pUnit
end

RegisterUnitEvent(1555230, 18, "Define_DC_Alliance_Pawn1")

function Define_DC_Alliance_Pawn2(pUnit, Event)
DC_Alliance_Pawn2 = pUnit
end

RegisterUnitEvent(1555231, 18, "Define_DC_Alliance_Pawn2")

function Define_DC_Alliance_Pawn3(pUnit, Event)
DC_Alliance_Pawn3 = pUnit
end

RegisterUnitEvent(1555232, 18, "Define_DC_Alliance_Pawn3")

function Define_DC_Alliance_Pawn4(pUnit, Event)
DC_Alliance_Pawn4 = pUnit
end

RegisterUnitEvent(1555233, 18, "Define_DC_Alliance_Pawn4")

function Define_DC_Alliance_Pawn5(pUnit, Event)
DC_Alliance_Pawn5 = pUnit
end

RegisterUnitEvent(1555234, 18, "Define_DC_Alliance_Pawn5")

function Define_DC_Alliance_Pawn6(pUnit, Event)
DC_Alliance_Pawn6 = pUnit
end

RegisterUnitEvent(1555235, 18, "Define_DC_Alliance_Pawn6")

function Define_DC_Alliance_Pawn7(pUnit, Event)
DC_Alliance_Pawn7 = pUnit
end

RegisterUnitEvent(1555236, 18, "Define_DC_Alliance_Pawn7")

function Define_DC_Alliance_Pawn8(pUnit, Event)
DC_Alliance_Pawn8 = pUnit
end

RegisterUnitEvent(1555237, 18, "Define_DC_Alliance_Pawn8")
---------------------Alliance Bishops-------------
function Define_DC_Alliance_Bishop1(pUnit, Event)
DC_Alliance_Bishop1 = pUnit
end

RegisterUnitEvent(1555240, 18, "Define_DC_Alliance_Bishop1")

function Define_DC_Alliance_Bishop2(pUnit, Event)
DC_Alliance_Bishop2 = pUnit
end

RegisterUnitEvent(1555241, 18, "Define_DC_Alliance_Bishop2")
------------------------Alliance Knights----------
function Define_DC_Alliance_Knight1(pUnit, Event)
DC_Alliance_Knight1 = pUnit
end

RegisterUnitEvent(1555238, 18, "Define_DC_Alliance_Knight1")

function Define_DC_Alliance_Knight2(pUnit, Event)
DC_Alliance_Knight2 = pUnit
end

RegisterUnitEvent(1555239, 18, "Define_DC_Alliance_Knight2")
------------------Alliance Rooks------------
function Define_DC_Alliance_Rook1(pUnit, Event)
DC_Alliance_Rook1 = pUnit
pUnit:RegisterEvent("AllianceChessPiecesRookFin", 1000, 0)
end

RegisterUnitEvent(1555242, 18, "Define_DC_Alliance_Rook1")

function Define_DC_Alliance_Rook2(pUnit, Event)
DC_Alliance_Rook2 = pUnit
pUnit:RegisterEvent("AllianceChessPiecesRookFin", 1000, 0)
end

RegisterUnitEvent(1555243, 18, "Define_DC_Alliance_Rook2")
--------------Alliance Engineers------------
function Define_DC_Alliance_Engineer1(pUnit, Event)
DC_Alliance_Engineer1 = pUnit
end

RegisterUnitEvent(1555228, 18, "Define_DC_Alliance_Engineer1")

function Define_DC_Alliance_Engineer2(pUnit, Event)
DC_Alliance_Engineer2 = pUnit
end

RegisterUnitEvent(1555229, 18, "Define_DC_Alliance_Engineer2")
------------Horde King--------
function Define_DC_Horde_King(pUnit, Event)
DC_Horde_King = pUnit
end

RegisterUnitEvent(1555144, 18, "Define_DC_Horde_King")
----------Horde Queen-------
function Define_DC_Horde_Queen(pUnit, Event)
DC_Horde_Queen = pUnit
end

RegisterUnitEvent(1555145, 18, "Define_DC_Horde_Queen")
-------Horde Pawns-----
function Define_DC_Horde_Pawn1(pUnit, Event)
DC_Horde_Pawn1 = pUnit
end

RegisterUnitEvent(1555130, 18, "Define_DC_Horde_Pawn1")

function Define_DC_Horde_Pawn2(pUnit, Event)
DC_Horde_Pawn2 = pUnit
end

RegisterUnitEvent(1555131, 18, "Define_DC_Horde_Pawn2")

function Define_DC_Horde_Pawn3(pUnit, Event)
DC_Horde_Pawn3 = pUnit
end

RegisterUnitEvent(1555132, 18, "Define_DC_Horde_Pawn3")

function Define_DC_Horde_Pawn4(pUnit, Event)
DC_Horde_Pawn4 = pUnit
end

RegisterUnitEvent(1555133, 18, "Define_DC_Horde_Pawn4")

function Define_DC_Horde_Pawn5(pUnit, Event)
DC_Horde_Pawn5 = pUnit
end

RegisterUnitEvent(1555134, 18, "Define_DC_Horde_Pawn5")

function Define_DC_Horde_Pawn6(pUnit, Event)
DC_Horde_Pawn6 = pUnit
end

RegisterUnitEvent(1555135, 18, "Define_DC_Horde_Pawn6")

function Define_DC_Horde_Pawn7(pUnit, Event)
DC_Horde_Pawn7 = pUnit
end

RegisterUnitEvent(1555136, 18, "Define_DC_Horde_Pawn7")

function Define_DC_Horde_Pawn8(pUnit, Event)
DC_Horde_Pawn8 = pUnit
end

RegisterUnitEvent(1555137, 18, "Define_DC_Horde_Pawn8")
---------------------Horde Bishops-------------
function Define_DC_Horde_Bishop1(pUnit, Event)
DC_Horde_Bishop1 = pUnit
end

RegisterUnitEvent(1555140, 18, "Define_DC_Horde_Bishop1")

function Define_DC_Horde_Bishop2(pUnit, Event)
DC_Horde_Bishop2 = pUnit
end

RegisterUnitEvent(1555141, 18, "Define_DC_Horde_Bishop2")
------------------------Horde Knights----------
function Define_DC_Horde_Knight1(pUnit, Event)
DC_Horde_Knight1 = pUnit
end

RegisterUnitEvent(1555138, 18, "Define_DC_Horde_Knight1")

function Define_DC_Horde_Knight2(pUnit, Event)
DC_Horde_Knight2 = pUnit
end

RegisterUnitEvent(1555139, 18, "Define_DC_Horde_Knight2")
------------------Horde Rooks------------
function Define_DC_Horde_Rook1(pUnit, Event)
DC_Horde_Rook1 = pUnit
pUnit:RegisterEvent("HordeChessPiecesRookFin", 1000, 0)
end

RegisterUnitEvent(1555142, 18, "Define_DC_Horde_Rook1")

function Define_DC_Horde_Rook2(pUnit, Event)
DC_Horde_Rook2 = pUnit
pUnit:RegisterEvent("HordeChessPiecesRookFin", 1000, 0)
end

RegisterUnitEvent(1555143, 18, "Define_DC_Horde_Rook2")
--------------Horde Engineers------------
function Define_DC_Horde_Engineer1(pUnit, Event)
DC_Horde_Engineer1 = pUnit
end

RegisterUnitEvent(1555128, 18, "Define_DC_Horde_Engineer1")

function Define_DC_Horde_Engineer2(pUnit, Event)
DC_Horde_Engineer2 = pUnit
end

RegisterUnitEvent(1555129, 18, "Define_DC_Horde_Engineer2")
--------------------EMOTES to Remember!--------------------
--Attack - 35
--Geting Hit - 33
--Making Tank [Gnomes/Trolls Only] - 69
--:Kill(target)
-------------Mathematical Locals---------------------------------
local Death_Chess_Starting_Position = 0 ----[0 = Not starting | 1 = Starting | 2 = Ready]
local Death_Chess_Phase = 0 ----[0 = N/A | 1 = Alliance | 2 = Horde]
----------------Script Start--------------
function Death_Chess_Master_OnGossipTalk(pUnit, event, player, pMisc)
   pUnit:GossipCreateMenu(50, player, 0)
   if Death_Chess_Starting_Position == 0 then
   pUnit:GossipMenuAddItem(9, "We Want to Play Death-Chess!", 1, 0)
   end
   if Death_Chess_Starting_Position == 1 then
   pUnit:SendChatMessage(12, 0, "Please wait till the Chess game Begins...")
   pUnit:GossipMenuAddItem(9, "We Want to Play Death-Chess!", 1, 0)
   end
   if Death_Chess_Starting_Position == 2 then
   pUnit:GossipMenuAddItem(9, "Choose Who Goes First", 4, 0)
   end
   pUnit:GossipMenuAddItem(0, "Never Mind", 2, 0)
   pUnit:GossipSendMenu(player)
end

function Death_Chess_Master_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
if (intid == 1) then
pUnit:SendChatMessage(12, 0, "Alright, And How Will You be Playing?")
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:Emote(11,4000)
   pUnit:GossipMenuAddItem(9, "Alliance vs Horde", 3, 0)
   pUnit:GossipMenuAddItem(0, "Never Mind", 2, 0)
   pUnit:GossipSendMenu(player)
end

if(intid == 2) then
player:GossipComplete()
end

if (intid == 3) then
Death_Chess_Starting_Position = 1
A1X = -11083.552734
A1Y = -1903.505859
APawn1A1 = 0
APawn2A1 = 0
APawn3A1 = 0
APawn4A1 = 0
APawn5A1 = 0
APawn6A1 = 0
APawn7A1 = 0
APawn8A1 = 0
ABishop1A1 = 0
ABishop2A1 = 0
AKnight1A1 = 0
AKnight2A1 = 0
ARook1A1 = 0
ARook2A1 = 0
AKingA1 = 0
AQueenA1 = 0
HPawn1A1 = 0
HPawn2A1 = 0
HPawn3A1 = 0
HPawn4A1 = 0
HPawn5A1 = 0
HPawn6A1 = 0
HPawn7A1 = 0
HPawn8A1 = 0
HBishop1A1 = 0
HBishop2A1 = 0
HKnight1A1 = 0
HKnight2A1 = 0
HRook1A1 = 0
HRook2A1 = 0
HKingA1 = 0
HQueenA1 = 0
APieceA1 = 0
HPieceA1 = 0
--------------------------------------------------------------
A2X = -11086.969727
A2Y = -1899.292114
APawn1A2 = 0
APawn2A2 = 0
APawn3A2 = 0
APawn4A2 = 0
APawn5A2 = 0
APawn6A2 = 0
APawn7A2 = 0
APawn8A2 = 0
ABishop1A2 = 0
ABishop2A2 = 0
AKnight1A2 = 0
AKnight2A2 = 0
ARook1A2 = 0
ARook2A2 = 0
AKingA2 = 0
AQueenA2 = 0
HPawn1A2 = 0
HPawn2A2 = 0
HPawn3A2 = 0
HPawn4A2 = 0
HPawn5A2 = 0
HPawn6A2 = 0
HPawn7A2 = 0
HPawn8A2 = 0
HBishop1A2 = 0
HBishop2A2 = 0
HKnight1A2 = 0
HKnight2A2 = 0
HRook1A2 = 0
HRook2A2 = 0
HKingA2 = 0
HQueenA2 = 0
APieceA2 = 0
HPieceA2 = 0
-------------------------------------------------------------
A3X = -11090.613281
A3Y = -1894.944458
APawn1A3 = 0
APawn2A3 = 0
APawn3A3 = 0
APawn4A3 = 0
APawn5A3 = 0
APawn6A3 = 0
APawn7A3 = 0
APawn8A3 = 0
ABishop1A3 = 0
ABishop2A3 = 0
AKnight1A3 = 0
AKnight2A3 = 0
ARook1A3 = 0
ARook2A3 = 0
AKingA3 = 0
AQueenA3 = 0
HPawn1A3 = 0
HPawn2A3 = 0
HPawn3A3 = 0
HPawn4A3 = 0
HPawn5A3 = 0
HPawn6A3 = 0
HPawn7A3 = 0
HPawn8A3 = 0
HBishop1A3 = 0
HBishop2A3 = 0
HKnight1A3 = 0
HKnight2A3 = 0
HRook1A3 = 0
HRook2A3 = 0
HKingA3 = 0
HQueenA3 = 0
APieceA3 = 0
HPieceA3 = 0
---------------------------------------------------------------
A4X = -11093.966797
A4Y = -1890.678833
APawn1A4 = 0
APawn2A4 = 0
APawn3A4 = 0
APawn4A4 = 0
APawn5A4 = 0
APawn6A4 = 0
APawn7A4 = 0
APawn8A4 = 0
ABishop1A4 = 0
ABishop2A4 = 0
AKnight1A4 = 0
AKnight2A4 = 0
ARook1A4 = 0
ARook2A4 = 0
AKingA4 = 0
AQueenA4 = 0
HPawn1A4 = 0
HPawn2A4 = 0
HPawn3A4 = 0
HPawn4A4 = 0
HPawn5A4 = 0
HPawn6A4 = 0
HPawn7A4 = 0
HPawn8A4 = 0
HBishop1A4 = 0
HBishop2A4 = 0
HKnight1A4 = 0
HKnight2A4 = 0
HRook1A4 = 0
HRook2A4 = 0
HKingA4 = 0
HQueenA4 = 0
APieceA4 = 0
HPieceA4 = 0
--------------------------------------------------------------
A5X = -11097.544922
A5Y = -1886.184570
APawn1A5 = 0
APawn2A5 = 0
APawn3A5 = 0
APawn4A5 = 0
APawn5A5 = 0
APawn6A5 = 0
APawn7A5 = 0
APawn8A5 = 0
ABishop1A5 = 0
ABishop2A5 = 0
AKnight1A5 = 0
AKnight2A5 = 0
ARook1A5 = 0
ARook2A5 = 0
AKingA5 = 0
AQueenA5 = 0
HPawn1A5 = 0
HPawn2A5 = 0
HPawn3A5 = 0
HPawn4A5 = 0
HPawn5A5 = 0
HPawn6A5 = 0
HPawn7A5 = 0
HPawn8A5 = 0
HBishop1A5 = 0
HBishop2A5 = 0
HKnight1A5 = 0
HKnight2A5 = 0
HRook1A5 = 0
HRook2A5 = 0
HKingA5 = 0
HQueenA5 = 0
APieceA5 = 0
HPieceA5 = 0
-------------------------------------------------------------
A6X = -11100.969727
A6Y = -1881.79148
APawn1A6 = 0
APawn2A6 = 0
APawn3A6 = 0
APawn4A6 = 0
APawn5A6 = 0
APawn6A6 = 0
APawn7A6 = 0
APawn8A6 = 0
ABishop1A6 = 0
ABishop2A6 = 0
AKnight1A6 = 0
AKnight2A6 = 0
ARook1A6 = 0
ARook2A6 = 0
AKingA6 = 0
AQueenA6 = 0
HPawn1A6 = 0
HPawn2A6 = 0
HPawn3A6 = 0
HPawn4A6 = 0
HPawn5A6 = 0
HPawn6A6 = 0
HPawn7A6 = 0
HPawn8A6 = 0
HBishop1A6 = 0
HBishop2A6 = 0
HKnight1A6 = 0
HKnight2A6 = 0
HRook1A6 = 0
HRook2A6 = 0
HKingA6 = 0
HQueenA6 = 0
APieceA6 = 0
HPieceA6 = 0
--------------------------------------------------------------
A7X = -11104.430664
A7Y = -1877.351563
APawn1A7 = 0
APawn2A7 = 0
APawn3A7 = 0
APawn4A7 = 0
APawn5A7 = 0
APawn6A7 = 0
APawn7A7 = 0
APawn8A7 = 0
ABishop1A7 = 0
ABishop2A7 = 0
AKnight1A7 = 0
AKnight2A7 = 0
ARook1A7 = 0
ARook2A7 = 0
AKingA7 = 0
AQueenA7 = 0
HPawn1A7 = 0
HPawn2A7 = 0
HPawn3A7 = 0
HPawn4A7 = 0
HPawn5A7 = 0
HPawn6A7 = 0
HPawn7A7 = 0
HPawn8A7 = 0
HBishop1A7 = 0
HBishop2A7 = 0
HKnight1A7 = 0
HKnight2A7 = 0
HRook1A7 = 0
HRook2A7 = 0
HKingA7 = 0
HQueenA7 = 0
APieceA7 = 0
HPieceA7 = 0
------------------------------------------------------------
A8X = -11107.865234
A8Y = -1872.946899
APawn1A8 = 0
APawn2A8 = 0
APawn3A8 = 0
APawn4A8 = 0
APawn5A8 = 0
APawn6A8 = 0
APawn7A8 = 0
APawn8A8 = 0
ABishop1A8 = 0
ABishop2A8 = 0
AKnight1A8 = 0
AKnight2A8 = 0
ARook1A8 = 0
ARook2A8 = 0
AKingA8 = 0
AQueenA8 = 0
HPawn1A8 = 0
HPawn2A8 = 0
HPawn3A8 = 0
HPawn4A8 = 0
HPawn5A8 = 0
HPawn6A8 = 0
HPawn7A8 = 0
HPawn8A8 = 0
HBishop1A8 = 0
HBishop2A8 = 0
HKnight1A8 = 0
HKnight2A8 = 0
HRook1A8 = 0
HRook2A8 = 0
HKingA8 = 0
HQueenA8 = 0
APieceA8 = 0
HPieceA8 = 0
-----------------Next Row---------------------------
B1X = -11079.178711
B1Y = -1900.251465
APawn1B1 = 0
APawn2B1 = 0
APawn3B1 = 0
APawn4B1 = 0
APawn5B1 = 0
APawn6B1 = 0
APawn7B1 = 0
APawn8B1 = 0
ABishop1B1 = 0
ABishop2B1 = 0
AKnight1B1 = 0
AKnight2B1 = 0
ARook1B1 = 0
ARook2B1 = 0
AKingB1 = 0
AQueenB1 = 0
HPawn1B1 = 0
HPawn2B1 = 0
HPawn3B1 = 0
HPawn4B1 = 0
HPawn5B1 = 0
HPawn6B1 = 0
HPawn7B1 = 0
HPawn8B1 = 0
HBishop1B1 = 0
HBishop2B1 = 0
HKnight1B1 = 0
HKnight2B1 = 0
HRook1B1 = 0
HRook2B1 = 0
HKingB1 = 0
HQueenB1 = 0
APieceB1 = 0
HPieceB1 = 0
---------------------------------------------------------------
B2X = -11082.645508
B2Y = -1895.806763
APawn1B2 = 0
APawn2B2 = 0
APawn3B2 = 0
APawn4B2 = 0
APawn5B2 = 0
APawn6B2 = 0
APawn7B2 = 0
APawn8B2 = 0
ABishop1B2 = 0
ABishop2B2 = 0
AKnight1B2 = 0
AKnight2B2 = 0
ARook1B2 = 0
ARook2B2 = 0
AKingB2 = 0
AQueenB2 = 0
HPawn1B2 = 0
HPawn2B2 = 0
HPawn3B2 = 0
HPawn4B2 = 0
HPawn5B2 = 0
HPawn6B2 = 0
HPawn7B2 = 0
HPawn8B2 = 0
HBishop1B2 = 0
HBishop2B2 = 0
HKnight1B2 = 0
HKnight2B2 = 0
HRook1B2 = 0
HRook2B2 = 0
HKingB2 = 0
HQueenB2 = 0
APieceB2 = 0
HPieceB2 = 0
--------------------------------------------------------------
B3X = -11086.172852
B3Y = -1891.354736
APawn1B3 = 0
APawn2B3 = 0
APawn3B3 = 0
APawn4B3 = 0
APawn5B3 = 0
APawn6B3 = 0
APawn7B3 = 0
APawn8B3 = 0
ABishop1B3 = 0
ABishop2B3 = 0
AKnight1B3 = 0
AKnight2B3 = 0
ARook1B3 = 0
ARook2B3 = 0
AKingB3 = 0
AQueenB3 = 0
HPawn1B3 = 0
HPawn2B3 = 0
HPawn3B3 = 0
HPawn4B3 = 0
HPawn5B3 = 0
HPawn6B3 = 0
HPawn7B3 = 0
HPawn8B3 = 0
HBishop1B3 = 0
HBishop2B3 = 0
HKnight1B3 = 0
HKnight2B3 = 0
HRook1B3 = 0
HRook2B3 = 0
HKingB3 = 0
HQueenB3 = 0
APieceB3 = 0
HPieceB3 = 0
-------------------------------------------------------------
B4X = -11089.615234
B4Y = -1887.010376
APawn1B4 = 0
APawn2B4 = 0
APawn3B4 = 0
APawn4B4 = 0
APawn5B4 = 0
APawn6B4 = 0
APawn7B4 = 0
APawn8B4 = 0
ABishop1B4 = 0
ABishop2B4 = 0
AKnight1B4 = 0
AKnight2B4 = 0
ARook1B4 = 0
ARook2B4 = 0
AKingB4 = 0
AQueenB4 = 0
HPawn1B4 = 0
HPawn2B4 = 0
HPawn3B4 = 0
HPawn4B4 = 0
HPawn5B4 = 0
HPawn6B4 = 0
HPawn7B4 = 0
HPawn8B4 = 0
HBishop1B4 = 0
HBishop2B4 = 0
HKnight1B4 = 0
HKnight2B4 = 0
HRook1B4 = 0
HRook2B4 = 0
HKingB4 = 0
HQueenB4 = 0
APieceB4 = 0
HPieceB4 = 0
--------------------------------------------------------------
B5X = -11093.082031
B5Y = -1882.634766
APawn1B5 = 0
APawn2B5 = 0
APawn3B5 = 0
APawn4B5 = 0
APawn5B5 = 0
APawn6B5 = 0
APawn7B5 = 0
APawn8B5 = 0
ABishop1B5 = 0
ABishop2B5 = 0
AKnight1B5 = 0
AKnight2B5 = 0
ARook1B5 = 0
ARook2B5 = 0
AKingB5 = 0
AQueenB5 = 0
HPawn1B5 = 0
HPawn2B5 = 0
HPawn3B5 = 0
HPawn4B5 = 0
HPawn5B5 = 0
HPawn6B5 = 0
HPawn7B5 = 0
HPawn8B5 = 0
HBishop1B5 = 0
HBishop2B5 = 0
HKnight1B5 = 0
HKnight2B5 = 0
HRook1B5 = 0
HRook2B5 = 0
HKingB5 = 0
HQueenB5 = 0
APieceB5 = 0
HPieceB5 = 0
-------------------------------------------------------------
B6X = -11096.462891
B6Y = -1878.366943
APawn1B6 = 0
APawn2B6 = 0
APawn3B6 = 0
APawn4B6 = 0
APawn5B6 = 0
APawn6B6 = 0
APawn7B6 = 0
APawn8B6 = 0
ABishop1B6 = 0
ABishop2B6 = 0
AKnight1B6 = 0
AKnight2B6 = 0
ARook1B6 = 0
ARook2B6 = 0
AKingB6 = 0
AQueenB6 = 0
HPawn1B6 = 0
HPawn2B6 = 0
HPawn3B6 = 0
HPawn4B6 = 0
HPawn5B6 = 0
HPawn6B6 = 0
HPawn7B6 = 0
HPawn8B6 = 0
HBishop1B6 = 0
HBishop2B6 = 0
HKnight1B6 = 0
HKnight2B6 = 0
HRook1B6 = 0
HRook2B6 = 0
HKingB6 = 0
HQueenB6 = 0
APieceB6 = 0
HPieceB6 = 0
-------------------------------------------------------------
B7X = -11099.843750
B7Y = -1873.865967
APawn1B7 = 0
APawn2B7 = 0
APawn3B7 = 0
APawn4B7 = 0
APawn5B7 = 0
APawn6B7 = 0
APawn7B7 = 0
APawn8B7 = 0
ABishop1B7 = 0
ABishop2B7 = 0
AKnight1B7 = 0
AKnight2B7 = 0
ARook1B7 = 0
ARook2B7 = 0
AKingB7 = 0
AQueenB7 = 0
HPawn1B7 = 0
HPawn2B7 = 0
HPawn3B7 = 0
HPawn4B7 = 0
HPawn5B7 = 0
HPawn6B7 = 0
HPawn7B7 = 0
HPawn8B7 = 0
HBishop1B7 = 0
HBishop2B7 = 0
HKnight1B7 = 0
HKnight2B7 = 0
HRook1B7 = 0
HRook2B7 = 0
HKingB7 = 0
HQueenB7 = 0
APieceB7 = 0
HPieceB7 = 0
-----------------------------------------------------------
B8X = -11103.334961
B8Y = -1869.458984
APawn1B8 = 0
APawn2B8 = 0
APawn3B8 = 0
APawn4B8 = 0
APawn5B8 = 0
APawn6B8 = 0
APawn7B8 = 0
APawn8B8 = 0
ABishop1B8 = 0
ABishop2B8 = 0
AKnight1B8 = 0
AKnight2B8 = 0
ARook1B8 = 0
ARook2B8 = 0
AKingB8 = 0
AQueenB8 = 0
HPawn1B8 = 0
HPawn2B8 = 0
HPawn3B8 = 0
HPawn4B8 = 0
HPawn5B8 = 0
HPawn6B8 = 0
HPawn7B8 = 0
HPawn8B8 = 0
HBishop1B8 = 0
HBishop2B8 = 0
HKnight1B8 = 0
HKnight2B8 = 0
HRook1B8 = 0
HRook2B8 = 0
HKingB8 = 0
HQueenB8 = 0
APieceB8 = 0
HPieceB8 = 0
------------Next Row-------------------------------
C1X = -11074.745117
C1Y = -1896.770386
APawn1C1 = 0
APawn2C1 = 0
APawn3C1 = 0
APawn4C1 = 0
APawn5C1 = 0
APawn6C1 = 0
APawn7C1 = 0
APawn8C1 = 0
ABishop1C1 = 0
ABishop2C1 = 0
AKnight1C1 = 0
AKnight2C1 = 0
ARook1C1 = 0
ARook2C1 = 0
AKingC1 = 0
AQueenC1 = 0
HPawn1C1 = 0
HPawn2C1 = 0
HPawn3C1 = 0
HPawn4C1 = 0
HPawn5C1 = 0
HPawn6C1 = 0
HPawn7C1 = 0
HPawn8C1 = 0
HBishop1C1 = 0
HBishop2C1 = 0
HKnight1C1 = 0
HKnight2C1 = 0
HRook1C1 = 0
HRook2C1 = 0
HKingC1 = 0
HQueenC1 = 0
APieceC1 = 0
HPieceC1 = 0
-----------------------------------------------------------
C2X = -11078.297852
C2Y = -1892.444824
APawn1C2 = 0
APawn2C2 = 0
APawn3C2 = 0
APawn4C2 = 0
APawn5C2 = 0
APawn6C2 = 0
APawn7C2 = 0
APawn8C2 = 0
ABishop1C2 = 0
ABishop2C2 = 0
AKnight1C2 = 0
AKnight2C2 = 0
ARook1C2 = 0
ARook2C2 = 0
AKingC2 = 0
AQueenC2 = 0
HPawn1C2 = 0
HPawn2C2 = 0
HPawn3C2 = 0
HPawn4C2 = 0
HPawn5C2 = 0
HPawn6C2 = 0
HPawn7C2 = 0
HPawn8C2 = 0
HBishop1C2 = 0
HBishop2C2 = 0
HKnight1C2 = 0
HKnight2C2 = 0
HRook1C2 = 0
HRook2C2 = 0
HKingC2 = 0
HQueenC2 = 0
APieceC2 = 0
HPieceC2 = 0
------------------------------------------------------------
C3X = -11081.671875
C3Y = -1887.974731
APawn1C3 = 0
APawn2C3 = 0
APawn3C3 = 0
APawn4C3 = 0
APawn5C3 = 0
APawn6C3 = 0
APawn7C3 = 0
APawn8C3 = 0
ABishop1C3 = 0
ABishop2C3 = 0
AKnight1C3 = 0
AKnight2C3 = 0
ARook1C3 = 0
ARook2C3 = 0
AKingC3 = 0
AQueenC3 = 0
HPawn1C3 = 0
HPawn2C3 = 0
HPawn3C3 = 0
HPawn4C3 = 0
HPawn5C3 = 0
HPawn6C3 = 0
HPawn7C3 = 0
HPawn8C3 = 0
HBishop1C3 = 0
HBishop2C3 = 0
HKnight1C3 = 0
HKnight2C3 = 0
HRook1C3 = 0
HRook2C3 = 0
HKingC3 = 0
HQueenC3 = 0
APieceC3 = 0
HPieceC3 = 0
---------------------------------------------------------
C4X = -11085.166992
C4Y = -1883.662598
APawn1C4 = 0
APawn2C4 = 0
APawn3C4 = 0
APawn4C4 = 0
APawn5C4 = 0
APawn6C4 = 0
APawn7C4 = 0
APawn8C4 = 0
ABishop1C4 = 0
ABishop2C4 = 0
AKnight1C4 = 0
AKnight2C4 = 0
ARook1C4 = 0
ARook2C4 = 0
AKingC4 = 0
AQueenC4 = 0
HPawn1C4 = 0
HPawn2C4 = 0
HPawn3C4 = 0
HPawn4C4 = 0
HPawn5C4 = 0
HPawn6C4 = 0
HPawn7C4 = 0
HPawn8C4 = 0
HBishop1C4 = 0
HBishop2C4 = 0
HKnight1C4 = 0
HKnight2C4 = 0
HRook1C4 = 0
HRook2C4 = 0
HKingC4 = 0
HQueenC4 = 0
APieceC4 = 0
HPieceC4 = 0
--------------------------------------------------------
C5X = -11088.670898
C5Y = -1879.131348
APawn1C5 = 0
APawn2C5 = 0
APawn3C5 = 0
APawn4C5 = 0
APawn5C5 = 0
APawn6C5 = 0
APawn7C5 = 0
APawn8C5 = 0
ABishop1C5 = 0
ABishop2C5 = 0
AKnight1C5 = 0
AKnight2C5 = 0
ARook1C5 = 0
ARook2C5 = 0
AKingC5 = 0
AQueenC5 = 0
HPawn1C5 = 0
HPawn2C5 = 0
HPawn3C5 = 0
HPawn4C5 = 0
HPawn5C5 = 0
HPawn6C5 = 0
HPawn7C5 = 0
HPawn8C5 = 0
HBishop1C5 = 0
HBishop2C5 = 0
HKnight1C5 = 0
HKnight2C5 = 0
HRook1C5 = 0
HRook2C5 = 0
HKingC5 = 0
HQueenC5 = 0
APieceC5 = 0
HPieceC5 = 0
------------------------------------------------------
C6X = -11092.220703
C6Y = -1874.970093
APawn1C6 = 0
APawn2C6 = 0
APawn3C6 = 0
APawn4C6 = 0
APawn5C6 = 0
APawn6C6 = 0
APawn7C6 = 0
APawn8C6 = 0
ABishop1C6 = 0
ABishop2C6 = 0
AKnight1C6 = 0
AKnight2C6 = 0
ARook1C6 = 0
ARook2C6 = 0
AKingC6 = 0
AQueenC6 = 0
HPawn1C6 = 0
HPawn2C6 = 0
HPawn3C6 = 0
HPawn4C6 = 0
HPawn5C6 = 0
HPawn6C6 = 0
HPawn7C6 = 0
HPawn8C6 = 0
HBishop1C6 = 0
HBishop2C6 = 0
HKnight1C6 = 0
HKnight2C6 = 0
HRook1C6 = 0
HRook2C6 = 0
HKingC6 = 0
HQueenC6 = 0
APieceC6 = 0
HPieceC6 = 0
----------------------------------------------------------
C7X = -11095.634766
C7Y = -1870.553467
APawn1C7 = 0
APawn2C7 = 0
APawn3C7 = 0
APawn4C7 = 0
APawn5C7 = 0
APawn6C7 = 0
APawn7C7 = 0
APawn8C7 = 0
ABishop1C7 = 0
ABishop2C7 = 0
AKnight1C7 = 0
AKnight2C7 = 0
ARook1C7 = 0
ARook2C7 = 0
AKingC7 = 0
AQueenC7 = 0
HPawn1C7 = 0
HPawn2C7 = 0
HPawn3C7 = 0
HPawn4C7 = 0
HPawn5C7 = 0
HPawn6C7 = 0
HPawn7C7 = 0
HPawn8C7 = 0
HBishop1C7 = 0
HBishop2C7 = 0
HKnight1C7 = 0
HKnight2C7 = 0
HRook1C7 = 0
HRook2C7 = 0
HKingC7 = 0
HQueenC7 = 0
APieceC7 = 0
HPieceC7 = 0
-------------------------------------------------------
C8X = -11099.199219
C8Y = -1866.028564
APawn1C8 = 0
APawn2C8 = 0
APawn3C8 = 0
APawn4C8 = 0
APawn5C8 = 0
APawn6C8 = 0
APawn7C8 = 0
APawn8C8 = 0
ABishop1C8 = 0
ABishop2C8 = 0
AKnight1C8 = 0
AKnight2C8 = 0
ARook1C8 = 0
ARook2C8 = 0
AKingC8 = 0
AQueenC8 = 0
HPawn1C8 = 0
HPawn2C8 = 0
HPawn3C8 = 0
HPawn4C8 = 0
HPawn5C8 = 0
HPawn6C8 = 0
HPawn7C8 = 0
HPawn8C8 = 0
HBishop1C8 = 0
HBishop2C8 = 0
HKnight1C8 = 0
HKnight2C8 = 0
HRook1C8 = 0
HRook2C8 = 0
HKingC8 = 0
HQueenC8 = 0
APieceC8 = 0
HPieceC8 = 0
-------------Next Row---------------------------
D1X = -11070.367188
D1Y = -1893.217651
APawn1D1 = 0
APawn2D1 = 0
APawn3D1 = 0
APawn4D1 = 0
APawn5D1 = 0
APawn6D1 = 0
APawn7D1 = 0
APawn8D1 = 0
ABishop1D1 = 0
ABishop2D1 = 0
AKnight1D1 = 0
AKnight2D1 = 0
ARook1D1 = 0
ARook2D1 = 0
AKingD1 = 0
AQueenD1 = 0
HPawn1D1 = 0
HPawn2D1 = 0
HPawn3D1 = 0
HPawn4D1 = 0
HPawn5D1 = 0
HPawn6D1 = 0
HPawn7D1 = 0
HPawn8D1 = 0
HBishop1D1 = 0
HBishop2D1 = 0
HKnight1D1 = 0
HKnight2D1 = 0
HRook1D1 = 0
HRook2D1 = 0
HKingD1 = 0
HQueenD1 = 0
APieceD1 = 0
HPieceD1 = 0
-----------------------------------------------------------
D2X = -11073.929688
D2Y = -1888.832275
APawn1D2 = 0
APawn2D2 = 0
APawn3D2 = 0
APawn4D2 = 0
APawn5D2 = 0
APawn6D2 = 0
APawn7D2 = 0
APawn8D2 = 0
ABishop1D2 = 0
ABishop2D2 = 0
AKnight1D2 = 0
AKnight2D2 = 0
ARook1D2 = 0
ARook2D2 = 0
AKingD2 = 0
AQueenD2 = 0
HPawn1D2 = 0
HPawn2D2 = 0
HPawn3D2 = 0
HPawn4D2 = 0
HPawn5D2 = 0
HPawn6D2 = 0
HPawn7D2 = 0
HPawn8D2 = 0
HBishop1D2 = 0
HBishop2D2 = 0
HKnight1D2 = 0
HKnight2D2 = 0
HRook1D2 = 0
HRook2D2 = 0
HKingD2 = 0
HQueenD2 = 0
APieceD2 = 0
HPieceD2 = 0
--------------------------------------------------------------
D3X = -11077.496094
D3Y = -1884.441162
APawn1D3 = 0
APawn2D3 = 0
APawn3D3 = 0
APawn4D3 = 0
APawn5D3 = 0
APawn6D3 = 0
APawn7D3 = 0
APawn8D3 = 0
ABishop1D3 = 0
ABishop2D3 = 0
AKnight1D3 = 0
AKnight2D3 = 0
ARook1D3 = 0
ARook2D3 = 0
AKingD3 = 0
AQueenD3 = 0
HPawn1D3 = 0
HPawn2D3 = 0
HPawn3D3 = 0
HPawn4D3 = 0
HPawn5D3 = 0
HPawn6D3 = 0
HPawn7D3 = 0
HPawn8D3 = 0
HBishop1D3 = 0
HBishop2D3 = 0
HKnight1D3 = 0
HKnight2D3 = 0
HRook1D3 = 0
HRook2D3 = 0
HKingD3 = 0
HQueenD3 = 0
APieceD3 = 0
HPieceD3 = 0
-------------------------------------------------------------
D4X = -11080.937500
D4Y = -1880.205200
APawn1D4 = 0
APawn2D4 = 0
APawn3D4 = 0
APawn4D4 = 0
APawn5D4 = 0
APawn6D4 = 0
APawn7D4 = 0
APawn8D4 = 0
ABishop1D4 = 0
ABishop2D4 = 0
AKnight1D4 = 0
AKnight2D4 = 0
ARook1D4 = 0
ARook2D4 = 0
AKingD4 = 0
AQueenD4 = 0
HPawn1D4 = 0
HPawn2D4 = 0
HPawn3D4 = 0
HPawn4D4 = 0
HPawn5D4 = 0
HPawn6D4 = 0
HPawn7D4 = 0
HPawn8D4 = 0
HBishop1D4 = 0
HBishop2D4 = 0
HKnight1D4 = 0
HKnight2D4 = 0
HRook1D4 = 0
HRook2D4 = 0
HKingD4 = 0
HQueenD4 = 0
APieceD4 = 0
HPieceD4 = 0
--------------------------------------------------------------
D5X = -11084.595703
D5Y = -1875.701538
APawn1D5 = 0
APawn2D5 = 0
APawn3D5 = 0
APawn4D5 = 0
APawn5D5 = 0
APawn6D5 = 0
APawn7D5 = 0
APawn8D5 = 0
ABishop1D5 = 0
ABishop2D5 = 0
AKnight1D5 = 0
AKnight2D5 = 0
ARook1D5 = 0
ARook2D5 = 0
AKingD5 = 0
AQueenD5 = 0
HPawn1D5 = 0
HPawn2D5 = 0
HPawn3D5 = 0
HPawn4D5 = 0
HPawn5D5 = 0
HPawn6D5 = 0
HPawn7D5 = 0
HPawn8D5 = 0
HBishop1D5 = 0
HBishop2D5 = 0
HKnight1D5 = 0
HKnight2D5 = 0
HRook1D5 = 0
HRook2D5 = 0
HKingD5 = 0
HQueenD5 = 0
APieceD5 = 0
HPieceD5 = 0
-----------------------------------------------------------------
D6X = -11087.981445
D6Y = -1871.533447
APawn1D6 = 0
APawn2D6 = 0
APawn3D6 = 0
APawn4D6 = 0
APawn5D6 = 0
APawn6D6 = 0
APawn7D6 = 0
APawn8D6 = 0
ABishop1D6 = 0
ABishop2D6 = 0
AKnight1D6 = 0
AKnight2D6 = 0
ARook1D6 = 0
ARook2D6 = 0
AKingD6 = 0
AQueenD6 = 0
HPawn1D6 = 0
HPawn2D6 = 0
HPawn3D6 = 0
HPawn4D6 = 0
HPawn5D6 = 0
HPawn6D6 = 0
HPawn7D6 = 0
HPawn8D6 = 0
HBishop1D6 = 0
HBishop2D6 = 0
HKnight1D6 = 0
HKnight2D6 = 0
HRook1D6 = 0
HRook2D6 = 0
HKingD6 = 0
HQueenD6 = 0
APieceD6 = 0
HPieceD6 = 0
----------------------------------------------------------------
D7X = -11091.520508
D7Y = -1867.177246
APawn1D7 = 0
APawn2D7 = 0
APawn3D7 = 0
APawn4D7 = 0
APawn5D7 = 0
APawn6D7 = 0
APawn7D7 = 0
APawn8D7 = 0
ABishop1D7 = 0
ABishop2D7 = 0
AKnight1D7 = 0
AKnight2D7 = 0
ARook1D7 = 0
ARook2D7 = 0
AKingD7 = 0
AQueenD7 = 0
HPawn1D7 = 0
HPawn2D7 = 0
HPawn3D7 = 0
HPawn4D7 = 0
HPawn5D7 = 0
HPawn6D7 = 0
HPawn7D7 = 0
HPawn8D7 = 0
HBishop1D7 = 0
HBishop2D7 = 0
HKnight1D7 = 0
HKnight2D7 = 0
HRook1D7 = 0
HRook2D7 = 0
HKingD7 = 0
HQueenD7 = 0
APieceD7 = 0
HPieceD7 = 0
-------------------------------------------------------------
D8X = -11095.013672
D8Y = -1862.877319
APawn1D8 = 0
APawn2D8 = 0
APawn3D8 = 0
APawn4D8 = 0
APawn5D8 = 0
APawn6D8 = 0
APawn7D8 = 0
APawn8D8 = 0
ABishop1D8 = 0
ABishop2D8 = 0
AKnight1D8 = 0
AKnight2D8 = 0
ARook1D8 = 0
ARook2D8 = 0
AKingD8 = 0
AQueenD8 = 0
HPawn1D8 = 0
HPawn2D8 = 0
HPawn3D8 = 0
HPawn4D8 = 0
HPawn5D8 = 0
HPawn6D8 = 0
HPawn7D8 = 0
HPawn8D8 = 0
HBishop1D8 = 0
HBishop2D8 = 0
HKnight1D8 = 0
HKnight2D8 = 0
HRook1D8 = 0
HRook2D8 = 0
HKingD8 = 0
HQueenD8 = 0
APieceD8 = 0
HPieceD8 = 0
----------------Next Row-----------------------------------
E1X = -11066.335938
E1Y = -1889.999634
APawn1E1 = 0
APawn2E1 = 0
APawn3E1 = 0
APawn4E1 = 0
APawn5E1 = 0
APawn6E1 = 0
APawn7E1 = 0
APawn8E1 = 0
ABishop1E1 = 0
ABishop2E1 = 0
AKnight1E1 = 0
AKnight2E1 = 0
ARook1E1 = 0
ARook2E1 = 0
AKingE1 = 0
AQueenE1 = 0
HPawn1E1 = 0
HPawn2E1 = 0
HPawn3E1 = 0
HPawn4E1 = 0
HPawn5E1 = 0
HPawn6E1 = 0
HPawn7E1 = 0
HPawn8E1 = 0
HBishop1E1 = 0
HBishop2E1 = 0
HKnight1E1 = 0
HKnight2E1 = 0
HRook1E1 = 0
HRook2E1 = 0
HKingE1 = 0
HQueenE1 = 0
APieceE1 = 0
HPieceE1 = 0
-------------------------------------------------------------
E2X = -11069.685547
E2Y = -1885.637085
APawn1E2 = 0
APawn2E2 = 0
APawn3E2 = 0
APawn4E2 = 0
APawn5E2 = 0
APawn6E2 = 0
APawn7E2 = 0
APawn8E2 = 0
ABishop1E2 = 0
ABishop2E2 = 0
AKnight1E2 = 0
AKnight2E2 = 0
ARook1E2 = 0
ARook2E2 = 0
AKingE2 = 0
AQueenE2 = 0
HPawn1E2 = 0
HPawn2E2 = 0
HPawn3E2 = 0
HPawn4E2 = 0
HPawn5E2 = 0
HPawn6E2 = 0
HPawn7E2 = 0
HPawn8E2 = 0
HBishop1E2 = 0
HBishop2E2 = 0
HKnight1E2 = 0
HKnight2E2 = 0
HRook1E2 = 0
HRook2E2 = 0
HKingE2 = 0
HQueenE2 = 0
APieceE2 = 0
HPieceE2 = 0
------------------------------------------------------------
E3X = -11073.113281
E3Y = -1881.271362
APawn1E3 = 0
APawn2E3 = 0
APawn3E3 = 0
APawn4E3 = 0
APawn5E3 = 0
APawn6E3 = 0
APawn7E3 = 0
APawn8E3 = 0
ABishop1E3 = 0
ABishop2E3 = 0
AKnight1E3 = 0
AKnight2E3 = 0
ARook1E3 = 0
ARook2E3 = 0
AKingE3 = 0
AQueenE3 = 0
HPawn1E3 = 0
HPawn2E3 = 0
HPawn3E3 = 0
HPawn4E3 = 0
HPawn5E3 = 0
HPawn6E3 = 0
HPawn7E3 = 0
HPawn8E3 = 0
HBishop1E3 = 0
HBishop2E3 = 0
HKnight1E3 = 0
HKnight2E3 = 0
HRook1E3 = 0
HRook2E3 = 0
HKingE3 = 0
HQueenE3 = 0
APieceE3 = 0
HPieceE3 = 0
-------------------------------------------------------------
E4X = -11076.654297
E4Y = -1876.995972
APawn1E4 = 0
APawn2E4 = 0
APawn3E4 = 0
APawn4E4 = 0
APawn5E4 = 0
APawn6E4 = 0
APawn7E4 = 0
APawn8E4 = 0
ABishop1E4 = 0
ABishop2E4 = 0
AKnight1E4 = 0
AKnight2E4 = 0
ARook1E4 = 0
ARook2E4 = 0
AKingE4 = 0
AQueenE4 = 0
HPawn1E4 = 0
HPawn2E4 = 0
HPawn3E4 = 0
HPawn4E4 = 0
HPawn5E4 = 0
HPawn6E4 = 0
HPawn7E4 = 0
HPawn8E4 = 0
HBishop1E4 = 0
HBishop2E4 = 0
HKnight1E4 = 0
HKnight2E4 = 0
HRook1E4 = 0
HRook2E4 = 0
HKingE4 = 0
HQueenE4 = 0
APieceE4 = 0
HPieceE4 = 0
---------------------------------------------------------------
E5X = -11080.083008
E5Y = -1872.530273
APawn1E5 = 0
APawn2E5 = 0
APawn3E5 = 0
APawn4E5 = 0
APawn5E5 = 0
APawn6E5 = 0
APawn7E5 = 0
APawn8E5 = 0
ABishop1E5 = 0
ABishop2E5 = 0
AKnight1E5 = 0
AKnight2E5 = 0
ARook1E5 = 0
ARook2E5 = 0
AKingE5 = 0
AQueenE5 = 0
HPawn1E5 = 0
HPawn2E5 = 0
HPawn3E5 = 0
HPawn4E5 = 0
HPawn5E5 = 0
HPawn6E5 = 0
HPawn7E5 = 0
HPawn8E5 = 0
HBishop1E5 = 0
HBishop2E5 = 0
HKnight1E5 = 0
HKnight2E5 = 0
HRook1E5 = 0
HRook2E5 = 0
HKingE5 = 0
HQueenE5 = 0
APieceE5 = 0
HPieceE5 = 0
---------------------------------------------------------------
E6X = -11083.676758
E6Y = -1868.064453
APawn1E6 = 0
APawn2E6 = 0
APawn3E6 = 0
APawn4E6 = 0
APawn5E6 = 0
APawn6E6 = 0
APawn7E6 = 0
APawn8E6 = 0
ABishop1E6 = 0
ABishop2E6 = 0
AKnight1E6 = 0
AKnight2E6 = 0
ARook1E6 = 0
ARook2E6 = 0
AKingE6 = 0
AQueenE6 = 0
HPawn1E6 = 0
HPawn2E6 = 0
HPawn3E6 = 0
HPawn4E6 = 0
HPawn5E6 = 0
HPawn6E6 = 0
HPawn7E6 = 0
HPawn8E6 = 0
HBishop1E6 = 0
HBishop2E6 = 0
HKnight1E6 = 0
HKnight2E6 = 0
HRook1E6 = 0
HRook2E6 = 0
HKingE6 = 0
HQueenE6 = 0
APieceE6 = 0
HPieceE6 = 0
----------------------------------------------------------------
E7X = -11087.231445
E7Y = -1863.657104
APawn1E7 = 0
APawn2E7 = 0
APawn3E7 = 0
APawn4E7 = 0
APawn5E7 = 0
APawn6E7 = 0
APawn7E7 = 0
APawn8E7 = 0
ABishop1E7 = 0
ABishop2E7 = 0
AKnight1E7 = 0
AKnight2E7 = 0
ARook1E7 = 0
ARook2E7 = 0
AKingE7 = 0
AQueenE7 = 0
HPawn1E7 = 0
HPawn2E7 = 0
HPawn3E7 = 0
HPawn4E7 = 0
HPawn5E7 = 0
HPawn6E7 = 0
HPawn7E7 = 0
HPawn8E7 = 0
HBishop1E7 = 0
HBishop2E7 = 0
HKnight1E7 = 0
HKnight2E7 = 0
HRook1E7 = 0
HRook2E7 = 0
HKingE7 = 0
HQueenE7 = 0
APieceE7 = 0
HPieceE7 = 0
----------------------------------------------------------------
E8X = -11090.555664
E8Y = -1859.328125
APawn1E8 = 0
APawn2E8 = 0
APawn3E8 = 0
APawn4E8 = 0
APawn5E8 = 0
APawn6E8 = 0
APawn7E8 = 0
APawn8E8 = 0
ABishop1E8 = 0
ABishop2E8 = 0
AKnight1E8 = 0
AKnight2E8 = 0
ARook1E8 = 0
ARook2E8 = 0
AKingE8 = 0
AQueenE8 = 0
HPawn1E8 = 0
HPawn2E8 = 0
HPawn3E8 = 0
HPawn4E8 = 0
HPawn5E8 = 0
HPawn6E8 = 0
HPawn7E8 = 0
HPawn8E8 = 0
HBishop1E8 = 0
HBishop2E8 = 0
HKnight1E8 = 0
HKnight2E8 = 0
HRook1E8 = 0
HRook2E8 = 0
HKingE8 = 0
HQueenE8 = 0
APieceE8 = 0
HPieceE8 = 0
-------------------Next Row---------------------------------
F1X = -11061.723633
F1Y = -1886.313232
APawn1F1 = 0
APawn2F1 = 0
APawn3F1 = 0
APawn4F1 = 0
APawn5F1 = 0
APawn6F1 = 0
APawn7F1 = 0
APawn8F1 = 0
ABishop1F1 = 0
ABishop2F1 = 0
AKnight1F1 = 0
AKnight2F1 = 0
ARook1F1 = 0
ARook2F1 = 0
AKingF1 = 0
AQueenF1 = 0
HPawn1F1 = 0
HPawn2F1 = 0
HPawn3F1 = 0
HPawn4F1 = 0
HPawn5F1 = 0
HPawn6F1 = 0
HPawn7F1 = 0
HPawn8F1 = 0
HBishop1F1 = 0
HBishop2F1 = 0
HKnight1F1 = 0
HKnight2F1 = 0
HRook1F1 = 0
HRook2F1 = 0
HKingF1 = 0
HQueenF1 = 0
APieceF1 = 0
HPieceF1 = 0
--------------------------------------------------------------
F2X = -11065.263672
F2Y = -1882.058228
APawn1F2 = 0
APawn2F2 = 0
APawn3F2 = 0
APawn4F2 = 0
APawn5F2 = 0
APawn6F2 = 0
APawn7F2 = 0
APawn8F2 = 0
ABishop1F2 = 0
ABishop2F2 = 0
AKnight1F2 = 0
AKnight2F2 = 0
ARook1F2 = 0
ARook2F2 = 0
AKingF2 = 0
AQueenF2 = 0
HPawn1F2 = 0
HPawn2F2 = 0
HPawn3F2 = 0
HPawn4F2 = 0
HPawn5F2 = 0
HPawn6F2 = 0
HPawn7F2 = 0
HPawn8F2 = 0
HBishop1F2 = 0
HBishop2F2 = 0
HKnight1F2 = 0
HKnight2F2 = 0
HRook1F2 = 0
HRook2F2 = 0
HKingF2 = 0
HQueenF2 = 0
APieceF2 = 0
HPieceF2 = 0
----------------------------------------------------------
F3X = -11068.707031
F3Y = -1877.608032
APawn1F3 = 0
APawn2F3 = 0
APawn3F3 = 0
APawn4F3 = 0
APawn5F3 = 0
APawn6F3 = 0
APawn7F3 = 0
APawn8F3 = 0
ABishop1F3 = 0
ABishop2F3 = 0
AKnight1F3 = 0
AKnight2F3 = 0
ARook1F3 = 0
ARook2F3 = 0
AKingF3 = 0
AQueenF3 = 0
HPawn1F3 = 0
HPawn2F3 = 0
HPawn3F3 = 0
HPawn4F3 = 0
HPawn5F3 = 0
HPawn6F3 = 0
HPawn7F3 = 0
HPawn8F3 = 0
HBishop1F3 = 0
HBishop2F3 = 0
HKnight1F3 = 0
HKnight2F3 = 0
HRook1F3 = 0
HRook2F3 = 0
HKingF3 = 0
HQueenF3 = 0
APieceF3 = 0
HPieceF3 = 0
----------------------------------------------------------------
F4X = -11072.244141
F4Y = -1873.356812
APawn1F4 = 0
APawn2F4 = 0
APawn3F4 = 0
APawn4F4 = 0
APawn5F4 = 0
APawn6F4 = 0
APawn7F4 = 0
APawn8F4 = 0
ABishop1F4 = 0
ABishop2F4 = 0
AKnight1F4 = 0
AKnight2F4 = 0
ARook1F4 = 0
ARook2F4 = 0
AKingF4 = 0
AQueenF4 = 0
HPawn1F4 = 0
HPawn2F4 = 0
HPawn3F4 = 0
HPawn4F4 = 0
HPawn5F4 = 0
HPawn6F4 = 0
HPawn7F4 = 0
HPawn8F4 = 0
HBishop1F4 = 0
HBishop2F4 = 0
HKnight1F4 = 0
HKnight2F4 = 0
HRook1F4 = 0
HRook2F4 = 0
HKingF4 = 0
HQueenF4 = 0
APieceF4 = 0
HPieceF4 = 0
--------------------------------------------------------------
F5X = -11075.875000
F5Y = -1868.992310
APawn1F5 = 0
APawn2F5 = 0
APawn3F5 = 0
APawn4F5 = 0
APawn5F5 = 0
APawn6F5 = 0
APawn7F5 = 0
APawn8F5 = 0
ABishop1F5 = 0
ABishop2F5 = 0
AKnight1F5 = 0
AKnight2F5 = 0
ARook1F5 = 0
ARook2F5 = 0
AKingF5 = 0
AQueenF5 = 0
HPawn1F5 = 0
HPawn2F5 = 0
HPawn3F5 = 0
HPawn4F5 = 0
HPawn5F5 = 0
HPawn6F5 = 0
HPawn7F5 = 0
HPawn8F5 = 0
HBishop1F5 = 0
HBishop2F5 = 0
HKnight1F5 = 0
HKnight2F5 = 0
HRook1F5 = 0
HRook2F5 = 0
HKingF5 = 0
HQueenF5 = 0
APieceF5 = 0
HPieceF5 = 0
--------------------------------------------------------------
F6X = -11079.418945
F6Y = -1864.731567
APawn1F6 = 0
APawn2F6 = 0
APawn3F6 = 0
APawn4F6 = 0
APawn5F6 = 0
APawn6F6 = 0
APawn7F6 = 0
APawn8F6 = 0
ABishop1F6 = 0
ABishop2F6 = 0
AKnight1F6 = 0
AKnight2F6 = 0
ARook1F6 = 0
ARook2F6 = 0
AKingF6 = 0
AQueenF6 = 0
HPawn1F6 = 0
HPawn2F6 = 0
HPawn3F6 = 0
HPawn4F6 = 0
HPawn5F6 = 0
HPawn6F6 = 0
HPawn7F6 = 0
HPawn8F6 = 0
HBishop1F6 = 0
HBishop2F6 = 0
HKnight1F6 = 0
HKnight2F6 = 0
HRook1F6 = 0
HRook2F6 = 0
HKingF6 = 0
HQueenF6 = 0
APieceF6 = 0
HPieceF6 = 0
----------------------------------------------------------
F7X = -11082.839844
F7Y = -1860.420044
APawn1F7 = 0
APawn2F7 = 0
APawn3F7 = 0
APawn4F7 = 0
APawn5F7 = 0
APawn6F7 = 0
APawn7F7 = 0
APawn8F7 = 0
ABishop1F7 = 0
ABishop2F7 = 0
AKnight1F7 = 0
AKnight2F7 = 0
ARook1F7 = 0
ARook2F7 = 0
AKingF7 = 0
AQueenF7 = 0
HPawn1F7 = 0
HPawn2F7 = 0
HPawn3F7 = 0
HPawn4F7 = 0
HPawn5F7 = 0
HPawn6F7 = 0
HPawn7F7 = 0
HPawn8F7 = 0
HBishop1F7 = 0
HBishop2F7 = 0
HKnight1F7 = 0
HKnight2F7 = 0
HRook1F7 = 0
HRook2F7 = 0
HKingF7 = 0
HQueenF7 = 0
APieceF7 = 0
HPieceF7 = 0
-----------------------------------------------------------
F8X = -11086.307617
F8Y = -1855.733276
APawn1F8 = 0
APawn2F8 = 0
APawn3F8 = 0
APawn4F8 = 0
APawn5F8 = 0
APawn6F8 = 0
APawn7F8 = 0
APawn8F8 = 0
ABishop1F8 = 0
ABishop2F8 = 0
AKnight1F8 = 0
AKnight2F8 = 0
ARook1F8 = 0
ARook2F8 = 0
AKingF8 = 0
AQueenF8 = 0
HPawn1F8 = 0
HPawn2F8 = 0
HPawn3F8 = 0
HPawn4F8 = 0
HPawn5F8 = 0
HPawn6F8 = 0
HPawn7F8 = 0
HPawn8F8 = 0
HBishop1F8 = 0
HBishop2F8 = 0
HKnight1F8 = 0
HKnight2F8 = 0
HRook1F8 = 0
HRook2F8 = 0
HKingF8 = 0
HQueenF8 = 0
APieceF8 = 0
HPieceF8 = 0
------------------Next Row----------------------------
G1X = -11057.571289
G1Y = -1883.094849
APawn1G1 = 0
APawn2G1 = 0
APawn3G1 = 0
APawn4G1 = 0
APawn5G1 = 0
APawn6G1 = 0
APawn7G1 = 0
APawn8G1 = 0
ABishop1G1 = 0
ABishop2G1 = 0
AKnight1G1 = 0
AKnight2G1 = 0
ARook1G1 = 0
ARook2G1 = 0
AKingG1 = 0
AQueenG1 = 0
HPawn1G1 = 0
HPawn2G1 = 0
HPawn3G1 = 0
HPawn4G1 = 0
HPawn5G1 = 0
HPawn6G1 = 0
HPawn7G1 = 0
HPawn8G1 = 0
HBishop1G1 = 0
HBishop2G1 = 0
HKnight1G1 = 0
HKnight2G1 = 0
HRook1G1 = 0
HRook2G1 = 0
HKingG1 = 0
HQueenG1 = 0
APieceG1 = 0
HPieceG1 = 0
----------------------------------------------------------
G2X = -11061.129883
G2Y = -1878.686768
APawn1G2 = 0
APawn2G2 = 0
APawn3G2 = 0
APawn4G2 = 0
APawn5G2 = 0
APawn6G2 = 0
APawn7G2 = 0
APawn8G2 = 0
ABishop1G2 = 0
ABishop2G2 = 0
AKnight1G2 = 0
AKnight2G2 = 0
ARook1G2 = 0
ARook2G2 = 0
AKingG2 = 0
AQueenG2 = 0
HPawn1G2 = 0
HPawn2G2 = 0
HPawn3G2 = 0
HPawn4G2 = 0
HPawn5G2 = 0
HPawn6G2 = 0
HPawn7G2 = 0
HPawn8G2 = 0
HBishop1G2 = 0
HBishop2G2 = 0
HKnight1G2 = 0
HKnight2G2 = 0
HRook1G2 = 0
HRook2G2 = 0
HKingG2 = 0
HQueenG2 = 0
APieceG2 = 0
HPieceG2 = 0
-----------------------------------------------------------
G3X = -11064.689453
G3Y = -1874.276733
APawn1G3 = 0
APawn2G3 = 0
APawn3G3 = 0
APawn4G3 = 0
APawn5G3 = 0
APawn6G3 = 0
APawn7G3 = 0
APawn8G3 = 0
ABishop1G3 = 0
ABishop2G3 = 0
AKnight1G3 = 0
AKnight2G3 = 0
ARook1G3 = 0
ARook2G3 = 0
AKingG3 = 0
AQueenG3 = 0
HPawn1G3 = 0
HPawn2G3 = 0
HPawn3G3 = 0
HPawn4G3 = 0
HPawn5G3 = 0
HPawn6G3 = 0
HPawn7G3 = 0
HPawn8G3 = 0
HBishop1G3 = 0
HBishop2G3 = 0
HKnight1G3 = 0
HKnight2G3 = 0
HRook1G3 = 0
HRook2G3 = 0
HKingG3 = 0
HQueenG3 = 0
APieceG3 = 0
HPieceG3 = 0
---------------------------------------------------------
G4X = -11068.144531
G4Y = -1869.997070
APawn1G4 = 0
APawn2G4 = 0
APawn3G4 = 0
APawn4G4 = 0
APawn5G4 = 0
APawn6G4 = 0
APawn7G4 = 0
APawn8G4 = 0
ABishop1G4 = 0
ABishop2G4 = 0
AKnight1G4 = 0
AKnight2G4 = 0
ARook1G4 = 0
ARook2G4 = 0
AKingG4 = 0
AQueenG4 = 0
HPawn1G4 = 0
HPawn2G4 = 0
HPawn3G4 = 0
HPawn4G4 = 0
HPawn5G4 = 0
HPawn6G4 = 0
HPawn7G4 = 0
HPawn8G4 = 0
HBishop1G4 = 0
HBishop2G4 = 0
HKnight1G4 = 0
HKnight2G4 = 0
HRook1G4 = 0
HRook2G4 = 0
HKingG4 = 0
HQueenG4 = 0
APieceG4 = 0
HPieceG4 = 0
-------------------------------------------------------------
G5X = -11071.410156
G5Y = -1865.529419
APawn1G5 = 0
APawn2G5 = 0
APawn3G5 = 0
APawn4G5 = 0
APawn5G5 = 0
APawn6G5 = 0
APawn7G5 = 0
APawn8G5 = 0
ABishop1G5 = 0
ABishop2G5 = 0
AKnight1G5 = 0
AKnight2G5 = 0
ARook1G5 = 0
ARook2G5 = 0
AKingG5 = 0
AQueenG5 = 0
HPawn1G5 = 0
HPawn2G5 = 0
HPawn3G5 = 0
HPawn4G5 = 0
HPawn5G5 = 0
HPawn6G5 = 0
HPawn7G5 = 0
HPawn8G5 = 0
HBishop1G5 = 0
HBishop2G5 = 0
HKnight1G5 = 0
HKnight2G5 = 0
HRook1G5 = 0
HRook2G5 = 0
HKingG5 = 0
HQueenG5 = 0
APieceG5 = 0
HPieceG5 = 0
-------------------------------------------------------------
G6X = -11074.972656
G6Y = -1861.115601
APawn1G6 = 0
APawn2G6 = 0
APawn3G6 = 0
APawn4G6 = 0
APawn5G6 = 0
APawn6G6 = 0
APawn7G6 = 0
APawn8G6 = 0
ABishop1G6 = 0
ABishop2G6 = 0
AKnight1G6 = 0
AKnight2G6 = 0
ARook1G6 = 0
ARook2G6 = 0
AKingG6 = 0
AQueenG6 = 0
HPawn1G6 = 0
HPawn2G6 = 0
HPawn3G6 = 0
HPawn4G6 = 0
HPawn5G6 = 0
HPawn6G6 = 0
HPawn7G6 = 0
HPawn8G6 = 0
HBishop1G6 = 0
HBishop2G6 = 0
HKnight1G6 = 0
HKnight2G6 = 0
HRook1G6 = 0
HRook2G6 = 0
HKingG6 = 0
HQueenG6 = 0
APieceG6 = 0
HPieceG6 = 0
----------------------------------------------------------------
G7X = -11078.454102
G7Y = -1856.802734
APawn1G7 = 0
APawn2G7 = 0
APawn3G7 = 0
APawn4G7 = 0
APawn5G7 = 0
APawn6G7 = 0
APawn7G7 = 0
APawn8G7 = 0
ABishop1G7 = 0
ABishop2G7 = 0
AKnight1G7 = 0
AKnight2G7 = 0
ARook1G7 = 0
ARook2G7 = 0
AKingG7 = 0
AQueenG7 = 0
HPawn1G7 = 0
HPawn2G7 = 0
HPawn3G7 = 0
HPawn4G7 = 0
HPawn5G7 = 0
HPawn6G7 = 0
HPawn7G7 = 0
HPawn8G7 = 0
HBishop1G7 = 0
HBishop2G7 = 0
HKnight1G7 = 0
HKnight2G7 = 0
HRook1G7 = 0
HRook2G7 = 0
HKingG7 = 0
HQueenG7 = 0
APieceG7 = 0
HPieceG7 = 0
-------------------------------------------------------------
G8X = -11082.015625
G8Y = -1852.390747
APawn1G8 = 0
APawn2G8 = 0
APawn3G8 = 0
APawn4G8 = 0
APawn5G8 = 0
APawn6G8 = 0
APawn7G8 = 0
APawn8G8 = 0
ABishop1G8 = 0
ABishop2G8 = 0
AKnight1G8 = 0
AKnight2G8 = 0
ARook1G8 = 0
ARook2G8 = 0
AKingG8 = 0
AQueenG8 = 0
HPawn1G8 = 0
HPawn2G8 = 0
HPawn3G8 = 0
HPawn4G8 = 0
HPawn5G8 = 0
HPawn6G8 = 0
HPawn7G8 = 0
HPawn8G8 = 0
HBishop1G8 = 0
HBishop2G8 = 0
HKnight1G8 = 0
HKnight2G8 = 0
HRook1G8 = 0
HRook2G8 = 0
HKingG8 = 0
HQueenG8 = 0
APieceG8 = 0
HPieceG8 = 0
-------------------------Next Row------------------
H1X = -11053.298828
H1Y = -1879.546265
APawn1H1 = 0
APawn2H1 = 0
APawn3H1 = 0
APawn4H1 = 0
APawn5H1 = 0
APawn6H1 = 0
APawn7H1 = 0
APawn8H1 = 0
ABishop1H1 = 0
ABishop2H1 = 0
AKnight1H1 = 0
AKnight2H1 = 0
ARook1H1 = 0
ARook2H1 = 0
AKingH1 = 0
AQueenH1 = 0
HPawn1H1 = 0
HPawn2H1 = 0
HPawn3H1 = 0
HPawn4H1 = 0
HPawn5H1 = 0
HPawn6H1 = 0
HPawn7H1 = 0
HPawn8H1 = 0
HBishop1H1 = 0
HBishop2H1 = 0
HKnight1H1 = 0
HKnight2H1 = 0
HRook1H1 = 0
HRook2H1 = 0
HKingH1 = 0
HQueenH1 = 0
APieceH1 = 0
HPieceH1 = 0
--------------------------------------------------------
H2X = -11056.910156
H2Y = -1875.178467
APawn1H2 = 0
APawn2H2 = 0
APawn3H2 = 0
APawn4H2 = 0
APawn5H2 = 0
APawn6H2 = 0
APawn7H2 = 0
APawn8H2 = 0
ABishop1H2 = 0
ABishop2H2 = 0
AKnight1H2 = 0
AKnight2H2 = 0
ARook1H2 = 0
ARook2H2 = 0
AKingH2 = 0
AQueenH2 = 0
HPawn1H2 = 0
HPawn2H2 = 0
HPawn3H2 = 0
HPawn4H2 = 0
HPawn5H2 = 0
HPawn6H2 = 0
HPawn7H2 = 0
HPawn8H2 = 0
HBishop1H2 = 0
HBishop2H2 = 0
HKnight1H2 = 0
HKnight2H2 = 0
HRook1H2 = 0
HRook2H2 = 0
HKingH2 = 0
HQueenH2 = 0
APieceH2 = 0
HPieceH2 = 0
-------------------------------------------------------
H3X = -11060.389648
H3Y = -1870.840942
APawn1H3 = 0
APawn2H3 = 0
APawn3H3 = 0
APawn4H3 = 0
APawn5H3 = 0
APawn6H3 = 0
APawn7H3 = 0
APawn8H3 = 0
ABishop1H3 = 0
ABishop2H3 = 0
AKnight1H3 = 0
AKnight2H3 = 0
ARook1H3 = 0
ARook2H3 = 0
AKingH3 = 0
AQueenH3 = 0
HPawn1H3 = 0
HPawn2H3 = 0
HPawn3H3 = 0
HPawn4H3 = 0
HPawn5H3 = 0
HPawn6H3 = 0
HPawn7H3 = 0
HPawn8H3 = 0
HBishop1H3 = 0
HBishop2H3 = 0
HKnight1H3 = 0
HKnight2H3 = 0
HRook1H3 = 0
HRook2H3 = 0
HKingH3 = 0
HQueenH3 = 0
APieceH3 = 0
HPieceH3 = 0
-------------------------------------------------------------
H4X = -11063.808594
H4Y = -1866.436523
APawn1H4 = 0
APawn2H4 = 0
APawn3H4 = 0
APawn4H4 = 0
APawn5H4 = 0
APawn6H4 = 0
APawn7H4 = 0
APawn8H4 = 0
ABishop1H4 = 0
ABishop2H4 = 0
AKnight1H4 = 0
AKnight2H4 = 0
ARook1H4 = 0
ARook2H4 = 0
AKingH4 = 0
AQueenH4 = 0
HPawn1H4 = 0
HPawn2H4 = 0
HPawn3H4 = 0
HPawn4H4 = 0
HPawn5H4 = 0
HPawn6H4 = 0
HPawn7H4 = 0
HPawn8H4 = 0
HBishop1H4 = 0
HBishop2H4 = 0
HKnight1H4 = 0
HKnight2H4 = 0
HRook1H4 = 0
HRook2H4 = 0
HKingH4 = 0
HQueenH4 = 0
APieceH4 = 0
HPieceH4 = 0
------------------------------------------------------------------
H5X = -11067.338867
H5Y = -1862.166992
APawn1H5 = 0
APawn2H5 = 0
APawn3H5 = 0
APawn4H5 = 0
APawn5H5 = 0
APawn6H5 = 0
APawn7H5 = 0
APawn8H5 = 0
ABishop1H5 = 0
ABishop2H5 = 0
AKnight1H5 = 0
AKnight2H5 = 0
ARook1H5 = 0
ARook2H5 = 0
AKingH5 = 0
AQueenH5 = 0
HPawn1H5 = 0
HPawn2H5 = 0
HPawn3H5 = 0
HPawn4H5 = 0
HPawn5H5 = 0
HPawn6H5 = 0
HPawn7H5 = 0
HPawn8H5 = 0
HBishop1H5 = 0
HBishop2H5 = 0
HKnight1H5 = 0
HKnight2H5 = 0
HRook1H5 = 0
HRook2H5 = 0
HKingH5 = 0
HQueenH5 = 0
APieceH5 = 0
HPieceH5 = 0
------------------------------------------------------------------
H6X = -11070.657227
H6Y = -1857.826904
APawn1H6 = 0
APawn2H6 = 0
APawn3H6 = 0
APawn4H6 = 0
APawn5H6 = 0
APawn6H6 = 0
APawn7H6 = 0
APawn8H6 = 0
ABishop1H6 = 0
ABishop2H6 = 0
AKnight1H6 = 0
AKnight2H6 = 0
ARook1H6 = 0
ARook2H6 = 0
AKingH6 = 0
AQueenH6 = 0
HPawn1H6 = 0
HPawn2H6 = 0
HPawn3H6 = 0
HPawn4H6 = 0
HPawn5H6 = 0
HPawn6H6 = 0
HPawn7H6 = 0
HPawn8H6 = 0
HBishop1H6 = 0
HBishop2H6 = 0
HKnight1H6 = 0
HKnight2H6 = 0
HRook1H6 = 0
HRook2H6 = 0
HKingH6 = 0
HQueenH6 = 0
APieceH6 = 0
HPieceH6 = 0
--------------------------------------------------------------
H7X = -11074.079102
H7Y = -1853.358032
APawn1H7 = 0
APawn2H7 = 0
APawn3H7 = 0
APawn4H7 = 0
APawn5H7 = 0
APawn6H7 = 0
APawn7H7 = 0
APawn8H7 = 0
ABishop1H7 = 0
ABishop2H7 = 0
AKnight1H7 = 0
AKnight2H7 = 0
ARook1H7 = 0
ARook2H7 = 0
AKingH7 = 0
AQueenH7 = 0
HPawn1H7 = 0
HPawn2H7 = 0
HPawn3H7 = 0
HPawn4H7 = 0
HPawn5H7 = 0
HPawn6H7 = 0
HPawn7H7 = 0
HPawn8H7 = 0
HBishop1H7 = 0
HBishop2H7 = 0
HKnight1H7 = 0
HKnight2H7 = 0
HRook1H7 = 0
HRook2H7 = 0
HKingH7 = 0
HQueenH7 = 0
APieceH7 = 0
HPieceH7 = 0
-------------------------------------------------------------
H8X = -11077.685547
H8Y = -1848.875244
APawn1H8 = 0
APawn2H8 = 0
APawn3H8 = 0
APawn4H8 = 0
APawn5H8 = 0
APawn6H8 = 0
APawn7H8 = 0
APawn8H8 = 0
ABishop1H8 = 0
ABishop2H8 = 0
AKnight1H8 = 0
AKnight2H8 = 0
ARook1H8 = 0
ARook2H8 = 0
AKingH8 = 0
AQueenH8 = 0
HPawn1H8 = 0
HPawn2H8 = 0
HPawn3H8 = 0
HPawn4H8 = 0
HPawn5H8 = 0
HPawn6H8 = 0
HPawn7H8 = 0
HPawn8H8 = 0
HBishop1H8 = 0
HBishop2H8 = 0
HKnight1H8 = 0
HKnight2H8 = 0
HRook1H8 = 0
HRook2H8 = 0
HKingH8 = 0
HQueenH8 = 0
APieceH8 = 0
HPieceH8 = 0
DC_Alliance_Pawn1:RegisterEvent("AllianceChessPieces1", 1000, 0)
DC_Alliance_Engineer1:RegisterEvent("AllianceChessPieces9", 1000, 0)
DC_Alliance_Pawn2:RegisterEvent("AllianceChessPieces2", 1000, 0)
DC_Alliance_Knight1:RegisterEvent("AllianceChessPieces10", 1000, 0)
DC_Alliance_Pawn3:RegisterEvent("AllianceChessPieces3", 1000, 0)
DC_Alliance_Bishop1:RegisterEvent("AllianceChessPieces11", 1000, 0)
DC_Alliance_Pawn4:RegisterEvent("AllianceChessPieces4", 1000, 0)
DC_Alliance_King:RegisterEvent("AllianceChessPieces12", 1000, 0)
DC_Alliance_Pawn5:RegisterEvent("AllianceChessPieces5", 1000, 0)
DC_Alliance_Queen:RegisterEvent("AllianceChessPieces13", 1000, 0)
DC_Alliance_Pawn6:RegisterEvent("AllianceChessPieces6", 1000, 0)
DC_Alliance_Bishop2:RegisterEvent("AllianceChessPieces14", 1000, 0)
DC_Alliance_Pawn7:RegisterEvent("AllianceChessPieces7", 1000, 0)
DC_Alliance_Knight2:RegisterEvent("AllianceChessPieces15", 1000, 0)
DC_Alliance_Pawn8:RegisterEvent("AllianceChessPieces8", 1000, 0)
DC_Alliance_Engineer2:RegisterEvent("AllianceChessPieces16", 1000, 0)
------------------------------------------------------------
DC_Horde_Pawn1:RegisterEvent("HordeChessPieces1", 1000, 0)
DC_Horde_Engineer1:RegisterEvent("HordeChessPieces9", 1000, 0)
DC_Horde_Pawn2:RegisterEvent("HordeChessPieces2", 1000, 0)
DC_Horde_Knight1:RegisterEvent("HordeChessPieces10", 1000, 0)
DC_Horde_Pawn3:RegisterEvent("HordeChessPieces3", 1000, 0)
DC_Horde_Bishop1:RegisterEvent("HordeChessPieces11", 1000, 0)
DC_Horde_Pawn4:RegisterEvent("HordeChessPieces4", 1000, 0)
DC_Horde_King:RegisterEvent("HordeChessPieces12", 1000, 0)
DC_Horde_Pawn5:RegisterEvent("HordeChessPieces5", 1000, 0)
DC_Horde_Queen:RegisterEvent("HordeChessPieces13", 1000, 0)
DC_Horde_Pawn6:RegisterEvent("HordeChessPieces6", 1000, 0)
DC_Horde_Bishop2:RegisterEvent("HordeChessPieces14", 1000, 0)
DC_Horde_Pawn7:RegisterEvent("HordeChessPieces7", 1000, 0)
DC_Horde_Knight2:RegisterEvent("HordeChessPieces15", 1000, 0)
DC_Horde_Pawn8:RegisterEvent("HordeChessPieces8", 1000, 0)
DC_Horde_Engineer2:RegisterEvent("HordeChessPieces16", 1000, 0)
---------------------------------------------------
APawn1B1 = 1 -----Letting the Chess Game Know where each piece is....
APawn2B2 = 1
APawn3B3 = 1
APawn4B4 = 1
APawn5B5 = 1
APawn6B6 = 1
APawn7B7 = 1
APawn8B8 = 1
ARook1A1 = 1
AKnight1A2 = 1
ABishop1A3 = 1
AKingA4 = 1
AQueenA5 = 1
ABishop2A6 = 1
AKnight2A7 = 1
ARook2A8 = 1
---------------------------
APieceB1 = 1 -----Letting the Horde Side tell where the Alliance Pieces Are
APieceB2 = 1
APieceB3 = 1
APieceB4 = 1
APieceB5 = 1
APieceB6 = 1
APieceB7 = 1
APieceB8 = 1
APieceA1 = 1
APieceA2 = 1
APieceA3 = 1
APieceA4 = 1
APieceA5 = 1
APieceA6 = 1
APieceA7 = 1
APieceA8 = 1
----------------------------------
HPawn1B1 = 1 -----Letting the Chess Game Know where each piece is....
HPawn2B2 = 1
HPawn3B3 = 1
HPawn4B4 = 1
HPawn5B5 = 1
HPawn6B6 = 1
HPawn7B7 = 1
HPawn8B8 = 1
HRook1A1 = 1
HKnight1A2 = 1
HBishop1A3 = 1
HKingA4 = 1
HQueenA5 = 1
HBishop2A6 = 1
HKnight2A7 = 1
HRook2A8 = 1
------------------------------
HPieceB1 = 1 -----Letting the Alliance Side tell where the Horde Pieces Are
HPieceB2 = 1
HPieceB3 = 1
HPieceB4 = 1
HPieceB5 = 1
HPieceB6 = 1
HPieceB7 = 1
HPieceB8 = 1
HPieceA1 = 1
HPieceA2 = 1
HPieceA3 = 1
HPieceA4 = 1
HPieceA5 = 1
HPieceA6 = 1
HPieceA7 = 1
HPieceA8 = 1
----------------------
player:GossipComplete()
end

if (intid == 4) then
    player:GossipComplete()
    if math.random(1, 2)==1 then
	Death_Chess_Phase = 1
	pUnit:SendChatMessage(12,0,"The Alliance Goes First!")
	else
	Death_Chess_Phase = 2
	pUnit:SendChatMessage(12,0,"The Horde Goes First!")
end
end
end

RegisterUnitGossipEvent(1555246, 1, "Death_Chess_Master_OnGossipTalk")
RegisterUnitGossipEvent(1555246, 2, "Death_Chess_Master_OnGossipSelect")
-----------Alliance Walking into Position---------
function AllianceChessPieces1(pUnit, Event)
pUnit:RemoveEvents()
pUnit:MoveTo(B1X, B1Y, Z, A)
end

function AllianceChessPieces2(pUnit, Event)
pUnit:RemoveEvents()
pUnit:MoveTo(B2X, B2Y, Z, A)
end

function AllianceChessPieces3(pUnit, Event)
pUnit:RemoveEvents()
pUnit:MoveTo(B3X, B3Y, Z, A)
end

function AllianceChessPieces4(pUnit, Event)
pUnit:RemoveEvents()
pUnit:MoveTo(B4X, B4Y, Z, A)
end

function AllianceChessPieces5(pUnit, Event)
pUnit:RemoveEvents()
pUnit:MoveTo(B5X, B5Y, Z, A)
end

function AllianceChessPieces6(pUnit, Event)
pUnit:RemoveEvents()
pUnit:MoveTo(B6X, B6Y, Z, A)
end

function AllianceChessPieces7(pUnit, Event)
pUnit:RemoveEvents()
pUnit:MoveTo(B7X, B7Y, Z, A)
end

function AllianceChessPieces8(pUnit, Event)
pUnit:RemoveEvents()
pUnit:MoveTo(B8X, B8Y, Z, A)
end
-------------
function AllianceChessPieces9(pUnit, Event)
pUnit:RemoveEvents()
pUnit:MoveTo(A1X, A1Y, Z, A)
pUnit:RegisterEvent("AllianceChessPieces9SetUp", 3000, 0)
end

function AllianceChessPieces9SetUp(pUnit, Event)
pUnit:RemoveEvents()
pUnit:Emote(69,5000)
pUnit:RegisterEvent("AllianceChessPieces9Rook", 5000, 0)
end

function AllianceChessPieces9Rook(pUnit, Event)
	pUnit:RemoveEvents()
    x = pUnit:GetX();
    y = pUnit:GetY();
    z = pUnit:GetZ();
    o = pUnit:GetO();
    pUnit:SpawnCreature(1555242, x, y, z, o, 35, 0);
    pUnit:Despawn(1,0)
end

function AllianceChessPiecesRookFin(pUnit, Event)
pUnit:RemoveEvents()
pUnit:SetOrientation(A)
pUnit:SetFacing(A)
end
-------------
function AllianceChessPieces10(pUnit, Event)
pUnit:RemoveEvents()
pUnit:MoveTo(A2X, A2Y, Z, A)
pUnit:RegisterEvent("AllianceChessPieces10SetUp", 5000, 0)
end

function AllianceChessPieces10SetUp(pUnit, Event)
pUnit:RemoveEvents()
pUnit:CastSpell(32357)
pUnit:SetModel(2281)
end

function AllianceChessPieces11(pUnit, Event)
pUnit:RemoveEvents()
pUnit:MoveTo(A3X, A3Y, Z, A)
end

function AllianceChessPieces12(pUnit, Event)
pUnit:RemoveEvents()
pUnit:MoveTo(A4X, A4Y, Z, A)
end

function AllianceChessPieces13(pUnit, Event)
pUnit:RemoveEvents()
pUnit:MoveTo(A5X, A5Y, Z, A)
end

function AllianceChessPieces14(pUnit, Event)
pUnit:RemoveEvents()
pUnit:MoveTo(A6X, A6Y, Z, A)
end

function AllianceChessPieces15(pUnit, Event)
pUnit:RemoveEvents()
pUnit:MoveTo(A7X, A7Y, Z, A)
pUnit:RegisterEvent("AllianceChessPieces15SetUp", 5000, 0)
end

function AllianceChessPieces15SetUp(pUnit, Event)
pUnit:RemoveEvents()
pUnit:CastSpell(32357)
pUnit:SetModel(2281)
end

function AllianceChessPieces16(pUnit, Event)
pUnit:RemoveEvents()
pUnit:MoveTo(A8X, A8Y, Z, A)
pUnit:RegisterEvent("AllianceChessPieces16SetUp", 3000, 0)
end

function AllianceChessPieces16SetUp(pUnit, Event)
pUnit:RemoveEvents()
pUnit:Emote(69,5000)
pUnit:RegisterEvent("AllianceChessPieces16Rook", 5000, 0)
end

function AllianceChessPieces16Rook(pUnit, Event)
	pUnit:RemoveEvents()
    x = pUnit:GetX();
    y = pUnit:GetY();
    z = pUnit:GetZ();
    o = pUnit:GetO();
    pUnit:SpawnCreature(1555243, x, y, z, o, 35, 0);
    pUnit:Despawn(1,0)
end
------------Hordes walking to position----------
function HordeChessPieces1(pUnit, Event)
pUnit:RemoveEvents()
pUnit:MoveTo(G1X, G1Y, Z, H)
end

function HordeChessPieces2(pUnit, Event)
pUnit:RemoveEvents()
pUnit:MoveTo(G2X, G2Y, Z, H)
end

function HordeChessPieces3(pUnit, Event)
pUnit:RemoveEvents()
pUnit:MoveTo(G3X, G3Y, Z, H)
end

function HordeChessPieces4(pUnit, Event)
pUnit:RemoveEvents()
pUnit:MoveTo(G4X, G4Y, Z, H)
end

function HordeChessPieces5(pUnit, Event)
pUnit:RemoveEvents()
pUnit:MoveTo(G5X, G5Y, Z, H)
end

function HordeChessPieces6(pUnit, Event)
pUnit:RemoveEvents()
pUnit:MoveTo(G6X, G6Y, Z, H)
end

function HordeChessPieces7(pUnit, Event)
pUnit:RemoveEvents()
pUnit:MoveTo(G7X, G7Y, Z, H)
end

function HordeChessPieces8(pUnit, Event)
pUnit:RemoveEvents()
pUnit:MoveTo(G8X, G8Y, Z, H)
end

function HordeChessPieces9(pUnit, Event)
pUnit:RemoveEvents()
pUnit:MoveTo(H1X, H1Y, Z, H)
pUnit:RegisterEvent("HordeChessPieces9SetUp", 3000, 0)
end

function HordeChessPieces9SetUp(pUnit, Event)
pUnit:RemoveEvents()
pUnit:Emote(69,5000)
pUnit:RegisterEvent("HordeChessPieces9Rook", 5000, 0)
end

function HordeChessPieces9Rook(pUnit, Event)
	pUnit:RemoveEvents()
    x = pUnit:GetX();
    y = pUnit:GetY();
    z = pUnit:GetZ();
    o = pUnit:GetO();
    pUnit:SpawnCreature(1555142, x, y, z, o, 35, 0);
    pUnit:Despawn(1,0)
end

function HordeChessPiecesRookFin(pUnit, Event)
pUnit:RemoveEvents()
pUnit:SetOrientation(H)
pUnit:SetFacing(H)
end

function HordeChessPieces10(pUnit, Event)
pUnit:RemoveEvents()
pUnit:MoveTo(H2X, H2Y, Z, H)
pUnit:RegisterEvent("HordeChessPieces10SetUp", 5000, 0)
end

function HordeChessPieces10SetUp(pUnit, Event)
pUnit:RemoveEvents()
pUnit:CastSpell(32357)
pUnit:SetModel(2289)
end

function HordeChessPieces11(pUnit, Event)
pUnit:RemoveEvents()
pUnit:MoveTo(H3X, H3Y, Z, H)
end

function HordeChessPieces12(pUnit, Event)
pUnit:RemoveEvents()
pUnit:MoveTo(H4X, H4Y, Z, H)
end

function HordeChessPieces13(pUnit, Event)
pUnit:RemoveEvents()
pUnit:MoveTo(H5X, H5Y, Z, H)
end

function HordeChessPieces14(pUnit, Event)
pUnit:RemoveEvents()
pUnit:MoveTo(H6X, H6Y, Z, H)
end

function HordeChessPieces15(pUnit, Event)
pUnit:RemoveEvents()
pUnit:MoveTo(H7X, H7Y, Z, H)
pUnit:RegisterEvent("HordeChessPieces15SetUp", 5000, 0)
end

function HordeChessPieces15SetUp(pUnit, Event)
pUnit:RemoveEvents()
pUnit:CastSpell(32357)
pUnit:SetModel(2289)
end

function HordeChessPieces16(pUnit, Event)
pUnit:RemoveEvents()
pUnit:MoveTo(H8X, H8Y, Z, H)
pUnit:RegisterEvent("HordeChessPieces16SetUp", 3000, 0)
end

function HordeChessPieces16SetUp(pUnit, Event)
pUnit:RemoveEvents()
pUnit:Emote(69,5000)
pUnit:RegisterEvent("HordeChessPieces16Rook", 5000, 0)
end

function HordeChessPieces16Rook(pUnit, Event)
	pUnit:RemoveEvents()
    x = pUnit:GetX();
    y = pUnit:GetY();
    z = pUnit:GetZ();
    o = pUnit:GetO();
    pUnit:SpawnCreature(1555143, x, y, z, o, 35, 0);
    pUnit:Despawn(1,0)
end
--------Chess Scripting Begins!------
--------Pawns move +2 forward for first time moving-----
APawnStart1 = 1
APawnStart2 = 1
APawnStart3 = 1
APawnStart4 = 1
APawnStart5 = 1
APawnStart6 = 1
APawnStart7 = 1
APawnStart8 = 1
HPawnStart1 = 1
HPawnStart2 = 1
HPawnStart3 = 1
HPawnStart4 = 1
HPawnStart5 = 1
HPawnStart6 = 1
HPawnStart7 = 1
HPawnStart8 = 1
-----------------------------------------------
function APawn1_OnGossipTalk(pUnit, event, player, pMisc)
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "Show Me Where I Can Move.", 1, 0)
   pUnit:GossipMenuAddItem(9, "Show Me Who I Can Attack!", 2, 0)
   pUnit:GossipMenuAddItem(0, "Never Mind.", 3, 0)
   pUnit:GossipSendMenu(player)
end

function APawn1_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
if (intid == 1) then
pUnit:GossipCreateMenu(99, player, 0)
   if APawn1B1 == 1 then
	 if HPieceD1 == 0 and APieceD1 == 0 then
	 pUnit:SpawnGameObject(255761, D1X, D1Y, Z, 0, 5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-1", 5, 0)
	 end
	 if HPieceC1 == 0 and APieceC1 == 0 then
	 pUnit:SpawnGameObject(255761, C1X, C1Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-1", 4, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
if APawn1B2 == 1 then
	 if HPieceD2 == 0 and APieceD2 == 0 then
	 pUnit:SpawnGameObject(255761, D2X, D2Y, Z, 0, 5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-2", 7, 0)
	 end
	 if HPieceC2 == 0 and APieceC2 == 0 then
	 pUnit:SpawnGameObject(255761, C2X, C2Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-2", 6, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn1B3 == 1 then
	 if HPieceD3 == 0 and APieceD3 == 0 then
	 pUnit:SpawnGameObject(255761, D3X, D3Y, Z, 0, 5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-3", 9, 0)
	 end
	 if HPieceC3 == 0 and APieceC3 == 0 then
	 pUnit:SpawnGameObject(255761, C3X, C3Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-3", 8, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn1B4 == 1 then
	 if HPieceD4 == 0 and APieceD4 == 0 then
	 pUnit:SpawnGameObject(255761, D4X, D4Y, Z, 0, 5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-4", 11, 0)
	 end
	 if HPieceC4 == 0 and APieceC4 == 0 then
	 pUnit:SpawnGameObject(255761, C4X, C4Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-4", 10, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn1B5 == 1 then
	 if HPieceD5 == 0 and APieceD5 == 0 then
	 pUnit:SpawnGameObject(255761, D5X, D5Y, Z, 0, 5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-5", 13, 0)
	 end
	 if HPieceC5 == 0 and APieceC5 == 0 then
	 pUnit:SpawnGameObject(255761, C5X, C5Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-5", 12, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn1B6 == 1 then
	 if HPieceD6 == 0 and APieceD6 == 0 then
	 pUnit:SpawnGameObject(255761, D6X, D6Y, Z, 0, 5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-6", 15, 0)
	 end
	 if HPieceC6 == 0 and APieceC6 == 0 then
	 pUnit:SpawnGameObject(255761, C6X, C6Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-6", 14, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn1B7 == 1 then
	 if HPieceD7 == 0 and APieceD7 == 0 then
	 pUnit:SpawnGameObject(255761, D7X, D7Y, Z, 0, 5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-7", 17, 0)
	 end
	 if HPieceC7 == 0 and APieceC7 == 0 then
	 pUnit:SpawnGameObject(255761, C7X, C7Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-7", 16, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn1B8 == 1 then
	 if HPieceD8 == 0 and APieceD8 == 0 then
	 pUnit:SpawnGameObject(255761, D8X, D8Y, Z, 0, 5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-8", 19, 0)
	 end
	 if HPieceC8 == 0 and APieceC8 == 0 then
	 pUnit:SpawnGameObject(255761, C8X, C8Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-8", 18, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
--------------Row-C------
   if APawn1C1 == 1 then
	 if HPieceD1 == 0 and APieceD1 == 0 then
	 pUnit:SpawnGameObject(255761, D1X, D1Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To D-1", 52, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
if APawn1C2 == 1 then
	 if HPieceD2 == 0 and APieceD2 == 0 then
	 pUnit:SpawnGameObject(255761, D2X, D2Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To D-2", 53, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn1C3 == 1 then
	 if HPieceD3 == 0 and APieceD3 == 0 then
	 pUnit:SpawnGameObject(255761, D3X, D3Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To D-3", 54, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn1C4 == 1 then
	 if HPieceD4 == 0 and APieceD4 == 0 then
	 pUnit:SpawnGameObject(255761, D4X, D4Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To D-4", 55, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn1C5 == 1 then
	 if HPieceD5 == 0 and APieceD5 == 0 then
	 pUnit:SpawnGameObject(255761, D5X, D5Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To D-5", 56, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn1C6 == 1 then
	 if HPieceD6 == 0 and APieceD6 == 0 then
	 pUnit:SpawnGameObject(255761, D6X, D6Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To D-6", 57, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn1C7 == 1 then
	 if HPieceD7 == 0 and APieceD7 == 0 then
	 pUnit:SpawnGameObject(255761, D7X, D7Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To D-7", 58, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn1C8 == 1 then
	 if HPieceD8 == 0 and APieceD8 == 0 then
	 pUnit:SpawnGameObject(255761, D8X, D8Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To D-8", 59, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
---Row-D------
   if APawn1D1 == 1 then
	 if HPieceE1 == 0 and APieceE1 == 0 then
	 pUnit:SpawnGameObject(255761, E1X, E1Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To E-1", 20, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
if APawn1D2 == 1 then
	 if HPieceE2 == 0 and APieceE2 == 0 then
	 pUnit:SpawnGameObject(255761, E2X, E2Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To E-2", 21, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn1D3 == 1 then
	 if HPieceE3 == 0 and APieceE3 == 0 then
	 pUnit:SpawnGameObject(255761, E3X, E3Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To E-3", 22, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn1D4 == 1 then
	 if HPieceE4 == 0 and APieceE4 == 0 then
	 pUnit:SpawnGameObject(255761, E4X, E4Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To E-4", 23, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn1D5 == 1 then
	 if HPieceE5 == 0 and APieceE5 == 0 then
	 pUnit:SpawnGameObject(255761, E5X, E5Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To E-5", 24, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn1D6 == 1 then
	 if HPieceE6 == 0 and APieceE6 == 0 then
	 pUnit:SpawnGameObject(255761, E6X, E6Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To E-6", 25, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn1D7 == 1 then
	 if HPieceE7 == 0 and APieceE7 == 0 then
	 pUnit:SpawnGameObject(255761, E7X, E7Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To E-7", 26, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn1D8 == 1 then
	 if HPieceE8 == 0 and APieceE8 == 0 then
	 pUnit:SpawnGameObject(255761, E8X, E8Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To E-8", 27, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
---------Row-E------
   if APawn1E1 == 1 then
	 if HPieceF1 == 0 and APieceF1 == 0 then
	 pUnit:SpawnGameObject(255761, F1X, F1Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To F-1", 28, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
if APawn1E2 == 1 then
	 if HPieceF2 == 0 and APieceF2 == 0 then
	 pUnit:SpawnGameObject(255761, F2X, F2Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To F-2", 29, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn1E3 == 1 then
	 if HPieceF3 == 0 and APieceF3 == 0 then
	 pUnit:SpawnGameObject(255761, F3X, F3Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To F-3", 30, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn1E4 == 1 then
	 if HPieceF4 == 0 and APieceF4 == 0 then
	 pUnit:SpawnGameObject(255761, F4X, F4Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To F-4", 31, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn1E5 == 1 then
	 if HPieceF5 == 0 and APieceF5 == 0 then
	 pUnit:SpawnGameObject(255761, F5X, F5Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To F-5", 32, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn1E6 == 1 then
	 if HPieceF6 == 0 and APieceF6 == 0 then
	 pUnit:SpawnGameObject(255761, F6X, F6Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To F-6", 33, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn1E7 == 1 then
	 if HPieceF7 == 0 and APieceF7 == 0 then
	 pUnit:SpawnGameObject(255761, F7X, F7Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To F-7", 34, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn1E8 == 1 then
	 if HPieceF8 == 0 and APieceF8 == 0 then
	 pUnit:SpawnGameObject(255761, F8X, F8Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To F-8", 35, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
--------Row-F--------
   if APawn1F1 == 1 then
	 if HPieceG1 == 0 and APieceG1 == 0 then
	 pUnit:SpawnGameObject(255761, G1X, G1Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To G-1", 36, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
if APawn1F2 == 1 then
	 if HPieceG2 == 0 and APieceG2 == 0 then
	 pUnit:SpawnGameObject(255761, G2X, G2Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To G-2", 37, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn1F3 == 1 then
	 if HPieceG3 == 0 and APieceG3 == 0 then
	 pUnit:SpawnGameObject(255761, G3X, G3Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To G-3", 38, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn1F4 == 1 then
	 if HPieceG4 == 0 and APieceG4 == 0 then
	 pUnit:SpawnGameObject(255761, G4X, G4Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To G-4", 39, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn1F5 == 1 then
	 if HPieceG5 == 0 and APieceG5 == 0 then
	 pUnit:SpawnGameObject(255761, G5X, G5Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To G-5", 40, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn1F6 == 1 then
	 if HPieceG6 == 0 and APieceG6 == 0 then
	 pUnit:SpawnGameObject(255761, G6X, G6Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To G-6", 41, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn1F7 == 1 then
	 if HPieceG7 == 0 and APieceG7 == 0 then
	 pUnit:SpawnGameObject(255761, G7X, G7Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To G-7", 42, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn1F8 == 1 then
	 if HPieceG8 == 0 and APieceG8 == 0 then
	 pUnit:SpawnGameObject(255761, G8X, G8Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To G-8", 43, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
--------Row-G------
   if APawn1G1 == 1 then
	 if HPieceH1 == 0 and APieceH1 == 0 then
	 pUnit:SpawnGameObject(255761, H1X, H1Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To H-1", 44, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
if APawn1G2 == 1 then
	 if HPieceH2 == 0 and APieceH2 == 0 then
	 pUnit:SpawnGameObject(255761, H2X, H2Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To H-2", 45, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn1G3 == 1 then
	 if HPieceH3 == 0 and APieceH3 == 0 then
	 pUnit:SpawnGameObject(255761, H3X, H3Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To H-3", 46, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn1G4 == 1 then
	 if HPieceH4 == 0 and APieceH4 == 0 then
	 pUnit:SpawnGameObject(255761, H4X, H4Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To H-4", 47, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn1G5 == 1 then
	 if HPieceH5 == 0 and APieceH5 == 0 then
	 pUnit:SpawnGameObject(255761, H5X, H5Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To H-5", 48, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn1G6 == 1 then
	 if HPieceH6 == 0 and APieceH6 == 0 then
	 pUnit:SpawnGameObject(255761, H6X, H6Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To H-6", 49, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn1G7 == 1 then
	 if HPieceH7 == 0 and APieceH7 == 0 then
	 pUnit:SpawnGameObject(255761, H7X, H7Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To H-7", 50, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn1G8 == 1 then
	 if HPieceH8 == 0 and APieceH8 == 0 then
	 pUnit:SpawnGameObject(255761, H8X, H8Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To H-8", 51, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
pUnit:GossipMenuAddItem(9, "Back to Main Page", 100, 0)
pUnit:GossipSendMenu(player)
end

if (intid == 100) then
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "Show Me Where I Can Move.", 1, 0)
   pUnit:GossipMenuAddItem(9, "Show Me Who I Can Attack!", 2, 0)
   pUnit:GossipMenuAddItem(0, "Never Mind.", 3, 0)
   pUnit:GossipSendMenu(player)
end

if (intid == 4) then
    Death_Chess_Phase = 3 ---Tells Chess Game a piece is moving.....
	APawn1B1 = 0 -----Telling Chess game where new pieces are....
	APawn1C1 = 1
	APieceB1 = 0
	APieceC1 = 1 
    pUnit:MoveTo(C1X, C1Y, Z, A)
	player:GossipComplete()
	Death_Chess_Master:RegisterEvent("AlliancetoHorde", 3000, 0)
end

if (intid == 5) then
    Death_Chess_Phase = 3 ---Tells Chess Game a piece is moving.....
	APawn1B1 = 0 -----Telling Chess game where new pieces are....
	APawn1D1 = 1
	APieceB1 = 0
	APieceD1 = 1 
    pUnit:MoveTo(D1X, D1Y, Z, A)
	player:GossipComplete()
	Death_Chess_Master:RegisterEvent("AlliancetoHorde", 3000, 0)
end

if (intid == 6) then
    Death_Chess_Phase = 3 ---Tells Chess Game a piece is moving.....
	APawn1B2 = 0 -----Telling Chess game where new pieces are....
	APawn1C2 = 1
	APieceB2 = 0
	APieceC2 = 1 
    pUnit:MoveTo(C2X, C2Y, Z, A)
	player:GossipComplete()
	Death_Chess_Master:RegisterEvent("AlliancetoHorde", 3000, 0)
end

if (intid == 7) then
    Death_Chess_Phase = 3 ---Tells Chess Game a piece is moving.....
	APawn1B2 = 0 -----Telling Chess game where new pieces are....
	APawn1D2 = 1
	APieceB2 = 0
	APieceD2 = 1 
    pUnit:MoveTo(D2X, D2Y, Z, A)
	player:GossipComplete()
	Death_Chess_Master:RegisterEvent("AlliancetoHorde", 3000, 0)
end

if (intid == 8) then
    Death_Chess_Phase = 3 ---Tells Chess Game a piece is moving.....
	APawn1B3 = 0 -----Telling Chess game where new pieces are....
	APawn1C3 = 1
	APieceB3 = 0
	APieceC3 = 1 
    pUnit:MoveTo(C3X, C3Y, Z, A)
	player:GossipComplete()
	Death_Chess_Master:RegisterEvent("AlliancetoHorde", 3000, 0)
end

if (intid == 9) then
    Death_Chess_Phase = 3 ---Tells Chess Game a piece is moving.....
	APawn1B3 = 0 -----Telling Chess game where new pieces are....
	APawn1D3 = 1
	APieceB3 = 0
	APieceD3 = 1 
    pUnit:MoveTo(D3X, D3Y, Z, A)
	player:GossipComplete()
	Death_Chess_Master:RegisterEvent("AlliancetoHorde", 3000, 0)
end

if (intid == 10) then
    Death_Chess_Phase = 3 ---Tells Chess Game a piece is moving.....
	APawn1B4 = 0 -----Telling Chess game where new pieces are....
	APawn1C4 = 1
	APieceB4 = 0
	APieceC4 = 1 
    pUnit:MoveTo(C4X, C4Y, Z, A)
	player:GossipComplete()
	Death_Chess_Master:RegisterEvent("AlliancetoHorde", 3000, 0)
end

if (intid == 11) then
    Death_Chess_Phase = 3 ---Tells Chess Game a piece is moving.....
	APawn1B4 = 0 -----Telling Chess game where new pieces are....
	APawn1D4 = 1
	APieceB4 = 0
	APieceD4 = 1 
    pUnit:MoveTo(D4X, D4Y, Z, A)
	player:GossipComplete()
	Death_Chess_Master:RegisterEvent("AlliancetoHorde", 3000, 0)
end

if (intid == 12) then
    Death_Chess_Phase = 3 ---Tells Chess Game a piece is moving.....
	APawn1B5 = 0 -----Telling Chess game where new pieces are....
	APawn1D5 = 1
	APieceB5 = 0
	APieceC5 = 1 
    pUnit:MoveTo(C5X, C5Y, Z, A)
	player:GossipComplete()
	Death_Chess_Master:RegisterEvent("AlliancetoHorde", 3000, 0)
end
-----------------
if (intid == 52) then
    Death_Chess_Phase = 3 ---Tells Chess Game a piece is moving.....
	APawn1C1 = 0 -----Telling Chess game where new pieces are....
	APawn1D1 = 1
	APieceC1 = 0
	APieceD1 = 1 
    pUnit:MoveTo(D1X, D1Y, Z, A)
	player:GossipComplete()
	Death_Chess_Master:RegisterEvent("AlliancetoHorde", 3000, 0)
end

if (intid == 53) then
    Death_Chess_Phase = 3 ---Tells Chess Game a piece is moving.....
	APawn1C1 = 0 -----Telling Chess game where new pieces are....
	APawn1D1 = 1
	APieceC1 = 0
	APieceD1 = 1 
    pUnit:MoveTo(D2X, D2Y, Z, A)
	player:GossipComplete()
	Death_Chess_Master:RegisterEvent("AlliancetoHorde", 3000, 0)
end

if (intid == 54) then
    Death_Chess_Phase = 3 ---Tells Chess Game a piece is moving.....
    pUnit:MoveTo(D3X, D3Y, Z, A)
	player:GossipComplete()
	Death_Chess_Master:RegisterEvent("AlliancetoHorde", 3000, 0)
end

if (intid == 55) then
    Death_Chess_Phase = 3 ---Tells Chess Game a piece is moving.....
    pUnit:MoveTo(D4X, D4Y, Z, A)
	player:GossipComplete()
	Death_Chess_Master:RegisterEvent("AlliancetoHorde", 3000, 0)
end

if (intid == 56) then
    Death_Chess_Phase = 3 ---Tells Chess Game a piece is moving.....
    pUnit:MoveTo(D5X, D5Y, Z, A)
	player:GossipComplete()
	Death_Chess_Master:RegisterEvent("AlliancetoHorde", 3000, 0)
end

if (intid == 57) then
    Death_Chess_Phase = 3 ---Tells Chess Game a piece is moving.....
    pUnit:MoveTo(D6X, D6Y, Z, A)
	player:GossipComplete()
	Death_Chess_Master:RegisterEvent("AlliancetoHorde", 3000, 0)
end

if (intid == 58) then
    Death_Chess_Phase = 3 ---Tells Chess Game a piece is moving.....
    pUnit:MoveTo(D4X, D4Y, Z, A)
	player:GossipComplete()
	Death_Chess_Master:RegisterEvent("AlliancetoHorde", 3000, 0)
end

if (intid == 59) then
    Death_Chess_Phase = 3 ---Tells Chess Game a piece is moving.....
    pUnit:MoveTo(C5X, C5Y, Z, A)
	player:GossipComplete()
	Death_Chess_Master:RegisterEvent("AlliancetoHorde", 3000, 0)
end

------------------
if (intid == 13) then
    Death_Chess_Phase = 3 ---Tells Chess Game a piece is moving.....
    pUnit:MoveTo(D5X, D5Y, Z, A)
	player:GossipComplete()
	Death_Chess_Master:RegisterEvent("AlliancetoHorde", 3000, 0)
end

if (intid == 14) then
    Death_Chess_Phase = 3 ---Tells Chess Game a piece is moving.....
    pUnit:MoveTo(C6X, C6Y, Z, A)
	player:GossipComplete()
	Death_Chess_Master:RegisterEvent("AlliancetoHorde", 3000, 0)
end

if (intid == 15) then
    Death_Chess_Phase = 3 ---Tells Chess Game a piece is moving.....
    pUnit:MoveTo(D6X, D6Y, Z, A)
	player:GossipComplete()
	Death_Chess_Master:RegisterEvent("AlliancetoHorde", 3000, 0)
end

if (intid == 16) then
    Death_Chess_Phase = 3 ---Tells Chess Game a piece is moving.....
    pUnit:MoveTo(C7X, C7Y, Z, A)
	player:GossipComplete()
	Death_Chess_Master:RegisterEvent("AlliancetoHorde", 3000, 0)
end

if (intid == 17) then
    Death_Chess_Phase = 3 ---Tells Chess Game a piece is moving.....
    pUnit:MoveTo(D7X, D7Y, Z, A)
	player:GossipComplete()
	Death_Chess_Master:RegisterEvent("AlliancetoHorde", 3000, 0)
end

if (intid == 18) then
    Death_Chess_Phase = 3 ---Tells Chess Game a piece is moving.....
    pUnit:MoveTo(C8X, C8Y, Z, A)
	player:GossipComplete()
	Death_Chess_Master:RegisterEvent("AlliancetoHorde", 3000, 0)
end

if (intid == 19) then
    Death_Chess_Phase = 3 ---Tells Chess Game a piece is moving.....
    pUnit:MoveTo(D8X, D8Y, Z, A)
	player:GossipComplete()
	Death_Chess_Master:RegisterEvent("AlliancetoHorde", 3000, 0)
end

if (intid == 20) then
    Death_Chess_Phase = 3 ---Tells Chess Game a piece is moving.....
    pUnit:MoveTo(E1X, E1Y, Z, A)
	player:GossipComplete()
	Death_Chess_Master:RegisterEvent("AlliancetoHorde", 3000, 0)
end

if (intid == 21) then
    Death_Chess_Phase = 3 ---Tells Chess Game a piece is moving.....
    pUnit:MoveTo(E2X, E2Y, Z, A)
	player:GossipComplete()
	Death_Chess_Master:RegisterEvent("AlliancetoHorde", 3000, 0)
end

if (intid == 22) then
    Death_Chess_Phase = 3 ---Tells Chess Game a piece is moving.....
    pUnit:MoveTo(E3X, E3Y, Z, A)
	player:GossipComplete()
	Death_Chess_Master:RegisterEvent("AlliancetoHorde", 3000, 0)
end

if (intid == 23) then
    Death_Chess_Phase = 3 ---Tells Chess Game a piece is moving.....
    pUnit:MoveTo(E4X, E4Y, Z, A)
	player:GossipComplete()
	Death_Chess_Master:RegisterEvent("AlliancetoHorde", 3000, 0)
end

if (intid == 24) then
    Death_Chess_Phase = 3 ---Tells Chess Game a piece is moving.....
    pUnit:MoveTo(E5X, E5Y, Z, A)
	player:GossipComplete()
	Death_Chess_Master:RegisterEvent("AlliancetoHorde", 3000, 0)
end

if (intid == 25) then
    Death_Chess_Phase = 3 ---Tells Chess Game a piece is moving.....
    pUnit:MoveTo(E6X, E6Y, Z, A)
	player:GossipComplete()
	Death_Chess_Master:RegisterEvent("AlliancetoHorde", 3000, 0)
end

if (intid == 26) then
    Death_Chess_Phase = 3 ---Tells Chess Game a piece is moving.....
    pUnit:MoveTo(E7X, E7Y, Z, A)
	player:GossipComplete()
	Death_Chess_Master:RegisterEvent("AlliancetoHorde", 3000, 0)
end

if (intid == 27) then
    Death_Chess_Phase = 3 ---Tells Chess Game a piece is moving.....
    pUnit:MoveTo(E8X, E8Y, Z, A)
	player:GossipComplete()
	Death_Chess_Master:RegisterEvent("AlliancetoHorde", 3000, 0)
end

if (intid == 28) then
    Death_Chess_Phase = 3 ---Tells Chess Game a piece is moving.....
    pUnit:MoveTo(F1X, F1Y, Z, A)
	player:GossipComplete()
	Death_Chess_Master:RegisterEvent("AlliancetoHorde", 3000, 0)
end

if (intid == 29) then
    Death_Chess_Phase = 3 ---Tells Chess Game a piece is moving.....
    pUnit:MoveTo(F2X, F2Y, Z, A)
	player:GossipComplete()
	Death_Chess_Master:RegisterEvent("AlliancetoHorde", 3000, 0)
end

if (intid == 30) then
    Death_Chess_Phase = 3 ---Tells Chess Game a piece is moving.....
    pUnit:MoveTo(F3X, F3Y, Z, A)
	player:GossipComplete()
	Death_Chess_Master:RegisterEvent("AlliancetoHorde", 3000, 0)
end

if (intid == 31) then
    Death_Chess_Phase = 3 ---Tells Chess Game a piece is moving.....
    pUnit:MoveTo(F4X, F4Y, Z, A)
	player:GossipComplete()
	Death_Chess_Master:RegisterEvent("AlliancetoHorde", 3000, 0)
end

if (intid == 32) then
    Death_Chess_Phase = 3 ---Tells Chess Game a piece is moving.....
    pUnit:MoveTo(F5X, F5Y, Z, A)
	player:GossipComplete()
	Death_Chess_Master:RegisterEvent("AlliancetoHorde", 3000, 0)
end

if (intid == 33) then
    Death_Chess_Phase = 3 ---Tells Chess Game a piece is moving.....
    pUnit:MoveTo(F6X, F6Y, Z, A)
	player:GossipComplete()
	Death_Chess_Master:RegisterEvent("AlliancetoHorde", 3000, 0)
end

if (intid == 34) then
    Death_Chess_Phase = 3 ---Tells Chess Game a piece is moving.....
    pUnit:MoveTo(F7X, F7Y, Z, A)
	player:GossipComplete()
	Death_Chess_Master:RegisterEvent("AlliancetoHorde", 3000, 0)
end

if (intid == 35) then
    Death_Chess_Phase = 3 ---Tells Chess Game a piece is moving.....
    pUnit:MoveTo(F8X, F8Y, Z, A)
	player:GossipComplete()
	Death_Chess_Master:RegisterEvent("AlliancetoHorde", 3000, 0)
end

if (intid == 36) then
    Death_Chess_Phase = 3 ---Tells Chess Game a piece is moving.....
    pUnit:MoveTo(G1X, G1Y, Z, A)
	player:GossipComplete()
	Death_Chess_Master:RegisterEvent("AlliancetoHorde", 3000, 0)
end

if (intid == 37) then
    Death_Chess_Phase = 3 ---Tells Chess Game a piece is moving.....
    pUnit:MoveTo(G2X, G2Y, Z, A)
	player:GossipComplete()
	Death_Chess_Master:RegisterEvent("AlliancetoHorde", 3000, 0)
end

if (intid == 38) then
    Death_Chess_Phase = 3 ---Tells Chess Game a piece is moving.....
    pUnit:MoveTo(G3X, G3Y, Z, A)
	player:GossipComplete()
	Death_Chess_Master:RegisterEvent("AlliancetoHorde", 3000, 0)
end

if (intid == 39) then
    Death_Chess_Phase = 3 ---Tells Chess Game a piece is moving.....
    pUnit:MoveTo(G4X, G4Y, Z, A)
	player:GossipComplete()
	Death_Chess_Master:RegisterEvent("AlliancetoHorde", 3000, 0)
end

if (intid == 40) then
    Death_Chess_Phase = 3 ---Tells Chess Game a piece is moving.....
    pUnit:MoveTo(G5X, G5Y, Z, A)
	player:GossipComplete()
	Death_Chess_Master:RegisterEvent("AlliancetoHorde", 3000, 0)
end

if (intid == 41) then
    Death_Chess_Phase = 3 ---Tells Chess Game a piece is moving.....
    pUnit:MoveTo(G6X, G6Y, Z, A)
	player:GossipComplete()
	Death_Chess_Master:RegisterEvent("AlliancetoHorde", 3000, 0)
end

if (intid == 42) then
    Death_Chess_Phase = 3 ---Tells Chess Game a piece is moving.....
    pUnit:MoveTo(G7X, G7Y, Z, A)
	player:GossipComplete()
	Death_Chess_Master:RegisterEvent("AlliancetoHorde", 3000, 0)
end

if (intid == 43) then
    Death_Chess_Phase = 3 ---Tells Chess Game a piece is moving.....
    pUnit:MoveTo(G8X, G8Y, Z, A)
	player:GossipComplete()
	Death_Chess_Master:RegisterEvent("AlliancetoHorde", 3000, 0)
end

if (intid == 44) then
    Death_Chess_Phase = 3 ---Tells Chess Game a piece is moving.....
    pUnit:MoveTo(H1X, H1Y, Z, A)
	player:GossipComplete()
	Death_Chess_Master:RegisterEvent("AlliancetoHorde", 3000, 0)
end

if (intid == 45) then
    Death_Chess_Phase = 3 ---Tells Chess Game a piece is moving.....
    pUnit:MoveTo(H2X, H2Y, Z, A)
	player:GossipComplete()
	Death_Chess_Master:RegisterEvent("AlliancetoHorde", 3000, 0)
end

if (intid == 46) then
    Death_Chess_Phase = 3 ---Tells Chess Game a piece is moving.....
    pUnit:MoveTo(H3X, H3Y, Z, A)
	player:GossipComplete()
	Death_Chess_Master:RegisterEvent("AlliancetoHorde", 3000, 0)
end

if (intid == 47) then
    Death_Chess_Phase = 3 ---Tells Chess Game a piece is moving.....
    pUnit:MoveTo(H4X, H4Y, Z, A)
	player:GossipComplete()
	Death_Chess_Master:RegisterEvent("AlliancetoHorde", 3000, 0)
end

if (intid == 48) then
    Death_Chess_Phase = 3 ---Tells Chess Game a piece is moving.....
    pUnit:MoveTo(H5X, H5Y, Z, A)
	player:GossipComplete()
	Death_Chess_Master:RegisterEvent("AlliancetoHorde", 3000, 0)
end

if (intid == 49) then
    Death_Chess_Phase = 3 ---Tells Chess Game a piece is moving.....
    pUnit:MoveTo(H6X, H6Y, Z, A)
	player:GossipComplete()
	Death_Chess_Master:RegisterEvent("AlliancetoHorde", 3000, 0)
end

if (intid == 50) then
    Death_Chess_Phase = 3 ---Tells Chess Game a piece is moving.....
    pUnit:MoveTo(H7X, H7Y, Z, A)
	player:GossipComplete()
	Death_Chess_Master:RegisterEvent("AlliancetoHorde", 3000, 0)
end

if (intid == 51) then
    Death_Chess_Phase = 3 ---Tells Chess Game a piece is moving.....
    pUnit:MoveTo(H8X, H8Y, Z, A)
	player:GossipComplete()
	Death_Chess_Master:RegisterEvent("AlliancetoHorde", 3000, 0)
end
-------------Attacking Page------------
if (intid == 2) then
pUnit:GossipCreateMenu(99, player, 0)
if APawn1B1 == 1 then
      if HPieceC2 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-2]", 100, 0)
	  end
end
if APawn1B2 == 1 then
      if HPieceC3 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-3]", 101, 0)
	  end
	  if HPieceC1 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-1]", 102, 0)
      end
end
if APawn1B3 == 1 then
      if HPieceC4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-4]", 103, 0)
	  end
	  if HPieceC2 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-2]", 104, 0)
      end
end
if APawn1B4 == 1 then
      if HPieceC5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-5]", 105, 0)
	  end
	  if HPieceC2 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-3]", 106, 0)
      end
end
if APawn1B5 == 1 then
      if HPieceC6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-6]", 107, 0)
	  end
	  if HPieceC4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-4]", 108, 0)
      end
end
if APawn1B6 == 1 then
      if HPieceC7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-7]", 109, 0)
	  end
	  if HPieceC5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-5]", 110, 0)
      end
end
if APawn1B7 == 1 then
if HPieceC8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-8]", 111, 0)
	  end
	  if HPieceC6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-6]", 112, 0)
      end
end
if APawn1B8 == 1 then
	  if HPieceC7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-7]", 113, 0)
      end
end
if APawn1C1 == 1 then
      if HPieceD2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-2]", 114, 0)
	  end
end
if APawn1C2 == 1 then
      if HPieceD1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-1]", 115, 0)
	  end
	  if HPieceD3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-3]", 116, 0)
	  end
end
if APawn1C3 == 1 then
      if HPieceD2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-2]", 117, 0)
	  end
	  if HPieceD4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-4]", 118, 0)
	  end
end
if APawn1C4 == 1 then
         if HPieceD5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-5]", 119, 0)
	  end
	  if HPieceD3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-3]", 120, 0)
	  end
end
  
if APawn1C5 == 1 then
      if HPieceD6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-6]", 121, 0)
	  end
	  if HPieceD4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-4]", 122, 0)
      end
end
if APawn1C6 == 1 then
      if HPieceD7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-7]", 123, 0)
	  end
	  if HPieceD5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-5]", 124, 0)
      end
end
if APawn1C7 == 1 then
if HPieceC8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-8]", 125, 0)
	  end
	  if HPieceD6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-6]", 126, 0)
      end
end
if APawn1C8 == 1 then
	  if HPieceC7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-7]", 127, 0)
      end
end
------------------
if APawn1D1 == 1 then
      if HPieceE2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-2]", 128, 0)
	  end
end
if APawn1D2 == 1 then
      if HPieceE1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-1]", 129, 0)
	  end
	  if HPieceE3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-3]", 130, 0)
	  end
end
if APawn1D3 == 1 then
      if HPieceE2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-2]", 131, 0)
	  end
	  if HPieceE4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-4]", 132, 0)
	  end
end
if APawn1D4 == 1 then
         if HPieceE5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-5]", 133, 0)
	  end
	  if HPieceE3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-3]", 134, 0)
	  end
end
  
if APawn1D5 == 1 then
      if HPieceE6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-6]", 135, 0)
	  end
	  if HPieceE4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-4]", 136, 0)
      end
end
if APawn1D6 == 1 then
      if HPieceE7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-7]", 137, 0)
	  end
	  if HPieceE5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-5]", 138, 0)
      end
end
if APawn1D7 == 1 then
if HPieceE8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-8]", 139, 0)
	  end
	  if HPieceE6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-6]", 140, 0)
      end
end
if APawn1D8 == 1 then
	  if HPieceE7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-7]", 141, 0)
      end
end
-----------------------------
if APawn1E1 == 1 then
      if HPieceF2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-2]", 142, 0)
	  end
end
if APawn1E2 == 1 then
      if HPieceF1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-1]", 143, 0)
	  end
	  if HPieceF3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-3]", 144, 0)
	  end
end
if APawn1E3 == 1 then
      if HPieceF2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-2]", 145, 0)
	  end
	  if HPieceF4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-4]", 146, 0)
	  end
end
if APawn1E4 == 1 then
         if HPieceF5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-5]", 147, 0)
	  end
	  if HPieceF3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-3]", 148, 0)
	  end
end
  
if APawn1E5 == 1 then
      if HPieceF6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-6]", 149, 0)
	  end
	  if HPieceF4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-4]", 150, 0)
      end
end
if APawn1E6 == 1 then
      if HPieceF7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-7]", 151, 0)
	  end
	  if HPieceF5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-5]", 152, 0)
      end
end
if APawn1E7 == 1 then
if HPieceF8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-8]", 153, 0)
	  end
	  if HPieceF6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-6]", 154, 0)
      end
end
if APawn1E8 == 1 then
	  if HPieceF7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-7]", 155, 0)
      end 
end
---------------------
if APawn1F1 == 1 then
      if HPieceG2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-2]", 156, 0)
	  end
end
if APawn1F2 == 1 then
      if HPieceG1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-1]", 157, 0)
	  end
	  if HPieceG3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-3]", 158, 0)
	  end
end
if APawn1F3 == 1 then
      if HPieceG2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-2]", 159, 0)
	  end
	  if HPieceG4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-4]", 160, 0)
	  end
end
if APawn1F4 == 1 then
         if HPieceG5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-5]", 161, 0)
	  end
	  if HPieceG3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-3]", 162, 0)
	  end
end
  
if APawn1F5 == 1 then
      if HPieceG6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-6]", 163, 0)
	  end
	  if HPieceG4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-4]", 164, 0)
      end
end
if APawn1F6 == 1 then
      if HPieceG7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-7]", 165, 0)
	  end
	  if HPieceG5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-5]", 166, 0)
      end
end
if APawn1F7 == 1 then
if HPieceG8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-8]", 167, 0)
	  end
	  if HPieceG6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-6]", 168, 0)
      end
end
if APawn1F8 == 1 then
	  if HPieceG7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-7]", 169, 0)
      end
end
------------------------------
  if APawn1G1 == 1 then
      if HPieceH2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-2]", 170, 0)
	  end
end
if APawn1G2 == 1 then
      if HPieceH1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-1]", 171, 0)
	  end
	  if HPieceH3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-3]", 172, 0)
	  end
end
if APawn1G3 == 1 then
      if HPieceH2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-2]", 173, 0)
	  end
	  if HPieceH4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-4]", 174, 0)
	  end
end
if APawn1G4 == 1 then
         if HPieceH5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-5]", 175, 0)
	  end
	  if HPieceH3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-3]", 176, 0)
	  end
end
  
if APawn1G5 == 1 then
      if HPieceH6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-6]", 177, 0)
	  end
	  if HPieceH4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-4]", 178, 0)
      end
end
if APawn1G6 == 1 then
      if HPieceH7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-7]", 179, 0)
	  end
	  if HPieceH5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-5]", 180, 0)
      end
end
if APawn1G7 == 1 then
if HPieceH8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-8]", 181, 0)
	  end
	  if HPieceH6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-6]", 182, 0)
      end
end
if APawn1G8 == 1 then
	  if HPieceH7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-7]", 183, 0)
      end
end
----------------------
if APawn1H1 == 1 then
end
if APawn1H2 == 1 then
end
if APawn1H3 == 1 then
end
if APawn1H4 == 1 then
end
if APawn1H5 == 1 then
end
if APawn1H6 == 1 then
end
if APawn1H7 == 1 then
end
if APawn1H8 == 1 then
end
-----------------------
pUnit:GossipSendMenu(player)
end
end
-------------Alliance Pawn 2----------
function APawn2_OnGossipTalk(pUnit, event, player, pMisc)
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "Show Me Where I Can Move.", 1, 0)
   pUnit:GossipMenuAddItem(9, "Show Me Who I Can Attack!", 2, 0)
   pUnit:GossipMenuAddItem(0, "Never Mind.", 3, 0)
   pUnit:GossipSendMenu(player)
end

function APawn2_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
if (intid == 1) then
pUnit:GossipCreateMenu(99, player, 0)
   if APawn2B1 == 1 then
	 if HPieceD1 == 0 and APieceD1 == 0 then
	 pUnit:SpawnGameObject(255761, D1X, D1Y, Z, 0, 5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-1", 5, 0)
	 end
	 if HPieceC1 == 0 and APieceC1 == 0 then
	 pUnit:SpawnGameObject(255761, C1X, C1X, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-1", 4, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
if APawn2B2 == 1 then
	 if HPieceD2 == 0 and APieceD2 == 0 then
	 pUnit:SpawnGameObject(255761, D2X, D2Y, Z, 0, 5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-2", 7, 0)
	 end
	 if HPieceC2 == 0 and APieceC2 == 0 then
	 pUnit:SpawnGameObject(255761, C2X, C2Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-2", 6, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn2B3 == 1 then
	 if HPieceD3 == 0 and APieceD3 == 0 then
	 pUnit:SpawnGameObject(255761, D3X, D3Y, Z, 0, 5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-3", 9, 0)
	 end
	 if HPieceC3 == 0 and APieceC3 == 0 then
	 pUnit:SpawnGameObject(255761, C3X, C3Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-3", 8, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn2B4 == 1 then
	 if HPieceD4 == 0 and APieceD4 == 0 then
	 pUnit:SpawnGameObject(255761, D4X, D4Y, Z, 0, 5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-4", 11, 0)
	 end
	 if HPieceC4 == 0 and APieceC4 == 0 then
	 pUnit:SpawnGameObject(255761, C4X, C4Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-4", 10, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn2B5 == 1 then
	 if HPieceD5 == 0 and APieceD5 == 0 then
	 pUnit:SpawnGameObject(255761, D5X, D5Y, Z, 0, 5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-5", 13, 0)
	 end
	 if HPieceC5 == 0 and APieceC5 == 0 then
	 pUnit:SpawnGameObject(255761, C5X, C5Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-5", 12, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn2B6 == 1 then
	 if HPieceD6 == 0 and APieceD6 == 0 then
	 pUnit:SpawnGameObject(255761, D6X, D6Y, Z, 0, 5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-6", 15, 0)
	 end
	 if HPieceC6 == 0 and APieceC6 == 0 then
	 pUnit:SpawnGameObject(255761, C6X, C6Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-6", 14, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn2B7 == 1 then
	 if HPieceD7 == 0 and APieceD7 == 0 then
	 pUnit:SpawnGameObject(255761, D7X, D7Y, Z, 0, 5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-7", 17, 0)
	 end
	 if HPieceC7 == 0 and APieceC7 == 0 then
	 pUnit:SpawnGameObject(255761, C7X, C7Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-7", 16, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn2B8 == 1 then
	 if HPieceD8 == 0 and APieceD8 == 0 then
	 pUnit:SpawnGameObject(255761, D8X, D8Y, Z, 0, 5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-8", 19, 0)
	 end
	 if HPieceC8 == 0 and APieceC8 == 0 then
	 pUnit:SpawnGameObject(255761, C8X, C8Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-8", 18, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
pUnit:GossipSendMenu(player)
end
-------------Attacking Page------------
if (intid == 2) then
pUnit:GossipCreateMenu(99, player, 0)
if APawn2B1 == 1 then
      if HPieceC1 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-2]", 100, 0)
	  end
end
if APawn2B2 == 1 then
      if HPieceC3 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-3]", 100, 0)
	  end
	  if HPieceC1 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-1]", 100, 0)
      end
end
if APawn2B3 == 1 then
      if HPieceC4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-4]", 100, 0)
	  end
	  if HPieceC2 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-2]", 100, 0)
      end
end
if APawn2B4 == 1 then
      if HPieceC5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-5]", 100, 0)
	  end
	  if HPieceC2 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-3]", 100, 0)
      end
end
if APawn2B5 == 1 then
      if HPieceC6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-6]", 100, 0)
	  end
	  if HPieceC4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-4]", 100, 0)
      end
end
if APawn2B6 == 1 then
      if HPieceC7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-7]", 100, 0)
	  end
	  if HPieceC5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-5]", 100, 0)
      end
end
if APawn2B7 == 1 then
if HPieceC8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-8]", 100, 0)
	  end
	  if HPieceC6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-6]", 100, 0)
      end
end
if APawn2B8 == 1 then
	  if HPieceC7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-7]", 100, 0)
      end
end
if APawn2C1 == 1 then
      if HPieceD2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-2]", 100, 0)
	  end
end
if APawn2C2 == 1 then
      if HPieceD1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-1]", 100, 0)
	  end
	  if HPieceD3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-3]", 100, 0)
	  end
end
if APawn2C3 == 1 then
      if HPieceD2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-2]", 100, 0)
	  end
	  if HPieceD4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-4]", 100, 0)
	  end
end
if APawn2C4 == 1 then
         if HPieceD5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-5]", 100, 0)
	  end
	  if HPieceD3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-3]", 100, 0)
	  end
end
  
if APawn2C5 == 1 then
      if HPieceD6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-6]", 100, 0)
	  end
	  if HPieceD4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-4]", 100, 0)
      end
end
if APawn2C6 == 1 then
      if HPieceD7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-7]", 100, 0)
	  end
	  if HPieceD5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-5]", 100, 0)
      end
end
if APawn2C7 == 1 then
if HPieceC8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-8]", 100, 0)
	  end
	  if HPieceD6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-6]", 100, 0)
      end
end
if APawn2C8 == 1 then
	  if HPieceC7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-7]", 100, 0)
      end
end
------------------
if APawn2D1 == 1 then
      if HPieceE2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-2]", 100, 0)
	  end
end
if APawn2D2 == 1 then
      if HPieceE1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-1]", 100, 0)
	  end
	  if HPieceE3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-3]", 100, 0)
	  end
end
if APawn2D3 == 1 then
      if HPieceE2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-2]", 100, 0)
	  end
	  if HPieceE4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-4]", 100, 0)
	  end
end
if APawn2D4 == 1 then
         if HPieceE5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-5]", 100, 0)
	  end
	  if HPieceE3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-3]", 100, 0)
	  end
end
  
if APawn2D5 == 1 then
      if HPieceE6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-6]", 100, 0)
	  end
	  if HPieceE4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-4]", 100, 0)
      end
end
if APawn2D6 == 1 then
      if HPieceE7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-7]", 100, 0)
	  end
	  if HPieceE5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-5]", 100, 0)
      end
end
if APawn2D7 == 1 then
if HPieceE8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-8]", 100, 0)
	  end
	  if HPieceE6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-6]", 100, 0)
      end
end
if APawn2D8 == 1 then
	  if HPieceE7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-7]", 100, 0)
      end
end
-----------------------------
if APawn2E1 == 1 then
      if HPieceF2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-2]", 100, 0)
	  end
end
if APawn2E2 == 1 then
      if HPieceF1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-1]", 100, 0)
	  end
	  if HPieceF3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-3]", 100, 0)
	  end
end
if APawn2E3 == 1 then
      if HPieceF2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-2]", 100, 0)
	  end
	  if HPieceF4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-4]", 100, 0)
	  end
end
if APawn2E4 == 1 then
         if HPieceF5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-5]", 100, 0)
	  end
	  if HPieceF3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-3]", 100, 0)
	  end
end
  
if APawn2E5 == 1 then
      if HPieceF6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-6]", 100, 0)
	  end
	  if HPieceF4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-4]", 100, 0)
      end
end
if APawn2E6 == 1 then
      if HPieceF7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-7]", 100, 0)
	  end
	  if HPieceF5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-5]", 100, 0)
      end
end
if APawn2E7 == 1 then
if HPieceF8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-8]", 100, 0)
	  end
	  if HPieceF6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-6]", 100, 0)
      end
end
if APawn2E8 == 1 then
	  if HPieceF7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-7]", 100, 0)
      end 
end
---------------------
if APawn2F1 == 1 then
      if HPieceG2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-2]", 100, 0)
	  end
end
if APawn2F2 == 1 then
      if HPieceG1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-1]", 100, 0)
	  end
	  if HPieceG3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-3]", 100, 0)
	  end
end
if APawn2F3 == 1 then
      if HPieceG2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-2]", 100, 0)
	  end
	  if HPieceG4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-4]", 100, 0)
	  end
end
if APawn2F4 == 1 then
         if HPieceG5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-5]", 100, 0)
	  end
	  if HPieceG3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-3]", 100, 0)
	  end
end
  
if APawn2F5 == 1 then
      if HPieceG6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-6]", 100, 0)
	  end
	  if HPieceG4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-4]", 100, 0)
      end
end
if APawn2F6 == 1 then
      if HPieceG7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-7]", 100, 0)
	  end
	  if HPieceG5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-5]", 100, 0)
      end
end
if APawn2F7 == 1 then
if HPieceG8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-8]", 100, 0)
	  end
	  if HPieceG6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-6]", 100, 0)
      end
end
if APawn2F8 == 1 then
	  if HPieceG7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-7]", 100, 0)
      end
end
------------------------------
  if APawn2G1 == 1 then
      if HPieceH2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-2]", 100, 0)
	  end
end
if APawn2G2 == 1 then
      if HPieceH1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-1]", 100, 0)
	  end
	  if HPieceH3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-3]", 100, 0)
	  end
end
if APawn2G3 == 1 then
      if HPieceH2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-2]", 100, 0)
	  end
	  if HPieceH4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-4]", 100, 0)
	  end
end
if APawn2G4 == 1 then
         if HPieceH5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-5]", 100, 0)
	  end
	  if HPieceH3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-3]", 100, 0)
	  end
end
  
if APawn2G5 == 1 then
      if HPieceH6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-6]", 100, 0)
	  end
	  if HPieceH4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-4]", 100, 0)
      end
end
if APawn2G6 == 1 then
      if HPieceH7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-7]", 100, 0)
	  end
	  if HPieceH5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-5]", 100, 0)
      end
end
if APawn2G7 == 1 then
if HPieceH8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-8]", 100, 0)
	  end
	  if HPieceH6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-6]", 100, 0)
      end
end
if APawn2G8 == 1 then
	  if HPieceH7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-7]", 100, 0)
      end
end
----------------------
if APawn2H1 == 1 then
end
if APawn2H2 == 1 then
end
if APawn2H3 == 1 then
end
if APawn2H4 == 1 then
end
if APawn2H5 == 1 then
end
if APawn2H6 == 1 then
end
if APawn2H7 == 1 then
end
if APawn2H8 == 1 then
end
-----------------------
pUnit:GossipSendMenu(player)
end
end
--------Alliance Pawn 3----------
function APawn3_OnGossipTalk(pUnit, event, player, pMisc)
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "Show Me Where I Can Move.", 1, 0)
   pUnit:GossipMenuAddItem(9, "Show Me Who I Can Attack!", 2, 0)
   pUnit:GossipMenuAddItem(0, "Never Mind.", 3, 0)
   pUnit:GossipSendMenu(player)
end

function APawn3_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
if (intid == 1) then
pUnit:GossipCreateMenu(99, player, 0)
   if APawn3B1 == 1 then
	 if HPieceD1 == 0 and APieceD1 == 0 then
	 pUnit:SpawnGameObject(255761, D1X, D1Y, Z, 0,5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-1", 5, 0)
	 end
	 if HPieceC1 == 0 and APieceC1 == 0 then
	 pUnit:SpawnGameObject(255761, C1X, C1X, Z, 0,5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-1", 4, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
if APawn3B2 == 1 then
	 if HPieceD2 == 0 and APieceD2 == 0 then
	 pUnit:SpawnGameObject(255761, D2X, D2Y, Z, 0,5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-2", 7, 0)
	 end
	 if HPieceC2 == 0 and APieceC2 == 0 then
	 pUnit:SpawnGameObject(255761, C2X, C2Y, Z, 0,5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-2", 6, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn3B3 == 1 then
	 if HPieceD3 == 0 and APieceD3 == 0 then
	 pUnit:SpawnGameObject(255761, D3X, D3Y, Z, 0,5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-3", 9, 0)
	 end
	 if HPieceC3 == 0 and APieceC3 == 0 then
	 pUnit:SpawnGameObject(255761, C3X, C3Y, Z, 0,5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-3", 8, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn3B4 == 1 then
	 if HPieceD4 == 0 and APieceD4 == 0 then
	 pUnit:SpawnGameObject(255761, D4X, D4Y, Z, 0,5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-4", 10, 0)
	 end
	 if HPieceC4 == 0 and APieceC4 == 0 then
	 pUnit:SpawnGameObject(255761, C4X, C4Y, Z, 0,5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-4", 11, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn3B5 == 1 then
	 if HPieceD5 == 0 and APieceD5 == 0 then
	 pUnit:SpawnGameObject(255761, D5X, D5Y, Z, 0,5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-5", 13, 0)
	 end
	 if HPieceC5 == 0 and APieceC5 == 0 then
	 pUnit:SpawnGameObject(255761, C5X, C5Y, Z, 0,5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-5", 12, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn3B6 == 1 then
	 if HPieceD6 == 0 and APieceD6 == 0 then
	 pUnit:SpawnGameObject(255761, D6X, D6Y, Z, 0,5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-6", 15, 0)
	 end
	 if HPieceC6 == 0 and APieceC6 == 0 then
	 pUnit:SpawnGameObject(255761, C6X, C6Y, Z, 0,5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-6", 14, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn3B7 == 1 then
	 if HPieceD7 == 0 and APieceD7 == 0 then
	 pUnit:SpawnGameObject(255761, D7X, D7Y, Z, 0,5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-7", 17, 0)
	 end
	 if HPieceC7 == 0 and APieceC7 == 0 then
	 pUnit:SpawnGameObject(255761, C7X, C7Y, Z, 0,5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-7", 16, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn3B8 == 1 then
	 if HPieceD8 == 0 and APieceD8 == 0 then
	 pUnit:SpawnGameObject(255761, D8X, D8Y, Z, 0,5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-8", 19, 0)
	 end
	 if HPieceC8 == 0 and APieceC8 == 0 then
	 pUnit:SpawnGameObject(255761, C8X, C8Y, Z, 0,5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-8", 18, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
pUnit:GossipSendMenu(player)
end
-------------Attacking Page------------
if (intid == 2) then
pUnit:GossipCreateMenu(99, player, 0)
if APawn3B1 == 1 then
      if HPieceC1 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-2]", 100, 0)
	  end
end
if APawn3B2 == 1 then
      if HPieceC3 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-3]", 100, 0)
	  end
	  if HPieceC1 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-1]", 100, 0)
      end
end
if APawn3B3 == 1 then
      if HPieceC4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-4]", 100, 0)
	  end
	  if HPieceC2 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-2]", 100, 0)
      end
end
if APawn3B4 == 1 then
      if HPieceC5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-5]", 100, 0)
	  end
	  if HPieceC2 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-3]", 100, 0)
      end
end
if APawn3B5 == 1 then
      if HPieceC6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-6]", 100, 0)
	  end
	  if HPieceC4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-4]", 100, 0)
      end
end
if APawn3B6 == 1 then
      if HPieceC7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-7]", 100, 0)
	  end
	  if HPieceC5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-5]", 100, 0)
      end
end
if APawn3B7 == 1 then
if HPieceC8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-8]", 100, 0)
	  end
	  if HPieceC6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-6]", 100, 0)
      end
end
if APawn3B8 == 1 then
	  if HPieceC7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-7]", 100, 0)
      end
end
if APawn3C1 == 1 then
      if HPieceD2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-2]", 100, 0)
	  end
end
if APawn3C2 == 1 then
      if HPieceD1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-1]", 100, 0)
	  end
	  if HPieceD3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-3]", 100, 0)
	  end
end
if APawn3C3 == 1 then
      if HPieceD2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-2]", 100, 0)
	  end
	  if HPieceD4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-4]", 100, 0)
	  end
end
if APawn3C4 == 1 then
         if HPieceD5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-5]", 100, 0)
	  end
	  if HPieceD3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-3]", 100, 0)
	  end
end
  
if APawn3C5 == 1 then
      if HPieceD6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-6]", 100, 0)
	  end
	  if HPieceD4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-4]", 100, 0)
      end
end
if APawn3C6 == 1 then
      if HPieceD7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-7]", 100, 0)
	  end
	  if HPieceD5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-5]", 100, 0)
      end
end
if APawn3C7 == 1 then
if HPieceC8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-8]", 100, 0)
	  end
	  if HPieceD6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-6]", 100, 0)
      end
end
if APawn3C8 == 1 then
	  if HPieceC7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-7]", 100, 0)
      end
end
------------------
if APawn3D1 == 1 then
      if HPieceE2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-2]", 100, 0)
	  end
end
if APawn3D2 == 1 then
      if HPieceE1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-1]", 100, 0)
	  end
	  if HPieceE3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-3]", 100, 0)
	  end
end
if APawn3D3 == 1 then
      if HPieceE2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-2]", 100, 0)
	  end
	  if HPieceE4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-4]", 100, 0)
	  end
end
if APawn3D4 == 1 then
         if HPieceE5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-5]", 100, 0)
	  end
	  if HPieceE3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-3]", 100, 0)
	  end
end
  
if APawn3D5 == 1 then
      if HPieceE6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-6]", 100, 0)
	  end
	  if HPieceE4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-4]", 100, 0)
      end
end
if APawn3D6 == 1 then
      if HPieceE7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-7]", 100, 0)
	  end
	  if HPieceE5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-5]", 100, 0)
      end
end
if APawn3D7 == 1 then
if HPieceE8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-8]", 100, 0)
	  end
	  if HPieceE6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-6]", 100, 0)
      end
end
if APawn3D8 == 1 then
	  if HPieceE7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-7]", 100, 0)
      end
end
-----------------------------
if APawn3E1 == 1 then
      if HPieceF2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-2]", 100, 0)
	  end
end
if APawn3E2 == 1 then
      if HPieceF1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-1]", 100, 0)
	  end
	  if HPieceF3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-3]", 100, 0)
	  end
end
if APawn3E3 == 1 then
      if HPieceF2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-2]", 100, 0)
	  end
	  if HPieceF4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-4]", 100, 0)
	  end
end
if APawn3E4 == 1 then
         if HPieceF5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-5]", 100, 0)
	  end
	  if HPieceF3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-3]", 100, 0)
	  end
end
  
if APawn3E5 == 1 then
      if HPieceF6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-6]", 100, 0)
	  end
	  if HPieceF4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-4]", 100, 0)
      end
end
if APawn3E6 == 1 then
      if HPieceF7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-7]", 100, 0)
	  end
	  if HPieceF5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-5]", 100, 0)
      end
end
if APawn3E7 == 1 then
if HPieceF8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-8]", 100, 0)
	  end
	  if HPieceF6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-6]", 100, 0)
      end
end
if APawn3E8 == 1 then
	  if HPieceF7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-7]", 100, 0)
      end 
end
---------------------
if APawn3F1 == 1 then
      if HPieceG2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-2]", 100, 0)
	  end
end
if APawn3F2 == 1 then
      if HPieceG1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-1]", 100, 0)
	  end
	  if HPieceG3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-3]", 100, 0)
	  end
end
if APawn3F3 == 1 then
      if HPieceG2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-2]", 100, 0)
	  end
	  if HPieceG4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-4]", 100, 0)
	  end
end
if APawn3F4 == 1 then
         if HPieceG5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-5]", 100, 0)
	  end
	  if HPieceG3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-3]", 100, 0)
	  end
end
  
if APawn3F5 == 1 then
      if HPieceG6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-6]", 100, 0)
	  end
	  if HPieceG4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-4]", 100, 0)
      end
end
if APawn3F6 == 1 then
      if HPieceG7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-7]", 100, 0)
	  end
	  if HPieceG5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-5]", 100, 0)
      end
end
if APawn3F7 == 1 then
if HPieceG8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-8]", 100, 0)
	  end
	  if HPieceG6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-6]", 100, 0)
      end
end
if APawn3F8 == 1 then
	  if HPieceG7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-7]", 100, 0)
      end
end
------------------------------
  if APawn3G1 == 1 then
      if HPieceH2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-2]", 100, 0)
	  end
end
if APawn3G2 == 1 then
      if HPieceH1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-1]", 100, 0)
	  end
	  if HPieceH3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-3]", 100, 0)
	  end
end
if APawn3G3 == 1 then
      if HPieceH2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-2]", 100, 0)
	  end
	  if HPieceH4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-4]", 100, 0)
	  end
end
if APawn3G4 == 1 then
         if HPieceH5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-5]", 100, 0)
	  end
	  if HPieceH3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-3]", 100, 0)
	  end
end
  
if APawn3G5 == 1 then
      if HPieceH6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-6]", 100, 0)
	  end
	  if HPieceH4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-4]", 100, 0)
      end
end
if APawn3G6 == 1 then
      if HPieceH7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-7]", 100, 0)
	  end
	  if HPieceH5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-5]", 100, 0)
      end
end
if APawn3G7 == 1 then
if HPieceH8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-8]", 100, 0)
	  end
	  if HPieceH6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-6]", 100, 0)
      end
end
if APawn3G8 == 1 then
	  if HPieceH7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-7]", 100, 0)
      end
end
----------------------
if APawn3H1 == 1 then
end
if APawn3H2 == 1 then
end
if APawn3H3 == 1 then
end
if APawn3H4 == 1 then
end
if APawn3H5 == 1 then
end
if APawn3H6 == 1 then
end
if APawn3H7 == 1 then
end
if APawn3H8 == 1 then
end
-----------------------
pUnit:GossipSendMenu(player)
end
end
---------Allinace Pawn 4---------
function APawn4_OnGossipTalk(pUnit, event, player, pMisc)
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "Show Me Where I Can Move.", 1, 0)
   pUnit:GossipMenuAddItem(9, "Show Me Who I Can Attack!", 2, 0)
   pUnit:GossipMenuAddItem(0, "Never Mind.", 3, 0)
   pUnit:GossipSendMenu(player)
end

function APawn4_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
if (intid == 1) then
pUnit:GossipCreateMenu(99, player, 0)
   if APawn4B1 == 1 then
	 if HPieceD1 == 0 and APieceD1 == 0 then
	 pUnit:SpawnGameObject(255761, D1X, D1Y, Z, 0,5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-1", 5, 0)
	 end
	 if HPieceC1 == 0 and APieceC1 == 0 then
	 pUnit:SpawnGameObject(255761, C1X, C1X, Z, 0,5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-1", 4, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
if APawn4B2 == 1 then
	 if HPieceD2 == 0 and APieceD2 == 0 then
	 pUnit:SpawnGameObject(255761, D2X, D2Y, Z, 0,5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-2", 5, 0)
	 end
	 if HPieceC2 == 0 and APieceC2 == 0 then
	 pUnit:SpawnGameObject(255761, C2X, C2Y, Z, 0,5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-2", 4, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn4B3 == 1 then
	 if HPieceD3 == 0 and APieceD3 == 0 then
	 pUnit:SpawnGameObject(255761, D3X, D3Y, Z, 0,5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-3", 5, 0)
	 end
	 if HPieceC3 == 0 and APieceC3 == 0 then
	 pUnit:SpawnGameObject(255761, C3X, C3Y, Z, 0,5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-3", 4, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn4B4 == 1 then
	 if HPieceD4 == 0 and APieceD4 == 0 then
	 pUnit:SpawnGameObject(255761, D4X, D4Y, Z, 0,5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-4", 5, 0)
	 end
	 if HPieceC4 == 0 and APieceC4 == 0 then
	 pUnit:SpawnGameObject(255761, C4X, C4Y, Z, 0,5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-4", 4, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn4B5 == 1 then
	 if HPieceD5 == 0 and APieceD5 == 0 then
	 pUnit:SpawnGameObject(255761, D5X, D5Y, Z, 0,5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-5", 5, 0)
	 end
	 if HPieceC5 == 0 and APieceC5 == 0 then
	 pUnit:SpawnGameObject(255761, C5X, C5Y, Z, 0,5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-5", 4, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn4B6 == 1 then
	 if HPieceD6 == 0 and APieceD6 == 0 then
	 pUnit:SpawnGameObject(255761, D6X, D6Y, Z, 0,5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-6", 5, 0)
	 end
	 if HPieceC6 == 0 and APieceC6 == 0 then
	 pUnit:SpawnGameObject(255761, C6X, C6Y, Z, 0,5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-6", 4, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn4B7 == 1 then
	 if HPieceD7 == 0 and APieceD7 == 0 then
	 pUnit:SpawnGameObject(255761, D7X, D7Y, Z, 0,5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-7", 5, 0)
	 end
	 if HPieceC7 == 0 and APieceC7 == 0 then
	 pUnit:SpawnGameObject(255761, C7X, C7Y, Z, 0,5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-7", 4, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn4B8 == 1 then
	 if HPieceD8 == 0 and APieceD8 == 0 then
	 pUnit:SpawnGameObject(255761, D8X, D8Y, Z, 0,5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-8", 5, 0)
	 end
	 if HPieceC8 == 0 and APieceC8 == 0 then
	 pUnit:SpawnGameObject(255761, C8X, C8Y, Z, 0,5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-8", 4, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
pUnit:GossipSendMenu(player)
end
-------------Attacking Page------------
if (intid == 2) then
pUnit:GossipCreateMenu(99, player, 0)
if APawn4B1 == 1 then
      if HPieceC2 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-2]", 100, 0)
	  end
end
if APawn4B2 == 1 then
      if HPieceC3 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-3]", 100, 0)
	  end
	  if HPieceC1 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-1]", 100, 0)
      end
end
if APawn4B3 == 1 then
      if HPieceC4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-4]", 100, 0)
	  end
	  if HPieceC2 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-2]", 100, 0)
      end
end
if APawn4B4 == 1 then
      if HPieceC5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-5]", 100, 0)
	  end
	  if HPieceC2 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-3]", 100, 0)
      end
end
if APawn4B5 == 1 then
      if HPieceC6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-6]", 100, 0)
	  end
	  if HPieceC4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-4]", 100, 0)
      end
end
if APawn4B6 == 1 then
      if HPieceC7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-7]", 100, 0)
	  end
	  if HPieceC5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-5]", 100, 0)
      end
end
if APawn4B7 == 1 then
if HPieceC8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-8]", 100, 0)
	  end
	  if HPieceC6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-6]", 100, 0)
      end
end
if APawn4B8 == 1 then
	  if HPieceC7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-7]", 100, 0)
      end
end
if APawn4C1 == 1 then
      if HPieceD2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-2]", 100, 0)
	  end
end
if APawn4C2 == 1 then
      if HPieceD1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-1]", 100, 0)
	  end
	  if HPieceD3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-3]", 100, 0)
	  end
end
if APawn4C3 == 1 then
      if HPieceD2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-2]", 100, 0)
	  end
	  if HPieceD4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-4]", 100, 0)
	  end
end
if APawn4C4 == 1 then
         if HPieceD5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-5]", 100, 0)
	  end
	  if HPieceD3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-3]", 100, 0)
	  end
end
  
if APawn4C5 == 1 then
      if HPieceD6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-6]", 100, 0)
	  end
	  if HPieceD4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-4]", 100, 0)
      end
end
if APawn4C6 == 1 then
      if HPieceD7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-7]", 100, 0)
	  end
	  if HPieceD5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-5]", 100, 0)
      end
end
if APawn4C7 == 1 then
if HPieceC8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-8]", 100, 0)
	  end
	  if HPieceD6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-6]", 100, 0)
      end
end
if APawn4C8 == 1 then
	  if HPieceC7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-7]", 100, 0)
      end
end
------------------
if APawn4D1 == 1 then
      if HPieceE2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-2]", 100, 0)
	  end
end
if APawn4D2 == 1 then
      if HPieceE1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-1]", 100, 0)
	  end
	  if HPieceE3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-3]", 100, 0)
	  end
end
if APawn4D3 == 1 then
      if HPieceE2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-2]", 100, 0)
	  end
	  if HPieceE4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-4]", 100, 0)
	  end
end
if APawn4D4 == 1 then
         if HPieceE5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-5]", 100, 0)
	  end
	  if HPieceE3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-3]", 100, 0)
	  end
end
  
if APawn4D5 == 1 then
      if HPieceE6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-6]", 100, 0)
	  end
	  if HPieceE4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-4]", 100, 0)
      end
end
if APawn4D6 == 1 then
      if HPieceE7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-7]", 100, 0)
	  end
	  if HPieceE5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-5]", 100, 0)
      end
end
if APawn4D7 == 1 then
if HPieceE8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-8]", 100, 0)
	  end
	  if HPieceE6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-6]", 100, 0)
      end
end
if APawn4D8 == 1 then
	  if HPieceE7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-7]", 100, 0)
      end
end
-----------------------------
if APawn4E1 == 1 then
      if HPieceF2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-2]", 100, 0)
	  end
end
if APawn4E2 == 1 then
      if HPieceF1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-1]", 100, 0)
	  end
	  if HPieceF3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-3]", 100, 0)
	  end
end
if APawn4E3 == 1 then
      if HPieceF2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-2]", 100, 0)
	  end
	  if HPieceF4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-4]", 100, 0)
	  end
end
if APawn4E4 == 1 then
         if HPieceF5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-5]", 100, 0)
	  end
	  if HPieceF3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-3]", 100, 0)
	  end
end
  
if APawn4E5 == 1 then
      if HPieceF6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-6]", 100, 0)
	  end
	  if HPieceF4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-4]", 100, 0)
      end
end
if APawn4E6 == 1 then
      if HPieceF7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-7]", 100, 0)
	  end
	  if HPieceF5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-5]", 100, 0)
      end
end
if APawn4E7 == 1 then
if HPieceF8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-8]", 100, 0)
	  end
	  if HPieceF6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-6]", 100, 0)
      end
end
if APawn4E8 == 1 then
	  if HPieceF7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-7]", 100, 0)
      end 
end
---------------------
if APawn4F1 == 1 then
      if HPieceG2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-2]", 100, 0)
	  end
end
if APawn4F2 == 1 then
      if HPieceG1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-1]", 100, 0)
	  end
	  if HPieceG3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-3]", 100, 0)
	  end
end
if APawn4F3 == 1 then
      if HPieceG2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-2]", 100, 0)
	  end
	  if HPieceG4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-4]", 100, 0)
	  end
end
if APawn4F4 == 1 then
         if HPieceG5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-5]", 100, 0)
	  end
	  if HPieceG3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-3]", 100, 0)
	  end
end
  
if APawn4F5 == 1 then
      if HPieceG6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-6]", 100, 0)
	  end
	  if HPieceG4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-4]", 100, 0)
      end
end
if APawn4F6 == 1 then
      if HPieceG7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-7]", 100, 0)
	  end
	  if HPieceG5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-5]", 100, 0)
      end
end
if APawn4F7 == 1 then
if HPieceG8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-8]", 100, 0)
	  end
	  if HPieceG6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-6]", 100, 0)
      end
end
if APawn4F8 == 1 then
	  if HPieceG7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-7]", 100, 0)
      end
end
------------------------------
  if APawn4G1 == 1 then
      if HPieceH2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-2]", 100, 0)
	  end
end
if APawn4G2 == 1 then
      if HPieceH1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-1]", 100, 0)
	  end
	  if HPieceH3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-3]", 100, 0)
	  end
end
if APawn4G3 == 1 then
      if HPieceH2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-2]", 100, 0)
	  end
	  if HPieceH4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-4]", 100, 0)
	  end
end
if APawn4G4 == 1 then
         if HPieceH5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-5]", 100, 0)
	  end
	  if HPieceH3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-3]", 100, 0)
	  end
end
  
if APawn4G5 == 1 then
      if HPieceH6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-6]", 100, 0)
	  end
	  if HPieceH4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-4]", 100, 0)
      end
end
if APawn4G6 == 1 then
      if HPieceH7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-7]", 100, 0)
	  end
	  if HPieceH5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-5]", 100, 0)
      end
end
if APawn4G7 == 1 then
if HPieceH8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-8]", 100, 0)
	  end
	  if HPieceH6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-6]", 100, 0)
      end
end
if APawn4G8 == 1 then
	  if HPieceH7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-7]", 100, 0)
      end
end
----------------------
if APawn4H1 == 1 then
end
if APawn4H2 == 1 then
end
if APawn4H3 == 1 then
end
if APawn4H4 == 1 then
end
if APawn4H5 == 1 then
end
if APawn4H6 == 1 then
end
if APawn4H7 == 1 then
end
if APawn4H8 == 1 then
end
-----------------------
pUnit:GossipSendMenu(player)
end
end
-------------Alliance Pawn 5---------
function APawn5_OnGossipTalk(pUnit, event, player, pMisc)
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "Show Me Where I Can Move.", 1, 0)
   pUnit:GossipMenuAddItem(9, "Show Me Who I Can Attack!", 2, 0)
   pUnit:GossipMenuAddItem(0, "Never Mind.", 3, 0)
   pUnit:GossipSendMenu(player)
end

function APawn5_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
if (intid == 1) then
pUnit:GossipCreateMenu(99, player, 0)
   if APawn5B1 == 1 then
	 if HPieceD1 == 0 and APieceD1 == 0 then
	 pUnit:SpawnGameObject(255761, D1X, D1Y, Z, 0,5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-1", 5, 0)
	 end
	 if HPieceC1 == 0 and APieceC1 == 0 then
	 pUnit:SpawnGameObject(255761, C1X, C1X, Z, 0,5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-1", 4, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
if APawn5B2 == 1 then
	 if HPieceD2 == 0 and APieceD2 == 0 then
	 pUnit:SpawnGameObject(255761, D2X, D2Y, Z, 0, 5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-2", 5, 0)
	 end
	 if HPieceC2 == 0 and APieceC2 == 0 then
	 pUnit:SpawnGameObject(255761, C2X, C2Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-2", 4, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn5B3 == 1 then
	 if HPieceD3 == 0 and APieceD3 == 0 then
	 pUnit:SpawnGameObject(255761, D3X, D3Y, Z, 0, 5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-3", 5, 0)
	 end
	 if HPieceC3 == 0 and APieceC3 == 0 then
	 pUnit:SpawnGameObject(255761, C3X, C3Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-3", 4, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn5B4 == 1 then
	 if HPieceD4 == 0 and APieceD4 == 0 then
	 pUnit:SpawnGameObject(255761, D4X, D4Y, Z, 0, 5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-4", 5, 0)
	 end
	 if HPieceC4 == 0 and APieceC4 == 0 then
	 pUnit:SpawnGameObject(255761, C4X, C4Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-4", 4, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn5B5 == 1 then
	 if HPieceD5 == 0 and APieceD5 == 0 then
	 pUnit:SpawnGameObject(255761, D5X, D5Y, Z, 0, 5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-5", 5, 0)
	 end
	 if HPieceC5 == 0 and APieceC5 == 0 then
	 pUnit:SpawnGameObject(255761, C5X, C5Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-5", 4, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn5B6 == 1 then
	 if HPieceD6 == 0 and APieceD6 == 0 then
	 pUnit:SpawnGameObject(255761, D6X, D6Y, Z, 0, 5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-6", 5, 0)
	 end
	 if HPieceC6 == 0 and APieceC6 == 0 then
	 pUnit:SpawnGameObject(255761, C6X, C6Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-6", 4, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn5B7 == 1 then
	 if HPieceD7 == 0 and APieceD7 == 0 then
	 pUnit:SpawnGameObject(255761, D7X, D7Y, Z, 0, 5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-7", 5, 0)
	 end
	 if HPieceC7 == 0 and APieceC7 == 0 then
	 pUnit:SpawnGameObject(255761, C7X, C7Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-7", 4, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn5B8 == 1 then
	 if HPieceD8 == 0 and APieceD8 == 0 then
	 pUnit:SpawnGameObject(255761, D8X, D8Y, Z, 0, 5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-8", 5, 0)
	 end
	 if HPieceC8 == 0 and APieceC8 == 0 then
	 pUnit:SpawnGameObject(255761, C8X, C8Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-8", 4, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
pUnit:GossipSendMenu(player)
end
-------------Attacking Page------------
if (intid == 2) then
pUnit:GossipCreateMenu(99, player, 0)
if APawn5B1 == 1 then
      if HPieceC1 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-2]", 100, 0)
	  end
end
if APawn5B2 == 1 then
      if HPieceC3 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-3]", 100, 0)
	  end
	  if HPieceC1 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-1]", 100, 0)
      end
end
if APawn5B3 == 1 then
      if HPieceC4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-4]", 100, 0)
	  end
	  if HPieceC2 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-2]", 100, 0)
      end
end
if APawn5B4 == 1 then
      if HPieceC5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-5]", 100, 0)
	  end
	  if HPieceC2 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-3]", 100, 0)
      end
end
if APawn5B5 == 1 then
      if HPieceC6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-6]", 100, 0)
	  end
	  if HPieceC4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-4]", 100, 0)
      end
end
if APawn5B6 == 1 then
      if HPieceC7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-7]", 100, 0)
	  end
	  if HPieceC5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-5]", 100, 0)
      end
end
if APawn5B7 == 1 then
if HPieceC8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-8]", 100, 0)
	  end
	  if HPieceC6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-6]", 100, 0)
      end
end
if APawn5B8 == 1 then
	  if HPieceC7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-7]", 100, 0)
      end
end
if APawn5C1 == 1 then
      if HPieceD2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-2]", 100, 0)
	  end
end
if APawn5C2 == 1 then
      if HPieceD1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-1]", 100, 0)
	  end
	  if HPieceD3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-3]", 100, 0)
	  end
end
if APawn5C3 == 1 then
      if HPieceD2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-2]", 100, 0)
	  end
	  if HPieceD4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-4]", 100, 0)
	  end
end
if APawn5C4 == 1 then
         if HPieceD5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-5]", 100, 0)
	  end
	  if HPieceD3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-3]", 100, 0)
	  end
end
  
if APawn5C5 == 1 then
      if HPieceD6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-6]", 100, 0)
	  end
	  if HPieceD4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-4]", 100, 0)
      end
end
if APawn5C6 == 1 then
      if HPieceD7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-7]", 100, 0)
	  end
	  if HPieceD5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-5]", 100, 0)
      end
end
if APawn5C7 == 1 then
if HPieceC8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-8]", 100, 0)
	  end
	  if HPieceD6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-6]", 100, 0)
      end
end
if APawn5C8 == 1 then
	  if HPieceC7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-7]", 100, 0)
      end
end
------------------
if APawn5D1 == 1 then
      if HPieceE2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-2]", 100, 0)
	  end
end
if APawn5D2 == 1 then
      if HPieceE1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-1]", 100, 0)
	  end
	  if HPieceE3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-3]", 100, 0)
	  end
end
if APawn5D3 == 1 then
      if HPieceE2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-2]", 100, 0)
	  end
	  if HPieceE4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-4]", 100, 0)
	  end
end
if APawn5D4 == 1 then
         if HPieceE5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-5]", 100, 0)
	  end
	  if HPieceE3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-3]", 100, 0)
	  end
end
  
if APawn5D5 == 1 then
      if HPieceE6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-6]", 100, 0)
	  end
	  if HPieceE4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-4]", 100, 0)
      end
end
if APawn5D6 == 1 then
      if HPieceE7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-7]", 100, 0)
	  end
	  if HPieceE5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-5]", 100, 0)
      end
end
if APawn5D7 == 1 then
if HPieceE8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-8]", 100, 0)
	  end
	  if HPieceE6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-6]", 100, 0)
      end
end
if APawn5D8 == 1 then
	  if HPieceE7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-7]", 100, 0)
      end
end
-----------------------------
if APawn5E1 == 1 then
      if HPieceF2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-2]", 100, 0)
	  end
end
if APawn5E2 == 1 then
      if HPieceF1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-1]", 100, 0)
	  end
	  if HPieceF3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-3]", 100, 0)
	  end
end
if APawn5E3 == 1 then
      if HPieceF2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-2]", 100, 0)
	  end
	  if HPieceF4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-4]", 100, 0)
	  end
end
if APawn5E4 == 1 then
         if HPieceF5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-5]", 100, 0)
	  end
	  if HPieceF3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-3]", 100, 0)
	  end
end
  
if APawn5E5 == 1 then
      if HPieceF6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-6]", 100, 0)
	  end
	  if HPieceF4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-4]", 100, 0)
      end
end
if APawn5E6 == 1 then
      if HPieceF7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-7]", 100, 0)
	  end
	  if HPieceF5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-5]", 100, 0)
      end
end
if APawn5E7 == 1 then
if HPieceF8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-8]", 100, 0)
	  end
	  if HPieceF6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-6]", 100, 0)
      end
end
if APawn5E8 == 1 then
	  if HPieceF7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-7]", 100, 0)
      end 
end
---------------------
if APawn5F1 == 1 then
      if HPieceG2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-2]", 100, 0)
	  end
end
if APawn5F2 == 1 then
      if HPieceG1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-1]", 100, 0)
	  end
	  if HPieceG3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-3]", 100, 0)
	  end
end
if APawn5F3 == 1 then
      if HPieceG2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-2]", 100, 0)
	  end
	  if HPieceG4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-4]", 100, 0)
	  end
end
if APawn5F4 == 1 then
         if HPieceG5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-5]", 100, 0)
	  end
	  if HPieceG3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-3]", 100, 0)
	  end
end
  
if APawn5F5 == 1 then
      if HPieceG6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-6]", 100, 0)
	  end
	  if HPieceG4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-4]", 100, 0)
      end
end
if APawn5F6 == 1 then
      if HPieceG7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-7]", 100, 0)
	  end
	  if HPieceG5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-5]", 100, 0)
      end
end
if APawn5F7 == 1 then
if HPieceG8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-8]", 100, 0)
	  end
	  if HPieceG6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-6]", 100, 0)
      end
end
if APawn5F8 == 1 then
	  if HPieceG7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-7]", 100, 0)
      end
end
------------------------------
  if APawn5G1 == 1 then
      if HPieceH2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-2]", 100, 0)
	  end
end
if APawn5G2 == 1 then
      if HPieceH1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-1]", 100, 0)
	  end
	  if HPieceH3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-3]", 100, 0)
	  end
end
if APawn5G3 == 1 then
      if HPieceH2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-2]", 100, 0)
	  end
	  if HPieceH4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-4]", 100, 0)
	  end
end
if APawn5G4 == 1 then
         if HPieceH5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-5]", 100, 0)
	  end
	  if HPieceH3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-3]", 100, 0)
	  end
end
  
if APawn5G5 == 1 then
      if HPieceH6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-6]", 100, 0)
	  end
	  if HPieceH4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-4]", 100, 0)
      end
end
if APawn5G6 == 1 then
      if HPieceH7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-7]", 100, 0)
	  end
	  if HPieceH5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-5]", 100, 0)
      end
end
if APawn5G7 == 1 then
if HPieceH8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-8]", 100, 0)
	  end
	  if HPieceH6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-6]", 100, 0)
      end
end
if APawn5G8 == 1 then
	  if HPieceH7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-7]", 100, 0)
      end
end
----------------------
if APawn5H1 == 1 then
end
if APawn5H2 == 1 then
end
if APawn5H3 == 1 then
end
if APawn5H4 == 1 then
end
if APawn5H5 == 1 then
end
if APawn5H6 == 1 then
end
if APawn5H7 == 1 then
end
if APawn5H8 == 1 then
end
-----------------------
pUnit:GossipSendMenu(player)
end
end
--------------Alliance Pawn 6----------
function APawn6_OnGossipTalk(pUnit, event, player, pMisc)
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "Show Me Where I Can Move.", 1, 0)
   pUnit:GossipMenuAddItem(9, "Show Me Who I Can Attack!", 2, 0)
   pUnit:GossipMenuAddItem(0, "Never Mind.", 3, 0)
   pUnit:GossipSendMenu(player)
end

function APawn6_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
if (intid == 1) then
pUnit:GossipCreateMenu(99, player, 0)
   if APawn6B1 == 1 then
	 if HPieceD1 == 0 and APieceD1 == 0 then
	 pUnit:SpawnGameObject(255761, D1X, D1Y, Z, 0, 5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-1", 5, 0)
	 end
	 if HPieceC1 == 0 and APieceC1 == 0 then
	 pUnit:SpawnGameObject(255761, C1X, C1X, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-1", 4, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
if APawn6B2 == 1 then
	 if HPieceD2 == 0 and APieceD2 == 0 then
	 pUnit:SpawnGameObject(255761, D2X, D2Y, Z, 0, 5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-2", 5, 0)
	 end
	 if HPieceC2 == 0 and APieceC2 == 0 then
	 pUnit:SpawnGameObject(255761, C2X, C2Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-2", 4, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn6B3 == 1 then
	 if HPieceD3 == 0 and APieceD3 == 0 then
	 pUnit:SpawnGameObject(255761, D3X, D3Y, Z, 0, 5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-3", 5, 0)
	 end
	 if HPieceC3 == 0 and APieceC3 == 0 then
	 pUnit:SpawnGameObject(255761, C3X, C3Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-3", 4, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn6B4 == 1 then
	 if HPieceD4 == 0 and APieceD4 == 0 then
	 pUnit:SpawnGameObject(255761, D4X, D4Y, Z, 0, 5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-4", 5, 0)
	 end
	 if HPieceC4 == 0 and APieceC4 == 0 then
	 pUnit:SpawnGameObject(255761, C4X, C4Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-4", 4, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn6B5 == 1 then
	 if HPieceD5 == 0 and APieceD5 == 0 then
	 pUnit:SpawnGameObject(255761, D5X, D5Y, Z, 0, 5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-5", 5, 0)
	 end
	 if HPieceC5 == 0 and APieceC5 == 0 then
	 pUnit:SpawnGameObject(255761, C5X, C5Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-5", 4, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn6B6 == 1 then
	 if HPieceD6 == 0 and APieceD6 == 0 then
	 pUnit:SpawnGameObject(255761, D6X, D6Y, Z, 0, 5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-6", 5, 0)
	 end
	 if HPieceC6 == 0 and APieceC6 == 0 then
	 pUnit:SpawnGameObject(255761, C6X, C6Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-6", 4, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn6B7 == 1 then
	 if HPieceD7 == 0 and APieceD7 == 0 then
	 pUnit:SpawnGameObject(255761, D7X, D7Y, Z, 0, 5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-7", 5, 0)
	 end
	 if HPieceC7 == 0 and APieceC7 == 0 then
	 pUnit:SpawnGameObject(255761, C7X, C7Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-7", 4, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn6B8 == 1 then
	 if HPieceD8 == 0 and APieceD8 == 0 then
	 pUnit:SpawnGameObject(255761, D8X, D8Y, Z, 0, 5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-8", 5, 0)
	 end
	 if HPieceC8 == 0 and APieceC8 == 0 then
	 pUnit:SpawnGameObject(255761, C8X, C8Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-8", 4, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
pUnit:GossipSendMenu(player)
end
-------------Attacking Page------------
if (intid == 2) then
pUnit:GossipCreateMenu(99, player, 0)
if APawn6B1 == 1 then
      if HPieceC1 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-2]", 100, 0)
	  end
end
if APawn6B2 == 1 then
      if HPieceC3 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-3]", 100, 0)
	  end
	  if HPieceC1 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-1]", 100, 0)
      end
end
if APawn6B3 == 1 then
      if HPieceC4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-4]", 100, 0)
	  end
	  if HPieceC2 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-2]", 100, 0)
      end
end
if APawn6B4 == 1 then
      if HPieceC5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-5]", 100, 0)
	  end
	  if HPieceC2 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-3]", 100, 0)
      end
end
if APawn6B5 == 1 then
      if HPieceC6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-6]", 100, 0)
	  end
	  if HPieceC4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-4]", 100, 0)
      end
end
if APawn6B6 == 1 then
      if HPieceC7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-7]", 100, 0)
	  end
	  if HPieceC5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-5]", 100, 0)
      end
end
if APawn6B7 == 1 then
if HPieceC8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-8]", 100, 0)
	  end
	  if HPieceC6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-6]", 100, 0)
      end
end
if APawn6B8 == 1 then
	  if HPieceC7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-7]", 100, 0)
      end
end
if APawn6C1 == 1 then
      if HPieceD2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-2]", 100, 0)
	  end
end
if APawn6C2 == 1 then
      if HPieceD1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-1]", 100, 0)
	  end
	  if HPieceD3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-3]", 100, 0)
	  end
end
if APawn6C3 == 1 then
      if HPieceD2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-2]", 100, 0)
	  end
	  if HPieceD4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-4]", 100, 0)
	  end
end
if APawn6C4 == 1 then
         if HPieceD5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-5]", 100, 0)
	  end
	  if HPieceD3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-3]", 100, 0)
	  end
end
  
if APawn6C5 == 1 then
      if HPieceD6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-6]", 100, 0)
	  end
	  if HPieceD4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-4]", 100, 0)
      end
end
if APawn6C6 == 1 then
      if HPieceD7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-7]", 100, 0)
	  end
	  if HPieceD5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-5]", 100, 0)
      end
end
if APawn6C7 == 1 then
if HPieceC8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-8]", 100, 0)
	  end
	  if HPieceD6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-6]", 100, 0)
      end
end
if APawn6C8 == 1 then
	  if HPieceC7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-7]", 100, 0)
      end
end
------------------
if APawn6D1 == 1 then
      if HPieceE2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-2]", 100, 0)
	  end
end
if APawn6D2 == 1 then
      if HPieceE1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-1]", 100, 0)
	  end
	  if HPieceE3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-3]", 100, 0)
	  end
end
if APawn6D3 == 1 then
      if HPieceE2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-2]", 100, 0)
	  end
	  if HPieceE4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-4]", 100, 0)
	  end
end
if APawn6D4 == 1 then
         if HPieceE5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-5]", 100, 0)
	  end
	  if HPieceE3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-3]", 100, 0)
	  end
end
  
if APawn6D5 == 1 then
      if HPieceE6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-6]", 100, 0)
	  end
	  if HPieceE4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-4]", 100, 0)
      end
end
if APawn6D6 == 1 then
      if HPieceE7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-7]", 100, 0)
	  end
	  if HPieceE5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-5]", 100, 0)
      end
end
if APawn6D7 == 1 then
if HPieceE8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-8]", 100, 0)
	  end
	  if HPieceE6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-6]", 100, 0)
      end
end
if APawn6D8 == 1 then
	  if HPieceE7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-7]", 100, 0)
      end
end
-----------------------------
if APawn6E1 == 1 then
      if HPieceF2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-2]", 100, 0)
	  end
end
if APawn6E2 == 1 then
      if HPieceF1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-1]", 100, 0)
	  end
	  if HPieceF3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-3]", 100, 0)
	  end
end
if APawn6E3 == 1 then
      if HPieceF2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-2]", 100, 0)
	  end
	  if HPieceF4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-4]", 100, 0)
	  end
end
if APawn6E4 == 1 then
         if HPieceF5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-5]", 100, 0)
	  end
	  if HPieceF3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-3]", 100, 0)
	  end
end
  
if APawn6E5 == 1 then
      if HPieceF6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-6]", 100, 0)
	  end
	  if HPieceF4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-4]", 100, 0)
      end
end
if APawn6E6 == 1 then
      if HPieceF7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-7]", 100, 0)
	  end
	  if HPieceF5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-5]", 100, 0)
      end
end
if APawn6E7 == 1 then
if HPieceF8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-8]", 100, 0)
	  end
	  if HPieceF6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-6]", 100, 0)
      end
end
if APawn6E8 == 1 then
	  if HPieceF7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-7]", 100, 0)
      end 
end
---------------------
if APawn6F1 == 1 then
      if HPieceG2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-2]", 100, 0)
	  end
end
if APawn6F2 == 1 then
      if HPieceG1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-1]", 100, 0)
	  end
	  if HPieceG3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-3]", 100, 0)
	  end
end
if APawn6F3 == 1 then
      if HPieceG2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-2]", 100, 0)
	  end
	  if HPieceG4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-4]", 100, 0)
	  end
end
if APawn6F4 == 1 then
         if HPieceG5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-5]", 100, 0)
	  end
	  if HPieceG3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-3]", 100, 0)
	  end
end
  
if APawn6F5 == 1 then
      if HPieceG6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-6]", 100, 0)
	  end
	  if HPieceG4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-4]", 100, 0)
      end
end
if APawn6F6 == 1 then
      if HPieceG7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-7]", 100, 0)
	  end
	  if HPieceG5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-5]", 100, 0)
      end
end
if APawn6F7 == 1 then
if HPieceG8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-8]", 100, 0)
	  end
	  if HPieceG6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-6]", 100, 0)
      end
end
if APawn6F8 == 1 then
	  if HPieceG7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-7]", 100, 0)
      end
end
------------------------------
  if APawn6G1 == 1 then
      if HPieceH2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-2]", 100, 0)
	  end
end
if APawn6G2 == 1 then
      if HPieceH1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-1]", 100, 0)
	  end
	  if HPieceH3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-3]", 100, 0)
	  end
end
if APawn6G3 == 1 then
      if HPieceH2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-2]", 100, 0)
	  end
	  if HPieceH4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-4]", 100, 0)
	  end
end
if APawn6G4 == 1 then
         if HPieceH5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-5]", 100, 0)
	  end
	  if HPieceH3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-3]", 100, 0)
	  end
end
  
if APawn6G5 == 1 then
      if HPieceH6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-6]", 100, 0)
	  end
	  if HPieceH4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-4]", 100, 0)
      end
end
if APawn6G6 == 1 then
      if HPieceH7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-7]", 100, 0)
	  end
	  if HPieceH5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-5]", 100, 0)
      end
end
if APawn6G7 == 1 then
if HPieceH8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-8]", 100, 0)
	  end
	  if HPieceH6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-6]", 100, 0)
      end
end
if APawn6G8 == 1 then
	  if HPieceH7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-7]", 100, 0)
      end
end
----------------------
if APawn6H1 == 1 then
end
if APawn6H2 == 1 then
end
if APawn6H3 == 1 then
end
if APawn6H4 == 1 then
end
if APawn6H5 == 1 then
end
if APawn6H6 == 1 then
end
if APawn6H7 == 1 then
end
if APawn6H8 == 1 then
end
-----------------------
pUnit:GossipSendMenu(player)
end
end
----------Alliance Pawn 7-----------
function APawn7_OnGossipTalk(pUnit, event, player, pMisc)
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "Show Me Where I Can Move.", 1, 0)
   pUnit:GossipMenuAddItem(9, "Show Me Who I Can Attack!", 2, 0)
   pUnit:GossipMenuAddItem(0, "Never Mind.", 3, 0)
   pUnit:GossipSendMenu(player)
end

function APawn7_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
if (intid == 1) then
pUnit:GossipCreateMenu(99, player, 0)
   if APawn7B1 == 1 then
	 if HPieceD1 == 0 and APieceD1 == 0 then
	 pUnit:SpawnGameObject(255761, D1X, D1Y, Z, 0, 5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-1", 5, 0)
	 end
	 if HPieceC1 == 0 and APieceC1 == 0 then
	 pUnit:SpawnGameObject(255761, C1X, C1X, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-1", 4, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
if APawn7B2 == 1 then
	 if HPieceD2 == 0 and APieceD2 == 0 then
	 pUnit:SpawnGameObject(255761, D2X, D2Y, Z, 0, 5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-2", 5, 0)
	 end
	 if HPieceC2 == 0 and APieceC2 == 0 then
	 pUnit:SpawnGameObject(255761, C2X, C2Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-2", 4, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn7B3 == 1 then
	 if HPieceD3 == 0 and APieceD3 == 0 then
	 pUnit:SpawnGameObject(255761, D3X, D3Y, Z, 0, 5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-3", 5, 0)
	 end
	 if HPieceC3 == 0 and APieceC3 == 0 then
	 pUnit:SpawnGameObject(255761, C3X, C3Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-3", 4, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn7B4 == 1 then
	 if HPieceD4 == 0 and APieceD4 == 0 then
	 pUnit:SpawnGameObject(255761, D4X, D4Y, Z, 0, 5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-4", 5, 0)
	 end
	 if HPieceC4 == 0 and APieceC4 == 0 then
	 pUnit:SpawnGameObject(255761, C4X, C4Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-4", 4, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn7B5 == 1 then
	 if HPieceD5 == 0 and APieceD5 == 0 then
	 pUnit:SpawnGameObject(255761, D5X, D5Y, Z, 0, 5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-5", 5, 0)
	 end
	 if HPieceC5 == 0 and APieceC5 == 0 then
	 pUnit:SpawnGameObject(255761, C5X, C5Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-5", 4, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn7B6 == 1 then
	 if HPieceD6 == 0 and APieceD6 == 0 then
	 pUnit:SpawnGameObject(255761, D6X, D6Y, Z, 0, 5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-6", 5, 0)
	 end
	 if HPieceC6 == 0 and APieceC6 == 0 then
	 pUnit:SpawnGameObject(255761, C6X, C6Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-6", 4, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn7B7 == 1 then
	 if HPieceD7 == 0 and APieceD7 == 0 then
	 pUnit:SpawnGameObject(255761, D7X, D7Y, Z, 0, 5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-7", 5, 0)
	 end
	 if HPieceC7 == 0 and APieceC7 == 0 then
	 pUnit:SpawnGameObject(255761, C7X, C7Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-7", 4, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn7B8 == 1 then
	 if HPieceD8 == 0 and APieceD8 == 0 then
	 pUnit:SpawnGameObject(255761, D8X, D8Y, Z, 0, 5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-8", 5, 0)
	 end
	 if HPieceC8 == 0 and APieceC8 == 0 then
	 pUnit:SpawnGameObject(255761, C8X, C8Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-8", 4, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
pUnit:GossipSendMenu(player)
end
-------------Attacking Page------------
if (intid == 2) then
pUnit:GossipCreateMenu(99, player, 0)
if APawn7B1 == 1 then
      if HPieceC1 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-2]", 100, 0)
	  end
end
if APawn7B2 == 1 then
      if HPieceC3 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-3]", 100, 0)
	  end
	  if HPieceC1 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-1]", 100, 0)
      end
end
if APawn7B3 == 1 then
      if HPieceC4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-4]", 100, 0)
	  end
	  if HPieceC2 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-2]", 100, 0)
      end
end
if APawn7B4 == 1 then
      if HPieceC5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-5]", 100, 0)
	  end
	  if HPieceC2 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-3]", 100, 0)
      end
end
if APawn7B5 == 1 then
      if HPieceC6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-6]", 100, 0)
	  end
	  if HPieceC4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-4]", 100, 0)
      end
end
if APawn7B6 == 1 then
      if HPieceC7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-7]", 100, 0)
	  end
	  if HPieceC5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-5]", 100, 0)
      end
end
if APawn7B7 == 1 then
if HPieceC8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-8]", 100, 0)
	  end
	  if HPieceC6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-6]", 100, 0)
      end
end
if APawn7B8 == 1 then
	  if HPieceC7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-7]", 100, 0)
      end
end
if APawn7C1 == 1 then
      if HPieceD2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-2]", 100, 0)
	  end
end
if APawn7C2 == 1 then
      if HPieceD1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-1]", 100, 0)
	  end
	  if HPieceD3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-3]", 100, 0)
	  end
end
if APawn7C3 == 1 then
      if HPieceD2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-2]", 100, 0)
	  end
	  if HPieceD4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-4]", 100, 0)
	  end
end
if APawn7C4 == 1 then
         if HPieceD5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-5]", 100, 0)
	  end
	  if HPieceD3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-3]", 100, 0)
	  end
end
  
if APawn7C5 == 1 then
      if HPieceD6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-6]", 100, 0)
	  end
	  if HPieceD4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-4]", 100, 0)
      end
end
if APawn7C6 == 1 then
      if HPieceD7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-7]", 100, 0)
	  end
	  if HPieceD5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-5]", 100, 0)
      end
end
if APawn7C7 == 1 then
if HPieceC8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-8]", 100, 0)
	  end
	  if HPieceD6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-6]", 100, 0)
      end
end
if APawn7C8 == 1 then
	  if HPieceC7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-7]", 100, 0)
      end
end
------------------
if APawn7D1 == 1 then
      if HPieceE2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-2]", 100, 0)
	  end
end
if APawn7D2 == 1 then
      if HPieceE1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-1]", 100, 0)
	  end
	  if HPieceE3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-3]", 100, 0)
	  end
end
if APawn7D3 == 1 then
      if HPieceE2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-2]", 100, 0)
	  end
	  if HPieceE4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-4]", 100, 0)
	  end
end
if APawn7D4 == 1 then
         if HPieceE5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-5]", 100, 0)
	  end
	  if HPieceE3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-3]", 100, 0)
	  end
end
  
if APawn7D5 == 1 then
      if HPieceE6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-6]", 100, 0)
	  end
	  if HPieceE4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-4]", 100, 0)
      end
end
if APawn7D6 == 1 then
      if HPieceE7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-7]", 100, 0)
	  end
	  if HPieceE5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-5]", 100, 0)
      end
end
if APawn7D7 == 1 then
if HPieceE8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-8]", 100, 0)
	  end
	  if HPieceE6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-6]", 100, 0)
      end
end
if APawn7D8 == 1 then
	  if HPieceE7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-7]", 100, 0)
      end
end
-----------------------------
if APawn7E1 == 1 then
      if HPieceF2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-2]", 100, 0)
	  end
end
if APawn7E2 == 1 then
      if HPieceF1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-1]", 100, 0)
	  end
	  if HPieceF3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-3]", 100, 0)
	  end
end
if APawn7E3 == 1 then
      if HPieceF2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-2]", 100, 0)
	  end
	  if HPieceF4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-4]", 100, 0)
	  end
end
if APawn7E4 == 1 then
         if HPieceF5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-5]", 100, 0)
	  end
	  if HPieceF3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-3]", 100, 0)
	  end
end
  
if APawn7E5 == 1 then
      if HPieceF6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-6]", 100, 0)
	  end
	  if HPieceF4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-4]", 100, 0)
      end
end
if APawn7E6 == 1 then
      if HPieceF7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-7]", 100, 0)
	  end
	  if HPieceF5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-5]", 100, 0)
      end
end
if APawn7E7 == 1 then
if HPieceF8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-8]", 100, 0)
	  end
	  if HPieceF6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-6]", 100, 0)
      end
end
if APawn7E8 == 1 then
	  if HPieceF7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-7]", 100, 0)
      end 
end
---------------------
if APawn7F1 == 1 then
      if HPieceG2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-2]", 100, 0)
	  end
end
if APawn7F2 == 1 then
      if HPieceG1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-1]", 100, 0)
	  end
	  if HPieceG3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-3]", 100, 0)
	  end
end
if APawn7F3 == 1 then
      if HPieceG2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-2]", 100, 0)
	  end
	  if HPieceG4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-4]", 100, 0)
	  end
end
if APawn7F4 == 1 then
         if HPieceG5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-5]", 100, 0)
	  end
	  if HPieceG3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-3]", 100, 0)
	  end
end
  
if APawn7F5 == 1 then
      if HPieceG6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-6]", 100, 0)
	  end
	  if HPieceG4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-4]", 100, 0)
      end
end
if APawn7F6 == 1 then
      if HPieceG7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-7]", 100, 0)
	  end
	  if HPieceG5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-5]", 100, 0)
      end
end
if APawn7F7 == 1 then
if HPieceG8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-8]", 100, 0)
	  end
	  if HPieceG6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-6]", 100, 0)
      end
end
if APawn7F8 == 1 then
	  if HPieceG7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-7]", 100, 0)
      end
end
------------------------------
  if APawn7G1 == 1 then
      if HPieceH2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-2]", 100, 0)
	  end
end
if APawn7G2 == 1 then
      if HPieceH1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-1]", 100, 0)
	  end
	  if HPieceH3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-3]", 100, 0)
	  end
end
if APawn7G3 == 1 then
      if HPieceH2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-2]", 100, 0)
	  end
	  if HPieceH4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-4]", 100, 0)
	  end
end
if APawn7G4 == 1 then
         if HPieceH5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-5]", 100, 0)
	  end
	  if HPieceH3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-3]", 100, 0)
	  end
end
  
if APawn7G5 == 1 then
      if HPieceH6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-6]", 100, 0)
	  end
	  if HPieceH4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-4]", 100, 0)
      end
end
if APawn7G6 == 1 then
      if HPieceH7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-7]", 100, 0)
	  end
	  if HPieceH5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-5]", 100, 0)
      end
end
if APawn7G7 == 1 then
if HPieceH8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-8]", 100, 0)
	  end
	  if HPieceH6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-6]", 100, 0)
      end
end
if APawn7G8 == 1 then
	  if HPieceH7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-7]", 100, 0)
      end
end
----------------------
if APawn7H1 == 1 then
end
if APawn7H2 == 1 then
end
if APawn7H3 == 1 then
end
if APawn7H4 == 1 then
end
if APawn7H5 == 1 then
end
if APawn7H6 == 1 then
end
if APawn7H7 == 1 then
end
if APawn7H8 == 1 then
end
-----------------------
pUnit:GossipSendMenu(player)
end
end
-----------Alliance Pawn 8-----------
function APawn8_OnGossipTalk(pUnit, event, player, pMisc)
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "Show Me Where I Can Move.", 1, 0)
   pUnit:GossipMenuAddItem(9, "Show Me Who I Can Attack!", 2, 0)
   pUnit:GossipMenuAddItem(0, "Never Mind.", 3, 0)
   pUnit:GossipSendMenu(player)
end

function APawn8_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
if (intid == 1) then
pUnit:GossipCreateMenu(99, player, 0)
   if APawn8B1 == 1 then
	 if HPieceD1 == 0 and APieceD1 == 0 then
	 pUnit:SpawnGameObject(255761, D1X, D1Y, Z, 0, 5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-1", 5, 0)
	 end
	 if HPieceC1 == 0 and APieceC1 == 0 then
	 pUnit:SpawnGameObject(255761, C1X, C1X, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-1", 4, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
if APawn8B2 == 1 then
	 if HPieceD2 == 0 and APieceD2 == 0 then
	 pUnit:SpawnGameObject(255761, D2X, D2Y, Z, 0, 5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-2", 5, 0)
	 end
	 if HPieceC2 == 0 and APieceC2 == 0 then
	 pUnit:SpawnGameObject(255761, C2X, C2Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-2", 4, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn8B3 == 1 then
	 if HPieceD3 == 0 and APieceD3 == 0 then
	 pUnit:SpawnGameObject(255761, D3X, D3Y, Z, 0, 5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-3", 5, 0)
	 end
	 if HPieceC3 == 0 and APieceC3 == 0 then
	 pUnit:SpawnGameObject(255761, C3X, C3Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-3", 4, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn8B4 == 1 then
	 if HPieceD4 == 0 and APieceD4 == 0 then
	 pUnit:SpawnGameObject(255761, D4X, D4Y, Z, 0, 5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-4", 5, 0)
	 end
	 if HPieceC4 == 0 and APieceC4 == 0 then
	 pUnit:SpawnGameObject(255761, C4X, C4Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-4", 4, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn8B5 == 1 then
	 if HPieceD5 == 0 and APieceD5 == 0 then
	 pUnit:SpawnGameObject(255761, D5X, D5Y, Z, 0, 5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-5", 5, 0)
	 end
	 if HPieceC5 == 0 and APieceC5 == 0 then
	 pUnit:SpawnGameObject(255761, C5X, C5Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-5", 4, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn8B6 == 1 then
	 if HPieceD6 == 0 and APieceD6 == 0 then
	 pUnit:SpawnGameObject(255761, D6X, D6Y, Z, 0, 5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-6", 5, 0)
	 end
	 if HPieceC6 == 0 and APieceC6 == 0 then
	 pUnit:SpawnGameObject(255761, C6X, C6Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-6", 4, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn8B7 == 1 then
	 if HPieceD7 == 0 and APieceD7 == 0 then
	 pUnit:SpawnGameObject(255761, D7X, D7Y, Z, 0, 5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-7", 5, 0)
	 end
	 if HPieceC7 == 0 and APieceC7 == 0 then
	 pUnit:SpawnGameObject(255761, C7X, C7Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-7", 4, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
   if APawn8B8 == 1 then
	 if HPieceD8 == 0 and APieceD8 == 0 then
	 pUnit:SpawnGameObject(255761, D8X, D8Y, Z, 0, 5000)
     pUnit:GossipMenuAddItem(9, "Move Me To D-8", 5, 0)
	 end
	 if HPieceC8 == 0 and APieceC8 == 0 then
	 pUnit:SpawnGameObject(255761, C8X, C8Y, Z, 0, 5000)
	 pUnit:GossipMenuAddItem(9, "Move Me To C-8", 4, 0)
	 else
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
end
end
pUnit:GossipSendMenu(player)
end
-------------Attacking Page------------
if (intid == 2) then
pUnit:GossipCreateMenu(99, player, 0)
if APawn8B1 == 1 then
      if HPieceC1 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-2]", 100, 0)
	  end
end
if APawn8B2 == 1 then
      if HPieceC3 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-3]", 100, 0)
	  end
	  if HPieceC1 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-1]", 100, 0)
      end
end
if APawn8B3 == 1 then
      if HPieceC4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-4]", 100, 0)
	  end
	  if HPieceC2 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-2]", 100, 0)
      end
end
if APawn8B4 == 1 then
      if HPieceC5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-5]", 100, 0)
	  end
	  if HPieceC2 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-3]", 100, 0)
      end
end
if APawn8B5 == 1 then
      if HPieceC6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-6]", 100, 0)
	  end
	  if HPieceC4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-4]", 100, 0)
      end
end
if APawn8B6 == 1 then
      if HPieceC7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-7]", 100, 0)
	  end
	  if HPieceC5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-5]", 100, 0)
      end
end
if APawn8B7 == 1 then
if HPieceC8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-8]", 100, 0)
	  end
	  if HPieceC6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-6]", 100, 0)
      end
end
if APawn8B8 == 1 then
	  if HPieceC7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [C-7]", 100, 0)
      end
end
if APawn8C1 == 1 then
      if HPieceD2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-2]", 100, 0)
	  end
end
if APawn8C2 == 1 then
      if HPieceD1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-1]", 100, 0)
	  end
	  if HPieceD3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-3]", 100, 0)
	  end
end
if APawn8C3 == 1 then
      if HPieceD2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-2]", 100, 0)
	  end
	  if HPieceD4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-4]", 100, 0)
	  end
end
if APawn8C4 == 1 then
         if HPieceD5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-5]", 100, 0)
	  end
	  if HPieceD3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-3]", 100, 0)
	  end
end
  
if APawn8C5 == 1 then
      if HPieceD6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-6]", 100, 0)
	  end
	  if HPieceD4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-4]", 100, 0)
      end
end
if APawn8C6 == 1 then
      if HPieceD7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-7]", 100, 0)
	  end
	  if HPieceD5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-5]", 100, 0)
      end
end
if APawn8C7 == 1 then
if HPieceC8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-8]", 100, 0)
	  end
	  if HPieceD6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-6]", 100, 0)
      end
end
if APawn8C8 == 1 then
	  if HPieceC7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [D-7]", 100, 0)
      end
end
------------------
if APawn8D1 == 1 then
      if HPieceE2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-2]", 100, 0)
	  end
end
if APawn8D2 == 1 then
      if HPieceE1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-1]", 100, 0)
	  end
	  if HPieceE3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-3]", 100, 0)
	  end
end
if APawn8D3 == 1 then
      if HPieceE2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-2]", 100, 0)
	  end
	  if HPieceE4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-4]", 100, 0)
	  end
end
if APawn8D4 == 1 then
         if HPieceE5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-5]", 100, 0)
	  end
	  if HPieceE3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-3]", 100, 0)
	  end
end
  
if APawn8D5 == 1 then
      if HPieceE6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-6]", 100, 0)
	  end
	  if HPieceE4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-4]", 100, 0)
      end
end
if APawn8D6 == 1 then
      if HPieceE7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-7]", 100, 0)
	  end
	  if HPieceE5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-5]", 100, 0)
      end
end
if APawn8D7 == 1 then
if HPieceE8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-8]", 100, 0)
	  end
	  if HPieceE6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-6]", 100, 0)
      end
end
if APawn8D8 == 1 then
	  if HPieceE7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [E-7]", 100, 0)
      end
end
-----------------------------
if APawn8E1 == 1 then
      if HPieceF2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-2]", 100, 0)
	  end
end
if APawn8E2 == 1 then
      if HPieceF1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-1]", 100, 0)
	  end
	  if HPieceF3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-3]", 100, 0)
	  end
end
if APawn8E3 == 1 then
      if HPieceF2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-2]", 100, 0)
	  end
	  if HPieceF4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-4]", 100, 0)
	  end
end
if APawn8E4 == 1 then
         if HPieceF5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-5]", 100, 0)
	  end
	  if HPieceF3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-3]", 100, 0)
	  end
end
  
if APawn8E5 == 1 then
      if HPieceF6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-6]", 100, 0)
	  end
	  if HPieceF4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-4]", 100, 0)
      end
end
if APawn8E6 == 1 then
      if HPieceF7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-7]", 100, 0)
	  end
	  if HPieceF5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-5]", 100, 0)
      end
end
if APawn8E7 == 1 then
if HPieceF8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-8]", 100, 0)
	  end
	  if HPieceF6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-6]", 100, 0)
      end
end
if APawn8E8 == 1 then
	  if HPieceF7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [F-7]", 100, 0)
      end 
end
---------------------
if APawn8F1 == 1 then
      if HPieceG2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-2]", 100, 0)
	  end
end
if APawn8F2 == 1 then
      if HPieceG1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-1]", 100, 0)
	  end
	  if HPieceG3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-3]", 100, 0)
	  end
end
if APawn8F3 == 1 then
      if HPieceG2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-2]", 100, 0)
	  end
	  if HPieceG4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-4]", 100, 0)
	  end
end
if APawn8F4 == 1 then
         if HPieceG5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-5]", 100, 0)
	  end
	  if HPieceG3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-3]", 100, 0)
	  end
end
  
if APawn8F5 == 1 then
      if HPieceG6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-6]", 100, 0)
	  end
	  if HPieceG4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-4]", 100, 0)
      end
end
if APawn8F6 == 1 then
      if HPieceG7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-7]", 100, 0)
	  end
	  if HPieceG5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-5]", 100, 0)
      end
end
if APawn8F7 == 1 then
if HPieceG8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-8]", 100, 0)
	  end
	  if HPieceG6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-6]", 100, 0)
      end
end
if APawn8F8 == 1 then
	  if HPieceG7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [G-7]", 100, 0)
      end
end
------------------------------
  if APawn8G1 == 1 then
      if HPieceH2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-2]", 100, 0)
	  end
end
if APawn8G2 == 1 then
      if HPieceH1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-1]", 100, 0)
	  end
	  if HPieceH3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-3]", 100, 0)
	  end
end
if APawn8G3 == 1 then
      if HPieceH2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-2]", 100, 0)
	  end
	  if HPieceH4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-4]", 100, 0)
	  end
end
if APawn8G4 == 1 then
         if HPieceH5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-5]", 100, 0)
	  end
	  if HPieceH3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-3]", 100, 0)
	  end
end
  
if APawn8G5 == 1 then
      if HPieceH6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-6]", 100, 0)
	  end
	  if HPieceH4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-4]", 100, 0)
      end
end
if APawn8G6 == 1 then
      if HPieceH7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-7]", 100, 0)
	  end
	  if HPieceH5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-5]", 100, 0)
      end
end
if APawn8G7 == 1 then
if HPieceH8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-8]", 100, 0)
	  end
	  if HPieceH6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-6]", 100, 0)
      end
end
if APawn8G8 == 1 then
	  if HPieceH7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Horde Piece! [H-7]", 100, 0)
      end
end
----------------------
if APawn8H1 == 1 then
end
if APawn8H2 == 1 then
end
if APawn8H3 == 1 then
end
if APawn8H4 == 1 then
end
if APawn8H5 == 1 then
end
if APawn8H6 == 1 then
end
if APawn8H7 == 1 then
end
if APawn8H8 == 1 then
end
-----------------------
pUnit:GossipSendMenu(player)
end
end
-----------------Horde Pawns-----------
---------------------------------------------
--------------------------------------------
function HPawn1_OnGossipTalk(pUnit, event, player, pMisc)
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "Show Me Where I Can Move.", 1, 0)
   pUnit:GossipMenuAddItem(9, "Show Me Who I Can Attack!", 2, 0)
   pUnit:GossipMenuAddItem(0, "Never Mind.", 3, 0)
   pUnit:GossipSendMenu(player)
end

function HPawn1_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
if (intid == 1) then
pUnit:GossipCreateMenu(99, player, 0)
   if HPawn1G1 == 1 then
     if APieceC1 == 1 then
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
	 else
	 if APieceC1 == 1 then
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
	 else
	 if APieceD1 == 1 then
     pUnit:GossipMenuAddItem(9, "Move Me To C1 [Up One Space]", 4, 0)
	 else
	 if APieceD1 == 1 then
	 pUnit:GossipMenuAddItem(9, "Move Me To C1 [Up One Space]", 4, 0)
	 else
     pUnit:GossipMenuAddItem(9, "Move Me To D1 [Up Two Space]", 5, 0)
	 pUnit:GossipMenuAddItem(9, "Move Me To C1 [Up One Space]", 4, 0)
end
end
end
end
end
pUnit:GossipSendMenu(player)
-------------Attacking Page------------
if (intid == 2) then
pUnit:GossipCreateMenu(99, player, 0)
if HPawn1G1 == 1 then
      if APieceF2 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-2]", 100, 0)
	  end
end
if HPawn1G2 == 1 then
      if APieceF3 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-3]", 100, 0)
	  end
	  if APieceF1 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-1]", 100, 0)
      end
end
if HPawn1G3 == 1 then
      if APieceF4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-4]", 100, 0)
	  end
	  if APieceF2 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-2]", 100, 0)
      end
end
if HPawn1G4 == 1 then
      if APieceF5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-5]", 100, 0)
	  end
	  if APieceF2 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-3]", 100, 0)
      end
end
if HPawn1G5 == 1 then
      if APieceF6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-6]", 100, 0)
	  end
	  if APieceF4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-4]", 100, 0)
      end
end
if HPawn1G6 == 1 then
      if APieceF7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-7]", 100, 0)
	  end
	  if APieceF5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-5]", 100, 0)
      end
end
if HPawn1G7 == 1 then
if APieceF8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-8]", 100, 0)
	  end
	  if APieceF6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-6]", 100, 0)
      end
end
if HPawn1G8 == 1 then
	  if APieceF7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-7]", 100, 0)
      end
end
----------------------------------------------------
if HPawn1F1 == 1 then
      if APieceE2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-2]", 100, 0)
	  end
end
if HPawn1F2 == 1 then
      if APieceE1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-1]", 100, 0)
	  end
	  if APieceE3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-3]", 100, 0)
	  end
end
if HPawn1F3 == 1 then
      if APieceE2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-2]", 100, 0)
	  end
	  if APieceE4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-4]", 100, 0)
	  end
end
if HPawn1F4 == 1 then
         if APieceE5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-5]", 100, 0)
	  end
	  if APieceE3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-3]", 100, 0)
	  end
end
  
if HPawn1F5 == 1 then
      if APieceE6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-6]", 100, 0)
	  end
	  if APieceE4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-4]", 100, 0)
      end
end
if HPawn1F6 == 1 then
      if APieceE7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-7]", 100, 0)
	  end
	  if APieceE5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-5]", 100, 0)
      end
end
if HPawn1F7 == 1 then
if APieceG8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-8]", 100, 0)
	  end
	  if APieceE6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-6]", 100, 0)
      end
end
if HPawn1F8 == 1 then
	  if APieceG7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-7]", 100, 0)
      end
end
--------------------------------------------------
if HPawn1E1 == 1 then
      if APieceD2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-2]", 100, 0)
	  end
end
if HPawn1E2 == 1 then
      if APieceD1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-1]", 100, 0)
	  end
	  if APieceD3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-3]", 100, 0)
	  end
end
if HPawn1E3 == 1 then
      if APieceD2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-2]", 100, 0)
	  end
	  if APieceD4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-4]", 100, 0)
	  end
end
if HPawn1E4 == 1 then
         if APieceD5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-5]", 100, 0)
	  end
	  if APieceD3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-3]", 100, 0)
	  end
end
  
if HPawn1E5 == 1 then
      if APieceD6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-6]", 100, 0)
	  end
	  if APieceD4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-4]", 100, 0)
      end
end
if HPawn1E6 == 1 then
      if APieceD7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-7]", 100, 0)
	  end
	  if APieceD5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-5]", 100, 0)
      end
end
if HPawn1E7 == 1 then
if APieceD8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-8]", 100, 0)
	  end
	  if APieceD6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-6]", 100, 0)
      end
end
if HPawn1E8 == 1 then
	  if APieceD7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-7]", 100, 0)
      end
end
-----------------------------
if HPawn1D1 == 1 then
      if APieceC2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-2]", 100, 0)
	  end
end
if HPawn1D2 == 1 then
      if APieceC1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-1]", 100, 0)
	  end
	  if APieceC3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-3]", 100, 0)
	  end
end
if HPawn1D3 == 1 then
      if APieceC2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-2]", 100, 0)
	  end
	  if APieceC4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-4]", 100, 0)
	  end
end
if HPawn1D4 == 1 then
         if APieceC5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-5]", 100, 0)
	  end
	  if APieceC3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-3]", 100, 0)
	  end
end
  
if HPawn1D5 == 1 then
      if APieceC6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-6]", 100, 0)
	  end
	  if APieceC4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-4]", 100, 0)
      end
end
if HPawn1D6 == 1 then
      if APieceC7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-7]", 100, 0)
	  end
	  if APieceC5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-5]", 100, 0)
      end
end
if HPawn1D7 == 1 then
if APieceC8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-8]", 100, 0)
	  end
	  if APieceC6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-6]", 100, 0)
      end
end
if HPawn1D8 == 1 then
	  if APieceC7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-7]", 100, 0)
      end 
end
---------------------
if HPawn1C1 == 1 then
      if APieceB2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-2]", 100, 0)
	  end
end
if HPawn1C2 == 1 then
      if APieceB1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-1]", 100, 0)
	  end
	  if APieceB3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-3]", 100, 0)
	  end
end
if HPawn1C3 == 1 then
      if APieceB2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-2]", 100, 0)
	  end
	  if APieceB4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-4]", 100, 0)
	  end
end
if HPawn1C4 == 1 then
         if APieceB5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-5]", 100, 0)
	  end
	  if APieceB3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-3]", 100, 0)
	  end
end
  
if HPawn1C5 == 1 then
      if APieceB6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-6]", 100, 0)
	  end
	  if APieceB4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-4]", 100, 0)
      end
end
if HPawn1C6 == 1 then
      if APieceB7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-7]", 100, 0)
	  end
	  if APieceB5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-5]", 100, 0)
      end
end
if HPawn1C7 == 1 then
if APieceB8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-8]", 100, 0)
	  end
	  if APieceB6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-6]", 100, 0)
      end
end
if HPawn1C8 == 1 then
	  if APieceB7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-7]", 100, 0)
      end
end
------------------------------
  if HPawn1B1 == 1 then
      if APieceH2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-2]", 100, 0)
	  end
end
if HPawn1B2 == 1 then
      if APieceH1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-1]", 100, 0)
	  end
	  if APieceH3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-3]", 100, 0)
	  end
end
if HPawn1B3 == 1 then
      if APieceH2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-2]", 100, 0)
	  end
	  if APieceH4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-4]", 100, 0)
	  end
end
if HPawn1B4 == 1 then
         if APieceH5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-5]", 100, 0)
	  end
	  if APieceH3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-3]", 100, 0)
	  end
end
  
if HPawn1B5 == 1 then
      if APieceH6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-6]", 100, 0)
	  end
	  if APieceH4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-4]", 100, 0)
      end
end
if HPawn1B6 == 1 then
      if APieceH7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-7]", 100, 0)
	  end
	  if APieceH5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-5]", 100, 0)
      end
end
if HPawn1B7 == 1 then
if APieceH8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-8]", 100, 0)
	  end
	  if APieceH6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-6]", 100, 0)
      end
end
if HPawn1B8 == 1 then
	  if APieceH7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-7]", 100, 0)
      end
end
----------------------
if HPawn1A1 == 1 then
end
if HPawn1A2 == 1 then
end
if HPawn1A3 == 1 then
end
if HPawn1A4 == 1 then
end
if HPawn1A5 == 1 then
end
if HPawn1A6 == 1 then
end
if HPawn1A7 == 1 then
end
if HPawn1A8 == 1 then
end
-----------------------
pUnit:GossipSendMenu(player)
end
end
end
-------------Horde Pawn 2----------
function HPawn2_OnGossipTalk(pUnit, event, player, pMisc)
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "Show Me Where I Can Move.", 1, 0)
   pUnit:GossipMenuAddItem(9, "Show Me Who I Can Attack!", 2, 0)
   pUnit:GossipMenuAddItem(0, "Never Mind.", 3, 0)
   pUnit:GossipSendMenu(player)
end

function HPawn2_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
if (intid == 1) then
pUnit:GossipCreateMenu(99, player, 0)
   if HPawn2G1 == 1 then
     if APieceC1 == 1 then
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
	 else
	 if APieceC1 == 1 then
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
	 else
	 if APieceD1 == 1 then
     pUnit:GossipMenuAddItem(9, "Move Me To C1 [Up One Space]", 4, 0)
	 else
	 if APieceD1 == 1 then
	 pUnit:GossipMenuAddItem(9, "Move Me To C1 [Up One Space]", 4, 0)
	 else
     pUnit:GossipMenuAddItem(9, "Move Me To D1 [Up Two Space]", 5, 0)
	 pUnit:GossipMenuAddItem(9, "Move Me To C1 [Up One Space]", 4, 0)
end
end
end
end
end
pUnit:GossipSendMenu(player)
-------------Attacking Page------------
if (intid == 2) then
pUnit:GossipCreateMenu(99, player, 0)
if HPawn2G1 == 1 then
      if APieceF2 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-2]", 100, 0)
	  end
end
if HPawn2G2 == 1 then
      if APieceF3 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-3]", 100, 0)
	  end
	  if APieceF1 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-1]", 100, 0)
      end
end
if HPawn2G3 == 1 then
      if APieceF4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-4]", 100, 0)
	  end
	  if APieceF2 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-2]", 100, 0)
      end
end
if HPawn2G4 == 1 then
      if APieceF5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-5]", 100, 0)
	  end
	  if APieceF2 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-3]", 100, 0)
      end
end
if HPawn2G5 == 1 then
      if APieceF6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-6]", 100, 0)
	  end
	  if APieceF4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-4]", 100, 0)
      end
end
if HPawn2G6 == 1 then
      if APieceF7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-7]", 100, 0)
	  end
	  if APieceF5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-5]", 100, 0)
      end
end
if HPawn2G7 == 1 then
if APieceF8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-8]", 100, 0)
	  end
	  if APieceF6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-6]", 100, 0)
      end
end
if HPawn2G8 == 1 then
	  if APieceF7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-7]", 100, 0)
      end
end
----------------------------------------------------
if HPawn2F1 == 1 then
      if APieceE2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-2]", 100, 0)
	  end
end
if HPawn2F2 == 1 then
      if APieceE1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-1]", 100, 0)
	  end
	  if APieceE3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-3]", 100, 0)
	  end
end
if HPawn2F3 == 1 then
      if APieceE2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-2]", 100, 0)
	  end
	  if APieceE4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-4]", 100, 0)
	  end
end
if HPawn2F4 == 1 then
         if APieceE5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-5]", 100, 0)
	  end
	  if APieceE3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-3]", 100, 0)
	  end
end
  
if HPawn2F5 == 1 then
      if APieceE6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-6]", 100, 0)
	  end
	  if APieceE4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-4]", 100, 0)
      end
end
if HPawn2F6 == 1 then
      if APieceE7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-7]", 100, 0)
	  end
	  if APieceE5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-5]", 100, 0)
      end
end
if HPawn2F7 == 1 then
if APieceG8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-8]", 100, 0)
	  end
	  if APieceE6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-6]", 100, 0)
      end
end
if HPawn2F8 == 1 then
	  if APieceG7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-7]", 100, 0)
      end
end
--------------------------------------------------
if HPawn2E1 == 1 then
      if APieceD2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-2]", 100, 0)
	  end
end
if HPawn2E2 == 1 then
      if APieceD1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-1]", 100, 0)
	  end
	  if APieceD3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-3]", 100, 0)
	  end
end
if HPawn2E3 == 1 then
      if APieceD2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-2]", 100, 0)
	  end
	  if APieceD4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-4]", 100, 0)
	  end
end
if HPawn2E4 == 1 then
         if APieceD5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-5]", 100, 0)
	  end
	  if APieceD3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-3]", 100, 0)
	  end
end
  
if HPawn2E5 == 1 then
      if APieceD6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-6]", 100, 0)
	  end
	  if APieceD4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-4]", 100, 0)
      end
end
if HPawn2E6 == 1 then
      if APieceD7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-7]", 100, 0)
	  end
	  if APieceD5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-5]", 100, 0)
      end
end
if HPawn2E7 == 1 then
if APieceD8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-8]", 100, 0)
	  end
	  if APieceD6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-6]", 100, 0)
      end
end
if HPawn2E8 == 1 then
	  if APieceD7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-7]", 100, 0)
      end
end
-----------------------------
if HPawn2D1 == 1 then
      if APieceC2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-2]", 100, 0)
	  end
end
if HPawn2D2 == 1 then
      if APieceC1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-1]", 100, 0)
	  end
	  if APieceC3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-3]", 100, 0)
	  end
end
if HPawn2D3 == 1 then
      if APieceC2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-2]", 100, 0)
	  end
	  if APieceC4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-4]", 100, 0)
	  end
end
if HPawn2D4 == 1 then
         if APieceC5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-5]", 100, 0)
	  end
	  if APieceC3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-3]", 100, 0)
	  end
end
  
if HPawn2D5 == 1 then
      if APieceC6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-6]", 100, 0)
	  end
	  if APieceC4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-4]", 100, 0)
      end
end
if HPawn2D6 == 1 then
      if APieceC7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-7]", 100, 0)
	  end
	  if APieceC5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-5]", 100, 0)
      end
end
if HPawn2D7 == 1 then
if APieceC8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-8]", 100, 0)
	  end
	  if APieceC6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-6]", 100, 0)
      end
end
if HPawn2D8 == 1 then
	  if APieceC7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-7]", 100, 0)
      end 
end
---------------------
if HPawn2C1 == 1 then
      if APieceB2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-2]", 100, 0)
	  end
end
if HPawn2C2 == 1 then
      if APieceB1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-1]", 100, 0)
	  end
	  if APieceB3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-3]", 100, 0)
	  end
end
if HPawn2C3 == 1 then
      if APieceB2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-2]", 100, 0)
	  end
	  if APieceB4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-4]", 100, 0)
	  end
end
if HPawn2C4 == 1 then
         if APieceB5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-5]", 100, 0)
	  end
	  if APieceB3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-3]", 100, 0)
	  end
end
  
if HPawn2C5 == 1 then
      if APieceB6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-6]", 100, 0)
	  end
	  if APieceB4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-4]", 100, 0)
      end
end
if HPawn2C6 == 1 then
      if APieceB7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-7]", 100, 0)
	  end
	  if APieceB5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-5]", 100, 0)
      end
end
if HPawn2C7 == 1 then
if APieceB8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-8]", 100, 0)
	  end
	  if APieceB6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-6]", 100, 0)
      end
end
if HPawn2C8 == 1 then
	  if APieceB7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-7]", 100, 0)
      end
end
------------------------------
  if HPawn2B1 == 1 then
      if APieceH2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-2]", 100, 0)
	  end
end
if HPawn2B2 == 1 then
      if APieceH1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-1]", 100, 0)
	  end
	  if APieceH3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-3]", 100, 0)
	  end
end
if HPawn2B3 == 1 then
      if APieceH2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-2]", 100, 0)
	  end
	  if APieceH4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-4]", 100, 0)
	  end
end
if HPawn2B4 == 1 then
         if APieceH5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-5]", 100, 0)
	  end
	  if APieceH3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-3]", 100, 0)
	  end
end
  
if HPawn2B5 == 1 then
      if APieceH6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-6]", 100, 0)
	  end
	  if APieceH4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-4]", 100, 0)
      end
end
if HPawn2B6 == 1 then
      if APieceH7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-7]", 100, 0)
	  end
	  if APieceH5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-5]", 100, 0)
      end
end
if HPawn2B7 == 1 then
if APieceH8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-8]", 100, 0)
	  end
	  if APieceH6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-6]", 100, 0)
      end
end
if HPawn2B8 == 1 then
	  if APieceH7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-7]", 100, 0)
      end
end
----------------------
if HPawn2A1 == 1 then
end
if HPawn2A2 == 1 then
end
if HPawn2A3 == 1 then
end
if HPawn2A4 == 1 then
end
if HPawn2A5 == 1 then
end
if HPawn2A6 == 1 then
end
if HPawn2A7 == 1 then
end
if HPawn2A8 == 1 then
end
-----------------------
pUnit:GossipSendMenu(player)
end
end
end
--------Horde Pawn 3------
function HPawn3_OnGossipTalk(pUnit, event, player, pMisc)
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "Show Me Where I Can Move.", 1, 0)
   pUnit:GossipMenuAddItem(9, "Show Me Who I Can Attack!", 2, 0)
   pUnit:GossipMenuAddItem(0, "Never Mind.", 3, 0)
   pUnit:GossipSendMenu(player)
end

function HPawn3_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
if (intid == 1) then
pUnit:GossipCreateMenu(99, player, 0)
   if HPawn3G1 == 1 then
     if APieceC1 == 1 then
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
	 else
	 if APieceC1 == 1 then
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
	 else
	 if APieceD1 == 1 then
     pUnit:GossipMenuAddItem(9, "Move Me To C1 [Up One Space]", 4, 0)
	 else
	 if APieceD1 == 1 then
	 pUnit:GossipMenuAddItem(9, "Move Me To C1 [Up One Space]", 4, 0)
	 else
     pUnit:GossipMenuAddItem(9, "Move Me To D1 [Up Two Space]", 5, 0)
	 pUnit:GossipMenuAddItem(9, "Move Me To C1 [Up One Space]", 4, 0)
end
end
end
end
end
pUnit:GossipSendMenu(player)
-------------Attacking Page------------
if (intid == 2) then
pUnit:GossipCreateMenu(99, player, 0)
if HPawn3G1 == 1 then
      if APieceF2 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-2]", 100, 0)
	  end
end
if HPawn3G2 == 1 then
      if APieceF3 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-3]", 100, 0)
	  end
	  if APieceF1 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-1]", 100, 0)
      end
end
if HPawn3G3 == 1 then
      if APieceF4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-4]", 100, 0)
	  end
	  if APieceF2 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-2]", 100, 0)
      end
end
if HPawn3G4 == 1 then
      if APieceF5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-5]", 100, 0)
	  end
	  if APieceF2 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-3]", 100, 0)
      end
end
if HPawn3G5 == 1 then
      if APieceF6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-6]", 100, 0)
	  end
	  if APieceF4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-4]", 100, 0)
      end
end
if HPawn3G6 == 1 then
      if APieceF7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-7]", 100, 0)
	  end
	  if APieceF5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-5]", 100, 0)
      end
end
if HPawn3G7 == 1 then
if APieceF8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-8]", 100, 0)
	  end
	  if APieceF6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-6]", 100, 0)
      end
end
if HPawn3G8 == 1 then
	  if APieceF7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-7]", 100, 0)
      end
end
----------------------------------------------------
if HPawn3F1 == 1 then
      if APieceE2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-2]", 100, 0)
	  end
end
if HPawn3F2 == 1 then
      if APieceE1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-1]", 100, 0)
	  end
	  if APieceE3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-3]", 100, 0)
	  end
end
if HPawn3F3 == 1 then
      if APieceE2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-2]", 100, 0)
	  end
	  if APieceE4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-4]", 100, 0)
	  end
end
if HPawn3F4 == 1 then
         if APieceE5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-5]", 100, 0)
	  end
	  if APieceE3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-3]", 100, 0)
	  end
end
  
if HPawn3F5 == 1 then
      if APieceE6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-6]", 100, 0)
	  end
	  if APieceE4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-4]", 100, 0)
      end
end
if HPawn3F6 == 1 then
      if APieceE7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-7]", 100, 0)
	  end
	  if APieceE5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-5]", 100, 0)
      end
end
if HPawn3F7 == 1 then
if APieceG8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-8]", 100, 0)
	  end
	  if APieceE6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-6]", 100, 0)
      end
end
if HPawn3F8 == 1 then
	  if APieceG7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-7]", 100, 0)
      end
end
--------------------------------------------------
if HPawn3E1 == 1 then
      if APieceD2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-2]", 100, 0)
	  end
end
if HPawn3E2 == 1 then
      if APieceD1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-1]", 100, 0)
	  end
	  if APieceD3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-3]", 100, 0)
	  end
end
if HPawn3E3 == 1 then
      if APieceD2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-2]", 100, 0)
	  end
	  if APieceD4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-4]", 100, 0)
	  end
end
if HPawn3E4 == 1 then
         if APieceD5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-5]", 100, 0)
	  end
	  if APieceD3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-3]", 100, 0)
	  end
end
  
if HPawn3E5 == 1 then
      if APieceD6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-6]", 100, 0)
	  end
	  if APieceD4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-4]", 100, 0)
      end
end
if HPawn3E6 == 1 then
      if APieceD7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-7]", 100, 0)
	  end
	  if APieceD5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-5]", 100, 0)
      end
end
if HPawn3E7 == 1 then
if APieceD8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-8]", 100, 0)
	  end
	  if APieceD6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-6]", 100, 0)
      end
end
if HPawn3E8 == 1 then
	  if APieceD7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-7]", 100, 0)
      end
end
-----------------------------
if HPawn3D1 == 1 then
      if APieceC2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-2]", 100, 0)
	  end
end
if HPawn3D2 == 1 then
      if APieceC1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-1]", 100, 0)
	  end
	  if APieceC3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-3]", 100, 0)
	  end
end
if HPawn3D3 == 1 then
      if APieceC2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-2]", 100, 0)
	  end
	  if APieceC4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-4]", 100, 0)
	  end
end
if HPawn3D4 == 1 then
         if APieceC5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-5]", 100, 0)
	  end
	  if APieceC3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-3]", 100, 0)
	  end
end
  
if HPawn3D5 == 1 then
      if APieceC6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-6]", 100, 0)
	  end
	  if APieceC4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-4]", 100, 0)
      end
end
if HPawn3D6 == 1 then
      if APieceC7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-7]", 100, 0)
	  end
	  if APieceC5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-5]", 100, 0)
      end
end
if HPawn3D7 == 1 then
if APieceC8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-8]", 100, 0)
	  end
	  if APieceC6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-6]", 100, 0)
      end
end
if HPawn3D8 == 1 then
	  if APieceC7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-7]", 100, 0)
      end 
end
---------------------
if HPawn3C1 == 1 then
      if APieceB2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-2]", 100, 0)
	  end
end
if HPawn3C2 == 1 then
      if APieceB1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-1]", 100, 0)
	  end
	  if APieceB3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-3]", 100, 0)
	  end
end
if HPawn3C3 == 1 then
      if APieceB2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-2]", 100, 0)
	  end
	  if APieceB4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-4]", 100, 0)
	  end
end
if HPawn3C4 == 1 then
         if APieceB5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-5]", 100, 0)
	  end
	  if APieceB3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-3]", 100, 0)
	  end
end
  
if HPawn3C5 == 1 then
      if APieceB6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-6]", 100, 0)
	  end
	  if APieceB4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-4]", 100, 0)
      end
end
if HPawn3C6 == 1 then
      if APieceB7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-7]", 100, 0)
	  end
	  if APieceB5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-5]", 100, 0)
      end
end
if HPawn3C7 == 1 then
if APieceB8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-8]", 100, 0)
	  end
	  if APieceB6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-6]", 100, 0)
      end
end
if HPawn3C8 == 1 then
	  if APieceB7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-7]", 100, 0)
      end
end
------------------------------
  if HPawn3B1 == 1 then
      if APieceH2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-2]", 100, 0)
	  end
end
if HPawn3B2 == 1 then
      if APieceH1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-1]", 100, 0)
	  end
	  if APieceH3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-3]", 100, 0)
	  end
end
if HPawn3B3 == 1 then
      if APieceH2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-2]", 100, 0)
	  end
	  if APieceH4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-4]", 100, 0)
	  end
end
if HPawn3B4 == 1 then
         if APieceH5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-5]", 100, 0)
	  end
	  if APieceH3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-3]", 100, 0)
	  end
end
  
if HPawn3B5 == 1 then
      if APieceH6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-6]", 100, 0)
	  end
	  if APieceH4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-4]", 100, 0)
      end
end
if HPawn3B6 == 1 then
      if APieceH7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-7]", 100, 0)
	  end
	  if APieceH5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-5]", 100, 0)
      end
end
if HPawn3B7 == 1 then
if APieceH8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-8]", 100, 0)
	  end
	  if APieceH6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-6]", 100, 0)
      end
end
if HPawn3B8 == 1 then
	  if APieceH7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-7]", 100, 0)
      end
end
----------------------
if HPawn3A1 == 1 then
end
if HPawn3A2 == 1 then
end
if HPawn3A3 == 1 then
end
if HPawn3A4 == 1 then
end
if HPawn3A5 == 1 then
end
if HPawn3A6 == 1 then
end
if HPawn3A7 == 1 then
end
if HPawn3A8 == 1 then
end
-----------------------
pUnit:GossipSendMenu(player)
end
end
end
----------Horde Pawn 4------
function HPawn4_OnGossipTalk(pUnit, event, player, pMisc)
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "Show Me Where I Can Move.", 1, 0)
   pUnit:GossipMenuAddItem(9, "Show Me Who I Can Attack!", 2, 0)
   pUnit:GossipMenuAddItem(0, "Never Mind.", 3, 0)
   pUnit:GossipSendMenu(player)
end

function HPawn4_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
if (intid == 1) then
pUnit:GossipCreateMenu(99, player, 0)
   if HPawn4G1 == 1 then
     if APieceC1 == 1 then
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
	 else
	 if APieceC1 == 1 then
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
	 else
	 if APieceD1 == 1 then
     pUnit:GossipMenuAddItem(9, "Move Me To C1 [Up One Space]", 4, 0)
	 else
	 if APieceD1 == 1 then
	 pUnit:GossipMenuAddItem(9, "Move Me To C1 [Up One Space]", 4, 0)
	 else
     pUnit:GossipMenuAddItem(9, "Move Me To D1 [Up Two Space]", 5, 0)
	 pUnit:GossipMenuAddItem(9, "Move Me To C1 [Up One Space]", 4, 0)
end
end
end
end
end
pUnit:GossipSendMenu(player)
-------------Attacking Page------------
if (intid == 2) then
pUnit:GossipCreateMenu(99, player, 0)
if HPawn4G1 == 1 then
      if APieceF2 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-2]", 100, 0)
	  end
end
if HPawn4G2 == 1 then
      if APieceF3 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-3]", 100, 0)
	  end
	  if APieceF1 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-1]", 100, 0)
      end
end
if HPawn4G3 == 1 then
      if APieceF4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-4]", 100, 0)
	  end
	  if APieceF2 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-2]", 100, 0)
      end
end
if HPawn4G4 == 1 then
      if APieceF5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-5]", 100, 0)
	  end
	  if APieceF2 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-3]", 100, 0)
      end
end
if HPawn4G5 == 1 then
      if APieceF6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-6]", 100, 0)
	  end
	  if APieceF4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-4]", 100, 0)
      end
end
if HPawn4G6 == 1 then
      if APieceF7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-7]", 100, 0)
	  end
	  if APieceF5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-5]", 100, 0)
      end
end
if HPawn4G7 == 1 then
if APieceF8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-8]", 100, 0)
	  end
	  if APieceF6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-6]", 100, 0)
      end
end
if HPawn4G8 == 1 then
	  if APieceF7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-7]", 100, 0)
      end
end
----------------------------------------------------
if HPawn4F1 == 1 then
      if APieceE2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-2]", 100, 0)
	  end
end
if HPawn4F2 == 1 then
      if APieceE1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-1]", 100, 0)
	  end
	  if APieceE3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-3]", 100, 0)
	  end
end
if HPawn4F3 == 1 then
      if APieceE2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-2]", 100, 0)
	  end
	  if APieceE4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-4]", 100, 0)
	  end
end
if HPawn4F4 == 1 then
         if APieceE5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-5]", 100, 0)
	  end
	  if APieceE3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-3]", 100, 0)
	  end
end
  
if HPawn4F5 == 1 then
      if APieceE6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-6]", 100, 0)
	  end
	  if APieceE4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-4]", 100, 0)
      end
end
if HPawn4F6 == 1 then
      if APieceE7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-7]", 100, 0)
	  end
	  if APieceE5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-5]", 100, 0)
      end
end
if HPawn4F7 == 1 then
if APieceG8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-8]", 100, 0)
	  end
	  if APieceE6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-6]", 100, 0)
      end
end
if HPawn4F8 == 1 then
	  if APieceG7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-7]", 100, 0)
      end
end
--------------------------------------------------
if HPawn4E1 == 1 then
      if APieceD2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-2]", 100, 0)
	  end
end
if HPawn4E2 == 1 then
      if APieceD1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-1]", 100, 0)
	  end
	  if APieceD3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-3]", 100, 0)
	  end
end
if HPawn4E3 == 1 then
      if APieceD2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-2]", 100, 0)
	  end
	  if APieceD4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-4]", 100, 0)
	  end
end
if HPawn4E4 == 1 then
         if APieceD5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-5]", 100, 0)
	  end
	  if APieceD3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-3]", 100, 0)
	  end
end
  
if HPawn4E5 == 1 then
      if APieceD6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-6]", 100, 0)
	  end
	  if APieceD4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-4]", 100, 0)
      end
end
if HPawn4E6 == 1 then
      if APieceD7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-7]", 100, 0)
	  end
	  if APieceD5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-5]", 100, 0)
      end
end
if HPawn4E7 == 1 then
if APieceD8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-8]", 100, 0)
	  end
	  if APieceD6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-6]", 100, 0)
      end
end
if HPawn4E8 == 1 then
	  if APieceD7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-7]", 100, 0)
      end
end
-----------------------------
if HPawn4D1 == 1 then
      if APieceC2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-2]", 100, 0)
	  end
end
if HPawn4D2 == 1 then
      if APieceC1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-1]", 100, 0)
	  end
	  if APieceC3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-3]", 100, 0)
	  end
end
if HPawn4D3 == 1 then
      if APieceC2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-2]", 100, 0)
	  end
	  if APieceC4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-4]", 100, 0)
	  end
end
if HPawn4D4 == 1 then
         if APieceC5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-5]", 100, 0)
	  end
	  if APieceC3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-3]", 100, 0)
	  end
end
  
if HPawn4D5 == 1 then
      if APieceC6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-6]", 100, 0)
	  end
	  if APieceC4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-4]", 100, 0)
      end
end
if HPawn4D6 == 1 then
      if APieceC7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-7]", 100, 0)
	  end
	  if APieceC5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-5]", 100, 0)
      end
end
if HPawn4D7 == 1 then
if APieceC8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-8]", 100, 0)
	  end
	  if APieceC6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-6]", 100, 0)
      end
end
if HPawn4D8 == 1 then
	  if APieceC7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-7]", 100, 0)
      end 
end
---------------------
if HPawn4C1 == 1 then
      if APieceB2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-2]", 100, 0)
	  end
end
if HPawn4C2 == 1 then
      if APieceB1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-1]", 100, 0)
	  end
	  if APieceB3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-3]", 100, 0)
	  end
end
if HPawn4C3 == 1 then
      if APieceB2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-2]", 100, 0)
	  end
	  if APieceB4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-4]", 100, 0)
	  end
end
if HPawn4C4 == 1 then
         if APieceB5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-5]", 100, 0)
	  end
	  if APieceB3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-3]", 100, 0)
	  end
end
  
if HPawn4C5 == 1 then
      if APieceB6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-6]", 100, 0)
	  end
	  if APieceB4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-4]", 100, 0)
      end
end
if HPawn4C6 == 1 then
      if APieceB7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-7]", 100, 0)
	  end
	  if APieceB5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-5]", 100, 0)
      end
end
if HPawn4C7 == 1 then
if APieceB8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-8]", 100, 0)
	  end
	  if APieceB6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-6]", 100, 0)
      end
end
if HPawn4C8 == 1 then
	  if APieceB7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-7]", 100, 0)
      end
end
------------------------------
  if HPawn4B1 == 1 then
      if APieceH2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-2]", 100, 0)
	  end
end
if HPawn4B2 == 1 then
      if APieceH1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-1]", 100, 0)
	  end
	  if APieceH3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-3]", 100, 0)
	  end
end
if HPawn4B3 == 1 then
      if APieceH2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-2]", 100, 0)
	  end
	  if APieceH4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-4]", 100, 0)
	  end
end
if HPawn4B4 == 1 then
         if APieceH5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-5]", 100, 0)
	  end
	  if APieceH3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-3]", 100, 0)
	  end
end
  
if HPawn4B5 == 1 then
      if APieceH6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-6]", 100, 0)
	  end
	  if APieceH4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-4]", 100, 0)
      end
end
if HPawn4B6 == 1 then
      if APieceH7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-7]", 100, 0)
	  end
	  if APieceH5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-5]", 100, 0)
      end
end
if HPawn4B7 == 1 then
if APieceH8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-8]", 100, 0)
	  end
	  if APieceH6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-6]", 100, 0)
      end
end
if HPawn4B8 == 1 then
	  if APieceH7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-7]", 100, 0)
      end
end
----------------------
if HPawn4A1 == 1 then
end
if HPawn4A2 == 1 then
end
if HPawn4A3 == 1 then
end
if HPawn4A4 == 1 then
end
if HPawn4A5 == 1 then
end
if HPawn4A6 == 1 then
end
if HPawn4A7 == 1 then
end
if HPawn4A8 == 1 then
end
-----------------------
pUnit:GossipSendMenu(player)
end
end
end
----------Horde Pawn 5-------
function HPawn5_OnGossipTalk(pUnit, event, player, pMisc)
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "Show Me Where I Can Move.", 1, 0)
   pUnit:GossipMenuAddItem(9, "Show Me Who I Can Attack!", 2, 0)
   pUnit:GossipMenuAddItem(0, "Never Mind.", 3, 0)
   pUnit:GossipSendMenu(player)
end

function HPawn5_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
if (intid == 1) then
pUnit:GossipCreateMenu(99, player, 0)
   if HPawn5G1 == 1 then
     if APieceC1 == 1 then
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
	 else
	 if APieceC1 == 1 then
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
	 else
	 if APieceD1 == 1 then
     pUnit:GossipMenuAddItem(9, "Move Me To C1 [Up One Space]", 4, 0)
	 else
	 if APieceD1 == 1 then
	 pUnit:GossipMenuAddItem(9, "Move Me To C1 [Up One Space]", 4, 0)
	 else
     pUnit:GossipMenuAddItem(9, "Move Me To D1 [Up Two Space]", 5, 0)
	 pUnit:GossipMenuAddItem(9, "Move Me To C1 [Up One Space]", 4, 0)
end
end
end
end
end
pUnit:GossipSendMenu(player)
-------------Attacking Page------------
if (intid == 2) then
pUnit:GossipCreateMenu(99, player, 0)
if HPawn5G1 == 1 then
      if APieceF2 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-2]", 100, 0)
	  end
end
if HPawn5G2 == 1 then
      if APieceF3 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-3]", 100, 0)
	  end
	  if APieceF1 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-1]", 100, 0)
      end
end
if HPawn5G3 == 1 then
      if APieceF4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-4]", 100, 0)
	  end
	  if APieceF2 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-2]", 100, 0)
      end
end
if HPawn5G4 == 1 then
      if APieceF5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-5]", 100, 0)
	  end
	  if APieceF2 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-3]", 100, 0)
      end
end
if HPawn5G5 == 1 then
      if APieceF6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-6]", 100, 0)
	  end
	  if APieceF4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-4]", 100, 0)
      end
end
if HPawn5G6 == 1 then
      if APieceF7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-7]", 100, 0)
	  end
	  if APieceF5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-5]", 100, 0)
      end
end
if HPawn5G7 == 1 then
if APieceF8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-8]", 100, 0)
	  end
	  if APieceF6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-6]", 100, 0)
      end
end
if HPawn5G8 == 1 then
	  if APieceF7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-7]", 100, 0)
      end
end
----------------------------------------------------
if HPawn5F1 == 1 then
      if APieceE2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-2]", 100, 0)
	  end
end
if HPawn5F2 == 1 then
      if APieceE1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-1]", 100, 0)
	  end
	  if APieceE3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-3]", 100, 0)
	  end
end
if HPawn5F3 == 1 then
      if APieceE2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-2]", 100, 0)
	  end
	  if APieceE4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-4]", 100, 0)
	  end
end
if HPawn5F4 == 1 then
         if APieceE5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-5]", 100, 0)
	  end
	  if APieceE3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-3]", 100, 0)
	  end
end
  
if HPawn5F5 == 1 then
      if APieceE6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-6]", 100, 0)
	  end
	  if APieceE4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-4]", 100, 0)
      end
end
if HPawn5F6 == 1 then
      if APieceE7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-7]", 100, 0)
	  end
	  if APieceE5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-5]", 100, 0)
      end
end
if HPawn5F7 == 1 then
if APieceG8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-8]", 100, 0)
	  end
	  if APieceE6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-6]", 100, 0)
      end
end
if HPawn5F8 == 1 then
	  if APieceG7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-7]", 100, 0)
      end
end
--------------------------------------------------
if HPawn5E1 == 1 then
      if APieceD2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-2]", 100, 0)
	  end
end
if HPawn5E2 == 1 then
      if APieceD1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-1]", 100, 0)
	  end
	  if APieceD3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-3]", 100, 0)
	  end
end
if HPawn5E3 == 1 then
      if APieceD2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-2]", 100, 0)
	  end
	  if APieceD4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-4]", 100, 0)
	  end
end
if HPawn5E4 == 1 then
         if APieceD5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-5]", 100, 0)
	  end
	  if APieceD3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-3]", 100, 0)
	  end
end
  
if HPawn5E5 == 1 then
      if APieceD6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-6]", 100, 0)
	  end
	  if APieceD4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-4]", 100, 0)
      end
end
if HPawn5E6 == 1 then
      if APieceD7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-7]", 100, 0)
	  end
	  if APieceD5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-5]", 100, 0)
      end
end
if HPawn5E7 == 1 then
if APieceD8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-8]", 100, 0)
	  end
	  if APieceD6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-6]", 100, 0)
      end
end
if HPawn5E8 == 1 then
	  if APieceD7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-7]", 100, 0)
      end
end
-----------------------------
if HPawn5D1 == 1 then
      if APieceC2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-2]", 100, 0)
	  end
end
if HPawn5D2 == 1 then
      if APieceC1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-1]", 100, 0)
	  end
	  if APieceC3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-3]", 100, 0)
	  end
end
if HPawn5D3 == 1 then
      if APieceC2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-2]", 100, 0)
	  end
	  if APieceC4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-4]", 100, 0)
	  end
end
if HPawn5D4 == 1 then
         if APieceC5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-5]", 100, 0)
	  end
	  if APieceC3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-3]", 100, 0)
	  end
end
  
if HPawn5D5 == 1 then
      if APieceC6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-6]", 100, 0)
	  end
	  if APieceC4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-4]", 100, 0)
      end
end
if HPawn5D6 == 1 then
      if APieceC7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-7]", 100, 0)
	  end
	  if APieceC5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-5]", 100, 0)
      end
end
if HPawn5D7 == 1 then
if APieceC8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-8]", 100, 0)
	  end
	  if APieceC6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-6]", 100, 0)
      end
end
if HPawn5D8 == 1 then
	  if APieceC7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-7]", 100, 0)
      end 
end
---------------------
if HPawn5C1 == 1 then
      if APieceB2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-2]", 100, 0)
	  end
end
if HPawn5C2 == 1 then
      if APieceB1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-1]", 100, 0)
	  end
	  if APieceB3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-3]", 100, 0)
	  end
end
if HPawn5C3 == 1 then
      if APieceB2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-2]", 100, 0)
	  end
	  if APieceB4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-4]", 100, 0)
	  end
end
if HPawn5C4 == 1 then
         if APieceB5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-5]", 100, 0)
	  end
	  if APieceB3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-3]", 100, 0)
	  end
end
  
if HPawn5C5 == 1 then
      if APieceB6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-6]", 100, 0)
	  end
	  if APieceB4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-4]", 100, 0)
      end
end
if HPawn5C6 == 1 then
      if APieceB7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-7]", 100, 0)
	  end
	  if APieceB5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-5]", 100, 0)
      end
end
if HPawn5C7 == 1 then
if APieceB8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-8]", 100, 0)
	  end
	  if APieceB6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-6]", 100, 0)
      end
end
if HPawn5C8 == 1 then
	  if APieceB7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-7]", 100, 0)
      end
end
------------------------------
  if HPawn5B1 == 1 then
      if APieceH2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-2]", 100, 0)
	  end
end
if HPawn5B2 == 1 then
      if APieceH1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-1]", 100, 0)
	  end
	  if APieceH3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-3]", 100, 0)
	  end
end
if HPawn5B3 == 1 then
      if APieceH2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-2]", 100, 0)
	  end
	  if APieceH4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-4]", 100, 0)
	  end
end
if HPawn5B4 == 1 then
         if APieceH5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-5]", 100, 0)
	  end
	  if APieceH3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-3]", 100, 0)
	  end
end
  
if HPawn5B5 == 1 then
      if APieceH6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-6]", 100, 0)
	  end
	  if APieceH4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-4]", 100, 0)
      end
end
if HPawn5B6 == 1 then
      if APieceH7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-7]", 100, 0)
	  end
	  if APieceH5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-5]", 100, 0)
      end
end
if HPawn5B7 == 1 then
if APieceH8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-8]", 100, 0)
	  end
	  if APieceH6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-6]", 100, 0)
      end
end
if HPawn5B8 == 1 then
	  if APieceH7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-7]", 100, 0)
      end
end
----------------------
if HPawn5A1 == 1 then
end
if HPawn5A2 == 1 then
end
if HPawn5A3 == 1 then
end
if HPawn5A4 == 1 then
end
if HPawn5A5 == 1 then
end
if HPawn5A6 == 1 then
end
if HPawn5A7 == 1 then
end
if HPawn5A8 == 1 then
end
-----------------------
pUnit:GossipSendMenu(player)
end
end
end
-------------Horde Pawn 6--------
function HPawn6_OnGossipTalk(pUnit, event, player, pMisc)
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "Show Me Where I Can Move.", 1, 0)
   pUnit:GossipMenuAddItem(9, "Show Me Who I Can Attack!", 2, 0)
   pUnit:GossipMenuAddItem(0, "Never Mind.", 3, 0)
   pUnit:GossipSendMenu(player)
end

function HPawn6_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
if (intid == 1) then
pUnit:GossipCreateMenu(99, player, 0)
   if HPawn6G1 == 1 then
     if APieceC1 == 1 then
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
	 else
	 if APieceC1 == 1 then
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
	 else
	 if APieceD1 == 1 then
     pUnit:GossipMenuAddItem(9, "Move Me To C1 [Up One Space]", 4, 0)
	 else
	 if APieceD1 == 1 then
	 pUnit:GossipMenuAddItem(9, "Move Me To C1 [Up One Space]", 4, 0)
	 else
     pUnit:GossipMenuAddItem(9, "Move Me To D1 [Up Two Space]", 5, 0)
	 pUnit:GossipMenuAddItem(9, "Move Me To C1 [Up One Space]", 4, 0)
end
end
end
end
end
pUnit:GossipSendMenu(player)
-------------Attacking Page------------
if (intid == 2) then
pUnit:GossipCreateMenu(99, player, 0)
if HPawn6G1 == 1 then
      if APieceF2 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-2]", 100, 0)
	  end
end
if HPawn6G2 == 1 then
      if APieceF3 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-3]", 100, 0)
	  end
	  if APieceF1 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-1]", 100, 0)
      end
end
if HPawn6G3 == 1 then
      if APieceF4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-4]", 100, 0)
	  end
	  if APieceF2 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-2]", 100, 0)
      end
end
if HPawn6G4 == 1 then
      if APieceF5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-5]", 100, 0)
	  end
	  if APieceF2 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-3]", 100, 0)
      end
end
if HPawn6G5 == 1 then
      if APieceF6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-6]", 100, 0)
	  end
	  if APieceF4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-4]", 100, 0)
      end
end
if HPawn6G6 == 1 then
      if APieceF7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-7]", 100, 0)
	  end
	  if APieceF5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-5]", 100, 0)
      end
end
if HPawn6G7 == 1 then
if APieceF8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-8]", 100, 0)
	  end
	  if APieceF6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-6]", 100, 0)
      end
end
if HPawn6G8 == 1 then
	  if APieceF7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-7]", 100, 0)
      end
end
----------------------------------------------------
if HPawn6F1 == 1 then
      if APieceE2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-2]", 100, 0)
	  end
end
if HPawn6F2 == 1 then
      if APieceE1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-1]", 100, 0)
	  end
	  if APieceE3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-3]", 100, 0)
	  end
end
if HPawn6F3 == 1 then
      if APieceE2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-2]", 100, 0)
	  end
	  if APieceE4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-4]", 100, 0)
	  end
end
if HPawn6F4 == 1 then
         if APieceE5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-5]", 100, 0)
	  end
	  if APieceE3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-3]", 100, 0)
	  end
end
  
if HPawn6F5 == 1 then
      if APieceE6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-6]", 100, 0)
	  end
	  if APieceE4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-4]", 100, 0)
      end
end
if HPawn6F6 == 1 then
      if APieceE7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-7]", 100, 0)
	  end
	  if APieceE5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-5]", 100, 0)
      end
end
if HPawn6F7 == 1 then
if APieceG8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-8]", 100, 0)
	  end
	  if APieceE6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-6]", 100, 0)
      end
end
if HPawn6F8 == 1 then
	  if APieceG7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-7]", 100, 0)
      end
end
--------------------------------------------------
if HPawn6E1 == 1 then
      if APieceD2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-2]", 100, 0)
	  end
end
if HPawn6E2 == 1 then
      if APieceD1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-1]", 100, 0)
	  end
	  if APieceD3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-3]", 100, 0)
	  end
end
if HPawn6E3 == 1 then
      if APieceD2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-2]", 100, 0)
	  end
	  if APieceD4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-4]", 100, 0)
	  end
end
if HPawn6E4 == 1 then
         if APieceD5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-5]", 100, 0)
	  end
	  if APieceD3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-3]", 100, 0)
	  end
end
  
if HPawn6E5 == 1 then
      if APieceD6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-6]", 100, 0)
	  end
	  if APieceD4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-4]", 100, 0)
      end
end
if HPawn6E6 == 1 then
      if APieceD7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-7]", 100, 0)
	  end
	  if APieceD5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-5]", 100, 0)
      end
end
if HPawn6E7 == 1 then
if APieceD8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-8]", 100, 0)
	  end
	  if APieceD6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-6]", 100, 0)
      end
end
if HPawn6E8 == 1 then
	  if APieceD7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-7]", 100, 0)
      end
end
-----------------------------
if HPawn6D1 == 1 then
      if APieceC2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-2]", 100, 0)
	  end
end
if HPawn6D2 == 1 then
      if APieceC1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-1]", 100, 0)
	  end
	  if APieceC3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-3]", 100, 0)
	  end
end
if HPawn6D3 == 1 then
      if APieceC2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-2]", 100, 0)
	  end
	  if APieceC4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-4]", 100, 0)
	  end
end
if HPawn6D4 == 1 then
         if APieceC5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-5]", 100, 0)
	  end
	  if APieceC3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-3]", 100, 0)
	  end
end
  
if HPawn6D5 == 1 then
      if APieceC6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-6]", 100, 0)
	  end
	  if APieceC4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-4]", 100, 0)
      end
end
if HPawn6D6 == 1 then
      if APieceC7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-7]", 100, 0)
	  end
	  if APieceC5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-5]", 100, 0)
      end
end
if HPawn6D7 == 1 then
if APieceC8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-8]", 100, 0)
	  end
	  if APieceC6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-6]", 100, 0)
      end
end
if HPawn6D8 == 1 then
	  if APieceC7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-7]", 100, 0)
      end 
end
---------------------
if HPawn6C1 == 1 then
      if APieceB2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-2]", 100, 0)
	  end
end
if HPawn6C2 == 1 then
      if APieceB1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-1]", 100, 0)
	  end
	  if APieceB3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-3]", 100, 0)
	  end
end
if HPawn6C3 == 1 then
      if APieceB2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-2]", 100, 0)
	  end
	  if APieceB4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-4]", 100, 0)
	  end
end
if HPawn6C4 == 1 then
         if APieceB5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-5]", 100, 0)
	  end
	  if APieceB3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-3]", 100, 0)
	  end
end
  
if HPawn6C5 == 1 then
      if APieceB6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-6]", 100, 0)
	  end
	  if APieceB4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-4]", 100, 0)
      end
end
if HPawn6C6 == 1 then
      if APieceB7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-7]", 100, 0)
	  end
	  if APieceB5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-5]", 100, 0)
      end
end
if HPawn6C7 == 1 then
if APieceB8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-8]", 100, 0)
	  end
	  if APieceB6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-6]", 100, 0)
      end
end
if HPawn6C8 == 1 then
	  if APieceB7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-7]", 100, 0)
      end
end
------------------------------
  if HPawn6B1 == 1 then
      if APieceH2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-2]", 100, 0)
	  end
end
if HPawn6B2 == 1 then
      if APieceH1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-1]", 100, 0)
	  end
	  if APieceH3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-3]", 100, 0)
	  end
end
if HPawn6B3 == 1 then
      if APieceH2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-2]", 100, 0)
	  end
	  if APieceH4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-4]", 100, 0)
	  end
end
if HPawn6B4 == 1 then
         if APieceH5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-5]", 100, 0)
	  end
	  if APieceH3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-3]", 100, 0)
	  end
end
  
if HPawn6B5 == 1 then
      if APieceH6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-6]", 100, 0)
	  end
	  if APieceH4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-4]", 100, 0)
      end
end
if HPawn6B6 == 1 then
      if APieceH7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-7]", 100, 0)
	  end
	  if APieceH5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-5]", 100, 0)
      end
end
if HPawn6B7 == 1 then
if APieceH8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-8]", 100, 0)
	  end
	  if APieceH6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-6]", 100, 0)
      end
end
if HPawn6B8 == 1 then
	  if APieceH7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-7]", 100, 0)
      end
end
----------------------
if HPawn6A1 == 1 then
end
if HPawn6A2 == 1 then
end
if HPawn6A3 == 1 then
end
if HPawn6A4 == 1 then
end
if HPawn6A5 == 1 then
end
if HPawn6A6 == 1 then
end
if HPawn6A7 == 1 then
end
if HPawn6A8 == 1 then
end
-----------------------
pUnit:GossipSendMenu(player)
end
end
end
--------------Horde Pawn 7--------
function HPawn7_OnGossipTalk(pUnit, event, player, pMisc)
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "Show Me Where I Can Move.", 1, 0)
   pUnit:GossipMenuAddItem(9, "Show Me Who I Can Attack!", 2, 0)
   pUnit:GossipMenuAddItem(0, "Never Mind.", 3, 0)
   pUnit:GossipSendMenu(player)
end

function HPawn7_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
if (intid == 1) then
pUnit:GossipCreateMenu(99, player, 0)
   if HPawn7G1 == 1 then
     if APieceC1 == 1 then
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
	 else
	 if APieceC1 == 1 then
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
	 else
	 if APieceD1 == 1 then
     pUnit:GossipMenuAddItem(9, "Move Me To C1 [Up One Space]", 4, 0)
	 else
	 if APieceD1 == 1 then
	 pUnit:GossipMenuAddItem(9, "Move Me To C1 [Up One Space]", 4, 0)
	 else
     pUnit:GossipMenuAddItem(9, "Move Me To D1 [Up Two Space]", 5, 0)
	 pUnit:GossipMenuAddItem(9, "Move Me To C1 [Up One Space]", 4, 0)
end
end
end
end
end
pUnit:GossipSendMenu(player)
-------------Attacking Page------------
if (intid == 2) then
pUnit:GossipCreateMenu(99, player, 0)
if HPawn7G1 == 1 then
      if APieceF2 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-2]", 100, 0)
	  end
end
if HPawn7G2 == 1 then
      if APieceF3 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-3]", 100, 0)
	  end
	  if APieceF1 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-1]", 100, 0)
      end
end
if HPawn7G3 == 1 then
      if APieceF4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-4]", 100, 0)
	  end
	  if APieceF2 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-2]", 100, 0)
      end
end
if HPawn7G4 == 1 then
      if APieceF5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-5]", 100, 0)
	  end
	  if APieceF2 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-3]", 100, 0)
      end
end
if HPawn7G5 == 1 then
      if APieceF6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-6]", 100, 0)
	  end
	  if APieceF4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-4]", 100, 0)
      end
end
if HPawn7G6 == 1 then
      if APieceF7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-7]", 100, 0)
	  end
	  if APieceF5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-5]", 100, 0)
      end
end
if HPawn7G7 == 1 then
if APieceF8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-8]", 100, 0)
	  end
	  if APieceF6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-6]", 100, 0)
      end
end
if HPawn7G8 == 1 then
	  if APieceF7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-7]", 100, 0)
      end
end
----------------------------------------------------
if HPawn7F1 == 1 then
      if APieceE2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-2]", 100, 0)
	  end
end
if HPawn7F2 == 1 then
      if APieceE1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-1]", 100, 0)
	  end
	  if APieceE3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-3]", 100, 0)
	  end
end
if HPawn7F3 == 1 then
      if APieceE2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-2]", 100, 0)
	  end
	  if APieceE4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-4]", 100, 0)
	  end
end
if HPawn7F4 == 1 then
         if APieceE5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-5]", 100, 0)
	  end
	  if APieceE3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-3]", 100, 0)
	  end
end
  
if HPawn7F5 == 1 then
      if APieceE6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-6]", 100, 0)
	  end
	  if APieceE4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-4]", 100, 0)
      end
end
if HPawn7F6 == 1 then
      if APieceE7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-7]", 100, 0)
	  end
	  if APieceE5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-5]", 100, 0)
      end
end
if HPawn7F7 == 1 then
if APieceG8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-8]", 100, 0)
	  end
	  if APieceE6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-6]", 100, 0)
      end
end
if HPawn7F8 == 1 then
	  if APieceG7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-7]", 100, 0)
      end
end
--------------------------------------------------
if HPawn7E1 == 1 then
      if APieceD2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-2]", 100, 0)
	  end
end
if HPawn7E2 == 1 then
      if APieceD1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-1]", 100, 0)
	  end
	  if APieceD3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-3]", 100, 0)
	  end
end
if HPawn7E3 == 1 then
      if APieceD2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-2]", 100, 0)
	  end
	  if APieceD4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-4]", 100, 0)
	  end
end
if HPawn7E4 == 1 then
         if APieceD5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-5]", 100, 0)
	  end
	  if APieceD3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-3]", 100, 0)
	  end
end
  
if HPawn7E5 == 1 then
      if APieceD6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-6]", 100, 0)
	  end
	  if APieceD4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-4]", 100, 0)
      end
end
if HPawn7E6 == 1 then
      if APieceD7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-7]", 100, 0)
	  end
	  if APieceD5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-5]", 100, 0)
      end
end
if HPawn7E7 == 1 then
if APieceD8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-8]", 100, 0)
	  end
	  if APieceD6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-6]", 100, 0)
      end
end
if HPawn7E8 == 1 then
	  if APieceD7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-7]", 100, 0)
      end
end
-----------------------------
if HPawn7D1 == 1 then
      if APieceC2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-2]", 100, 0)
	  end
end
if HPawn7D2 == 1 then
      if APieceC1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-1]", 100, 0)
	  end
	  if APieceC3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-3]", 100, 0)
	  end
end
if HPawn7D3 == 1 then
      if APieceC2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-2]", 100, 0)
	  end
	  if APieceC4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-4]", 100, 0)
	  end
end
if HPawn7D4 == 1 then
         if APieceC5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-5]", 100, 0)
	  end
	  if APieceC3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-3]", 100, 0)
	  end
end
  
if HPawn7D5 == 1 then
      if APieceC6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-6]", 100, 0)
	  end
	  if APieceC4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-4]", 100, 0)
      end
end
if HPawn7D6 == 1 then
      if APieceC7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-7]", 100, 0)
	  end
	  if APieceC5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-5]", 100, 0)
      end
end
if HPawn7D7 == 1 then
if APieceC8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-8]", 100, 0)
	  end
	  if APieceC6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-6]", 100, 0)
      end
end
if HPawn7D8 == 1 then
	  if APieceC7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-7]", 100, 0)
      end 
end
---------------------
if HPawn7C1 == 1 then
      if APieceB2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-2]", 100, 0)
	  end
end
if HPawn7C2 == 1 then
      if APieceB1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-1]", 100, 0)
	  end
	  if APieceB3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-3]", 100, 0)
	  end
end
if HPawn7C3 == 1 then
      if APieceB2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-2]", 100, 0)
	  end
	  if APieceB4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-4]", 100, 0)
	  end
end
if HPawn7C4 == 1 then
         if APieceB5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-5]", 100, 0)
	  end
	  if APieceB3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-3]", 100, 0)
	  end
end
  
if HPawn7C5 == 1 then
      if APieceB6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-6]", 100, 0)
	  end
	  if APieceB4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-4]", 100, 0)
      end
end
if HPawn7C6 == 1 then
      if APieceB7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-7]", 100, 0)
	  end
	  if APieceB5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-5]", 100, 0)
      end
end
if HPawn7C7 == 1 then
if APieceB8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-8]", 100, 0)
	  end
	  if APieceB6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-6]", 100, 0)
      end
end
if HPawn7C8 == 1 then
	  if APieceB7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-7]", 100, 0)
      end
end
------------------------------
  if HPawn7B1 == 1 then
      if APieceH2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-2]", 100, 0)
	  end
end
if HPawn7B2 == 1 then
      if APieceH1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-1]", 100, 0)
	  end
	  if APieceH3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-3]", 100, 0)
	  end
end
if HPawn7B3 == 1 then
      if APieceH2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-2]", 100, 0)
	  end
	  if APieceH4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-4]", 100, 0)
	  end
end
if HPawn7B4 == 1 then
         if APieceH5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-5]", 100, 0)
	  end
	  if APieceH3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-3]", 100, 0)
	  end
end
  
if HPawn7B5 == 1 then
      if APieceH6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-6]", 100, 0)
	  end
	  if APieceH4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-4]", 100, 0)
      end
end
if HPawn7B6 == 1 then
      if APieceH7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-7]", 100, 0)
	  end
	  if APieceH5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-5]", 100, 0)
      end
end
if HPawn7B7 == 1 then
if APieceH8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-8]", 100, 0)
	  end
	  if APieceH6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-6]", 100, 0)
      end
end
if HPawn7B8 == 1 then
	  if APieceH7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-7]", 100, 0)
      end
end
----------------------
if HPawn7A1 == 1 then
end
if HPawn7A2 == 1 then
end
if HPawn7A3 == 1 then
end
if HPawn7A4 == 1 then
end
if HPawn7A5 == 1 then
end
if HPawn7A6 == 1 then
end
if HPawn7A7 == 1 then
end
if HPawn7A8 == 1 then
end
-----------------------
pUnit:GossipSendMenu(player)
end
end
end
----Horde Pawn 8--------
function HPawn8_OnGossipTalk(pUnit, event, player, pMisc)
   pUnit:GossipCreateMenu(50, player, 0)
   pUnit:GossipMenuAddItem(9, "Show Me Where I Can Move.", 1, 0)
   pUnit:GossipMenuAddItem(9, "Show Me Who I Can Attack!", 2, 0)
   pUnit:GossipMenuAddItem(0, "Never Mind.", 3, 0)
   pUnit:GossipSendMenu(player)
end

function HPawn8_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
if (intid == 1) then
pUnit:GossipCreateMenu(99, player, 0)
   if HPawn8G1 == 1 then
     if APieceC1 == 1 then
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
	 else
	 if APieceC1 == 1 then
	 pUnit:SendChatMessage(12, 0, "I cant move Anywhere!")
	 else
	 if APieceD1 == 1 then
     pUnit:GossipMenuAddItem(9, "Move Me To C1 [Up One Space]", 4, 0)
	 else
	 if APieceD1 == 1 then
	 pUnit:GossipMenuAddItem(9, "Move Me To C1 [Up One Space]", 4, 0)
	 else
     pUnit:GossipMenuAddItem(9, "Move Me To D1 [Up Two Space]", 5, 0)
	 pUnit:GossipMenuAddItem(9, "Move Me To C1 [Up One Space]", 4, 0)
end
end
end
end
end
pUnit:GossipSendMenu(player)
-------------Attacking Page------------
if (intid == 2) then
pUnit:GossipCreateMenu(99, player, 0)
if HPawn8G1 == 1 then
      if APieceF2 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-2]", 100, 0)
	  end
end
if HPawn8G2 == 1 then
      if APieceF3 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-3]", 100, 0)
	  end
	  if APieceF1 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-1]", 100, 0)
      end
end
if HPawn8G3 == 1 then
      if APieceF4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-4]", 100, 0)
	  end
	  if APieceF2 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-2]", 100, 0)
      end
end
if HPawn8G4 == 1 then
      if APieceF5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-5]", 100, 0)
	  end
	  if APieceF2 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-3]", 100, 0)
      end
end
if HPawn8G5 == 1 then
      if APieceF6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-6]", 100, 0)
	  end
	  if APieceF4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-4]", 100, 0)
      end
end
if HPawn8G6 == 1 then
      if APieceF7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-7]", 100, 0)
	  end
	  if APieceF5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-5]", 100, 0)
      end
end
if HPawn8G7 == 1 then
if APieceF8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-8]", 100, 0)
	  end
	  if APieceF6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-6]", 100, 0)
      end
end
if HPawn8G8 == 1 then
	  if APieceF7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [F-7]", 100, 0)
      end
end
----------------------------------------------------
if HPawn8F1 == 1 then
      if APieceE2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-2]", 100, 0)
	  end
end
if HPawn8F2 == 1 then
      if APieceE1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-1]", 100, 0)
	  end
	  if APieceE3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-3]", 100, 0)
	  end
end
if HPawn8F3 == 1 then
      if APieceE2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-2]", 100, 0)
	  end
	  if APieceE4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-4]", 100, 0)
	  end
end
if HPawn8F4 == 1 then
         if APieceE5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-5]", 100, 0)
	  end
	  if APieceE3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-3]", 100, 0)
	  end
end
  
if HPawn8F5 == 1 then
      if APieceE6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-6]", 100, 0)
	  end
	  if APieceE4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-4]", 100, 0)
      end
end
if HPawn8F6 == 1 then
      if APieceE7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-7]", 100, 0)
	  end
	  if APieceE5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-5]", 100, 0)
      end
end
if HPawn8F7 == 1 then
if APieceG8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-8]", 100, 0)
	  end
	  if APieceE6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-6]", 100, 0)
      end
end
if HPawn8F8 == 1 then
	  if APieceG7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [E-7]", 100, 0)
      end
end
--------------------------------------------------
if HPawn8E1 == 1 then
      if APieceD2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-2]", 100, 0)
	  end
end
if HPawn8E2 == 1 then
      if APieceD1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-1]", 100, 0)
	  end
	  if APieceD3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-3]", 100, 0)
	  end
end
if HPawn8E3 == 1 then
      if APieceD2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-2]", 100, 0)
	  end
	  if APieceD4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-4]", 100, 0)
	  end
end
if HPawn8E4 == 1 then
         if APieceD5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-5]", 100, 0)
	  end
	  if APieceD3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-3]", 100, 0)
	  end
end
  
if HPawn8E5 == 1 then
      if APieceD6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-6]", 100, 0)
	  end
	  if APieceD4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-4]", 100, 0)
      end
end
if HPawn8E6 == 1 then
      if APieceD7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-7]", 100, 0)
	  end
	  if APieceD5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-5]", 100, 0)
      end
end
if HPawn8E7 == 1 then
if APieceD8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-8]", 100, 0)
	  end
	  if APieceD6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-6]", 100, 0)
      end
end
if HPawn8E8 == 1 then
	  if APieceD7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [D-7]", 100, 0)
      end
end
-----------------------------
if HPawn8D1 == 1 then
      if APieceC2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-2]", 100, 0)
	  end
end
if HPawn8D2 == 1 then
      if APieceC1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-1]", 100, 0)
	  end
	  if APieceC3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-3]", 100, 0)
	  end
end
if HPawn8D3 == 1 then
      if APieceC2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-2]", 100, 0)
	  end
	  if APieceC4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-4]", 100, 0)
	  end
end
if HPawn8D4 == 1 then
         if APieceC5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-5]", 100, 0)
	  end
	  if APieceC3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-3]", 100, 0)
	  end
end
  
if HPawn8D5 == 1 then
      if APieceC6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-6]", 100, 0)
	  end
	  if APieceC4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-4]", 100, 0)
      end
end
if HPawn8D6 == 1 then
      if APieceC7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-7]", 100, 0)
	  end
	  if APieceC5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-5]", 100, 0)
      end
end
if HPawn8D7 == 1 then
if APieceC8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-8]", 100, 0)
	  end
	  if APieceC6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-6]", 100, 0)
      end
end
if HPawn8D8 == 1 then
	  if APieceC7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [C-7]", 100, 0)
      end 
end
---------------------
if HPawn8C1 == 1 then
      if APieceB2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-2]", 100, 0)
	  end
end
if HPawn8C2 == 1 then
      if APieceB1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-1]", 100, 0)
	  end
	  if APieceB3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-3]", 100, 0)
	  end
end
if HPawn8C3 == 1 then
      if APieceB2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-2]", 100, 0)
	  end
	  if APieceB4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-4]", 100, 0)
	  end
end
if HPawn8C4 == 1 then
         if APieceB5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-5]", 100, 0)
	  end
	  if APieceB3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-3]", 100, 0)
	  end
end
  
if HPawn8C5 == 1 then
      if APieceB6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-6]", 100, 0)
	  end
	  if APieceB4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-4]", 100, 0)
      end
end
if HPawn8C6 == 1 then
      if APieceB7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-7]", 100, 0)
	  end
	  if APieceB5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-5]", 100, 0)
      end
end
if HPawn8C7 == 1 then
if APieceB8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-8]", 100, 0)
	  end
	  if APieceB6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-6]", 100, 0)
      end
end
if HPawn8C8 == 1 then
	  if APieceB7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [B-7]", 100, 0)
      end
end
------------------------------
  if HPawn8B1 == 1 then
      if APieceH2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-2]", 100, 0)
	  end
end
if HPawn8B2 == 1 then
      if APieceH1 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-1]", 100, 0)
	  end
	  if APieceH3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-3]", 100, 0)
	  end
end
if HPawn8B3 == 1 then
      if APieceH2 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-2]", 100, 0)
	  end
	  if APieceH4 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-4]", 100, 0)
	  end
end
if HPawn8B4 == 1 then
         if APieceH5 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-5]", 100, 0)
	  end
	  if APieceH3 == 1 then
   	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-3]", 100, 0)
	  end
end
  
if HPawn8B5 == 1 then
      if APieceH6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-6]", 100, 0)
	  end
	  if APieceH4 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-4]", 100, 0)
      end
end
if HPawn8B6 == 1 then
      if APieceH7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-7]", 100, 0)
	  end
	  if APieceH5 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-5]", 100, 0)
      end
end
if HPawn8B7 == 1 then
if APieceH8 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-8]", 100, 0)
	  end
	  if APieceH6 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-6]", 100, 0)
      end
end
if HPawn8B8 == 1 then
	  if APieceH7 == 1 then
	  pUnit:GossipMenuAddItem(9, "Attack Alliance Piece! [H-7]", 100, 0)
      end
end
----------------------
if HPawn8A1 == 1 then
end
if HPawn8A2 == 1 then
end
if HPawn8A3 == 1 then
end
if HPawn8A4 == 1 then
end
if HPawn8A5 == 1 then
end
if HPawn8A6 == 1 then
end
if HPawn8A7 == 1 then
end
if HPawn8A8 == 1 then
end
-----------------------
pUnit:GossipSendMenu(player)
end
end
end
-------Alliance Pawns-------
RegisterUnitGossipEvent(1555230, 1, "APawn1_OnGossipTalk")
RegisterUnitGossipEvent(1555230, 2, "APawn1_OnGossipSelect")
RegisterUnitGossipEvent(1555231, 1, "APawn2_OnGossipTalk")
RegisterUnitGossipEvent(1555231, 2, "APawn2_OnGossipSelect")
RegisterUnitGossipEvent(1555232, 1, "APawn3_OnGossipTalk")
RegisterUnitGossipEvent(1555232, 2, "APawn3_OnGossipSelect")
RegisterUnitGossipEvent(1555233, 1, "APawn4_OnGossipTalk")
RegisterUnitGossipEvent(1555233, 2, "APawn4_OnGossipSelect")
RegisterUnitGossipEvent(1555234, 1, "APawn5_OnGossipTalk")
RegisterUnitGossipEvent(1555234, 2, "APawn5_OnGossipSelect")
RegisterUnitGossipEvent(1555235, 1, "APawn6_OnGossipTalk")
RegisterUnitGossipEvent(1555235, 2, "APawn6_OnGossipSelect")
RegisterUnitGossipEvent(1555236, 1, "APawn7_OnGossipTalk")
RegisterUnitGossipEvent(1555236, 2, "APawn7_OnGossipSelect")
RegisterUnitGossipEvent(1555237, 1, "APawn8_OnGossipTalk")
RegisterUnitGossipEvent(1555237, 2, "APawn8_OnGossipSelect")
--------Horde Pawns------
RegisterUnitGossipEvent(1555130, 1, "HPawn1_OnGossipTalk")
RegisterUnitGossipEvent(1555130, 2, "HPawn1_OnGossipSelect")
RegisterUnitGossipEvent(1555131, 1, "HPawn2_OnGossipTalk")
RegisterUnitGossipEvent(1555131, 2, "HPawn2_OnGossipSelect")
RegisterUnitGossipEvent(1555132, 1, "HPawn3_OnGossipTalk")
RegisterUnitGossipEvent(1555132, 2, "HPawn3_OnGossipSelect")
RegisterUnitGossipEvent(1555133, 1, "HPawn4_OnGossipTalk")
RegisterUnitGossipEvent(1555133, 2, "HPawn4_OnGossipSelect")
RegisterUnitGossipEvent(1555134, 1, "HPawn5_OnGossipTalk")
RegisterUnitGossipEvent(1555134, 2, "HPawn5_OnGossipSelect")
RegisterUnitGossipEvent(1555135, 1, "HPawn6_OnGossipTalk")
RegisterUnitGossipEvent(1555135, 2, "HPawn6_OnGossipSelect")
RegisterUnitGossipEvent(1555136, 1, "HPawn7_OnGossipTalk")
RegisterUnitGossipEvent(1555136, 2, "HPawn7_OnGossipSelect")
RegisterUnitGossipEvent(1555137, 1, "HPawn8_OnGossipTalk")
RegisterUnitGossipEvent(1555137, 2, "HPawn8_OnGossipSelect")
