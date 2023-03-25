#Проверка URL
urlChk(){
    echo "Enter your URL:"
    read url
    if [[ $url =~ https?:\/\/([a-zA-Z0-9-])+\.[a-zA-Z]{2,3} ]]; then
        echo "Valid"
    elif [[ ${#url} == 0 ]]; then
        usage
    else 
        echo "Invalid"
    fi
}