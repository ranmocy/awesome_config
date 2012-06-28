-- Standard awesome library
require("awful")
require("awful.autofocus")
require("awful.rules")
-- Theme handling library
require("beautiful")
require("blingbling")
-- Notification library
require("naughty")
-- Widgets
--require("widgets.volume")
-- Error
require("configs.error")

-- {{{ Variable definitions
-- Themes define colours, icons, and wallpapers
beautiful.init("/home/ranmocy/.config/awesome/themes/ranmocy/theme.lua")
-- beautiful.init("/usr/share/awesome/themes/default/theme.lua")

-- This is used later as the default terminal and editor to run.
terminal = "urxvt"
editor = os.getenv("EDITOR") or "nano"
editor_cmd = terminal .. " -e " .. editor

-- Default modkey.
modkey = "Mod4"

-- Table of layouts to cover with awful.layout.inc, order matters.
layouts =
   {
   awful.layout.suit.tile,
   -- awful.layout.suit.tile.left,
   awful.layout.suit.tile.bottom,
   -- awful.layout.suit.tile.top,
   awful.layout.suit.fair,
   awful.layout.suit.fair.horizontal,
   -- awful.layout.suit.spiral,
   -- awful.layout.suit.spiral.dwindle,
   -- awful.layout.suit.max,
   -- awful.layout.suit.max.fullscreen,
   -- awful.layout.suit.magnifier
   awful.layout.suit.floating,
}
-- }}}

-- Define Components
require("configs.tab")
require("configs.menu")
require("configs.widbox")

-- Define Rules
require("configs.binding")
require("configs.rule")
require("configs.signal")
