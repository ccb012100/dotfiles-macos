-- git clone https://github.com/dmgerman/hs_select_window.spoon.git ~/.hammerspoon/Spoons
hs.loadSpoon("hs_select_window")

-- hs_select_window keybindings
local SWbindings = {
   all_windows =  { {"alt", "shift", "control"}, "space"},
   app_windows =  { {"alt", "shift", "control"}, "b"}
}
spoon.hs_select_window:bindHotkeys(SWbindings)

-- Reload config
--hs.hotkey.bind({"cmd", "alt", "ctrl"}, "h", function()
--    hs.reload()
--    hs.console.clearConsole()
--end)
