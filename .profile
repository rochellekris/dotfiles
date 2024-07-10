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

alias reload='source ~/.profile'

export PS1='\[\033]0;$(git branch &>/dev/null; if [ $? -eq 0 ]; then \
echo "\[\e[1m\]\u@\h\[\e[0m\]: \w [\[\e[33m\]$(git branch | grep ^* | sed s/\*\ //)\[\e[0m\]\
$(echo `git status` | grep "nothing to commit" > /dev/null 2>&1; if [ "$?" -ne "0" ]; then \
echo "\[\e[1;31m\]*\[\e[0m\]"; fi)] \$ "; else \
echo "\[\e[1m\]\u@\h\[\e[0m\]: \w \$ "; fi )'