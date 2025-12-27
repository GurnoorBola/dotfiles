local wezterm = require("wezterm")
local config = {}
config.default_domain = "WSL:archlinux"
config.font_size = 12
config.initial_cols = 120
config.initial_rows = 30
config.adjust_window_size_when_changing_font_size = false
config.window_decorations = "RESIZE"

config.audible_bell = "Disabled"
config.font = wezterm.font("Hack Nerd Font", { weight = "Regular", stretch = "Normal", style = "Normal" })
config.use_fancy_tab_bar = false
config.color_scheme = "tokyonight_night"

local scheme = wezterm.color.get_builtin_schemes()[config.color_scheme]
local bg = scheme.background

config.background = {
	{
		source = { File = wezterm.config_dir .. "/wallpapers/wallpaper.jpg" },
		width = "100%",
		height = "100%",
		vertical_align = "Middle",
		horizontal_align = "Center",
		height = "Cover",
		width = "Cover",
		opacity = 1.0,
		hsb = { brightness = 0.5 },
	},
	{
		source = { Color = bg },
		width = "100%",
		height = "100%",
		opacity = 0.6,
	},
}
config.text_background_opacity = 0.8

local bar = wezterm.plugin.require("https://github.com/adriankarlen/bar.wezterm")
bar.apply_to_config(config)
return config
