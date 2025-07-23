rule = {
  matches = {
    {
      { "node.name", "equals", "alsa_output.usb-Creative_Technology_Ltd_Sound_Blaster_X3_0B4C62926D0BCA62-03.analog-surround-51.6" },
    },
  },
  apply_properties = {
    ["node.nick"] = "5.1",
    ["priority.session"] = 1060,
    ["priority.driver"] = 1060,
  },
}

table.insert(alsa_monitor.rules,rule)
