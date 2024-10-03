-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

config.font = wezterm.font("MesloLGS NF")
config.font_size = 13

config.color_scheme = 'Tokyo Night'

-- Slightly transparent and blurred background
config.window_background_opacity = 0.95
config.macos_window_background_blur = 30

-- Removes the title bar, leaving only the tab bar. Keeps
-- the ability to resize by dragging the window's edges.
-- On macOS, 'RESIZE|INTEGRATED_BUTTONS' also looks nice if
-- you want to keep the window controls visible and integrate
-- them into the tab bar.
config.window_decorations = 'RESIZE'

-- Sets the font for the window frame (tab bar)
config.window_frame = {
  -- Berkeley Mono for me again, though an idea could be to try a
  -- serif font here instead of monospace for a nicer look?
  font = wezterm.font({ family = 'MesloLGS NF', weight = 'Bold' }),
  font_size = 11,
}

-- Set window size
config.initial_cols = 140
config.initial_rows = 40

-- and finally, return the configuration to wezterm
return config
