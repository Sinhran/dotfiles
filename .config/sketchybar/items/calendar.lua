local settings = require("settings")
local colors = require("colors")

-- Date item
local date = sbar.add("item", {
  icon = {
    color = colors.yellow,
    padding_right = 1,
    drawing = "off",
    font = {
      size = 11.0,
    },
  },
  label = {
    padding_left = 0,
    padding_right = 4,
    font = { family = settings.font.text, 
    style = settings.font.style_map["Bold"]
    ,size = 11.0 },
  },
  position = "right",
  update_freq = 60,
  width = 31,
  y_offset = 7,
})

date:subscribe({ "forced", "routine", "system_woke", "mouse.entered", "mouse.exited", "mouse.exited.global" }, function(env)
  date:set({ label = os.date("%a, %b %d") })
end)

-- date:subscribe("mouse.clicked", function(env)
--   sbar.exec("open -a Calendar.app")
-- end)

-- Clock item
local clock = sbar.add("item", {
  icon = {
    drawing = "off",
  },
  label = {
    padding_right = 4,
    font = { family = settings.font.numbers, size = 11.0},
  },
  padding_right = -25,
  padding_left = 40,
  position = "right",
  update_freq = 5,
  y_offset = -7,
  popup = { align = "right" },
})

clock:subscribe({ "forced", "routine", "system_woke", "mouse.entered", "mouse.exited", "mouse.exited.global" }, function(env)
  clock:set({ label = os.date("%H:%M") })
end)

clock:subscribe("mouse.clicked", function(env)
    -- control + command + `
    sbar.exec('osascript -e \'tell application "System Events" to key code 50 using {control down, command down}\'')
end)
