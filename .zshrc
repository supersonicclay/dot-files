# Completions
skip_global_compinit=1

source ~/s/zsh-autocomplete/zsh-autocomplete.plugin.zsh

HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

bindkey -e

zstyle ':autocomplete:*' min-input 1
# zstyle ':autocomplete:*' insert-unambiguous yes
# zstyle ':autocomplete:*' widget-style menu-select

setopt PROMPT_SUBST

NL=$'\n'
PS1='%B%F{cyan}%3~%f%b$NL%B%(?.%F{green}.%F{red})$%f%b '

function precmd {
  # Adapted from oh-my-zsh
  print -Pn "\e]2;%n@%m:%~\a" # set iTerm window name
  print -Pn "\e]1;%15<..<%~%<<\a" # set iTerm tab name
}

function preexec {
  # Adapted from oh-my-zsh
  print -Pn "\e]2;${1}\a" # set iTerm window name
  print -Pn "\e]1;${1}\a" # set iTerm tab name
}

source ~/s/dot-files/core.sh
source ~/s/dot-files/git.sh

if [ -f ~/.corporate ]; then
  source ~/.corporate
fi
