# Abbreviations
abbr top htop
abbr vi nvim
abbr vim nvim

# Aliases
## Directory
### Change
alias ... 'cd ../..'
alias .... 'cd ../../..'

### List
alias la 'ls --almost-all'
alias ll 'ls -l --human-readable --group-directories-first'

### Make/Remove
alias md 'mkdir --parents --verbose'
alias rd 'rmdir --verbose'

## Disk usage
alias df 'df --human-readable'
alias du 'du --human-readable --summarize'

## Shut down
alias poweroff 'systemctl poweroff'
alias reboot 'systemctl reboot'

## Other
alias diff 'diff --color'
alias rot13 'tr A-Za-z N-ZA-Mn-za-m'

# Environment variables
set -x EDITOR nvim
