_datastore = _datastore or {}

AddEventHandler("playerConnecting", function(name, setCallback, deferrals)
	local license = GetPlayerIdentifierByType(source, "license")
	local identifier = string.gsub(license, "license:", "")
	local _source = source
	local banData = {}
	deferrals.defer()

    local deffer_str = _U("deffer_ban_checker")

    Wait(50)
	deferrals.update(deffer_str)
    Wait(1000)

    for id, content in pairs(_datastore) do
        if content.type == "BAN" then
            if string.find(content.owner, identifier) then
                local time = os.time()
                local _data = json.decode(content.data)
                local expiration = _data.expiration
                if tonumber(expiration) <= tonumber(time) then
                    TriggerEvent("epyi_administration:deleteData", id)
                    deferrals.done()
                    logToConsole(
                        "Player with identifier "
                            .. identifier
                            .. " is currently logging in for the first time since his last ban."
                    )
                else
                    local reason = _U(
                        "notif_ban_target",
                        _data.reason,
                        _data.duration,
                        os.date("Month: %m, Day: %d, Year: %Y", expiration)
                    )
                    deferrals.done(reason)
                    logToConsole("Player with identifier " .. identifier .. " tried to connect but he is banned")
                end
            end
        end
    end
    deferrals.done()
end)
