-- http://projects.haskell.org/xmobar/

Config { 
    font = "xft:UbuntuMono Nerd Font:weight=bold:pixelsize=16:antialias=true:hinting=true",
    bgColor = "#282828",
    fgColor = "#ebdbb2",
    lowerOnStart = True,
    hideOnStart = False,
    allDesktops = True,
    persistent = True,
    commands = [ 
        Run Date "  %d %b %Y %H:%M " "date" 600,
        Run Com "/home/cyber/.config/xmobar/scripts/volume" [] "volume" 10,
        Run Com "/home/cyber/.config/xmobar/scripts/battery" [] "battery" 600,
        Run Com "/home/cyber/.config/xmobar/scripts/brightness" [] "brightness" 10,
        Run Com "bash" ["-c", "checkupdates | wc -l"] "updates" 3000,
        Run Com "/home/cyber/.config/xmobar/trayer-padding-icon.sh" [] "trayerpad" 600,
        Run Kbd [("es", "ES"), ("us", "US")],
        Run UnsafeStdinReader
    ],
    alignSep = "}{",
    template = "<fc=#fbf1c7>   </fc>%UnsafeStdinReader% }{ \
        \%kbd% \
        \<fc=#d3869b> %updates% </fc>\
        \<fc=#fabd2f> %brightness%</fc>\
        \<fc=#b8bb26> %battery%</fc>\
        \<fc=#83a598> %volume% </fc>\
        \<fc=#fe8019> %date% </fc>\
        \%trayerpad%"
}
