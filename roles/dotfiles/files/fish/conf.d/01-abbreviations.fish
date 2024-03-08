if status is-interactive
    abbr -a ls "ls -l"
    abbr -a mkdir "mkdir -vp"
    abbr -a cp "cp -v"
    abbr -a mv "mv -v"
    abbr -a rm "rm -v"
    abbr -a sudo "sudo -E"
    abbr -a bye "sudo systemctl poweroff"
    abbr -a reboot "sudo systemctl reboot"
    abbr -a watch "watch -n 1"
    abbr -a adb "HOME=$XDG_DATA_HOME/android adb"
end