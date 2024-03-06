#!/run/current-system/sw/bin/bash
config_file=$(cat ~/.config/hypr/conf/keybinding.conf)
config_file=${config_file/source = ~/}
config_file=${config_file/source=~/}

#path to keybindings config file
config_file="/home/"$USER$config_file
echo "Reading from: "$config_file

#parse keybindings
keybinds=$(grep -oP '(?<=bind = ).*' $config_file)
keybinds=$(echo "$keybinds" | sed 's/$mainMod/SUPER/g' | sed 's/,\([^,]*\)$/ = \1/' | sed 's/, exec//g' | sed 's/^,//g')

# Show keybindings in rofi
rofi -dmenu -i -replace -p "Keybinds" <<<"$keybinds"
