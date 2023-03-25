#Проверка пароля
passChk(){
    echo "Enter your password:"
    read pass
    if [[ $pass =~ ((.*[a-z].*)(.*[A-Z].*)(.*[0-9].*)|(.*[a-z].*)(.*[0-9].*)(.*[A-Z].*)|(.*[A-Z].*)(.*[a-z].*)(.*[0-9].*)|(.*[0-9].*)(.*[a-z].*)(.*[A-Z].*)|(.*[A-Z].*)(.*[0-9].*)(.*[a-z].*)|(.*[0-9].*)(.*[A-Z].*)(.*[a-z].*)) ]] && [[ ${#pass} -ge 12 ]]; then
        echo "Valid"
    elif [[ ${#pass} == 0 ]]; then
        usage
    else
        echo "Invalid"
    fi
}