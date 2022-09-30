mainSpeakers = {
  matches = {
    {{"node.name", "equals", "alsa_output.pci-0000_00_1f.3.analog-stereo"}},
  },
  apply_properties = {
    ["node.description"] = 'Laptop Internal Speakers',
    ["priority.session"] = 600,
    ["priority.driver"] = 600,
    ["audio.rate"] = 44100
  }
}
table.insert(alsa_monitor.rules, mainSpeakers)

--asusHdmiSpeakers = {
--  matches = {
--    {{"node.name", "equals", "alsa_output.pci-0000_00_1f.3.hdmi-stereo-extra1"}},
--  },
--  apply_properties = {
--    ["node.description"] = 'Asus HDMI Speakers',
--    ["priority.session"] = 601,
--    ["priority.driver"] = 601,
--    ["audio.rate"] = 44100
--  }
--}
--table.insert(alsa_monitor.rules, asusHdmiSpeakers)
