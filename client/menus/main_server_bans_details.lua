---main_server_bans_details_showContentThisFrame → Function to show the main/server/bans/details menu content
---@param playerGroup string
---@return void
function main_server_bans_details_showContentThisFrame(playerGroup)
	local datas = json.decode(_var.bans.selectedBan.data)
	RageUI.Separator(_U("main_server_bans_details_target", datas.targetName))
	RageUI.Separator(_U("main_server_bans_details_author", datas.staffName))
	RageUI.Separator(
		_U(
			"main_server_bans_details_validity",
			_var.bans.selectedBan.type == "BAN" and _U("main_server_bans_unit_valid")
				or _U("main_server_bans_unit_finished")
		)
	)
	RageUI.Separator(_U("main_server_bans_details_id", datas.id))
    RageUI.Separator(_U("main_server_bans_details_date", timeFormat(_U("date_format_long"), datas.writeDetails)))
    RageUI.Separator(_U("main_server_bans_details_time", datas.duration))
    RageUI.Separator(_U("main_server_bans_details_expiration", timeFormat(_U("date_format_long"), datas.expirationDetails)))
	RageUI.ButtonWithStyle(
		_U("main_server_bans_details_reason"),
		_U("main_server_bans_details_actual", datas.reason),
		{ RightLabel = _U("main_server_bans_details_edit") },
		true,
		function(_h, _a, s)
			if s then
			end
		end
	)
	RageUI.ButtonWithStyle(
		_U("main_server_bans_details_delete"),
		_U("main_server_bans_details_delete_desc"),
		{ Color = { BackgroundColor = { 150, 50, 50, 20 } } },
		true,
		function(_h, _a, s)
			if s then
			end
		end,
		_var.menus.admin.objects.mainServerBans
	)
end
