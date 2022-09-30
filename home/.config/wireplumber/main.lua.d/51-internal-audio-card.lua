mainAudioCard = {
  matches = {
    {{"device.name", "equals", "alsa_card.pci-0000_00_1f.3"}},
  },
  apply_properties = {
    ["api.alsa.use-acp"] = true,
    ["api.acp.auto-port"] = false,
    ["device.description"] = 'Laptop Internal Audio Card'
  }
}
table.insert(alsa_monitor.rules, mainAudioCard)
