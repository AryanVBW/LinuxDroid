#!/bin/bash
PS3="Welcome Vivek : "

select lng in Kali KALI_Root Termux Ubantu
do
    case $lng in
        "Kali")
            nh;;
        "KALI_Root")
           nh -r;;
        "Termux")
           exit  ;;
        "Ubantu")
            bash ./start-ubuntu.sh;;
        *)
           echo "Ooops";;
    esac
done
