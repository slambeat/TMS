#!/usr/bin/env bash

source /home/dmitriy_zh/homework8/hw8_email.sh
source /home/dmitriy_zh/homework8/hw8_phone.sh
source /home/dmitriy_zh/homework8/hw8_url.sh
source /home/dmitriy_zh/homework8/hw8_password.sh

usage(){
    echo -e "Unexpected input, usage: \n1) Select option from menu \n2) Enter correct string \nFor email - *@*.** \nFor phone - +375(29/33/44/25)******* \nFor URL - http(s):\\*.** \nFor password - at least 1 digit, 1 upper and lower case, and 12 symbols"
}

PS3='Enter option number (1-5)'

main() {
    select sel in "Check email" "Check phone" "Check URL" "Check password" "Quit"
    
    do
        case $REPLY in
        1) emailChk;;
        2) phoneChk;;
        3) urlChk;;
        4) passChk;;
        5) exit;;
        esac
    done
}

main
