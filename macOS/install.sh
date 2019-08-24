#!/bin/sh

accepted=0
echo "
What version enviroment version would you like to setup?
    [0] vColdPizza (Basic)
    [1] vGraham (Efficient)
    [2] vHappyCar (Fun Theme)
    [3] vHandleBar (Java Enhanced)
    [4] Quit"

read -p "Selection: " version

while [  $accepted -eq 0 ]; do
    accepted=1
    if [ $version -eq 0 ]
    then
        export ENVIRO_VERSION="vColdPizza"
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/lauren2020/enviro_generators/master/macOS/vColdPizza.sh)"
    elif [ $version -eq 1 ]
    then
        export ENVIRO_VERSION="vGraham"
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/lauren2020/enviro_generators/master/macOS/vGraham.sh)"
    elif [ $version -eq 2 ]
    then
        export ENVIRO_VERSION="vHappyCar"
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/lauren2020/enviro_generators/master/macOS/vHappyCar.sh)"
    elif [ $version -eq 3 ]
    then
        export ENVIRO_VERSION="vHandleBar"
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/lauren2020/enviro_generators/master/macOS/vHandleBar.sh)"
    elif [ $version -eq 4 ]
    then
        echo "Goodbye!"
    else
        accepted=0
        read -p "Invalid Selection, Try Again: " version
    fi
done
