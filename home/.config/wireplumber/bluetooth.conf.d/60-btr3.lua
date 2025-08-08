rule = {
  matches = {
    {
      { "node.name", "equals", "bluez_output.40_ED_98_19_9C_2C.1" },
    },
  },
  apply_properties = {
    ["priority.session"] = 1070,
    ["priority.driver"] = 1070,
  },
}

table.insert(bluez_monitor.rules,rule)
