Join my discord through https://krille.tebex.io/ to get support

Download steps:
Unzip the folder
Start the script in the server.cfg
Run the sql files through your database
Make sure you add the items (pet_food, pet_tracker and pet_house) to your shop as well.

QB-Core additional requirements:

Go to qb-inventory->server->main.lua and scroll to row ~1440 (where --callback is) and insert the following code:
```lua
QBCore.Functions.CreateCallback('qb-inventory:server:GetTrunkItems', function(source, cb, plate)
	cb(GetOwnedVehicleItems(plate))
end)
```


Other steps:

if you're not using db-based item system then you'll have to add the following items:
```lua
"pet_food"
"pet_tracker"
"pet_house" -- make sure this item is set to useable
```