#!/bin/bash
#Created by Scott Tomlinson 7/3/2018
#
#Script to remove Office 2016 from Mac, this will delete all User data for Office as well as the Applications

#removes Applications from Application Folder

rm -rf /Applications/Microsoft\ Excel.app
rm -rf /Applications/Microsoft\ OneNote.app
rm -rf /Applications/Microsoft\ Powerpoint.app
rm -rf /Applications/Microsoft\ Outlook.app
rm -rf /Applications/Microsoft\ Word.app

#Removes data from User folder

rm ~/Library/Containers/com.microsoft.errorreporting
rm ~/Library/Containers/com.microsoft.Excel
rm ~/Library/Containers/com.microsoft.netlib.shipassertprocess
rm ~/Library/Containers/com.microsoft.Office365ServiceV2
rm ~/Library/Containers/com.microsoft.Outlook
rm ~/Library/Containers/com.microsoft.Powerpoint
rm ~/Library/Containers/com.microsoft.RMS-XPCService
rm ~/Library/Containers/com.microsoft.Word
rm ~/Library/Containers/com.microsoft.onenote.mac
rm ~/Library/Group Containers/UBF8T346G9.ms
rm ~/Library/Group Containers/UBF8T346G9.Office
rm ~/Library/Group Containers/UBF8T346G9.OfficeOsfWebHost

exit 0