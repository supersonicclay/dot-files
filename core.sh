
alias l="ls -lah"

# Other aliases
alias npm-exec='PATH=$(npm bin):$PATH'
alias k="kubectl"
alias usemitmproxy="export http_proxy='http://localhost:8080'"
alias preview-fgcolors='for code in {000..255}; do print -P -- "$code: %B%F{$code}Test%f%b"; done'
alias preview-fgcolorsbold='for code in {000..255}; do print -P -- "$code: %B%F{$code}Test%f%b"; done'
alias preview-bgcolorsblack='for code in {000..255}; do print -P -- "$code: %K{$code}%F{0}Test%f%k"; done'
alias preview-bgcolorswhite='for code in {000..255}; do print -P -- "$code: %K{$code}%F{0}Test%f%k"; done'
alias wifi="networksetup -setairportpower en0 off; networksetup -setairportpower en0 on"


