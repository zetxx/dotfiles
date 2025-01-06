local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.font = wezterm.font('RobotoMono Nerd Font', { weight = 'Regular' })
config.font_size = 10.5
config.max_fps = 75
config.animation_fps = 75

return config
