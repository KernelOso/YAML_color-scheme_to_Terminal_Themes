#!/bin/bash
# A basic YAML color-scheme to Terminal Themes – Bash script.
#
# Copyright (C) 2025 - github.com/KernelOso
#
# This project is licensed under the GNU General Public License v3.0.
# See the LICENSE file for details.

if ! command -v yq &> /dev/null; then

    echo "Error: Missing dependency 'yq'"
    exit 1

fi 

for file in *.yaml *.yml; do

    [ -f "$file" ] || continue 

    output_alacritty="theme-alacritty.toml"
    output_kitty="theme-kitty.conf"
    output_OsoBase16="base.yaml"
    output_Xreources="theme-xresources.Xresources"
    output_Termite="theme-termite"


    # _____            _      ______                __    ____ 
    #|  _  |          ( )     | ___ \              /  |  / ___|
    #| | | | ___  ___ |/ ___  | |_/ / __ _ ___  ___`| | / /___ 
    #| | | |/ __|/ _ \  / __| | ___ \/ _` / __|/ _ \| | | ___ \
    #\ \_/ /\__ \ (_) | \__ \ | |_/ / (_| \__ \  __/| |_| \_/ |
    # \___/ |___/\___/  |___/ \____/ \__,_|___/\___\___/\_____/
    # Oso's Base16
    if [[ ! $(yq -r '.b_black' "$file" ) == "null" ]]; then

        
        
        background=$(yq -r '.background' "$file" )
        foreground=$(yq -r '.foreground' "$file" )
        cursor=$(yq -r '.cursor' "$file" )

        b_black=$(yq -r '.b_black' "$file" )
        b_red=$(yq -r '.b_red' "$file" )
        b_green=$(yq -r '.b_green' "$file" )
        b_yellow=$(yq -r '.b_yellow' "$file" )
        b_blue=$(yq -r '.b_blue' "$file" )
        b_magenta=$(yq -r '.b_magenta' "$file" )
        b_cyan=$(yq -r '.b_cyan' "$file" )
        b_white=$(yq -r '.b_white' "$file" )

        l_black=$(yq -r '.l_black' "$file" )
        l_red=$(yq -r '.l_red' "$file" )
        l_green=$(yq -r '.l_green' "$file" )
        l_yellow=$(yq -r '.l_yellow' "$file" )
        l_blue=$(yq -r '.l_blue' "$file" )
        l_magenta=$(yq -r '.l_magenta' "$file" )
        l_cyan=$(yq -r '.l_cyan' "$file" )
        l_white=$(yq -r '.l_white' "$file" )

    fi




    #                   _     
    #                  | |    
    #  __ _  ___   __ _| |__  
    # / _` |/ _ \ / _` | '_ \ 
    #| (_| | (_) | (_| | | | |
    # \__, |\___/ \__, |_| |_|
    #  __/ |       __/ |      
    # |___/       |___/       
    # Gogh Schemes      :   https://github.com/Gogh-Co/Gogh/tree/master/themes
    if [[ ! $(yq -r '.color_01' "$file" ) == "null" ]]; then

        background=$(yq -r '.background' "$file" | sed 's/^#//')
        foreground=$(yq -r '.foreground' "$file" | sed 's/^#//')
        cursor=$(yq -r '.cursor' "$file" | sed 's/^#//')

        b_black=$(yq -r '.color_01' "$file" | sed 's/^#//')
        b_red=$(yq -r '.color_02' "$file" | sed 's/^#//')
        b_green=$(yq -r '.color_03' "$file" | sed 's/^#//')
        b_yellow=$(yq -r '.color_04' "$file" | sed 's/^#//')
        b_blue=$(yq -r '.color_05' "$file" | sed 's/^#//')
        b_magenta=$(yq -r '.color_06' "$file" | sed 's/^#//')
        b_cyan=$(yq -r '.color_07' "$file" | sed 's/^#//')
        b_white=$(yq -r '.color_08' "$file" | sed 's/^#//')

        l_black=$(yq -r '.color_09' "$file" | sed 's/^#//')
        l_red=$(yq -r '.color_10' "$file" | sed 's/^#//')
        l_green=$(yq -r '.color_11' "$file" | sed 's/^#//')
        l_yellow=$(yq -r '.color_12' "$file" | sed 's/^#//')
        l_blue=$(yq -r '.color_13' "$file" | sed 's/^#//')
        l_magenta=$(yq -r '.color_14' "$file" | sed 's/^#//')
        l_cyan=$(yq -r '.color_15' "$file" | sed 's/^#//')
        l_white=$(yq -r '.color_16' "$file" | sed 's/^#//')

    fi



    #______                __    ____ 
    #| ___ \              /  |  / ___|
    #| |_/ / __ _ ___  ___`| | / /___ 
    #| ___ \/ _` / __|/ _ \| | | ___ \
    #| |_/ / (_| \__ \  __/| |_| \_/ |
    #\____/ \__,_|___/\___\___/\_____/
    # Base 16 Schemes   :   https://github.com/chriskempson/base16
    if [[ ! $(yq -r '.base00' "$file" ) == "null" ]]; then   

        b_black=$(yq -r '.base00' "$file" )
        b_red=$(yq -r '.base01' "$file" )
        b_green=$(yq -r '.base02' "$file" )
        b_yellow=$(yq -r '.base03' "$file" )
        b_blue=$(yq -r '.base04' "$file" )
        b_magenta=$(yq -r '.base05' "$file" )
        b_cyan=$(yq -r '.base06' "$file" )
        b_white=$(yq -r '.base07' "$file" )

        l_black=$(yq -r '.base08' "$file" )
        l_red=$(yq -r '.base09' "$file" )
        l_green=$(yq -r '.base0A' "$file" )
        l_yellow=$(yq -r '.base0B' "$file" )
        l_blue=$(yq -r '.base0C' "$file" )
        l_magenta=$(yq -r '.base0D' "$file" )
        l_cyan=$(yq -r '.base0E' "$file" )
        l_white=$(yq -r '.base0F' "$file" )

    fi



    #                         _____       _               _                              
    #                        |  _  |     | |             | |                             
    #  ______ ______ ______  | | | |_   _| |_ _ __  _   _| |_ ___   ______ ______ ______ 
    # |______|______|______| | | | | | | | __| '_ \| | | | __/ __| |______|______|______|
    #                        \ \_/ / |_| | |_| |_) | |_| | |_\__ \                       
    #                         \___/ \__,_|\__| .__/ \__,_|\__|___/                       
    #                                        | |                                         
    #                                        |_|                                         




    #______     _       _      ___  _                 _ _   _         
    #| ___ \   (_)     | |    / _ \| |               (_) | | |        
    #| |_/ / __ _ _ __ | |_  / /_\ \ | __ _  ___ _ __ _| |_| |_ _   _ 
    #|  __/ '__| | '_ \| __| |  _  | |/ _` |/ __| '__| | __| __| | | |
    #| |  | |  | | | | | |_  | | | | | (_| | (__| |  | | |_| |_| |_| |
    #\_|  |_|  |_|_| |_|\__| \_| |_/_|\__,_|\___|_|  |_|\__|\__|\__, |
    #                                                            __/ |
    #                                                           |___/ 
    cat > "$output_alacritty" <<EOF
[colors.primary]
foreground  =       "#$foreground"
background  =       "#$background"

[colors.cursor]
cursor      =       "#$cursor"

[colors.normal]
black       =       "#$b_black"
red         =       "#$b_red"
green       =       "#$b_green"
yellow      =       "#$b_yellow"
blue        =       "#$b_blue"
magenta     =       "#$b_magenta"
cyan        =       "#$b_cyan"
white       =       "#$b_white"

[colors.bright]
black       =       "#$l_black"
red         =       "#$l_red"
green       =       "#$l_green"
yellow      =       "#$l_yellow"
blue        =       "#$l_blue"
magenta     =       "#$l_magenta"
cyan        =       "#$l_cyan"
white       =       "#$l_white"

EOF



    #______     _       _     _   ___ _   _         
    #| ___ \   (_)     | |   | | / (_) | | |        
    #| |_/ / __ _ _ __ | |_  | |/ / _| |_| |_ _   _ 
    #|  __/ '__| | '_ \| __| |    \| | __| __| | | |
    #| |  | |  | | | | | |_  | |\  \ | |_| |_| |_| |
    #\_|  |_|  |_|_| |_|\__| \_| \_/_|\__|\__|\__, |
    #                                          __/ |
    #                                         |___/ 
    cat > "$output_kitty" <<EOF
# The basic colors
foreground  #$foreground
background  #$background

# Cursor colors
cursor      #$cursor

# black
color0      #$b_black
color8      #$l_black

# red
color1      #$b_red
color9      #$l_red

# green
color2      #$b_green
color10     #$l_green

# yellow
color3      #$b_yellow
color11     #$l_yellow

# blue
color4      #$b_blue
color12     #$l_blue

# magenta
color5      #$b_magenta
color13     #$l_magenta

# cyan
color6      #$b_cyan
color14     #$l_cyan

# white
color7      #$b_white
color15     #$l_white

EOF



    #______     _       _     _____            _      ______                __    ____ 
    #| ___ \   (_)     | |   |  _  |          ( )     | ___ \              /  |  / ___|
    #| |_/ / __ _ _ __ | |_  | | | | ___  ___ |/ ___  | |_/ / __ _ ___  ___`| | / /___ 
    #|  __/ '__| | '_ \| __| | | | |/ __|/ _ \  / __| | ___ \/ _` / __|/ _ \| | | ___ \
    #| |  | |  | | | | | |_  \ \_/ /\__ \ (_) | \__ \ | |_/ / (_| \__ \  __/| |_| \_/ |
    #\_|  |_|  |_|_| |_|\__|  \___/ |___/\___/  |___/ \____/ \__,_|___/\___\___/\_____/
    cat > "$output_OsoBase16" <<EOF
background: "$background"
foreground: "$foreground"
cursor:     "$cursor"

b_black:    "$b_black"
b_red:      "$b_red"
b_green:    "$b_green"
b_yellow:   "$b_yellow"
b_blue:     "$b_blue"
b_magenta:  "$b_magenta"
b_cyan:     "$b_cyan"
b_white:    "$b_white"

l_black:    "$l_black"
l_red:      "$l_red"
l_green:    "$l_green"
l_yellow:   "$l_yellow"
l_blue:     "$l_blue"
l_magenta:  "$l_magenta"
l_cyan:     "$l_cyan"
l_white:    "$l_white"

EOF



    #______     _       _    __   ________                                        
    #| ___ \   (_)     | |   \ \ / /| ___ \                                       
    #| |_/ / __ _ _ __ | |_   \ V / | |_/ /___  ___  ___  _   _ _ __ ___ ___  ___ 
    #|  __/ '__| | '_ \| __|  /   \ |    // _ \/ __|/ _ \| | | | '__/ __/ _ \/ __|
    #| |  | |  | | | | | |_  / /^\ \| |\ \  __/\__ \ (_) | |_| | | | (_|  __/\__ \
    #\_|  |_|  |_|_| |_|\__| \/   \/\_| \_\___||___/\___/ \__,_|_|  \___\___||___/
    cat > "$output_Xreources" <<EOF
! special
*.foreground:   #$foreground
*.background:   #$background
*.cursorColor:  #$cursor

! black
*.color0:       #$b_black
*.color8:       #$l_black

! red
*.color1:       #$b_red
*.color9:       #$l_red

! green
*.color2:       #$b_green
*.color10:      #$l_green

! yellow
*.color3:       #$b_yellow
*.color11:      #$l_yellow

! blue
*.color4:       #$b_blue
*.color12:      #$l_blue

! magenta
*.color5:       #$b_magenta
*.color13:      #$l_magenta

! cyan
*.color6:       #$b_cyan
*.color14:      #$l_cyan

! white
*.color7:       #$b_white
*.color15:      #$l_white

EOF


    #______     _       _     _____                   _ _       
    #| ___ \   (_)     | |   |_   _|                 (_) |      
    #| |_/ / __ _ _ __ | |_    | | ___ _ __ _ __ ___  _| |_ ___ 
    #|  __/ '__| | '_ \| __|   | |/ _ \ '__| '_ ` _ \| | __/ _ \
    #| |  | |  | | | | | |_    | |  __/ |  | | | | | | | ||  __/
    #\_|  |_|  |_|_| |_|\__|   \_/\___|_|  |_| |_| |_|_|\__\___|
    cat > "$output_Termite" <<EOF
[colors]

# special
foreground      = #$foreground
cursor          = #$cursor
background      = #$background

# black
color0  = #$b_black
color8  = #$l_black

# red
color1  = #$b_red
color9  = #$l_red

# green
color2  = #$b_green
color10 = #$l_green

# yellow
color3  = #$b_yellow
color11 = #$l_yellow

# blue
color4  = #$b_blue
color12 = #$l_blue

# magenta
color5  = #$b_magenta
color13 = #$l_magenta

# cyan
color6  = #$b_cyan
color14 = #$l_cyan

# white
color7  = #$b_white
color15 = #$l_white
EOF

    echo "${file} Procesed!"

done
