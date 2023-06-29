
alias fish_conf="lvim ~/.config/fish/config.fish"
alias logout="loginctl kill-user $USER"
alias clean="rm -rf ~/Downloads/*"
alias gametime="cd ~/Games/roms/ && ls -a "
alias n64="mupen64plus"

if status is-interactive
    starship init fish | source
    # Commands to run in interactive sessions can go here
end

# Created by `pipx` on 2023-06-24 11:51:12
set PATH $PATH /home/ks/.local/bin
set ANDROID_HOME /home/ks/Android/Sdk/
set ANDROID_SDK_ROOT /home/ks/Android/Sdk/
