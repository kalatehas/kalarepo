#!/bin/bash

# Append stuff to orig PATH
export PATH=$PATH:/usr/local/bin/

# Paint PS1
case $(id -u) in 
    0)
	PS1="[\e[31;1m\u\e[37;0m@\e[36m\H\e[37m:\e[32m\w\e[37;0m]\n$"
	;;
    *)
	PS1="[\e[32;1m\u\e[37;0m@\e[36m\H\e[37m:\e[32m\w\e[37;0m]\n$"
	;;
esac

# Fancy gay info
if [[ $- =~ "i" ]]; then # Detect interactive shell
vetsupoticmd(){
    toilet -f pagga -F crop anton
    echo -e "   no grills allowed\n"
    neofetch --off --stdout
}
vetsupoticmd| lolcat
fi

