---getFavoritesVehicles → get favorites vehicles of a player
---@return table all vehicles
ESX.RegisterServerCallback("epyi_administration:getFavoritesVehicles", function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)
    if not xPlayer then
        cb({})
        return
    end
    local xPlayerFavoritesVehicles = {}
	for id, content in pairs(_datastore) do
        if content.type == "favveh" then
            if content.owner == xPlayer.identifier then
                xPlayerFavoritesVehicles[#xPlayerFavoritesVehicles + 1] = json.decode(content.data)
            end
        end
    end
    cb(xPlayerFavoritesVehicles)
end)

---saveFavoriteVehicle → save a favorite vehicle in datastore
---@return void
RegisterNetEvent("epyi_administration:saveFavoriteVehicle", function(vehicleData)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    if not xPlayer then
        return
    end
    TriggerEvent("epyi_administration:saveData", "favveh", vehicleData, xPlayer.identifier)
end)

---deleteFavoriteVehicle → delete a favorite vehicle in datastore
---@return void
RegisterNetEvent("epyi_administration:deleteFavoriteVehicle", function(vehicleData)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    if not xPlayer then
        return
    end
    if _datastore[vehicleData.id].owner ~= xPlayer.identifier then
        return
    end
    TriggerEvent("epyi_administration:deleteData", vehicleData.id)
end)