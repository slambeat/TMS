#Проверка номера телефона
phoneChk(){
    echo "Enter your phone:"
    read phone
    if [[ $phone =~ \+[375]+(29|33|44|25)+[0-9]{7} ]] && [[ ${#phone} -lt 14 ]]; then
        echo "Valid"
    elif [[ ${#phone} == 0 ]]; then
        usage
    else 
        echo "Invalid"
    fi
}