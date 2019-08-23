#!/bin/bash
echo "Setting up vGraham enviroment..."
echo "Downloading iTerm..."
#

[ `uname -s` != "Darwin" ] && return

function iterm () {
    osascript &>/dev/null <<EOF
    tell application "iTerm2"
        activate
        set term to (make new terminal)
            tell term
                launch session "Default Session"
                tell the last session
                    delay 1
#                    write text "./vGraham_iTerm.sh"
#                    write text "sh -c \"$(curl -fsSL https://raw.githubusercontent.com/lauren2020/enviro_generators/master/macOS/vGraham_iTerm.sh)\""
                end
            end tell
#            tell current session of term
#                delay 1
#                write text "./vGraham_iTerm.sh"
#            end tell
    end tell
EOF
}
iterm $@

echo "Opening iTerm..."
