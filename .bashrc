

# Completions
source ~/git-completion.bash
source /Applications/Docker.app/Contents/Resources/etc/docker.bash-completion
source /Applications/Docker.app/Contents/Resources/etc/docker-compose.bash-completion

# Enhanced prompt
GIT_PROMPT_ONLY_IN_REPO=1
GIT_PROMPT_THEME=Default_NoExitState
source ~/.bash-git-prompt/gitprompt.sh

# Better git diffs
git config --global core.pager "~/diff-so-fancy | less --tabs=4 -RFX"
git config --global color.ui true
git config --global color.diff-highlight.oldNormal "red bold"
git config --global color.diff-highlight.oldHighlight "red bold 52"
git config --global color.diff-highlight.newNormal "green bold"
git config --global color.diff-highlight.newHighlight "green bold 22"
git config --global color.diff.meta "227"
git config --global color.diff.frag "magenta bold"
git config --global color.diff.commit "227 bold"
git config --global color.diff.old "red bold"
git config --global color.diff.new "green bold"
git config --global color.diff.whitespace "red reverse"


# General aliases
alias vb="vi ~/.bashrc"
alias l="ls -la"
alias grep="grep --color=auto"

# Docker aliases
alias dps="docker ps"
alias dcps="docker-compose ps"
alias dcl="docker-compose logs"
alias dcd="docker-compose down -v"
alias dcu="docker-compose up"


# Git aliases
alias gs="git status"
alias gd="git diff -w"
alias gl="git log --graph --oneline --decorate"
alias gla="git log --graph --oneline --decorate --all"
alias gp="git pull --rebase"
alias g-listlocalmerged="git branch --merged | egrep -v '(^\*|master|develop|release)'"
alias g-listremotemerged="git branch -r --merged | egrep -v '(^\*|master|develop|release)' | sed 's/origin\///'"
# alias g-deletelocalmerged="git branch --merged | egrep -v '(^\*|master|develop|release)' | xargs git branch -d"
# alias g-deleteremotemerged="git branch -r --merged | egrep -v '(^\*|master|develop|release)' | sed 's/origin\///' | xargs -n 1 git push --delete origin"

alias t="tig"
alias ts="tig status"

# Other aliases
alias k="kubectl"
alias usemitmproxy="export http_proxy='http://localhost:8080'"


