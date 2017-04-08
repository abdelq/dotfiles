alias vi='vim'
alias vim='nvim'

alias top='htop'

alias grep='grep --color'
alias diff='diff --color'

# Directories
## Change
alias - -='cd -'

alias ...='cd ../..'
alias ....='cd ../../..'

## List
alias ls='ls --color --group-directories-first'
alias ll='ls -lh --color --group-directories-first'
alias la='ls -A --color --group-directories-first'

## Make/Remove
alias md='mkdir -pv'
alias rd='rmdir -v'

## Stack
alias d='dirs -v | head -10'

alias pu='pushd'
alias po='popd'

# History
alias h='history'
alias history='fc -il 1'

# Miscellaneous
alias update='sudo aura -Syu && sudo aura -Ayu'
alias weather='curl -s wttr.in | head -n -3'
alias rot13='tr a-zA-Z n-za-mN-ZA-M'
