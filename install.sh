#!/usr/bin/env bash

## Check if the script is run as a root (with 'sudo')
if [ "$(id -u)" != "0" ]; then
  echo "
  	This script must be run as root!

  		" 1>&2
  exit 1
fi

## Check if 'Boxes' is installed!
TEST=$(which boxes)
 
## find out if it is boxes is installed or not ##
[  -z "$TEST" ] && RES='0' || RES='1'

if [ "$RES" -eq "0" ]; then
	echo -e "We need to firstly, install 'boxes'"
	apt-get install boxes
fi
echo -e "\n\n\tBoxes is installed now!\n\n";


## Starting installation
if [ "$RES" -eq "1" ]; then

read -p "Do you want to continue with installation (y/n)? " answer
case ${answer:0:1} in
    y|Y )

	clear
	# Make sure you are insatlling on a supported linux distribution
	DISTRO=$(lsb_release -si)
	RELEASE=$(lsb_release -sr)

	## Check if the distro is ubuntu
	if [ $DISTRO != 'Ubuntu' ]
	then
	  echo "Sorry installation only supported on Ubuntu!"
	  echo "Exiting ..."
	  exit 1
	fi

	## Drawing using boxes installed before!
	echo "Welcome, to your DHIS2 Installion" | boxes -d boy

	echo -e "\n Starting an installation of DHIS2 on $DISTRO linux version $RELEASE \n\n"

## Starting of the commands











## End of the commands
        
    ;;
    * )
		echo -e "\n\tYou can re-run the script later!\n"
        exit 1
    ;;
esac

fi



