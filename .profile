alias gpl='git pull'
alias gs='git status'
alias gps='git_push_combo'

function git_push_combo(){
    if [ -n $* ];
    then 
        echo "Need commit message"
    else
        git add .
        git commit -a -m "$*"
        git push
    fi
}