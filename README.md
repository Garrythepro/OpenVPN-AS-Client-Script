# OpenVPN Access Client CUI Script
This is a script for easier connection and disconnection of your Linux client machine to a server running OpenVPN Access Server. 

**Caution**: This script stores the username and password as plain text.

Note that this script is not verified by, affiliated with, or supported by OpenVPN.

### Pre-requisites:
* This script requires openvpn3 package to run. The package openvpn3 can be installed by using the instructions at this link: https://community.openvpn.net/openvpn/wiki/OpenVPN3Linux.

* The script also requires figlet and tput for a better CUI (Console User Interface), which may be preinstalled or available through the package tool of your linux distribution.

### Getting the '.ovpn' profile:
This file is generated specifically for your client by the server and it will usually be provided by the in-charge of the server. If you are the in-charge, it may be found after logging in at privateip:943.

### Customizing this script:
1. Download and open the script in a text editor.
2. Replace "/path/to/openvpn.ovpn" with the path to your '.ovpn' profile.
3. Replace "\<username\>" and "\<password\>" with your username and password. 
4. Save the file.
5. Mark the file as executable (secondary-click>preferences>run_as_a_program or using chmod) and run.

### Further:
Next you could use libre-menu-editor to create an app shortcut for it in the applications menu.
