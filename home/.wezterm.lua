local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.font = wezterm.font('Ubuntu Mono', { weight = 'Regular' })
config.font_size = 12
config.max_fps = 75
config.animation_fps = 75

return config
