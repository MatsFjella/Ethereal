print'Pug Business Creator 1.0.7'

---------- [Functions] ----------
-- Change this to your notification script if needed
function BusinessNotify(msg, type, length)
	if Framework == "ESX" then
		FWork.ShowNotification(msg)
	elseif Framework == "QBCore" then
    	FWork.Functions.Notify(msg, type, length)
	end
end

function GetItemsInformation(I)
	if Framework == "QBCore" then
		if FWork.Shared.Items[I].label ~= nil then
			return FWork.Shared.Items[I].label
		else
			return I
		end
	else
		if Config.InventoryType == "ox_inventory" then
			for item, data in pairs(exports.ox_inventory:Items()) do
				if tostring(item) == tostring(I) then
					return tostring(data.label)
				end
			end
		end
		return I
	end
end

function BusinessToggleItem(bool, item, amount, info)
	return TriggerServerEvent("Pug:server:GivBusinessItem", bool, item, amount, info)
end

function HasItem(items, amount)
	local Player = nil
	if Framework == "QBCore" then
		local DoesHasItem = "nothing"
		Config.FrameworkFunctions.TriggerCallback("Pug:serverESX:GetItemQBCoreBusinessCreator", function(HasItem)
			if HasItem then
				DoesHasItem = true
			else
				DoesHasItem = false
			end
		end, items, amount)
		while DoesHasItem == "nothing" do Wait(1) end
		return DoesHasItem
	else
		local DoesHasItem = "nothing"
		Config.FrameworkFunctions.TriggerCallback("Pug:serverESX:GetItemESXBusinessCreator", function(HasItem)
			if HasItem then
				DoesHasItem = true
			else
				DoesHasItem = false
			end
		end, items, amount)
		while DoesHasItem == "nothing" do Wait(1) end
		return DoesHasItem
	end
end


---------- [ESX SOCIETY COMPATIBILITY] ----------
RegisterNetEvent("Pug:esx_society:depositMoney", function(BillerJob, BusinessCommission)
	TriggerServerEvent('esx_society:depositMoney', BillerJob, BusinessCommission)
end)
--------------------------------------------------