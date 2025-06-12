local wezterm = require("wezterm")
local act = wezterm.action
local config = wezterm.config_builder()

config = {
	automatically_reload_config = true,
	enable_tab_bar = false,
	window_close_confirmation = "NeverPrompt",
	color_scheme = "duskfox",
	font = wezterm.font("Maple Mono NL NF"),
	font_size = 14.0,
	harfbuzz_features = { "calt=0", "clig=0", "liga=0" },
	window_background_opacity = 0.9,
}

return config
