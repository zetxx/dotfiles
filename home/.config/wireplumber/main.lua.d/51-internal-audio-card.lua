mainAudioCard = {
  matches = {
    {{"device.name", "equals", "alsa_card.pci-0000_00_1f.3"}},
  },
  apply_properties = {
    ["device.description"] = 'Laptop Internal Audio Card'
  }
}
table.insert(alsa_monitor.rules, mainAudioCard)
