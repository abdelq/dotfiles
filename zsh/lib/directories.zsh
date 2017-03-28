setopt AUTO_CD
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_SILENT
setopt PUSHDMINUS
#setopt PUSHD_TO_HOME
#setopt CDABLE_VARS
#setopt AUTO_NAME_DIRS
#setopt MULTIOS
#setopt EXTENDED_GLOB

# Change
alias -- -='cd -'
#for index ({1..9}) alias "$index"="cd -${index}"; unset index

alias ....='cd ../..'
alias ......='cd ../../..'

# Make/Remove
alias md='mkdir -p'
alias rd='rmdir'

# List
alias ls='ls --color=auto'
alias ll='ls -lh --color=auto'
alias la='ls -a --color=auto'

# Stack
alias d='dirs -v | head -10'

alias pu='pushd'
alias po='popd'
