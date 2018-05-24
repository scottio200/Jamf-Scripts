#!/bin/sh
# capture user input name
while true
do
name=$(osascript -e 'Tell application "System Events" to display dialog "Please enter a name for your computer" default answer ""' -e 'text returned of result' 2>/dev/null)
    if [ $? -ne 0 ]     
    then # user cancel
        exit
    elif [ -z "$name" ]
    then # loop until input or cancel
        osascript -e 'Tell application "System Events" to display alert "Please enter a name or select Cancel!" as warning'
    else [ -n "$name" ] # user input
        break
    fi
done

sudo scutil --set ComputerName $name
sudo scutil --set LocalHostName $name
sudo scutil --set HostName $name
sudo /usr/local/bin/jamf recon

exit 0