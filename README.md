# MS-Office-Uninstall-Script-For-MacOS
A shell script to deep uninstall Microsoft Office for Mac 2011/2016/2019/2022/365

# To backup the Outlook data before uninstalling:
Make sure Outlook is closed.
Open Terminal and run the following command:
```
sudo sh -c "curl -s https://raw.githubusercontent.com/snandaworld/MS-Office-Uninstall-Script-For-MacOS/main/Outlook_data_backup.sh | sh"
```

# To Uninstall the Office applications:
Make sure all Office applications are closed.
Open Terminal and run the following command:
```
sudo sh -c "curl -s https://raw.githubusercontent.com/snandaworld/MS-Office-Uninstall-Script-For-MacOS/main/office_uninstaller.sh | sh"
```

The script will take care of the uninstallation process for you
