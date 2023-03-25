#Проверка email
emailChk(){
    echo "Enter your email:"
    read mail
    if [[ $mail =~ ^[a-zA-Z0-9._-]+@[a-zA-Z0-9]+\.[a-zA-Z0-9]{2,3}$ ]]; then
        echo "Valid"
    elif [[ ${#mail} == 0 ]]; then
        usage
    else
        echo "Invalid"
    fi
}