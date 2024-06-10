local reportCooldowns = reportCooldowns or {}

GlobalState:set("epyi_administration:reportList", {}, true)

local function sendReportsToStatebag()
	GlobalState:set("epyi_administration:reportList", _var.reports.list, true)
end

--report command
--command to create a report
ESX.RegisterCommand("report", "user", function(xPlayer, args, showError)
	if reportCooldowns[xPlayer.identifier] then
		xPlayer.showNotification(_U("notif_cannot_perform_cooldown"))
		return
	end
	local reason = ""
	for _, arg in pairs(args) do
		if reason == "" then
			reason = arg
		else
			reason = reason .. " " .. arg
		end
	end
	if reason == nil or reason == "" then
		reason = _U("command_report_no_reason")
	end
	addReport(xPlayer, reason)
	xPlayer.showNotification(_U("command_report_success", reason))
	local xPlayers = ESX.GetExtendedPlayers()
	for _, xStaff in pairs(xPlayers) do
		if Config.Groups[xStaff.getGroup()].Access["submenu_reports_access"] then
			xStaff.showNotification(_U("command_report_success_staff", xPlayer.getName(), xPlayer.source))
		end
	end
	reportCooldowns[xPlayer.identifier] = true
	Citizen.SetTimeout(5000, function()
		reportCooldowns[xPlayer.identifier] = false
	end)
end, false)

---addReport
---@param xPlayer player
---@param reason string
---@return void
function addReport(xPlayer, reason)
	local report = {
		user = {
			identifier = xPlayer.identifier,
			source = xPlayer.source,
			name = xPlayer.getName(),
			ooc_name = GetPlayerName(xPlayer.source),
			group = xPlayer.getGroup(),
			job = xPlayer.getJob(),
			accounts = xPlayer.getAccounts(),
			coords = xPlayer.getCoords(),
			inventory = xPlayer.getInventory(),
			reason = reason,
		},
		staff = {
			taken = false,
			takerIdentifier = nil,
			takerSource = nil,
			takerGroup = nil,
			takerName = nil,
		},
	}
	table.insert(_var.reports.list, report)
	sendReportsToStatebag()
end

---setReport → Set a server report data
---@param identifier string
---@return table
ESX.RegisterServerCallback("epyi_administration:setReport", function(source, cb, identifier, key, data)
	xPlayer = ESX.GetPlayerFromIdentifier(identifier)
	if not Config.Groups[xPlayer.getGroup()] or not Config.Groups[xPlayer.getGroup()].Access["submenu_reports_access"] then
		cb(false)
		xPlayer.kick(_U("insuficient_permissions"))
		return
	end
	if _var.reports.list[key] == nil then
		cb(false)
		return
	end
	_var.reports.list[key] = data
	sendReportsToStatebag()
	cb(true)
end)

---Thread to leave report from staff when quit the server
Citizen.CreateThread(function()
	while true do
		for _k, report in pairs(_var.reports.list) do
			if report.staff.taken then
				if report.staff.takerIdentifier ~= nil then
					local xPlayer = ESX.GetPlayerFromIdentifier(report.staff.takerIdentifier)
					if not xPlayer then
						report.staff.taken = false
						report.staff.takerIdentifier = nil
					end
				else
					report.staff.taken = false
				end
			end
		end
		Citizen.Wait(1000)
	end
end)
