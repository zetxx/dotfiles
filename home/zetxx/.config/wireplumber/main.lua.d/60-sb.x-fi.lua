rule = {
  matches = {
    {
      { "node.name", "equals", "alsa_output.pci-0000_06_00.0.analog-surround-51" },
    },
  },
  apply_properties = {
    ["priority.session"] = 1060,
    ["priority.driver"] = 1060,
  },
}

table.insert(alsa_monitor.rules,rule)
