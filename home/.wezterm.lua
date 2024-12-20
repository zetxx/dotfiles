local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.font = wezterm.font('Ubuntu Mono', { weight = 'Regular' })
config.font_size = 12
config.max_fps = 60
config.animation_fps = 60

return config
