#!/bin/bash

#Function to start Alacritty terminal
start_alacritty() {
i3-msg workspace $1
exec alacritty -command "$2"
}

#PATH = " ~/.config/i3/config"
#i3-msg workspace 3
#exec alacritty -e "bash -c'nvim ~/.config/i3/config'"
#exec nvim
#Call the function to start Alacritty terminal in workspace 4 and run the command "ls -l"
#PATH = " ~/.config/i3/config"


#!/bin/bash

# Open terminal in workspace 1
#i3-msg "workspace 1; exec terminal"
#exec i3-msg workspace 3
# Run commands in terminal
#exec alacirtty --command "nvim .config/i3/config"

# Open browser in workspace 2
#i3-msg "workspace 2; exec brave"



#Open terminal in first window
#workspace 1:1exec --no-startup-id alacirtty -e "cfi"
#exec --no-startup-id alacirtty  

#Open browser in workspace 2
i3-msg "workspace 2:Browser;exec --no-startup-id brave";
i3-msg "workspace 5:Music;exec --no-startup-id spotify-launcher"

#Open i3Config in workspace 3
#workspace 3:3
workspace 3:i3Config;exec --no-startup-id alacritty
#start_alacritty 3:i3Config "cfi"
#exec --no-startup-id alacirtty -e "cfb"

#Open Files in workspace 4
#workspace 4:4
#exec --no-startup-id nautilus

#Open Music in workspace 5
#workspace 5:5
#exec --no-startup-id spotify
#exec --no-startup-id vlc

#Open chat in workspace 6
#workspace 6:6
#exec --no-startup-id telegram-desktop


