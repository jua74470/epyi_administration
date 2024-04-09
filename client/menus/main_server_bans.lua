---main_server_bans_showContentThisFrame → Function to show the main/server/bans menu content
---@param playerGroup string
---@return void
function main_server_bans_showContentThisFrame(playerGroup)
	_var.client.playerData = ESX.GetPlayerData()
	_var.datas.list = GlobalState["epyi_administration:datastore"] or {}

	for id, content in pairs(_var.datas.list) do
		local datas = json.decode(content.data)
		if content.type == "BAN" then
			RageUI.ButtonWithStyle(
				"~c~[#" .. id .. "] ~s~" .. datas.targetName,
				_U("main_server_bans_unit_desc"),
				{ RightLabel = _U("main_server_bans_unit_valid") },
				true,
				function(_h, _a, s)
                    if s then
                        _var.bans.selectedBan = content
                    end
                end,
                _var.menus.admin.objects.mainServerBansDetails
			)
		elseif content.type == "D_BAN" then
			RageUI.ButtonWithStyle(
				"~c~[#" .. id .. "] ~s~" .. datas.targetName,
				_U("main_server_bans_unit_desc"),
				{ RightLabel = _U("main_server_bans_unit_finished") },
				true,
				function(_h, _a, s)
                    if s then
                        _var.bans.selectedBan = content
                    end
                end,
                _var.menus.admin.objects.mainServerBansDetails
			)
		end
	end
end
