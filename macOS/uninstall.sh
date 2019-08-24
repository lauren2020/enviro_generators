#!/bin/sh
uninstallVersion=$ENVIRO_VERSION

if [ $uninstallVersion == "vColdPizza" ]
then
	echo "Uninstalling enviroment setup vBasic"
elif [ $uninstallVersion == "vGraham" ]
then
	echo "Uninstalling enviroment setup vGraham"
elif [ $uninstallVersion == "vHappyCar" ]
then
	echo "Uninstalling enviroment setup vFun"
else
	echo "Cannot find any installed enviorment configuration."
fi
