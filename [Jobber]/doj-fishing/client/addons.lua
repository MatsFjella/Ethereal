
local QBCore = exports['qb-core']:GetCoreObject()

-- function BoatMenuLaPuerta()
--     exports['qb-menu']:openMenu({
--         {
--             header = "La Puerta Boat Rental",
--             isMenuHeader = true
--         },
--         {
--             header = "Båt: "..Config.RentalBoat,
--             txt = "Price: $"..Config.BoatPrice,
--             params = {
--                 event = "doj:client:rentaBoat",
-- 				args = 1
--             }
--         },
--         {
--             header = "Close",
--             txt = "",
--             params = {
--                 event = "qb-menu:closeMenu"
--             }
--         },
--     })
-- end 

-- function BoatMenuPaletoCove()
--     exports['qb-menu']:openMenu({
--         {
--             header = "Paleto Cove Boat Rental",
--             isMenuHeader = true
--         },
--         {
--             header = "Boat: "..Config.RentalBoat,
--             txt = "Price: $"..Config.BoatPrice,
--             params = {
--                 event = "doj:client:rentaBoat",
-- 				args = 2
--             }
--         },
--         {
--             header = "Close",
--             txt = "",
--             params = {
--                 event = "qb-menu:closeMenu"
--             }
--         },
--     })
-- end 

-- function BoatMenuElGordo()
--     exports['qb-menu']:openMenu({
--         {
--             header = "El Gordo Boat Rental",
--             isMenuHeader = true
--         },
--         {
--             header = "Boat: "..Config.RentalBoat,
--             txt = "Price: $"..Config.BoatPrice,
--             params = {
--                 event = "doj:client:rentaBoat",
-- 				args = 3
--             }
--         },
--         {
--             header = "Close",
--             txt = "",
--             params = {
--                 event = "qb-menu:closeMenu"
--             }
--         },
--     })
-- end 


-- function BoatMenuActDam()
--     exports['qb-menu']:openMenu({
--         {
--             header = "Act Dam Boat Rental",
--             isMenuHeader = true
--         },
--         {
--             header = "Boat: "..Config.RentalBoat,
--             txt = "Price: $"..Config.BoatPrice,
--             params = {
--                 event = "doj:client:rentaBoat",
-- 				args = 4
--             }
--         },
--         {
--             header = "Close",
--             txt = "",
--             params = {
--                 event = "qb-menu:closeMenu"
--             }
--         },
--     })
-- end 

-- function BoatMenuAlamoSea()
--     exports['qb-menu']:openMenu({
--         {
--             header = "Alamo Sea Boat Rental",
--             isMenuHeader = true
--         },
--         {
--             header = "Boat: "..Config.RentalBoat,
--             txt = "Price: $"..Config.BoatPrice,
--             params = {
--                 event = "doj:client:rentaBoat",
-- 				args = 5
--             }
--         },
--         {
--             header = "Close",
--             txt = "",
--             params = {
--                 event = "qb-menu:closeMenu"
--             }
--         },
--     })
-- end 
-- --============================================================== ReturnMenus

-- function ReturnBoatLaPuerta()
--     exports['qb-menu']:openMenu({
-- 		{
--             header = "Fishing Boat Rental",
--             isMenuHeader = true
--         },
-- 		{
--             header = "Return Boat",
--             txt = "return and get $"..math.floor(Config.BoatPrice/2),
--             params = {
--                 event = "doj:client:ReturnBoat",
-- 				args = 1
--             }
--         },
--         {
--             header = "Close",
--             txt = "",
--             params = {
--                 event = "qb-menu:closeMenu"
--             }
--         },
--     })
-- end 

-- function ReturnBoatPaletoCove()
--     exports['qb-menu']:openMenu({
-- 		{
--             header = "Fishing Boat Rental",
--             isMenuHeader = true
--         },
-- 		{
--             header = "Return Boat",
--             txt = "return and get $"..math.floor(Config.BoatPrice/2),
--             params = {
--                 event = "doj:client:ReturnBoat",
-- 				args = 2
--             }
--         },
--         {
--             header = "Close",
--             txt = "",
--             params = {
--                 event = "qb-menu:closeMenu"
--             }
--         },
--     })
-- end 

-- function ReturnBoatElGordo()
--     exports['qb-menu']:openMenu({
-- 		{
--             header = "Fishing Boat Rental",
--             isMenuHeader = true
--         },
-- 		{
--             header = "Return Boat",
--             txt = "return and get $"..math.floor(Config.BoatPrice/2),
--             params = {
--                 event = "doj:client:ReturnBoat",
-- 				args = 3
--             }
--         },
--         {
--             header = "Close",
--             txt = "",
--             params = {
--                 event = "qb-menu:closeMenu"
--             }
--         },
--     })
-- end 

-- function ReturnBoatActDam()
--     exports['qb-menu']:openMenu({
-- 		{
--             header = "Fishing Boat Rental",
--             isMenuHeader = true
--         },
-- 		{
--             header = "Return Boat",
--             txt = "return and get $"..math.floor(Config.BoatPrice/2),
--             params = {
--                 event = "doj:client:ReturnBoat",
-- 				args = 4
--             }
--         },
--         {
--             header = "Close",
--             txt = "",
--             params = {
--                 event = "qb-menu:closeMenu"
--             }
--         },
--     })
-- end 

-- function ReturnBoatAlamoSea()
--     exports['qb-menu']:openMenu({
-- 		{
--             header = "Fishing Boat Rental",
--             isMenuHeader = true
--         },
-- 		{
--             header = "Return Boat",
--             txt = "return and get $"..math.floor(Config.BoatPrice/2),
--             params = {
--                 event = "doj:client:ReturnBoat",
-- 				args = 5
--             }
--         },
--         {
--             header = "Close",
--             txt = "",
--             params = {
--                 event = "qb-menu:closeMenu"
--             }
--         },
--     })
-- end

--============================================================== Sell/Gear Menus

RegisterNetEvent('doj:client:SellLegalFish')
AddEventHandler('doj:client:SellLegalFish', function()
    exports['qb-menu']:openMenu({
		{
            header = "Pearl's Seafood Restaurant",
            isMenuHeader = true
        },
        {
            header = "Selg Makrell",
            txt = "Salgspris: "..Config.mackerelPrice.."kr hver",
            params = {
				isServer = true,
                event = "fishing:server:SellLegalFish",
				args = 1
            }
        },
        {
            header = "Selg Torsk",
            txt = "Salgspris "..Config.codfishPrice.."kr hver",
            params = {
				isServer = true,
                event = "fishing:server:SellLegalFish",
				args = 2
            }
        },
		{
            header = "Selg Bass",
            txt = "Salgspris: "..Config.bassPrice.."kr hver",
            params = {
				isServer = true,
                event = "fishing:server:SellLegalFish",
				args = 3 
            }
        },
        {
            header = "Selg Flyndre",
            txt = "Salgspris: "..Config.flounderPrice.."kr hver",
            params = {
				isServer = true,
                event = "fishing:server:SellLegalFish",
				args = 4
            }
        },
		{
            header = "Selg Rokke",
            txt = "Salgspris: "..Config.stingrayPrice.."kr hver",
            params = {
				isServer = true,
                event = "fishing:server:SellLegalFish",
				args = 5
            }
        },		
        {
            header = "Lukk",
            txt = "",
            params = {
                event = "qb-menu:closeMenu"
            }
        },
    })
end)

-- RegisterNetEvent('doj:client:buyFishingGear')
-- AddEventHandler('doj:client:buyFishingGear', function() 
--     exports['qb-menu']:openMenu({
-- 		{
--             header = "Fiskeutstyr",
--             isMenuHeader = true
--         },
--         {
--             header = "Kjøp agn",
--             txt = "kr"..Config.fishingBaitPrice,
--             params = {
-- 				isServer = true,
--                 event = "fishing:server:BuyFishingGear",
-- 				args = 1
--             }
--         },
-- 		{
--             header = "Kjøp fiskestang",
--             txt = "kr"..Config.fishingRodPrice,
--             params = {
-- 				isServer = true,
--                 event = "fishing:server:BuyFishingGear",
-- 				args = 2
--             }
--         },
--         {
--             header = "Kjøp anker",
--             txt = "kr"..Config.BoatAnchorPrice,
--             params = {
-- 				isServer = true,
--                 event = "fishing:server:BuyFishingGear",
-- 				args = 3
--             }
--         },
--         {
--             header = "Kjøp fiskeboks",
--             txt = "kr"..Config.FishingBoxPrice,
--             params = {
-- 				isServer = true,
--                 event = "fishing:server:BuyFishingGear",
-- 				args = 4
--             }
--         },
--         {
--             header = "Lukk",
--             txt = "",
--             params = {
--                 event = "qb-menu:closeMenu"
--             }
--         },
--     })
-- end)

RegisterNetEvent('doj:client:SellillegalFish')
AddEventHandler('doj:client:SellillegalFish', function() 
	QBCore.Functions.TriggerCallback('QBCore:HasItem', function(HasItem)
		if HasItem then
			local charinfo = QBCore.Functions.GetPlayerData().charinfo
			QBCore.Functions.Notify('Velkommen, '..charinfo.firstname..' '..charinfo.lastname)
			exports['qb-menu']:openMenu({
				{
					header = "Pearl's Seafood Restaurant",
					isMenuHeader = true
				},
				{
					header = "Selg Delfin",
					txt = "Salgspris: "..Config.dolphinPrice.."kr hver",
					params = {
						isServer = true,
						event = "fishing:server:SellillegalFish",
						args = 1
					}
				},
				{
					header = "Selg Tigerhai",
					txt = "Salgspris: "..Config.sharktigerPrice.."kr hver",
					params = {
						isServer = true,
						event = "fishing:server:SellillegalFish",
						args = 2
					}
				},
				{
					header = "Selg Hammerhai",
					txt = "Salgspris: "..Config.sharkhammerPrice.."kr hver",
					params = {
						isServer = true,
						event = "fishing:server:SellillegalFish",
						args = 3
					}
				},
				{
					header = "Selg Hval",
					txt = "Salgspris: "..Config.killerwhalePrice.."kr hver",
					params = {
						isServer = true,
						event = "fishing:server:SellillegalFish",
						args = 4
					}
				},
				{
					header = "Lukk",
					txt = "",
					params = {
						event = "qb-menu:closeMenu"
					}
				},
			})
		else
			QBCore.Functions.Notify('Du kan ikke selge dette hos oss akkurat nå, beklager!', 'error', 3500)
		end
	end, "pearlscard")
end)
