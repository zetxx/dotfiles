# Latitude 7400

### Keyboard illumination

- install `libsmbios`
- get current status `smbios-keyboard-ctl --get-status`
- get capabilities `smbios-keyboard-ctl -i`
- set illumination timeout to 30 minutes `smbios-keyboard-ctl --set-timeout 30m`


### Packages
  - face recognition
    - trizen -S pam-face-authentication
