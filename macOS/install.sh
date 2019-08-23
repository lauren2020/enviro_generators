#!/bin/sh

accepted=0
echo "
What version enviroment version would you like to setup?
    [0] vBasic
    [1] vGraham
    [2] vFun
    [3] Quit"

read -p "Selection: " version

while [  $accepted -eq 0 ]; do
    if [ $version -eq 0 ]
    then
        accepted=1
        $(curl -fsSL https://raw.githubusercontent.com/lauren2020/enviro_generators/master/macOS/vBasic.sh)
    elif [ $version -eq 1 ]
    then
        accepted=1
        sh -c $(curl -fsSL https://raw.githubusercontent.com/lauren2020/enviro_generators/master/macOS/vGraham.sh)
    elif [ $version -eq 2 ]
    then
        accepted=1
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/lauren2020/enviro_generators/master/macOS/vFun.sh)"
    elif [ $version -eq 3 ]
    then
        accepted=1
        echo "Goodbye!"
    else
        read -p "Invalid Selection, Try Again: " version
    fi
done
