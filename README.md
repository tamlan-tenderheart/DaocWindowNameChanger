# Dark Age of Camelot Window Title Changer
A small, simple, and stupid script to change the title of a DAOC game window to identify the account

To use this script, you must have AHK (https://www.autohotkey.com/) installed.

## Usage:
For script DAOCRenamer.ahk
Click a DAOC Game Window (make it the active window), then Press F1-F4 to set the title to the appropriate account name

For script DAOCRenamerForCelestius.ahk
Click F1 once all DAOC clients are open

## Notes
For script DAOCRenamer.ahk
I use 4 accounts on the server I am currently playing (Celestius RvR), which is why I have them assigned to F1-F4.
If you run more or less accounts, you can either trim or copy-paste additional hotkey sections to the script as appropriate.

You must edit the script before running it and replace the names for Accounts 1-4 on lines 20-23 to the names of your own accounts

For script DAOCRenamerForCelstius.ahk
This is a specialization of the naming script that I have only tested with Celestius clients, and it might not work for Live or other freeshare clients.
Basically it works by finding all Windows that have game.dll as their starting image. It then goes over each one and extracts the command line that launched it. The Celestius launcher uses a command line like the following:

"C:\Program Files\Electronic Arts\Dark Age of Camelot\game.dll <ip address> <port> <id> <accountName_characterPage> <hashed password>"
The script parses this command line and extracts the accountName_characterPage and sets the title of the Window to this value.
