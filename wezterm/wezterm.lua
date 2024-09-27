local wezterm = require("wezterm")
local act = wezterm.action

local config = wezterm.config_builder()

config = {
	automatically_reload_config = true,
	enable_tab_bar = false,
	window_close_confirmation = "NeverPrompt",
	window_decorations = "RESIZE",
	color_scheme = "Aura (Gogh)",
	-- color_scheme = "Tokyo Night",
	font = wezterm.font("JetBrains Mono", { weight = "Bold" }),
	font_size = 14.0,
	harfbuzz_features = { "calt=0", "clig=0", "liga=0" },
	window_background_opacity = 0.90,
	macos_window_background_blur = 20,
	keys = {
		{
			key = "h",
			mods = "CTRL",
			action = act.ActivatePaneDirection("Left"),
		},
		{
			key = "l",
			mods = "CTRL",
			action = act.ActivatePaneDirection("Right"),
		},
		{
			key = "k",
			mods = "CTRL",
			action = act.ActivatePaneDirection("Up"),
		},
		{
			key = "j",
			mods = "CTRL",
			action = act.ActivatePaneDirection("Down"),
		},
	},
}

return config
