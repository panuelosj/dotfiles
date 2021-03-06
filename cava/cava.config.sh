#!/usr/bin/env bash
#
# change rofi colors to those generated by 'wal'

# Source the generated colors
source "${HOME}/.cache/wal/colors.sh"

filename="${HOME}/.config/cava/config"

main() {
    sed -i"" \
        -e "s/gradient_color_1 = .*/gradient_color_1 = '${color3}'/" \
        -e "s/gradient_color_2 = .*/gradient_color_2 = '${color5}'/" \
        "${filename}"
    pkill -USR1 cava
}

main
