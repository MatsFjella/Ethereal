Config = {}


Config.Title = 'Lets Cook!'
Config.Text = 'I am hungry'
Config.Exit = 'Exit'
Config.Quit = 'Quit Job' 


Config.CraftItems = { -- Crafting item
    [1] = {
		label = 'Buddha Rolls',
		subtitle = 'Buddha Rolls',
        name = 'buddharolls',
		job = 'burgershot',
        ingredient = {
			[1] = {
                item = 'gronnsaker',
                amount = 1,
            },
            [2] = {
                item = 'koifisk',
                amount = 1,
            },	
        },

    },
    [2] = {
			label = 'Genki Rolls',
		subtitle = 'Genki Rolls',			
        name = 'genkirolls',
        ingredient = {
            [1] = {
                item = 'koifisk',
                amount = 1,
            },
            [2] = {
                item = 'gronnsaker',
                amount = 1,
            },
        },

    },
    [3] = {
			label = 'California Rolls',
		subtitle = 'California Rolls',			
        name = 'californiarolls',
		job = 'aldente',
        ingredient = {
 			[1] = {
                item = 'koifisk',
                amount = 1,
            },
            [2] = {
                item = 'gronnsaker',
                amount = 1,
            },
            [3] = {
                item = 'koiskalldyr',
                amount = 1,
            },		
            [4] = {
                item = 'bacon',
                amount = 4,
            },		
            [5] = {
                item = 'salt',
                amount = 1,
            },
            [6] = {
                item = 'pepper',
                amount = 1,
            },			
        },

    },
  
 
}



Config.UnpackItems = { -- On use item
    [1] = {
--		label = 'Pie',  				not used jet
--		subtitle = 'The perfect pie',	not used jet
        name = 'pie_drug',
        ingredient = {
			[1] = {
                item = 'weed_bag',
                amount = 1,
            },
			[2] = {
                item = 'plastic_bag',
                amount = 3,
            },			
 		
        },

    },
    [2] = {
	--		label = 'Powder Milk',    		not used jet
	--	subtitle = 'Just powder milk',		not used jet	
        name = 'milk_coca',
        ingredient = {
            [1] = {
                item = 'cocaine_bag',
                amount = 1,
            },
        },

    },
 

    
  
 
}

	-- VOODOO CUSTOM ITEMS
--	['hamburger_row'] 		= {['name'] = 'hamburger_row', 			['label'] = 'Row Hamburger', 			['weight'] = 200, 		['type'] = 'item', 		['image'] = 'rowhamburger.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'Dude it is row!'},
--	['hamburger'] 			= {['name'] = 'hamburger', 			 	['label'] = 'Cooked Hamburger', 		['weight'] = 200, 		['type'] = 'item', 		['image'] = 'hamburger.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'Perfectly Cooked!'},
--	['big_burger'] 			= {['name'] = 'big_burger', 			['label'] = 'Big Burger', 				['weight'] = 200, 		['type'] = 'item', 		['image'] = 'bigburger.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'OMG!'},
--	['pickle'] 				= {['name'] = 'pickle', 			 	['label'] = 'Pickle', 					['weight'] = 200, 		['type'] = 'item', 		['image'] = 'pickle.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'And where is the juice?'},
--	['tomato'] 				= {['name'] = 'tomato', 			 	['label'] = 'Tomato', 					['weight'] = 200, 		['type'] = 'item', 		['image'] = 'tomato.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'Fresh!'},
--	['bread_burger'] 		= {['name'] = 'bread_burger', 			['label'] = 'Bread for Burger', 		['weight'] = 200, 		['type'] = 'item', 		['image'] = 'breadburger.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'Fresh!'},


--	['carbonara'] 			= {['name'] = 'carbonara', 			 	['label'] = 'Carbonara Pasta', 			['weight'] = 200, 		['type'] = 'item', 		['image'] = 'carbonara.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'OMG!'},
--	['egg'] 				= {['name'] = 'egg', 			 		['label'] = 'Egg', 						['weight'] = 200, 		['type'] = 'item', 		['image'] = 'egg.png', 					['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'Just an egg'},
--	['bacon'] 				= {['name'] = 'bacon', 			 		['label'] = 'Bacon', 					['weight'] = 200, 		['type'] = 'item', 		['image'] = 'bacon.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'WARNING! not vegan!'},
--	['pepper'] 				= {['name'] = 'pepper', 			 	['label'] = 'Pepper', 					['weight'] = 200, 		['type'] = 'item', 		['image'] = 'pepper.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'You could sniff it ...'},
--	['salt'] 				= {['name'] = 'salt', 			 		['label'] = 'Salt', 					['weight'] = 200, 		['type'] = 'item', 		['image'] = 'salt.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'LICK ME!'},
--	['pasta'] 				= {['name'] = 'pasta', 			 		['label'] = 'Pasta', 					['weight'] = 200, 		['type'] = 'item', 		['image'] = 'pasta.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'LICK ME!'},

--	['voodoo_fdtool'] 				= {['name'] = 'voodoo_fdtool', 			 		['label'] = 'Cooking Book', 					['weight'] = 200, 		['type'] = 'item', 		['image'] = 'pasta.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,   ['combinable'] = nil,   ['description'] = 'LICK ME!'},





