local blips = {
    -- Example {title="", colour=, id=, x=, y=, z=},
	-- Postes de polices
  {title="Hotellet ", colour=6, id=50, x=-266.27, y=-959.65, z=31.22},     


  {title="Snr Buns", colour=3, id=52, x=-511.02, y=-694.20, z=33.67},  
  
 
 

  } 

  

Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 0.9)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)