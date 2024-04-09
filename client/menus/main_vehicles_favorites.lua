---main_vehicles_favorites_showContentThisFrame → Function to show the main/vehicles/favorites menu content
---@param playerGroup string
---@return void
function main_vehicles_favorites_showContentThisFrame(playerGroup)
	_var.client.playerData = ESX.GetPlayerData()
	_var.datas.list = GlobalState["epyi_administration:datastore"] or {}

	RageUI.ButtonWithStyle(
		_U("main_vehicles_favorites_add"),
		_U("main_vehicles_favorites_add_desc"),
		{ RightLabel = "→" },
		true,
		function(_h, _a, Selected)
			if Selected then
				local ped = PlayerPedId()
				local pedVehicle = GetVehiclePedIsIn(ped, false)
				local vehicleData = ESX.Game.GetVehicleProperties(pedVehicle)
				if not pedVehicle or GetPedInVehicleSeat(pedVehicle, -1) ~= ped then
					ESX.ShowNotification(_U("self_not_in_vehicle"))
					return
				end
				local vehicleName = textEntry(_U("textentry_add_to_favorites_name"), "", 30)
				if vehicleName == nil or vehicleName == "" then
					ESX.ShowNotification(_U("textentry_string_invalid"))
					return
				end
				vehicleData["vehicleName"] = vehicleName
				TriggerServerEvent("epyi_administration:saveFavoriteVehicle", vehicleData)
			end
		end
	)
	RageUI.Separator("↓ Your ~r~favorites vehicles~s~ ↓")
	for id, content in pairs(_var.datas.list) do
		if content.type == "FAVVEH" and content.owner == _var.client.playerData.identifier then
			local _datas = json.decode(content.data)
			RageUI.List(
				_datas.vehicleName .. " (" .. GetDisplayNameFromVehicleModel(_datas.model) .. ")",
				_var.menu.favritesActionsArray,
				_var.menu.favritesActionsArrayIndex,
				_U("main_vehicles_favorites_interact_desc", _datas.vehicleName),
				{},
				true,
				function(_h, _a, Selected, Index)
					_var.menu.favritesActionsArrayIndex = Index
					if Selected then
						if
							_var.menu.favritesActionsArray[_var.menu.favritesActionsArrayIndex]
							== _("main_vehicles_favorites_interact_spawn")
						then
							local ped = PlayerPedId()
							local pedCoords = GetEntityCoords(ped)
							local pedHeading = GetEntityHeading(ped)
							local pedVehicle = GetVehiclePedIsIn(ped, false)
							if pedVehicle then
								ESX.Game.DeleteVehicle(pedVehicle)
							end
							ESX.Game.SpawnVehicle(_datas.model, pedCoords, pedHeading, function(callback_vehicle)
								ESX.Game.SetVehicleProperties(callback_vehicle, _datas)
								TaskWarpPedIntoVehicle(ped, callback_vehicle, -1)
								SetVehicleEngineOn(callback_vehicle, true, true, false)
							end)
						elseif
							_var.menu.favritesActionsArray[_var.menu.favritesActionsArrayIndex]
							== _("main_vehicles_favorites_interact_delete")
						then
							TriggerServerEvent("epyi_administration:deleteFavoriteVehicle", content.id)
						end
					end
				end
			)
		end
	end
end
