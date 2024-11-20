-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

config.font = wezterm.font({
	family = "Fira Code",
	harfbuzz_features = { "ss01", "ss03", "ss07", "cv02" },
})
config.font_size = 8

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "oba"
-- --config.color_scheme = "Ayu Mirage (Gogh)"
-- config.color_scheme = "Ayu Dark (Gogh)"
-- config.color_scheme = "Dracula"
-- -- config.color_scheme = "Dracula (Official)"
-- config.color_scheme = "Monokai Remastered"
-- config.color_scheme = "Seti"
config.enable_tab_bar = true
-- config.enable_scroll_bar = true
config.enable_scroll_bar = false
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.hide_mouse_cursor_when_typing = false

-- config.exit_behavior = "Hold"

config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

config.window_background_opacity = 0.7

config.color_schemes = {
	["oba"] = {
		foreground = "#dddddd",
		background = "#000000",

		ansi = {
			"#000000", -- black
			"#cc0403", -- red
			"#19cb00", -- green
			"#cecb00", -- yellow
			"#0d73cc", -- blue
			"#cb1ed1", -- magenta
			"#0dcdcd", -- cyan
			"#dddddd", -- white
		},

		brights = {
			"#767676", -- bright black
			"#f2201f", -- bright red
			"#23fd00", -- bright green
			"#fffd00", -- bright yellow
			"#1a8fff", -- bright blue
			"#fd28ff", -- bright magenta
			"#14ffff", -- bright cyan
			"#ffffff", -- bright white
		},

		-- scrollbar_thumb = "#33ffff",
		-- scrollbar_thumb = "#114455",
		scrollbar_thumb = "#333333",

		selection_fg = "none",
		selection_bg = "rgba(50% 50% 50% 50%)",
	},
}

-- and finally, return the configuration to wezterm
return config