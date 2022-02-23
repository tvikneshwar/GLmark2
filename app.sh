# source code Link:https://www.foxinfotech.in/2019/04/linux-unix-simple-menu-driven-program-using-shell-script.html


#!/bin/bash

function configure {
	clear
	./waf configure --with-flavors=x11-glesv2 --data-path=$PWD/data/
}

function build {
	clear
	./waf
}

function run {
        clear
        cd /home/hserver/Desktop/GLmark2/glmark2-20210830/glmark2-master/build/src
	./glmark2-es2
}


function menu {
	clear
	echo
	echo -e "\t\t\tGLmark2\n"
	echo -e "\t1. Configure"
	echo -e "\t2. Build GLmark2"
	echo -e "\t3. Run GLmark2"
	echo -e "\t0. Exit Menu\n\n"
	echo -en "\t\tEnter an Option: "
	read -n 1 option
}

while [ 1 ]
do
	menu
	case $option in
	0)
	break ;;
	1)
	configure ;;

	2)
	build ;;
        
	3)
	run ;;
	
        *)
	clear
	echo "Sorry, wrong selection";;
	esac
	echo -en "\n\n\t\t\tHit any key to continue"
	read -n 1 line
done
clear
