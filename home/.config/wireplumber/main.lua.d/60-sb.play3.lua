rule = {
  matches = {
    {
      { "node.name", "equals", "alsa_output.usb-Creative_Technology_Ltd_Sound_Blaster_Play__3_00070736-00.analog-stereo" },
    },
  },
  apply_properties = {
    ["priority.session"] = 1050,
    ["priority.driver"] = 1050,
  },
}

table.insert(alsa_monitor.rules,rule)
