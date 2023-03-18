#!/bin/bash
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
