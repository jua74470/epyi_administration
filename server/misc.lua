---timeExpression
---@param expression string
---@return void
---@public
function timeExpression(expression)
	local timestamp = 0
	local current_number = ""
	for i = 1, #expression do
		local char = expression:sub(i, i)
		if tonumber(char) then
			current_number = current_number .. char
		elseif char == "d" then
			if current_number == "" then
				return false
			end
			timestamp = timestamp + tonumber(current_number) * 86400
			current_number = ""
		elseif char == "h" then
			if current_number == "" then
				return false
			end
			timestamp = timestamp + tonumber(current_number) * 3600
			current_number = ""
		elseif char == "m" then
			if current_number == "" then
				return false
			end
			timestamp = timestamp + tonumber(current_number) * 60
			current_number = ""
		else
			return false
		end
	end
	if current_number ~= "" then
		timestamp = timestamp + tonumber(current_number)
	end
	return timestamp
end
