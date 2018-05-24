#! /bin/bash
#
#Script to prompt for authentication when printing
#
#Created by Scott Tomlinson Thursday, May 24th 2018
#
#
#

#Variables
printerName=$4

#Use lpadmin to set authentication on for $printerName

lpadmin -p $printerName -o auth-info-required=negotiate

exit = 0