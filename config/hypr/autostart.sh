#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

#Find out your monitor name with xrandr or arandr (save and you get this line)
#xrandr --output VGA-1 --primary --mode 1360x768 --pos 0x0 --rotate normal
#xrandr --output DP2 --primary --mode 1920x1080 --rate 60.00 --output LVDS1 --off &
#xrandr --output LVDS1 --mode 1366x768 --output DP3 --mode 1920x1080 --right-of LVDS1
#xrandr --output HDMI2 --mode 1920x1080 --pos 1920x0 --rotate normal --output HDMI1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output VIRTUAL1 --off
#autorandr horizontal
xrandr --output HDMI-A-0 --primary --left-of DisplayPort-0

#$HOME/.config/polybar/launch.sh &

#change your keyboard if you need it
#setxkbmap -layout be

# keybLayout=$(setxkbmap -v | awk -F "+" '/symbols/ {print $2}')

# if [ $keybLayout = "be" ]; then
# run sxhkd -c ~/.config/hypr/sxhkd/sxhkdrc-azerty &
# else
run sxhkd -c ~/.config/hypr/sxhkd/sxhkdrc &
# fi

#Some ways to set your wallpaper besides variety or nitrogen
#feh --bg-scale ~/.config/hypr/wall.png &
# feh --bg-fill /usr/share/backgrounds/archlinux/arch-wallpaper.jpg &
feh --bg-fill /usr/share/wallpapers/Arc-Mountains/contents/images/8000x4500.png &
#wallpaper for other Arch based systems
#feh --bg-fill /usr/share/archlinux-tweak-tool/data/wallpaper/wallpaper.png &
#feh --randomize --bg-fill ~/Dropbox/Apps/Desktoppr/*

xsetroot -cursor_name left_ptr &

#run conky -c $HOME/.config/hypr/system-overview &
run variety &
run nm-applet &
run pamac-tray &
run xfce4-power-manager &
numlockx on &
blueberry-tray &
waybar &
picom --config $HOME/.config/hypr/picom.conf &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
/usr/lib/xfce4/notifyd/xfce4-notifyd &
run volumeicon &
#nitrogen --restore &
#run caffeine &
#run vivaldi-stable &
#run firefox &
#run thunar &
#run dropbox &
#run insync start &
#run discord &
#run spotify &
