#!/bin/bash

IFS=

figlet OpenVPN

openvpn3 session-manage --config /path/to/openvpn.ovpn --disconnect > /dev/null 2>&1
openvpn3 session-manage --config /path/to/openvpn.ovpn --cleanup > /dev/null 2>&1

while true ; do
	echo "Status: Disconnected"
	echo "Press Enter to Connect, anything else to Exit"
	read -s -n 1 var
	if [ "$var" = "" ]; then
		tput cup 8 0
		tput ed
		echo "Status: Connecting..."
		printf "<username>\n<password>\n" | openvpn3 session-start --config /path/to/openvpn.ovpn > /dev/null 2>&1
		tput cup 8 0
		tput ed
		echo "Status: Connected"
	else
		tput cup 9 0
		tput ed
		echo "Exiting..."
		sleep 1
		exit
	fi
	while true ; do
		tput cup 9 0
		echo "Press Enter to show/refresh Statistics, anything else to Disconnect"
		read -s -n 1 var
		if [ "$var" = "" ]; then
			tput ed
			openvpn3 session-stats --config /path/to/openvpn.ovpn
		else
			tput cup 8 0
			tput ed
			echo "Status: Disconnecting..."
			openvpn3 session-manage --config /path/to/openvpn.ovpn --disconnect > /dev/null 2>&1
			tput cup 8 0
			tput ed
			break
		fi
	done
done
