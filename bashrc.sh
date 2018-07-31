## DETECT PLATFORM
# Required for correct settings application
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac

## GET BASH-SETTINGS DIRECTORY
# Fill in manually
bashSettingsDir=~/.config/bash-settings

## SOURCE SCRIPTS
for f in ${bashSettingsDir}/settings/*.sh; do
	source $f;
done

