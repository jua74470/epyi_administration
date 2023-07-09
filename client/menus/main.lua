---main_showContentThisFrame → Function to show the main menu content
---@return void
function main_showContentThisFrame(playerGroup)
    RageUI.Separator("")
    RageUI.Separator(TranslateCap("main_menu_title1") .. Config.Groups[playerGroup].Prefix .. GetPlayerName(PlayerId()))
    RageUI.Separator(TranslateCap("main_menu_title2") .. Config.Groups[playerGroup].Color .. Config.Groups[playerGroup].Label)
    RageUI.Separator("")
    RageUI.ButtonWithStyle(TranslateCap("main_menu_access_personnal"), nil, {RightLabel = "→"}, Config.Groups[playerGroup].Access["submenu_personnal.access"], function(_, _, _)end)
    RageUI.ButtonWithStyle(TranslateCap("main_menu_access_players"), nil, {RightLabel = "→"}, Config.Groups[playerGroup].Access["submenu_players.access"], function(_, _, _)end)
    RageUI.ButtonWithStyle(TranslateCap("main_menu_access_vehicles"), nil, {RightLabel = "→"}, Config.Groups[playerGroup].Access["submenu_vehicles.access"], function(_, _, _)end)
    RageUI.ButtonWithStyle(TranslateCap("main_menu_access_reports"), nil, {RightLabel = "→"}, Config.Groups[playerGroup].Access["submenu_reports.access"], function(_, _, _)end)
    RageUI.ButtonWithStyle(TranslateCap("main_menu_access_server"), nil, {RightLabel = "→"}, Config.Groups[playerGroup].Access["submenu_server.access"], function(_, _, _)end)
end