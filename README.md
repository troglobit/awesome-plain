<a href="https://raw.githubusercontent.com/troglobit/awesome-plain/master/awesome-plain.png"><img align="center" src="awesome-plain.png" width="600"></a>

## Requirements

Wou need a few programs installed to enjoy all the features, see the
rc.lua file for the rest:

- acpi
- awesome
- brightnessctl
- playerctl
- blueman-applet
- lua-socket
- nm-applet
- pasystray
- python-gtk2 / pygtk
- compton
- xplugd
- xscreensaver

For the weather widget you need an API key, which can be created for
free here: <https://openweathermap.org/appid>.  Place the key in your
`~/.xprofile`, which is sourced in Ubuntu and Debian derived distros by
X when starting Awesome:

```sh
# ~/.xprofile
export AWW_WEATHER_API_KEY=321039232132103922132132910310bc
```

