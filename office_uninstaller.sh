#!/bin/bash

USERNAME=$(ls -l /dev/console | awk '{print $3}')

if [[ $EUID -ne 0 ]]; then
    echo -e "
    ROOT PRIVILEDGES NEEDED!
    You have to run this script as root.
    Aborting...
    "
    exit 1
else
    echo -e "
    ###################################
      Office 365 for Mac uninstaller
    ###################################
    "

    sleep 4

    echo -e "
    ------------- WARNING -------------
      Your Outlook data will be wiped.
     Press CTRL+C in 5 seconds to ABORT
    -----------------------------------
    "

    sleep 6

    # commands out of the official guide from microsoft
    # source https://support.office.com/en-us/article/Uninstall-Office-2016-for-Mac-eefa1199-5b58-43af-8a3d-b73dc1a8cae3

    echo "    Removing Office 365 apps..."
    rm -rf "/Applications/Microsoft Excel.app"
    rm -rf "/Applications/Microsoft OneNote.app"
    rm -rf "/Applications/Microsoft Outlook.app"
    rm -rf "/Applications/Microsoft PowerPoint.app"
    rm -rf "/Applications/Microsoft Word.app"
    rm -rf "/Applications/Microsoft OneDrive.app"
    rm -rf "/Applications/Microsoft Teams.app"

    echo "    Cleaning ~/Library..."
    rm -rf /Users/$USERNAME/Library/Containers/com.microsoft.errorreporting
    rm -rf /Users/$USERNAME/Library/Containers/com.microsoft.Excel
    rm -rf /Users/$USERNAME/Library/Containers/com.microsoft.netlib.shipassertprocess
    rm -rf /Users/$USERNAME/Library/Containers/com.microsoft.Office365ServiceV2
    rm -rf /Users/$USERNAME/Library/Containers/com.microsoft.Outlook
    rm -rf /Users/$USERNAME/Library/Containers/com.microsoft.Powerpoint
    rm -rf /Users/$USERNAME/Library/Containers/com.microsoft.rm -rfS-XPCService
    rm -rf /Users/$USERNAME/Library/Containers/com.microsoft.Word
    rm -rf /Users/$USERNAME/Library/Containers/com.microsoft.onenote.mac
    rm -rf /Users/$USERNAME/Library/Containers/com.microsoft.OneDrive.FinderSync
#
#
#### WARNING: Outlook data will be removed when you move the three folders listed below.
#### You should back up these folders before you delete them.
    rm -rf "/Users/$USERNAME/Library/Group Containers/UBF8T346G9.ms"
    rm -rf "/Users/$USERNAME/Library/Group Containers/UBF8T346G9.Office"
    rm -rf "/Users/$USERNAME/Library/Group Containers/UBF8T346G9.OfficeOsfWebHost"

    # further cleaning

    echo "    Cleaning system folders..."
    rm -rf "/Library/Application Support/Microsoft/MAU2.0"
    rm -rf "/Library/Fonts/Microsoft"
    rm -rf /Library/LaunchDaemons/com.microsoft.office.licensing.helper.plist
    rm -rf /Library/LaunchDaemons/com.microsoft.office.licensingV2.helper.plist
    rm -rf /Library/Preferences/com.microsoft.Excel.plist
    rm -rf /Library/Preferences/com.microsoft.office.plist
    rm -rf /Library/Preferences/com.microsoft.office.setupassistant.plist
    rm -rf /Library/Preferences/com.microsoft.outlook.databasedaemon.plist
    rm -rf /Library/Preferences/com.microsoft.outlook.office_reminders.plist
    rm -rf /Library/Preferences/com.microsoft.Outlook.plist
    rm -rf /Library/Preferences/com.microsoft.PowerPoint.plist
    rm -rf /Library/Preferences/com.microsoft.Word.plist
    rm -rf /Library/Preferences/com.microsoft.office.licensingV2.plist
    rm -rf /Library/Preferences/com.microsoft.autoupdate2.plist
    rm -rf /Library/Preferences/com.microsoft.OneDriveUpdater
    rm -rf /Library/Preferences/com.microsoft.OneDriveStandaloneUpdater
    rm -rf /Library/Preferences/com.microsoft.OneDrive.plist
    rm -rf /Library/Preferences/com.microsoft.teams
    rm -rf /Library/Preferences/ByHost/com.microsoft
    rm -rf /Library/Receipts/Office2016_*
    rm -rf /Library/PrivilegedHelperTools/com.microsoft.office.licensing.helper
    rm -rf /Library/PrivilegedHelperTools/com.microsoft.office.licensingV2.helper

    echo "    Making your Mac forget about Office 2016..."
    pkgutil --forget com.microsoft.package.Fonts
    pkgutil --forget com.microsoft.package.Microsoft_AutoUpdate.app
    pkgutil --forget com.microsoft.package.Microsoft_Excel.app
    pkgutil --forget com.microsoft.package.Microsoft_OneNote.app
    pkgutil --forget com.microsoft.package.Microsoft_Outlook.app
    pkgutil --forget com.microsoft.package.Microsoft_PowerPoint.app
    pkgutil --forget com.microsoft.package.Microsoft_Word.app
    pkgutil --forget com.microsoft.package.Microsoft_OneDrive.app
    pkgutil --forget com.microsoft.package.Microsoft_Teams.app

    pkgutil --forget com.microsoft.package.Proofing_Tools
    pkgutil --forget com.microsoft.package.licensing

    echo -e "
    Complete!
    Please Note: You may need to reinstall Microsoft Silverlight.
    You can now remove icons from Dock (if any!).
    "
fi
