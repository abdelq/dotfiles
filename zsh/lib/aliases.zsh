alias vi='vim'
alias vim='nvim'

alias top='htop'

alias grep='grep --color'

# Directories

## Change
alias - -='cd -'

alias ...='cd ../..'
alias ....='cd ../../..'

## List
alias ls='ls --color'
alias ll='ls -lh --color'
alias la='ls -A --color'

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
