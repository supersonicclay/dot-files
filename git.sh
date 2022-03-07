
# Automatically quit if one screen and don't clear screen
git config --global core.pager "less -F -X"

# Git prompt (disabled for performance)
# https://alldrops.info/posts/cli-drops/2021-07-26_customize-zsh-part-3/
# source ~/s/.zsh/git-prompt.sh
# GIT_PS1_SHOWDIRTYSTATE=false
# GIT_PS1_SHOWSTASHSTATE=true
# GIT_PS1_SHOWUNTRACKEDFILES=true
# GIT_PS1_SHOWUPSTREAM="auto"
# GIT_PS1_STATESEPARATOR=' '
# GIT_PS1_HIDE_IF_PWD_IGNORED=true
# GIT_PS1_COMPRESSSPARSESTATE=true
# PS1='$NL%B%F{cyan}%3~%f%b% %F{magenta}$(__git_ps1 "  %s")%f$NL%B%(?.%F{green}.%F{red})%(!.#.>)%f%b '
# PS1='[%n@%m %c$(__git_ps1 " (%s)")]\$ '

# Better git diffs
# git config --global core.pager "~/diff-so-fancy | less --tabs=4 -RFX"
# git config --global color.ui true
# git config --global color.diff-highlight.oldNormal "red bold"
# git config --global color.diff-highlight.oldHighlight "red bold 52"
# git config --global color.diff-highlight.newNormal "green bold"
# git config --global color.diff-highlight.newHighlight "green bold 22"
# git config --global color.diff.meta "227"
# git config --global color.diff.frag "magenta bold"
# git config --global color.diff.commit "227 bold"
# git config --global color.diff.old "red bold"
# git config --global color.diff.new "green bold"
# git config --global color.diff.whitespace "red reverse"

# VS Code as editor
#git config --global core.editor "code --wait"

# Other git aliases
alias gs="git status -s -b"
alias gd="git diff"
alias gb="git branch"
# git log
alias gl="git log --oneline --decorate --graph"
# git log (filtered branches)
alias glb="git log --oneline --decorate --graph --branches='claya*' --branches='FFP*' --branches='ffp*' --branches='BRMS*' --branches='arcpatch*'"
# git log (all)
alias glm="git log --oneline --decorate --graph --all"
# git log with author
alias gla="git log --graph --pretty=format:'%C(bold)%C(yellow)%h%Creset %C(bold)%Cblue%an%Creset %s %C(bold)%Cgreen%d'"
# git log (filtered branches) with author
alias glba="git log --graph --pretty=format:'%C(bold)%C(yellow)%h%Creset %C(bold)%Cblue%an%Creset %s %C(bold)%Cgreen%d' --branches='claya*' --branches='FFP*' --branches='ffp*' --branches='BRMS*' --branches='arcpatch*'"
# git log (all) with author
alias glma="git log --graph --pretty=format:'%C(bold)%C(yellow)%h%Creset %C(bold)%Cblue%an%Creset %s %C(bold)%Cgreen%d' --all"
alias gf="git fetch"
alias gfa="git fetch --all --tags --prune"
alias gu="git pull"
alias gp="git push"
alias gpsup='git push --set-upstream origin $(git rev-parse --abbrev-ref HEAD)'
# alias gpsup='git push --set-upstream origin $(git_current_branch)'
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
# more involved aliases
alias gba='for branch in `git branch -r | grep -v HEAD`;do echo -e `git show --format="%ai %ar by %an" $branch | head -n 1` \\t$branch; done | sort -r'
alias gdelmerged='git checkout -q master && git merge -q && git for-each-ref refs/heads/ "--format=%(refname:short)" | while read branch; do mergeBase=$(git merge-base master $branch) && [[ $(git cherry master $(git commit-tree $(git rev-parse $branch^{tree}) -p $mergeBase -m _)) == "-"* ]] && git branch -D $branch; done; git branch --merged origin/master | egrep -v "(^\*|master|main|dev)" | xargs git branch -d'
alias gdelmergedpreview='git checkout -q master && git merge -q && git for-each-ref refs/heads/ "--format=%(refname:short)" | while read branch; do mergeBase=$(git merge-base master $branch) && [[ $(git cherry master $(git commit-tree $(git rev-parse $branch^{tree}) -p $mergeBase -m _)) == "-"* ]] && echo "$branch is merged into master and can be deleted"; done; git branch --merged origin/master | egrep -v "(^\*|master|main|dev)" | xargs -I{} echo "{} is merged into master and can be deleted"'
