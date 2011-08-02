--[[


Below Is The Player Events [DO NOT TOUCH]


--]]
function Flight_Path_System_Start_OnSpawn(pUnit, Event)
HordeFlightPathWaypoint = pUnit
HordeFlightPathWaypoint:RegisterEvent("Flight_Path_System_Start", 200, 0)
end

function Flight_Path_System_Start(pUnit, event)
local GetInRangePlayers = HordeFlightPathWaypoint:GetInRangePlayers()
for k, GetCloserPlayers in pairs(GetInRangePlayers) do
local PlayerName = GetCloserPlayers:GetName()
    if (GetCloserPlayers ~= nil) then
	local GetClosestPlayers = HordeFlightPathWaypoint:GetDistanceYards(GetCloserPlayers)
    if (GetClosestPlayers < 1 ) then
-----------
local Char_flight_data = CharDBQuery("SELECT * FROM characters_flight_data WHERE name = '"..PlayerName.."'", 0)
if (CharDBQuery("SELECT name FROM characters_flight_data WHERE name = '"..PlayerName.."'", 0) ~= nil) then
GetName = Char_flight_data:GetColumn(0):GetString()
end
if (CharDBQuery("SELECT guid FROM characters_flight_data WHERE name = '"..PlayerName.."'", 0) ~= nil) then
GetGuid = Char_flight_data:GetColumn(1):GetString()
end
if (CharDBQuery("SELECT flying_from FROM characters_flight_data WHERE name = '"..PlayerName.."'", 0) ~= nil) then
GetFlyingFrom = Char_flight_data:GetColumn(2):GetString()
end
if (CharDBQuery("SELECT flying_to FROM characters_flight_data WHERE name = '"..PlayerName.."'", 0) ~= nil) then
GetFlyingTo = Char_flight_data:GetColumn(3):GetString()
end
if (CharDBQuery("SELECT is_flying FROM characters_flight_data WHERE name = '"..PlayerName.."'", 0) ~= nil) then
GetIsFlying = Char_flight_data:GetColumn(4):GetString()
end
if (CharDBQuery("SELECT waypoint FROM characters_flight_data WHERE name = '"..PlayerName.."'", 0) ~= nil) then
GetWaypoint = Char_flight_data:GetColumn(5):GetString()
end
if (CharDBQuery("SELECT special_flags FROM characters_flight_data WHERE name = '"..PlayerName.."'", 0) ~= nil) then
GetSpecialFlags = Char_flight_data:GetColumn(6):GetString()
end
if (CharDBQuery("SELECT delay FROM characters_flight_data WHERE name = '"..PlayerName.."'", 0) ~= nil) then
GetDelay = Char_flight_data:GetColumn(7):GetLong()
end
-----------
        if (GetIsFlying == "1") then
		    if GetDelay <= os.time() then ---time to switch waypoints!
			    if (GetSpecialFlags == "Landing") then
				SpecialFlags = "Dismounting"
				end
--[[
======================================================================================

                         Locals And Other Functions
                                   END

======================================================================================

                      Lost Refugee ->> Horde Encampment
                                  START

======================================================================================
--]]
			    if (GetWaypoint == "544") then ---<<<< Take Off >>>>---
                    GoingToWaypoint = 545
					SetDelay = os.time()+1
					FlightSpeed = "1"
					SpecialFlags = "Flying"
				end
			    if (GetWaypoint == "545") then
                    GoingToWaypoint = 546
					SetDelay = os.time()+3
					FlightSpeed = "1"
					SpecialFlags = "Flying"
				end
			    if (GetWaypoint == "546") then
                    GoingToWaypoint = 547
					SetDelay = os.time()+3
					FlightSpeed = "1"
					SpecialFlags = "Flying"
				end
			    if (GetWaypoint == "547") then
                    GoingToWaypoint = 548
					SetDelay = os.time()+3
					FlightSpeed = "1"
					SpecialFlags = "Flying"
				end
			    if (GetWaypoint == "548") then
                    GoingToWaypoint = 549
					SetDelay = os.time()+3
					FlightSpeed = "1"
					SpecialFlags = "Flying"
				end
			    if (GetWaypoint == "549") then
                    GoingToWaypoint = 550
					SetDelay = os.time()+2
					FlightSpeed = "10"
					SpecialFlags = "Flying"
				end
			    if (GetWaypoint == "550") then
                    GoingToWaypoint = 551
					SetDelay = os.time()+2
					FlightSpeed = "10"
					SpecialFlags = "Flying"
				end
			    if (GetWaypoint == "551") then
                    GoingToWaypoint = 552
					SetDelay = os.time()+2
					FlightSpeed = "10"
					SpecialFlags = "Flying"
				end
				if (GetWaypoint == "552") then
                    GoingToWaypoint = 553
					SetDelay = os.time()+2
					FlightSpeed = "10"
					SpecialFlags = "Flying"
				end
			    if (GetWaypoint == "553") then
                    GoingToWaypoint = 554
					SetDelay = os.time()+2
					FlightSpeed = "10"
					SpecialFlags = "Flying"
				end
			    if (GetWaypoint == "554") then
                    GoingToWaypoint = 555
					SetDelay = os.time()+1
					FlightSpeed = "10"
					SpecialFlags = "Flying"
				end
			    if (GetWaypoint == "555") then
				    if (GetFlyingTo == "Horde Encampment") then
                    GoingToWaypoint = 556
					SetDelay = os.time()+1
					FlightSpeed = "10"
					SpecialFlags = "Flying"
					else
					GoingToWaypoint = 776
					SetDelay = os.time()+2
					FlightSpeed = "10"
					SpecialFlags = "Flying"
					end
				end
			    if (GetWaypoint == "556") then
                    GoingToWaypoint = 561
					SetDelay = os.time()+1
					FlightSpeed = "10"
					SpecialFlags = "Flying"
				end
			    if (GetWaypoint == "561") then
                    GoingToWaypoint = 562
					SetDelay = os.time()+4
					FlightSpeed = "1"
					SpecialFlags = "Flying"
				end
			    if (GetWaypoint == "562") then
                    GoingToWaypoint = 563
					SetDelay = os.time()+4
					FlightSpeed = "1"
					SpecialFlags = "Flying"
				end
			    if (GetWaypoint == "563") then
                    GoingToWaypoint = 564
					SetDelay = os.time()+2
				    SpecialFlags = "Landing"
				end
			    if (GetWaypoint == "564") then ---<<<< LAND >>>>---
					SetDelay = os.time()+2
					FlightSpeed = "1"
					SpecialFlags = "Dismounting"
				end
--[[
======================================================================================

                    Lost Refugee --> Horde Encampment
                                   END

======================================================================================

                   Horde Encampment ->> Lost Refugee
                                  START

======================================================================================
--]]
			    if (GetWaypoint == "568") then ---<<<< Take Off >>>>---
                    GoingToWaypoint = 569
					SetDelay = os.time()+1
					FlightSpeed = "1"
					SpecialFlags = "Flying"
				end
			    if (GetWaypoint == "569") then
				    if (GetFlyingFrom == "Horde Encampment") then
                    GoingToWaypoint = 570
					SetDelay = os.time()+3
					FlightSpeed = "1"
					SpecialFlags = "Flying"
					else
				    GoingToWaypoint = 570
					SetDelay = os.time()+3
					FlightSpeed = "10"
					SpecialFlags = "Flying"
					end
				end
			    if (GetWaypoint == "570") then
                    GoingToWaypoint = 571
					SetDelay = os.time()+3
					FlightSpeed = "1"
					SpecialFlags = "Flying"
				end
			    if (GetWaypoint == "571") then
                    GoingToWaypoint = 572
					SetDelay = os.time()+3
					FlightSpeed = "1"
					SpecialFlags = "Flying"
				end
			    if (GetWaypoint == "572") then
                    GoingToWaypoint = 573
					SetDelay = os.time()+3
					FlightSpeed = "1"
					SpecialFlags = "Flying"
				end
			    if (GetWaypoint == "573") then
                    GoingToWaypoint = 574
					SetDelay = os.time()+2
					FlightSpeed = "10"
					SpecialFlags = "Flying"
				end
			    if (GetWaypoint == "574") then
                    GoingToWaypoint = 575
					SetDelay = os.time()+2
					FlightSpeed = "10"
					SpecialFlags = "Flying"
				end
			    if (GetWaypoint == "575") then
                    GoingToWaypoint = 576
					SetDelay = os.time()+2
					FlightSpeed = "10"
					SpecialFlags = "Flying"
				end
			    if (GetWaypoint == "576") then
                    GoingToWaypoint = 577
					SetDelay = os.time()+2
					FlightSpeed = "10"
					SpecialFlags = "Flying"
				end
				if (GetWaypoint == "577") then
                    GoingToWaypoint = 578
					SetDelay = os.time()+1
					FlightSpeed = "10"
					SpecialFlags = "Flying"
				end
			    if (GetWaypoint == "578") then
                    GoingToWaypoint = 581
					SetDelay = os.time()+6
					FlightSpeed = "1"
					SpecialFlags = "Flying"
				end
			    if (GetWaypoint == "581") then
                    GoingToWaypoint = 582
					SetDelay = os.time()+2
					FlightSpeed = "1"
					SpecialFlags = "Landing"
				end
			    if (GetWaypoint == "582") then ---<<<< LAND >>>>---
					SetDelay = os.time()+2
					FlightSpeed = "1"
					SpecialFlags = "Dismounting"
				end
--[[
======================================================================================

                    Horde Encampment ->> Lost Refugee
                                   END

======================================================================================

                   Horde Encampment ->> Camp Torchwood
                                  START

======================================================================================
--]]
			    if (GetWaypoint == "775") then ---<<<< Take Off >>>>---
                    GoingToWaypoint = 776
					SetDelay = os.time()+2
					FlightSpeed = "1"
					SpecialFlags = "Flying"
				end
			    if (GetWaypoint == "776") then
				    if (GetFlyingFrom == "Horde Encampment") then
                    GoingToWaypoint = 777
					SetDelay = os.time()+4
					FlightSpeed = "1"
					SpecialFlags = "Flying"
					else
					 GoingToWaypoint = 777
					SetDelay = os.time()+3
					FlightSpeed = "10"
					SpecialFlags = "Flying"
					end
				end
			    if (GetWaypoint == "777") then
                    GoingToWaypoint = 778
					SetDelay = os.time()+1
					FlightSpeed = "10"
					SpecialFlags = "Flying"
				end
			    if (GetWaypoint == "778") then
                    GoingToWaypoint = 779
					SetDelay = os.time()+1
					FlightSpeed = "10"
					SpecialFlags = "Flying"
				end
			    if (GetWaypoint == "779") then
                    GoingToWaypoint = 780
					SetDelay = os.time()+1
					FlightSpeed = "10"
					SpecialFlags = "Flying"
				end
			    if (GetWaypoint == "780") then
                    GoingToWaypoint = 781
					SetDelay = os.time()+1
					FlightSpeed = "10"
					SpecialFlags = "Flying"
				end
			    if (GetWaypoint == "781") then
				    if (GetFlyingTo == "Camp Torchwood") then
                    GoingToWaypoint = 782
					SetDelay = os.time()+1
					FlightSpeed = "10"
					SpecialFlags = "Flying"
					else
                    GoingToWaypoint = 823
					SetDelay = os.time()+1
					FlightSpeed = "10"
					SpecialFlags = "Flying"
					end
				end
			    if (GetWaypoint == "782") then
                    GoingToWaypoint = 783
					SetDelay = os.time()+2
					FlightSpeed = "10"
					SpecialFlags = "Flying"
				end
			    if (GetWaypoint == "783") then
                    GoingToWaypoint = 784
					SetDelay = os.time()+2
					FlightSpeed = "10"
					SpecialFlags = "Flying"
				end
				if (GetWaypoint == "784") then
                    GoingToWaypoint = 785
					SetDelay = os.time()+1
					FlightSpeed = "10"
					SpecialFlags = "Flying"
				end
			    if (GetWaypoint == "785") then
				    if (GetFlyFrom == "Horde Encampment") or (GetFlyFrom == "Lost Refugee") then
                    GoingToWaypoint = 786
					SetDelay = os.time()+8
					FlightSpeed = "1"
					SpecialFlags = "Landing"
					else
					GoingToWaypoint = 786
					SetDelay = os.time()+5
					FlightSpeed = "1"
					SpecialFlags = "Landing"
					end
				end
			    if (GetWaypoint == "786") then ---<<<< LAND >>>>---
					SetDelay = os.time()+4
					FlightSpeed = "1"
					SpecialFlags = "Dismounting"
				end
--[[
======================================================================================

                    Horde Encampment ->> Camp Torchwood
                                   END

======================================================================================

                   Horde Encampment ->> Hillside Oasis
                                  START

======================================================================================
--]]



--[[
======================================================================================

                    Horde Encampment ->> Blinded-Soul MALL
                                   END

======================================================================================

                   Camp Torchwood ->> Lost Refugee & Horde Encampment
                                  START

======================================================================================
--]]

			    if (GetWaypoint == "788") then ---<<<< Take Off >>>>---
                    GoingToWaypoint = 789
					SetDelay = os.time()+3
					FlightSpeed = "1"
					SpecialFlags = "Flying"
				end
			    if (GetWaypoint == "789") then
				    if (GetFlyingTo == "Lost Refugee") or (GetFlyingTo == "Horde Encampment") then
                    GoingToWaypoint = 790
					SetDelay = os.time()+2
					FlightSpeed = "10"
					SpecialFlags = "Flying"
					else
					GoingToWaypoint = 824
					SetDelay = os.time()+2
					FlightSpeed = "10"
					SpecialFlags = "Flying"
					end
				end
			    if (GetWaypoint == "790") then
				    if (GetFlyingFrom == "Camp Torchwood") then
                    GoingToWaypoint = 791
					SetDelay = os.time()+2
					FlightSpeed = "10"
					SpecialFlags = "Flying"
					else
				    GoingToWaypoint = 791
					SetDelay = os.time()+1
					FlightSpeed = "10"
					SpecialFlags = "Flying"
					end
				end
			    if (GetWaypoint == "791") then
                    GoingToWaypoint = 792
					SetDelay = os.time()+2
					FlightSpeed = "10"
					SpecialFlags = "Flying"
				end
			    if (GetWaypoint == "792") then
                    GoingToWaypoint = 793
					SetDelay = os.time()+2
					FlightSpeed = "10"
					SpecialFlags = "Flying"
				end
			    if (GetWaypoint == "793") then
				    if (GetFlyingTo == "Lost Refugee") then
                    GoingToWaypoint = 569
					SetDelay = os.time()+2
					FlightSpeed = "10"
					SpecialFlags = "Flying"
					end
					if (GetFlyingTo == "Horde Encampment") then
                    GoingToWaypoint = 794
					SetDelay = os.time()+2
					FlightSpeed = "10"
					SpecialFlags = "Flying"
					end
				end
			    if (GetWaypoint == "794") then
                    GoingToWaypoint = 795
					SetDelay = os.time()+2
					FlightSpeed = "10"
					SpecialFlags = "Flying"
				end
			    if (GetWaypoint == "795") then
                    GoingToWaypoint = 796
					SetDelay = os.time()+5
					FlightSpeed = "1"
					SpecialFlags = "Landing"
				end
			    if (GetWaypoint == "796") then ---<<<< LAND >>>>---
					SetDelay = os.time()+2
					FlightSpeed = "1"
					SpecialFlags = "Dismounting"
				end
--[[
======================================================================================

                    Camp Torchwood ->> Lost Refugee & Horde Encampment
                                   END

======================================================================================

                   Camp Torchwood ->> Hillside Oasis
                                  START

======================================================================================
--]]
                if (GetWaypoint == "824") then
                    GoingToWaypoint = 825
					SetDelay = os.time()+1
					FlightSpeed = "10"
					SpecialFlags = "Flying"
				end
			    if (GetWaypoint == "825") then
                    GoingToWaypoint = 826
					SetDelay = os.time()+2
					FlightSpeed = "10"
					SpecialFlags = "Flying"
				end
			    if (GetWaypoint == "826") then
				    GoingToWaypoint = 827
					SetDelay = os.time()+1
					FlightSpeed = "10"
					SpecialFlags = "Flying"
				end
			    if (GetWaypoint == "827") then
                    GoingToWaypoint = 828
					SetDelay = os.time()+2
					FlightSpeed = "10"
					SpecialFlags = "Flying"
				end
			    if (GetWaypoint == "828") then
				    if (GetFlyingTo == "Hillside Oasis") then
                    GoingToWaypoint = 829
					SetDelay = os.time()+2
					FlightSpeed = "10"
					SpecialFlags = "Flying"
					else
				    GoingToWaypoint = 856
					SetDelay = os.time()+2
					FlightSpeed = "10"
					SpecialFlags = "Flying"
					end
				end
			    if (GetWaypoint == "829") then
				    GoingToWaypoint = 830
					SetDelay = os.time()+4
					FlightSpeed = "1"
					SpecialFlags = "Flying"
				end
			    if (GetWaypoint == "830") then
                    GoingToWaypoint = 831
					SetDelay = os.time()+4
					FlightSpeed = "1"
					SpecialFlags = "Flying"
				end
			    if (GetWaypoint == "831") then
				    GoingToWaypoint = 832
					SetDelay = os.time()+3
					FlightSpeed = "1"
					SpecialFlags = "Landing"
				end
			    if (GetWaypoint == "832") then ---<<<< LAND >>>>---
					SetDelay = os.time()+2
					FlightSpeed = "1"
					SpecialFlags = "Dismounting"
				end
--[[
======================================================================================

                    Campe Torchwood ->> Blinded-Soul MALL
                                   END

======================================================================================

                    Hillside Oasis ->> Camp Torchwood
                                  START

======================================================================================
--]]
			    if (GetWaypoint == "814") then ---<<<< Take Off >>>>---
                    GoingToWaypoint = 815
					SetDelay = os.time()+3
					FlightSpeed = "1"
					SpecialFlags = "Flying"
				end
			    if (GetWaypoint == "815") then
                    GoingToWaypoint = 816
					SetDelay = os.time()+1
					FlightSpeed = "10"
					SpecialFlags = "Flying"
				end
			    if (GetWaypoint == "816") then
                    GoingToWaypoint = 817
					SetDelay = os.time()+1
					FlightSpeed = "10"
					SpecialFlags = "Flying"
				end
			    if (GetWaypoint == "817") then
				    if (GetFlyingTo == "Camp Torchwood") then
                    GoingToWaypoint = 818
					SetDelay = os.time()+2
					FlightSpeed = "10"
					SpecialFlags = "Flying"
					else
					GoingToWaypoint = 822
					SetDelay = os.time()+2
					FlightSpeed = "10"
					SpecialFlags = "Flying"
					end
				end
			    if (GetWaypoint == "818") then
                    GoingToWaypoint = 819
					SetDelay = os.time()+2
					FlightSpeed = "10"
					SpecialFlags = "Flying"
				end
			    if (GetWaypoint == "819") then
                    GoingToWaypoint = 820
					SetDelay = os.time()+3
					FlightSpeed = "10"
					SpecialFlags = "Flying"
				end
			    if (GetWaypoint == "820") then
                    GoingToWaypoint = 821
					SetDelay = os.time()+1
					FlightSpeed = "10"
					SpecialFlags = "Flying"
				end
			    if (GetWaypoint == "821") then
                    GoingToWaypoint = 785
					SetDelay = os.time()+3
					FlightSpeed = "1"
					SpecialFlags = "Flying"
				end
--[[
======================================================================================

                    Hillside Oasis ->> Camp Torchwood
                                   END

======================================================================================

                    Hillside Oasis ->> Horde Encampment & Lost Refugee
                                  START

======================================================================================
--]]
                if (GetWaypoint == "822") then
                    GoingToWaypoint = 823
					SetDelay = os.time()+2
					FlightSpeed = "10"
					SpecialFlags = "Flying"
				end
			    if (GetWaypoint == "823") then
				    if (GetFlyingTo == "Lost Refugee") or (GetFlyingTo == "Horde Encampment") then
                    GoingToWaypoint = 790
					SetDelay = os.time()+3
					FlightSpeed = "10"
					SpecialFlags = "Flying"
					else
					GoingToWaypoint = 824
					SetDelay = os.time()+3
					FlightSpeed = "10"
					SpecialFlags = "Flying"
					end
				end
				--------===============---------
				if (GetWaypoint == "863") then ---<<<< Take Off >>>>---
                    GoingToWaypoint = 857
					SetDelay = os.time()+3
					FlightSpeed = "1"
					SpecialFlags = "Flying"
				end
--[[
======================================================================================

                    Hillside Oasis ->> Horde Encampment & Lost Refugee
                                   END

======================================================================================

                    Twilight's Dawn ->> Hillside Oasis --- Lost Refugee
                                  START

======================================================================================
--]]
			    if (GetWaypoint == "838") then ---<<<< Take Off >>>>---
				    if (GetFlyingTo == "Blinded-Soul Mall") then
					GoingToWaypoint = 866
					SetDelay = os.time()+2
					FlightSpeed = "1"
					SpecialFlags = "Flying"
					else
                    GoingToWaypoint = 839
					SetDelay = os.time()+2
					FlightSpeed = "1"
					SpecialFlags = "Flying"
					end
				end
			    if (GetWaypoint == "839") then
                    GoingToWaypoint = 840
					SetDelay = os.time()+1
					FlightSpeed = "10"
					SpecialFlags = "Flying"
				end
			    if (GetWaypoint == "840") then
                    GoingToWaypoint = 841
					SetDelay = os.time()+1
					FlightSpeed = "10"
					SpecialFlags = "Flying"
				end
			    if (GetWaypoint == "841") then
                    GoingToWaypoint = 842
					SetDelay = os.time()+1
					FlightSpeed = "10"
					SpecialFlags = "Flying"
				end
			    if (GetWaypoint == "842") then
				if (GetFlyingTo == "Hillside Oasis") then
                    GoingToWaypoint = 850
					SetDelay = os.time()+1
					FlightSpeed = "10"
					SpecialFlags = "Flying"
					else
                    GoingToWaypoint = 854
					SetDelay = os.time()+3
					FlightSpeed = "10"
					SpecialFlags = "Flying"
					end
				end
			    if (GetWaypoint == "850") then
                    GoingToWaypoint = 851
					SetDelay = os.time()+2
					FlightSpeed = "10"
					SpecialFlags = "Flying"
				end
			    if (GetWaypoint == "851") then
                    GoingToWaypoint = 852
					SetDelay = os.time()+5
					FlightSpeed = "1"
					SpecialFlags = "Flying"
				end
			    if (GetWaypoint == "852") then
                    GoingToWaypoint = 853
					SetDelay = os.time()+4
					FlightSpeed = "1"
					SpecialFlags = "Landing"
				end
			    if (GetWaypoint == "853") then
					SetDelay = os.time()+3
					FlightSpeed = "1"
					SpecialFlags = "Dismounting"
				end
				----------===================-----
                if (GetWaypoint == "854") then
				    GoingToWaypoint = 855
					SetDelay = os.time()+1
					FlightSpeed = "10"
					SpecialFlags = "Flying"
				end
                if (GetWaypoint == "855") then
				    GoingToWaypoint = 815
					SetDelay = os.time()+2
					FlightSpeed = "10"
					SpecialFlags = "Flying"
				end
--[[
======================================================================================

                    Twilight's Dawn ->> Hillside Oasis --- Lost Refugee
                                   END

======================================================================================

                    Lost Refugee - Hillside Oasis ->> Twilights Dawn
                                  START

======================================================================================
--]]
			    if (GetWaypoint == "856") then
                    GoingToWaypoint = 857
					SetDelay = os.time()+1
					FlightSpeed = "10"
					SpecialFlags = "Flying"
				end
			    if (GetWaypoint == "857") then
                    GoingToWaypoint = 858
					SetDelay = os.time()+2
					FlightSpeed = "10"
					SpecialFlags = "Flying"
				end
			    if (GetWaypoint == "858") then
                    GoingToWaypoint = 859
					SetDelay = os.time()+2
					FlightSpeed = "10"
					SpecialFlags = "Flying"
				end
			    if (GetWaypoint == "859") then
                    GoingToWaypoint = 860
					SetDelay = os.time()+2
					FlightSpeed = "10"
					SpecialFlags = "Flying"
				end
			    if (GetWaypoint == "860") then
                    GoingToWaypoint = 861
					SetDelay = os.time()+1
					FlightSpeed = "10"
					SpecialFlags = "Flying"
				end
			    if (GetWaypoint == "861") then
                    GoingToWaypoint = 862
					SetDelay = os.time()+3
					FlightSpeed = "1"
					SpecialFlags = "Landing"
				end
			    if (GetWaypoint == "862") then
					SetDelay = os.time()+3
					FlightSpeed = "1"
					SpecialFlags = "Dismounting"
				end
--[[
======================================================================================

                    Twilight's Dawn ->> Hillside Oasis --- Lost Refugee
                                   END

======================================================================================

                               To The Mall
                                  START

======================================================================================
--]]
			
if (GetWaypoint ~= nil) and (GetSpecialFlags ~= "Teleporting") then ---Fail Safe Goes with "landing" to
GetCloserPlayers:SetPlayerLock(true)
GetCloserPlayers:SetMovementType(768)
GetCloserPlayers:SetMovementFlags(2)
GetNextX = WorldDBQuery("SELECT position_x FROM creature_spawns WHERE id = '"..GetWaypoint.."'", 0):GetColumn(0):GetString()
GetNextY = WorldDBQuery("SELECT position_y FROM creature_spawns WHERE id = '"..GetWaypoint.."'", 0):GetColumn(0):GetString()
GetNextZ = WorldDBQuery("SELECT position_z FROM creature_spawns WHERE id = '"..GetWaypoint.."'", 0):GetColumn(0):GetString()
GetNextO = WorldDBQuery("SELECT orientation FROM creature_spawns WHERE id = '"..GetWaypoint.."'", 0):GetColumn(0):GetString()
GetCloserPlayers:MovePlayerTo(GetNextX, GetNextY, GetNextZ, GetNextO, 12288, FlightSpeed)
CharDBQuery("UPDATE characters_flight_data SET delay='"..SetDelay.."', special_flags='"..SpecialFlags.."', waypoint='"..GoingToWaypoint.."' WHERE name = '"..PlayerName.."' LIMIT 1;", 0)
end
if (GetSpecialFlags == "Landing") then --- Landing, Takes Away Waypoints, making them [nil]
GetCloserPlayers:SetMovementType(768)
GetCloserPlayers:SetMovementFlags(2)	
CharDBQuery("UPDATE characters_flight_data SET delay='"..SetDelay.."', special_flags='"..SpecialFlags.."', waypoint=NULL WHERE name = '"..PlayerName.."' LIMIT 1;", 0)
end
if (GetSpecialFlags == "Dismounting") then ---Dismounts player, and unlocks
MapID = GetCloserPlayers:GetMapId()
GetPlayerX = GetCloserPlayers:GetX()
GetPlayerY = GetCloserPlayers:GetY()
GetPlayerZ = GetCloserPlayers:GetZ()
GetPlayerO = GetCloserPlayers:GetO()
GetCloserPlayers:Teleport(MapID, GetPlayerX, GetPlayerY, GetPlayerZ) ----Dont ask why, prevents players from dying from [High -> Low] flight paths
GetCloserPlayers:SetFacing(GetPlayerO)
GetCloserPlayers:SetPlayerLock(false)
CharDBQuery("UPDATE characters_flight_data SET delay=NULL, flying_to=NULL, flying_from=NULL, waypoint=NULL, is_flying='0', special_flags=NULL WHERE name = '"..PlayerName.."' LIMIT 1;", 0)
GetCloserPlayers:Dismount()
end
			end
		end
    end
end
end
end

RegisterUnitEvent(77650, 18, "Flight_Path_System_Start_OnSpawn")