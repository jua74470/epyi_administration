local _players = {}

---playerUpdated
---@param playerId number
---@param player table
---@return void
---@private
local function playerUpdated(playerId, player)
	local xPlayers = ESX.GetExtendedPlayers()
	for _, xTarget in pairs(xPlayers) do
		local xTargetSource = xTarget.source
		if Config.Groups[xTarget.getGroup()] and Config.Groups[xTarget.getGroup()].Access["submenu_players_access"] and Player(xTargetSource).state["epyi_administration:onDuty"] then
			TriggerClientEvent("epyi_administration:playerUpdated", xTargetSource, playerId, player)
		end
	end
end

---logoutPlayer
---@param source number
---@return void
---@private
local function logoutPlayer(source)
	if not _players[source] then
		return
	end
	_players[source] = nil
	playerUpdated(source, _players[source])
	Player(source).state:set("epyi_administration:onDuty", nil, true)
end

ESX.RegisterServerCallback("epyi_administration:getPlayers", function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	if not Config.Groups[xPlayer.getGroup()] or not Config.Groups[xPlayer.getGroup()].Access["submenu_players_access"] then
		xPlayer.kick(_U("insuficient_permissions"))
		cb({})
		return
	end
	cb(_players)
end)

AddEventHandler("esx:playerUpdated", function(_, xPlayer)
	if _players[xPlayer.source] then
		return
	end
	_players[xPlayer.source] = {
		identifier = xPlayer.identifier,
		source = xPlayer.source,
		name = xPlayer.getName(),
		ooc_name = GetPlayerName(xPlayer.source),
		group = xPlayer.getGroup(),
		job = xPlayer.getJob(),
		accounts = xPlayer.getAccounts(),
		coords = xPlayer.getCoords(),
		inventory = xPlayer.getInventory(),
	}
	playerUpdated(xPlayer.source, _players[xPlayer.source])
end)

AddEventHandler("esx:playerLogout", function(source)
	logoutPlayer(source)
end)

AddEventHandler("playerDropped", function(reason)
	logoutPlayer(source)
end)

Citizen.CreateThread(function()
	local xPlayers = ESX.GetExtendedPlayers()
	for _k, xTarget in pairs(xPlayers) do
		_players[xTarget.source] = {
			identifier = xTarget.identifier,
			source = xTarget.source,
			name = xTarget.getName(),
			ooc_name = GetPlayerName(xTarget.source),
			group = xTarget.getGroup(),
			job = xTarget.getJob(),
			accounts = xTarget.getAccounts(),
			coords = xTarget.getCoords(),
			inventory = xTarget.getInventory(),
		}
	end
end)

ESX.RegisterServerCallback("epyi_administration:setCoords", function(source, cb, target, coords, type)
	local xPlayer = ESX.GetPlayerFromId(source)
	if not Config.Groups[xPlayer.getGroup()] then
		xPlayer.kick(_U("insuficient_permissions"))
		cb(false)
		return
	end
	local xTarget = ESX.GetPlayerFromId(target)
	if not xTarget or not coords or not type then
		xPlayer.showNotification(_U("notif_error"))
		cb(false)
		return
	end
	if type == "coords" then
		xTarget.setCoords(coords)
	elseif type == "source" then
		local xSourceCoords = ESX.GetPlayerFromId(coords)
		if not xSourceCoords then
			xPlayer.showNotification(_U("notif_error"))
			cb(false)
			return
		end
		xTarget.setCoords(xSourceCoords.getCoords(true))
	end
	cb(true)
end)

RegisterNetEvent("epyi_administration:setDeathStatus", function(isDead)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	if not Config.Groups[xPlayer.getGroup()] then
		xPlayer.kick(_U("insuficient_permissions"))
		return
	end
	if type(isDead) == "boolean" then
		MySQL.update("UPDATE users SET is_dead = ? WHERE identifier = ?", { isDead, xPlayer.identifier })
		isDeadState(_source, isDead)
		Player(_source).state:set("isDead", isDead, true)
	end
end)

RegisterNetEvent("epyi_administration:addPlayerMoney", function(target, type, amount)
	local xPlayer = ESX.GetPlayerFromId(source)
	if not Config.Groups[xPlayer.getGroup()] or not Config.Groups[xPlayer.getGroup()].Access["submenu_players_interact_managemoney"] then
		xPlayer.kick(_U("insuficient_permissions"))
		return
	end
	local xTarget = ESX.GetPlayerFromId(target)
	if not xTarget or not amount or not type then
		xPlayer.showNotification(_U("notif_error"))
		return
	end
	xTarget.addAccountMoney(type, amount)
	xPlayer.showNotification(_U("notif_addmoney_success", amount))
	_players[xTarget.source]["accounts"] = xTarget.getAccounts()
	playerUpdated(xTarget.source, _players[xTarget.source])
end)

RegisterNetEvent("epyi_administration:removePlayerMoney", function(target, type, amount)
	local xPlayer = ESX.GetPlayerFromId(source)
	if not Config.Groups[xPlayer.getGroup()] or not Config.Groups[xPlayer.getGroup()].Access["submenu_players_interact_managemoney"] then
		xPlayer.kick(_U("insuficient_permissions"))
		return
	end
	local xTarget = ESX.GetPlayerFromId(target)
	if not xTarget or not amount or not type then
		xPlayer.showNotification(_U("notif_error"))
		return
	end
	if xTarget.getAccount(type).money < amount then
		xPlayer.showNotification(_U("notif_amount_too_much"))
		return
	end
	xTarget.removeAccountMoney(type, amount)
	xPlayer.showNotification(_U("notif_removemoney_success", amount))
	_players[xTarget.source]["accounts"] = xTarget.getAccounts()
	playerUpdated(xTarget.source, _players[xTarget.source])
end)

RegisterNetEvent("epyi_administration:setPlayerMoney", function(target, type, amount)
	local xPlayer = ESX.GetPlayerFromId(source)
	if not Config.Groups[xPlayer.getGroup()] or not Config.Groups[xPlayer.getGroup()].Access["submenu_players_interact_managemoney"] then
		xPlayer.kick(_U("insuficient_permissions"))
		return
	end
	local xTarget = ESX.GetPlayerFromId(target)
	if not xTarget or not amount or not type then
		xPlayer.showNotification(_U("notif_error"))
		return
	end
	xTarget.setAccountMoney(type, tonumber(amount))
	xPlayer.showNotification(_U("notif_setmoney_success", amount))
	_players[xTarget.source]["accounts"] = xTarget.getAccounts()
	playerUpdated(xTarget.source, _players[xTarget.source])
end)

RegisterNetEvent("epyi_administration:sendMessage", function(target, message)
	local xPlayer = ESX.GetPlayerFromId(source)
	if not Config.Groups[xPlayer.getGroup()] or not Config.Groups[xPlayer.getGroup()].Access["submenu_players_interact_dm"] then
		xPlayer.kick(_U("insuficient_permissions"))
		return
	end
	local xTarget = ESX.GetPlayerFromId(target)
	if not xTarget or not message then
		xPlayer.showNotification(_U("notif_error"))
		return
	end
	xTarget.showNotification(_U("notif_dm_from_staff", message))
	xPlayer.showNotification(_U("notif_dm_send_success", xTarget.getName()))
end)

RegisterNetEvent("epyi_administration:kickPlayer", function(target, reason)
	local xPlayer = ESX.GetPlayerFromId(source)
	if not Config.Groups[xPlayer.getGroup()] or not Config.Groups[xPlayer.getGroup()].Access["submenu_players_interact_kick"] then
		xPlayer.kick(_U("insuficient_permissions"))
		return
	end
	local xTarget = ESX.GetPlayerFromId(target)
	if not xTarget or not reason then
		xPlayer.showNotification(_U("notif_error"))
		return
	end
	xPlayer.showNotification(_U("notif_kick_success", xTarget.getName()))
	log("Player " .. xPlayer.getName() .. " (Identifier: " .. xPlayer.identifier .. ") has kicked " .. xTarget.getName() .. " (Identifier: " .. xTarget.identifier .. ") for the reason '" .. reason .. "'")
	xTarget.kick(_U("notif_kick_target", reason))
end)

RegisterNetEvent("epyi_administration:banPlayer", function(target, reason, duration)
	local xPlayer = ESX.GetPlayerFromId(source)
	if not Config.Groups[xPlayer.getGroup()] or not Config.Groups[xPlayer.getGroup()].Access["submenu_players_interact_ban"] then
		xPlayer.kick(_U("insuficient_permissions"))
		return
	end
	local xTarget = ESX.GetPlayerFromId(target)
	if not xTarget or not reason or not duration then
		xPlayer.showNotification(_U("notif_error"))
		return
	end
	local unixDuration = timeExpression(duration)
	print(duration)
	if not unixDuration then
		xPlayer.showNotification(_U("textentry_timestamp_invalid"))
		return
	end
	unixDuration = tonumber(unixDuration)
	local expiration = os.time() + unixDuration
	TriggerEvent("epyi_administration:saveData", "BAN", {
		unixDuration = unixDuration,
		duration = duration,
		expiration = expiration,
		expirationDetails = {
			day = os.date("%d", expiration),
			month = os.date("%m", expiration),
			year = os.date("%Y", expiration),
			hour = os.date("%H", expiration),
			minute = os.date("%M", expiration),
		},
		writeDetails = {
			day = os.date("%d"),
			month = os.date("%m"),
			year = os.date("%Y"),
			hour = os.date("%H"),
			minute = os.date("%M"),
		},
		reason = reason,
		target = xTarget.identifier,
		staff = xPlayer.identifier,
		targetName = xTarget.getName(),
		staffName = xPlayer.getName(),
	}, xTarget.identifier)
	xPlayer.showNotification(_U("notif_ban_success", xTarget.getName()))
	log("Player " .. xPlayer.getName() .. " (Identifier: " .. xPlayer.identifier .. ") has banned " .. xTarget.getName() .. " (Identifier: " .. xTarget.identifier .. ") for the reason '" .. reason .. "' with duration '" .. duration .. "'")
	xTarget.kick(_U("notif_ban_target", reason, duration, formatExpiration))
	print(formatExpiration)
end)

RegisterNetEvent("epyi_administration:editBan", function(id, action, data)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	if not Config.Groups[xPlayer.getGroup()] or not Config.Groups[xPlayer.getGroup()].Access["submenu_server_bans_edit"] then
		xPlayer.kick(_U("insuficient_permissions"))
		return
	end
	if not id or not action or not data or type(id) ~= "number" or type(action) ~= "string" or type(data) ~= "table" then
		return
	end
	if action == "editReason" then
		local newReason = data.reason
		local _datas = json.decode(_datastore[id].data)
		_datas.reason = newReason
		TriggerEvent("epyi_administration:editData", id, _datastore[id].type, _datastore[id].date_unix, json.encode(_datas), _datastore[id].owner)
	elseif action == "revoke" then
		TriggerEvent("epyi_administration:deleteData", id)
	end
end)
