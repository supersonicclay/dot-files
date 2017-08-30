
source ~/git-completion.bash

GIT_PROMPT_ONLY_IN_REPO=1
GIT_PROMPT_THEME=Default_NoExitState
source ~/.bash-git-prompt/gitprompt.sh

alias dcps="docker-compose ps"
alias dcl="docker-compose logs"
alias dcd="docker-compose down -v"
alias dcu="docker-compose up"

alias l="ls -la"

alias gs="git status"
alias gd="git diff -w"
alias gl="git log --graph --oneline --decorate"
alias gla="git log --graph --oneline --decorate --all"
alias g-listlocalmerged="git branch --merged | egrep -v '(^\*|master|develop|release)'"
alias g-listremotemerged="git branch -r --merged | egrep -v '(^\*|master|develop|release)' | sed 's/origin\///'"
# alias g-deletelocalmerged="git branch --merged | egrep -v '(^\*|master|develop|release)' | xargs git branch -d"
# alias g-deleteremotemerged="git branch -r --merged | egrep -v '(^\*|master|develop|release)' | sed 's/origin\///' | xargs -n 1 git push --delete origin"

alias k="kubectl"

