# LC-Drugs

An easy to use Drugs Script, for your RP needs.

Make sure to join the discord for support https://discord.gg/VbArb64C56


## Features

Features:
  - 32 New Items
  - Changeable Recipes
  - Easy Install
  - 13 Drug Effects You can Mix and Match
  - Optional Blueprints (Require Studying of Blueprint to produce Drug)
 
LSD:
  - Dynamic LSA Production Locations
  - Change LSA Payout and Ingredients
  - Dynamic LYS Production Locations
  - Change LYS Payout and Ingredients
  - Production of LSD Sheets
  - Cutting LSD Sheets
  - Pre-Configured Effects for LSD

Meth:
  - Dynamic Production Locations
  - Dynamic Ingredients and Payout
  - Dynamic Purify Locations
  - Change Purify Ingredients and Payout
  - Pre-Configured Meth Effects (Infinite Stamina)

Heroin:
  - Dynamic Production Locations
  - Dynamic Ingredients and Payout
  - Pre-Configured Heroin Effects (Health Regen)

Cocaine:
  - Coca Plant Dynamic Spawning (Each player will have their own plants)
  - Changeable Plant Props
  - Changeable Plant Payouts (Min,Max)
  - Dynamic Cooking Locations
  - Dynamic Cutting Locations
  - Dynamic Packaging Locations
  - Changeable Recipes
  - Pre-Configured Cocaine Effects (Speed Buff)

And of course as with all my scripts you get support, bug fixes and updates :)

## Installation

Go to QB-Core/Shared/Items.lua and add these items in
Make sure to remove the old empty_weed_bag from your items list.

```
		
	--LC Drugs
	['lcd-lsd_bp'] 					 	 = {['name'] = 'lcd-lsd_bp', 			  	  	['label'] = 'LSD Blueprint', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'lcd-lsd_bp.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = "How to make drugs?"},
	['lcd-lsd'] 						 = {['name'] = 'lcd-lsd', 			  	  		['label'] = 'LSD', 						['weight'] = 500, 		['type'] = 'item', 		['image'] = 'lcd-lsd.png', 					['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = "Woooooaaaahhhh duuuddeeee"},
	['lcd-lsdsheet'] 					 = {['name'] = 'lcd-lsdsheet', 			  	  	['label'] = 'LSD Sheet', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'lcd-lsdsheet.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = "Thats a lot of LSD"},
	['lcd-morning_glory_seeds'] 		 = {['name'] = 'lcd-morning_glory_seeds', 		['label'] = 'Morning Glory Seeds', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'lcd-lsdseed.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = "Whats this for?"},
	['lcd-lsa'] 						 = {['name'] = 'lcd-lsa', 			  	  		['label'] = 'LSA', 						['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'lcd-lsa.png', 					['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = "Do not spill this!"},
	['lcd-lsd_phos'] 					 = {['name'] = 'lcd-lsd_phos', 			  	  	['label'] = 'Phosphoryl Chloride', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'lcd-lsd_phos.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = "Do not spill this!"},
	['lcd-lsd_la'] 						 = {['name'] = 'lcd-lsd_la', 			  	  	['label'] = 'Lysergic Acid', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'lcd-lsd_la.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = "Do not spill this!"},
	['lcd-lsd_dieth'] 					 = {['name'] = 'lcd-lsd_dieth', 			  	['label'] = 'Diethylamine', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'lcd-lsd_dieth.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = "Do not spill this!"},
	['lcd-lsd_blotter'] 				 = {['name'] = 'lcd-lsd_blotter', 			  	['label'] = 'Blotter Paper', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'lcd-lsd_blotter.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = "Do not spill this!"},
	--
	['lcd-meth_bp'] 					 = {['name'] = 'lcd-meth_bp', 			  	  	['label'] = 'Meth Blueprint', 			['weight'] = 500, 		['type'] = 'item', 		['image'] = 'lcd-meth_bp.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = "How to make drugs?"},
	['lcd-pseudoephedrine'] 			 = {['name'] = 'lcd-pseudoephedrine', 			['label'] = 'Sudafed', 			    	['weight'] = 500, 		['type'] = 'item', 		['image'] = 'lcd-pseudoephedrine.png', 					['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = "For those blocked noses"},
	['lcd-antifreeze'] 			 		 = {['name'] = 'lcd-antifreeze', 				['label'] = 'Antifreeze', 				['weight'] = 500, 		['type'] = 'item', 		['image'] = 'lcd-antifreeze.png', 					['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = "Antifreeze for your car"},
	['lcd-batteries'] 			 		 = {['name'] = 'lcd-batteries', 				['label'] = 'Batteries', 				['weight'] = 500, 		['type'] = 'item', 		['image'] = 'lcd-batteries.png', 					['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = "Charge Those Devices"},
	['lcd-unpuredmeth'] 				 = {['name'] = 'lcd-unpuredmeth', 			    ['label'] = 'LQ Meth', 					['weight'] = 100, 		['type'] = 'item', 		 ['image'] = 'lcd-unpuredmeth.png', 			['unique'] = false, 	['useable'] = true, 	   ['shouldClose'] = true,       ['combinable'] = nil,   	 ['description'] = 'Should Probably Refine this'},
	['lcd-meth'] 					 	 = {['name'] = 'lcd-meth', 						['label'] = 'Meth', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'lcd-meth.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'A baggie of Meth'},
	['lcd-draincleaner'] 				 = {['name'] = 'lcd-draincleaner', 			  	['label'] = 'Drain Cleaner', 			['weight'] = 500, 		['type'] = 'item', 		['image'] = 'lcd-draincleaner.png', 					['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = "Pesky clogged drain"},
	['empty_weed_bag'] 				 	 = {['name'] = 'empty_weed_bag', 			    ['label'] = 'Empty Bag', 			['weight'] = 0, 		['type'] = 'item', 		['image'] = 'weed_baggy_empty.png', 	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A small empty bag'},
	--
	['lcd-aceticanhydride'] 			 = {['name'] = 'lcd-aceticanhydride', 			['label'] = 'Acetic Anhydride', 		['weight'] = 175, 		['type'] = 'item', 		['image'] = 'lcd-aceticanhydride.png', 		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = "Do not spill this!"},
	['lcd-chloroform'] 					 = {['name'] = 'lcd-chloroform', 			  	['label'] = 'Chloroform', 				['weight'] = 175, 		['type'] = 'item', 		['image'] = 'lcd-chloroform.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = "Do not spill this!"},
	['lcd-sodiumcarbonate'] 			 = {['name'] = 'lcd-sodiumcarbonate', 			['label'] = 'Sodium Carbonate', 		['weight'] = 175, 		['type'] = 'item', 		['image'] = 'lcd-sodiumcarbonate.png', 		['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = "Fancy Baking a cake!"},
	['lcd-hcl'] 			 			 = {['name'] = 'lcd-hcl', 			  			['label'] = 'Hydrochloric Acid', 		['weight'] = 175, 		['type'] = 'item', 		['image'] = 'lcd-hcl.png', 	['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = "Do not spill this!"},
	['lcd-heroin'] 				 		 = {['name'] = 'lcd-heroin', 			  	  	['label'] = 'Heroin', 					['weight'] = 375, 		['type'] = 'item', 		['image'] = 'lcd-heroin.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = "Very bad drug."},
	['lcd-heroin_bp'] 					 = {['name'] = 'lcd-heroin_bp', 			  	['label'] = 'Heroin Blueprint', 		['weight'] = 750, 		['type'] = 'item', 		['image'] = 'lcd-heroin_bp.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = "How to make drugs?"},
	--
	["lcd-coca_leaf"] 		 	 	 	 = {["name"] = "lcd-coca_leaf",           		["label"] = "Cocaine leaves",	 		["weight"] = 100,		["type"] = "item", 		["image"] = "lcd-coca_leaf.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["expire"] = 90,  ["description"] = "Coa leaf"},
	['lcd-cocaine_bp'] 					 = {['name'] = 'lcd-cocaine_bp', 			  	['label'] = 'Cocaine Blueprint', 		['weight'] = 500, 		['type'] = 'item', 		['image'] = 'lcd-cocaine_bp.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = "How to make drugs?"},
	['lcd-cementpowder'] 				 = {['name'] = 'lcd-cementpowder', 			  	['label'] = 'Cement Powder', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'lcd-cementpowder.png', 					['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = "Building Supply"},
	['lcd-petrol'] 						 = {['name'] = 'lcd-petrol', 			  	    ['label'] = 'Petrol', 					['weight'] = 500, 		['type'] = 'item', 		['image'] = 'lcd-petrol.png', 					['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = "Need some fuel?"},
	['lcd-pottasiumsalt'] 				 = {['name'] = 'lcd-pottasiumsalt', 			['label'] = 'Pottasium Salt', 			['weight'] = 500, 		['type'] = 'item', 		['image'] = 'lcd-pottasiumsalt.png', 					['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = "Thats salty"},
	['lcd-sodiumhydroxide'] 			 = {['name'] = 'lcd-sodiumhydroxide', 			['label'] = 'Sodium Hydroxide', 		['weight'] = 500, 		['type'] = 'item', 		['image'] = 'lcd-sodiumhydroxide.png', 					['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = "Careful"},
	['lcd-sulfuricacid'] 				 = {['name'] = 'lcd-sulfuricacid', 			  	['label'] = 'Sulfuric Acid', 			['weight'] = 500, 		['type'] = 'item', 		['image'] = 'lcd-sulfuricacid.png', 					['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = "Careful"},
	['lcd-coke_brick'] 		 			 = {['name'] = 'lcd-coke_brick', 				['label'] = 'Coke Brick', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'lcd-coke_brick.png', 			['unique'] = true, 		['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Heavy package of cocaine, mostly used for deals and takes a lot of space'},
	['lcd-coke_small_brick'] 		 	 = {['name'] = 'lcd-coke_small_brick', 			['label'] = 'Coke Package', 			['weight'] = 500, 		['type'] = 'item', 		['image'] = 'lcd-coke_small_brick.png', 	['unique'] = true, 		['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Small package of cocaine, mostly used for deals and takes a lot of space'},
	['lcd-cokebaggy'] 					 = {['name'] = 'lcd-cokebaggy', 			  	['label'] = 'Bag of Coke', 				['weight'] = 250, 		['type'] = 'item', 		['image'] = 'lcd-cokebaggy.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'To get happy real quick'},
	
```
If you want to use Blueprints (Highly Recommended) you will need to modify your Database.
You will need to run this SQL Command
If you DO NOT WANT to use blueprints you can skip this step.
```
    ALTER TABLE `players` ADD `lsd` INT NOT NULL DEFAULT '0' AFTER `last_updated`, ADD `meth` INT NOT NULL DEFAULT '0' AFTER `lsd`, ADD `heroin` INT NOT NULL DEFAULT '0' AFTER `meth`, ADD `cocaine` INT NOT NULL DEFAULT '0' AFTER `heroin`;
```


In the script you will have to configure quite a lot of things. I suggest keeping the recipes the same and just changing the locations.
You will need to implement your own way to get hold of the items needed. This comes down to you entirely how you want to do this.
It can be as simple as adding the items to shops, or making them dive for them.
You can create blackmarket dealers with QB-Shops or any other shop script.

The items that need to be obtainable/purchasable for each drug are.

LSD
```
	lcd-morning_glory_seeds
	lcd-lsd_phos
	lcd-lsd_dieth
	lcd-lsd_blotter
```

Meth:
```
	lcd-pseudoephedrine
	lcd-antifreeze
	lcd-batteries
	lcd-draincleaner
```

Heroin:
```
	lcd-aceticanhydride
	lcd-chloroform
	lcd-sodiumcarbonate
	lcd-hcl
	water_bottle
```

Cocaine:
```
	lcd-petrol
	lcd-draincleaner
	lcd-cementpowder
	lcd-sulfuricacid
	lcd-pottasiumsalt
	lcd-sodiumhydroxide
	water_bottle
```

The requirements for each drug can be changed in the config.

A good idea with a way to find blueprints is to add them to QB-Diving.
These are the blueprints you will need to add ways for people to get a hold off. This is down to you how to do this, you can make them buyable just be creative.

```
lcd-lsd_bp
lcd-meth_bp
lcd-heroin_bp
lcd-cocaine_bp
```