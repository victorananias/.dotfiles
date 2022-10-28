ksns() {
    kubectl config set-context --current --namespace="${1}"
}

kill-go() 
{
    for each in $(ps -Al | grep -w go | awk '{print $2}') 
    do 
        kill $each 
    done
}

set-var-in-file () {
    variable="${1}"
    content="${2}"
    file="${3}"

    if [ ! -f "${file}" ]; then
        echo "set-var-in-file: file doesn't exist: ${file}"
        exit 1
    fi

    sed -i "" "s/${variable}=.*/${variable}=\"${content}\"/" "$file"

    exec zsh
}