#!/bin/sh
#
# Created by Scott Tomlinson 15th November 2017
#

# Variables 
prefix=$4
serial="$(ioreg -l | grep IOPlatformSerialNumber | sed -e 's/.*\"\(.*\)\"/\1/')"
suffix=$5

# Use scutil to set Hostname, Computername and Local Hostname
scutil --set HostName $prefix-$serial-$suffix
scutil --set LocalHostName $prefix-$serial-$suffix
scutil --set ComputerName $prefix-$serial-$suffix

# Flush Cache
dscacheutil -flushcache

# Update Jamf inventory
jamf recon

exit 0