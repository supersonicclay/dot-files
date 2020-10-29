# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/claya/.oh-my-zsh

export TERM="xterm-256color"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="random"
# ZSH_THEME="robbyrussell"
# ZSH_THEME="spaceship"
# ZSH_THEME="af-magic"
# ZSH_THEME="clean"
# ZSH_THEME="agnoster"
DEFAULT_USER=claya

# ZSH geometry theme
# ZSH_THEME="geometry/geometry"
# GEOMETRY_COLOR_DIR="cyan"
# GEOMETRY_SYMBOL_EXIT_VALUE="✘ "
# GEOMETRY_SYMBOL_PROMPT=""
# GEOMETRY_SYMBOL_SPACER=""
# GEOMETRY_PROMPT_PREFIX_SPACER=""

ZSH_THEME="robbyrussell"

#ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_STATUS_OK="false"
POWERLEVEL9K_DIR_HOME_BACKGROUND="32"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="32"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="32"
POWERLEVEL9K_VCS_CLEAN_BACKGROUND="112"
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND="112"
POWERLEVEL9K_VIRTUALENV_BACKGROUND="7"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(virtualenv context dir rbenv)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs vcs)
#POWERLEVEL9K_VCS_GIT_HOOKS=(vcs-detect-changes git-untracked git-aheadbehind git-remotebranch git-tagname)

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(git zsh-autosuggestions)
plugins=(zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
#if [[ -n $SSH_CONNECTION ]]; then
#  export EDITOR='vim'
#else
#  export EDITOR='nano'
#fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


#### Clay customizations below ####
# Disabled stuff
#source "/Users/claya/.oh-my-zsh/custom/themes/spaceship.zsh-theme"
#source ~/zsh-git-prompt/zshrc.sh
#PROMPT=%~'%b$(git_super_status) %# '

# nvm configuration
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# zsh-autosuggestions config
bindkey '^ ' autosuggest-execute

# Additional plugins
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/etc/profile.d/z.sh


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

# P4Merge as mergetool
git config --global merge.tool p4mergetool
git config --global mergetool.p4mergetool.cmd "/Applications/p4merge.app/Contents/Resources/launchp4merge \$PWD/\$BASE \$PWD/\$REMOTE \$PWD/\$LOCAL \$PWD/\$MERGED"
git config --global mergetool.p4mergetool.trustExitCode false
git config --global mergetool.keepBackup false

# VS Code as editor
#git config --global core.editor "code --wait"

# Other git aliases
alias gs="git status -s -b"
alias gd="git diff"
# git log
alias gl="git log --oneline --decorate --graph --all"
# git log (only head)
alias glh="git log --oneline --decorate --graph"
# git log with author
alias gla="git log --graph --pretty=format:'%C(bold)%C(yellow)%h%Creset %s %C(bold)%Cblue%an' --all"
# git log (only head) with author
alias glha="git log --graph --pretty=format:'%C(bold)%C(yellow)%h%Creset %s %C(bold)%Cblue%an'"
# git log with author and decoration
alias glad="git log --graph --pretty=format:'%C(bold)%C(yellow)%h%Creset %s %C(bold)%Cblue%an %C(bold)%Cgreen%d' --all"
# git log (only head) with author and decoration
alias glhad="git log --graph --pretty=format:'%C(bold)%C(yellow)%h%Creset %s %C(bold)%Cblue%an %C(bold)%Cgreen%d'"
alias gf="git fetch --all --tags --prune"
alias gu="git pull"
alias gp="git push"
#alias gpsup="git push --set-upstream origin $(git rev-parse --abbrev-ref HEAD)"
alias gpsup='git push --set-upstream origin $(git_current_branch)'
alias ga="git add ."
alias gc="git commit"
alias gca="git commit -a"
alias gcam="git commit --amend"
alias gcaam="git commit -a --amend"
alias gmt="git mergetool"
alias gch="git checkout"
alias gchb="git checkout -b"
alias gch-="git checkout -"
alias grc="git rebase --continue"
alias gra="git rebase --abort"
alias gma="git merge --abort"
alias gwip="git commit -am 'WIP'"
alias gdelmerged='git checkout -q master && git merge -q && git for-each-ref refs/heads/ "--format=%(refname:short)" | while read branch; do mergeBase=$(git merge-base master $branch) && [[ $(git cherry master $(git commit-tree $(git rev-parse $branch^{tree}) -p $mergeBase -m _)) == "-"* ]] && git branch -D $branch; done; git branch --merged origin/master | egrep -v "(^\*|master|dev)" | xargs git branch -d'
alias gdelmergedpreview='git checkout -q master && git merge -q && git for-each-ref refs/heads/ "--format=%(refname:short)" | while read branch; do mergeBase=$(git merge-base master $branch) && [[ $(git cherry master $(git commit-tree $(git rev-parse $branch^{tree}) -p $mergeBase -m _)) == "-"* ]] && echo "$branch is merged into master and can be deleted"; done; git branch --merged origin/master | egrep -v "(^\*|master|dev)" | xargs -I{} echo "{} is merged into master and can be deleted"'

# Tig aliases
alias t="tig --all"
alias ts="tig status"

# Other aliases
alias npm-exec='PATH=$(npm bin):$PATH'
alias k="kubectl"
alias usemitmproxy="export http_proxy='http://localhost:8080'"
alias preview-fgcolors='for code in {000..255}; do print -P -- "$code: %B%F{$code}Test%f%b"; done'
alias preview-fgcolorsbold='for code in {000..255}; do print -P -- "$code: %B%F{$code}Test%f%b"; done'
alias preview-bgcolorsblack='for code in {000..255}; do print -P -- "$code: %K{$code}%F{0}Test%f%k"; done'
alias preview-bgcolorswhite='for code in {000..255}; do print -P -- "$code: %K{$code}%F{0}Test%f%k"; done'
alias wifi="networksetup -setairportpower en0 off; networksetup -setairportpower en0 on"

# Paths
export PATH=$PATH:$HOME/go/bin/
