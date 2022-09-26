mainMic = {
  matches = {
    {{"node.name", "equals", "alsa_input.pci-0000_00_1f.3.analog-stereo"}},
  },
  apply_properties = {
    ["node.description"] = 'Laptop Internal Mic'
  }
}
table.insert(alsa_monitor.rules, mainMic)

