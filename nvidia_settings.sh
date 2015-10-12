#!/bin/bash
#MONERODO Nvidia mining settings

#Menu
while true
do
	clear
	echo "================="
	echo "Manage Nvidia settings"
	echo "================="
	echo "[1] Change mining address"
	echo "[2] Turn NVIDIA miner on now and on boot"
	echo "[3] Turn NVIDIA miner off"
	echo "[r] Return to device management menu"
	echo -e "\n"
	echo -e "Enter your selection \c"
	read answer
	case "$answer" in
		1) ./change_nvidia_address.sh;;
		2) ./nvidia_on.sh;;
		3) ./nvidia_off.sh;;
		r) exit ;;
	esac
	echo -e "Enter return to continue \c"
	read input
	clear
done
