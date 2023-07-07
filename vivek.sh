#!/bin/bash
figlet -f ANSI-Shadow Aryan|lolcat 
figlet  -w 100 -f ANSI-Shadow Technologies|lolcat

PS3="Welcome Vivek : "

select lng in Termux Ubantu
do
    case $lng in
        
        "Termux")
           exit  ;;
        "Ubantu")
            bash ./start-ubuntu20.sh;;
        *)
           echo "Ooops";;
    esac
done
