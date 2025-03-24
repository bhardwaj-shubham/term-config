-- Pull in the Wezterm API
local wezterm = require("wezterm")

-- This is will hold configuration
local config = wezterm.config_builder()

-- This is will the action
local act = wezterm.action

-- color_scheme
config.color_scheme = "Catppuccin Mocha"

-- increase the thickness of underline
config.underline_thickness = 3
config.underline_position = -4

-- Spawn a bash shell in login mode
config.default_prog = { "C:/Program Files/Git/bin/bash.exe", "-l" }

-- Define multiple profiles with different commands
profiles = {
	{
		name = "Git Bash", -- A profile for Git Bash
		default_prog = { "C:/Program Files/Git/bin/bash.exe", "-l" },
	},
	{
		name = "WSL Ubuntu", -- A profile for WSL Ubuntu
		default_prog = { "ubuntu.exe" },
		color_scheme = "Dark+ (terminal.sexy)",
	},
	{
		name = "PowerShell", -- A profile for PowerShell
		default_prog = { "C:/Windows/System32/WindowsPowerShell/v1.0/powershell.exe" },
		color_scheme = "Builtin Solarized Dark",
	},
}

config.font = wezterm.font_with_fallback({
	{
		family = "JetBrainsMono NF",
	},
	{
		family = "Maple Mono NF",
	},
})

config.font_size = 13

config.enable_tab_bar = false

-- config.window_decorations = "RESIZE"

-- Key Binding
config.keys = {
	{
		key = "{",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "}",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "C",
		mods = "CTRL",
		action = wezterm.action.CopyTo("ClipboardAndPrimarySelection"),
	},
	-- paste from the clipboard
	{
		key = "v",
		mods = "CTRL",
		action = act.PasteFrom("Clipboard"),
	},
	{
		key = "1",
		mods = "CTRL",
		action = wezterm.action({ ActivateTab = 0 }),
	}, -- Switch to the first profile
	{
		key = "2",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SpawnCommandInNewTab({
			args = { "ubuntu.exe" },
		}),
	}, -- Switch to the second profile
	{
		key = "3",
		mods = "CTRL",
		action = wezterm.action({ ActivateTab = 2 }),
	}, -- Switch to the third profile
}

return config