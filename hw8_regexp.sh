#!/usr/bin/env bash
mail=$1
phone=$2
url=$3
pass=$4


emailChk(){
    if [[ $mail =~ [a-z0-9-_.]+@[a-z]+\.[a-z]{2,3} ]]; then
        echo "Valid"
    else 
        echo "Invalid"
    fi
}

phoneChk(){
    if [[ $phone =~ \+[375]+(29|33|44|25)+[0-9]{7} ]] && [[ ${#input} -lt 14 ]]; then
        echo "Valid"
    else 
        echo "Invalid"
    fi
}

urlChk(){
    if [[ $url =~ ^https?:\/\/([a-zA-Z0-9-.])*\.\w{2,3}$ ]]; then
        echo "Valid"
    else 
        echo "Invalid"
    fi
}

passChk(){
    if [[ $pass =~ ^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$ ]]; then
        echo "Valid"
    else 
        echo "Invalid"
    fi
}

# main() {
#     select sel in emailChk phoneChk urlChk passChk
#     do
#         case $REPLY in
#         emailChk) emailChk;;
#         phoneChk) phoneChk.$input;;
#         urlChk) urlChk;;
#         passChk) passChk;;
#         quit) exit;;
#         esac
#     done
# }

main() {
    emailChk
    phoneChk
    urlChk
    passChk
}


main
