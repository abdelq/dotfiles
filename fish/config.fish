# Abbreviations
abbr ext extract
abbr ff firefox
abbr vi nvim

# Aliases
## Directory
### Change
alias ... 'cd ../..'
alias .... 'cd ../../..'

### List
alias la 'ls --almost-all'
alias ll 'ls -l --human-readable --group-directories-first'

### Make
alias md 'mkdir --parents'

### Remove
alias rd 'rm --interactive=once --recursive'
alias rm 'rm --interactive=once'

## Disk usage
alias df 'df --human-readable'
alias du 'du --human-readable --summarize'

## Shut down
alias poweroff 'systemctl poweroff'
alias reboot 'systemctl reboot'

## Other
alias diff 'diff --color'
alias doas 'sudo'
alias rot13 'tr A-Za-z N-ZA-Mn-za-m'
alias top 'htop'

# Variables
set --export EDITOR nvim
set fish_greeting
