#!/bin/sh

accepted=0
versionName=""
echo "
What version enviroment version would you like to setup?
    [0] vColdPizza (Basic)
    [1] vGraham (Efficient)
    [2] vHappyCar (Fun Theme)
    [3] vHandleBar (Java Optimized)
    [4] Quit"

read -p "Selection: " version

while [  $accepted -eq 0 ]; do
    accepted=1
    if [ $version -eq 0 ]
    then
        versionName="vColdPizza"
    elif [ $version -eq 1 ]
    then
        versionName="vGraham"
    elif [ $version -eq 2 ]
    then
        versionName="vHappyCar"
    elif [ $version -eq 3 ]
    then
        versionName="vHandleBar"
    elif [ $version -eq 4 ]
    then
        echo "Goodbye!"
    else
        accepted=0
        read -p "Invalid Selection, Try Again: " version
    fi
done

export ENVIRO_VERSION=$versionName

### TODO: Check if user is in iTerm
### TODO: Check if iTerm is installed

itermInstalled=0
if [ itermInstalled -eq 1 ]
then
    echo "Downloading iTerm..."
    curl -sS https://iterm2.com/downloads/stable/iTerm2-3_3_2.zip > iterm.zip
    unzip iterm.zip
    rm iterm.zip
else
    echo "iTerm is alread installed. Skipping..."
fi

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
                write text "sh -c \"$(curl -fsSL https://raw.githubusercontent.com/lauren2020/enviro_generators/master/macOS/${versionName}.sh)\""
            end
        end tell
    end tell
EOF
}
iterm $@

echo "Opening iTerm..."
