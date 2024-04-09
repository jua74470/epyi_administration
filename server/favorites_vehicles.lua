---saveFavoriteVehicle → save a favorite vehicle in datastore
---@return void
RegisterNetEvent("epyi_administration:saveFavoriteVehicle", function(vehicleData)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	if not xPlayer then
		return
	end
	TriggerEvent("epyi_administration:saveData", "FAVVEH", vehicleData, xPlayer.identifier)
end)

---deleteFavoriteVehicle → delete a favorite vehicle in datastore
---@return void
RegisterNetEvent("epyi_administration:deleteFavoriteVehicle", function(id)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	if not xPlayer then
		return
	end
	if _datastore[id].owner ~= xPlayer.identifier then
		return
	end
	TriggerEvent("epyi_administration:deleteData", id)
end)
