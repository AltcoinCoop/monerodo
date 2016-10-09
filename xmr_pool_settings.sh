#!/bin/bash
#MONERODO pool settings

#Menu
while true
do
	clear
	echo "================="
	echo "Manage Pool server settings"
	echo "================="
	cat /home/bob/.monerodo/status_poolwallet.txt
	echo "================="
	echo "[0] Modify pool server conf file (setup the pool wallet)"
	echo "[1] Turn pool on now and on boot"
	echo "[2] Turn pool off"
	echo "[3] Turn pool off now and stop from running on boot"
	echo "[r] Return to device management menu"
	echo ""
	echo "Please visit http://$current_ip/pool to see whether your pool is running"
	echo -e "\n"
	echo -e "Enter your selection and press enter or just press enter to check status\c"
	read answer
        export mos_service="mos_monerowallet"
	export running=$(service $mos_service status)
	case "$answer" in
		0) ./setup_pool_wallet.sh;;
		1) ./service_on.sh;;
		2) ./service_off.sh;;
		3) ./service_off.sh
		sudo rm /etc/init/$mos_service.conf;;
		r) exit ;;
	esac
	clear
done
