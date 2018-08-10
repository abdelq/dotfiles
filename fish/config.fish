# Abbreviations
abbr ext extract
abbr py python

# Aliases
## Clipboard
alias pbcopy 'xclip -selection clipboard'
alias pbpaste 'xclip -selection clipboard -out'

## Commands
alias doas 'sudo'
alias mutt 'neomutt'
alias top 'htop'
alias vi 'nvim'
alias vim 'nvim'

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
alias halt 'systemctl halt'
alias poweroff 'systemctl poweroff'
alias reboot 'systemctl reboot'

## Other
alias diff 'diff --color'
alias rot13 'tr A-Za-z N-ZA-Mn-za-m'

# Variables
set --export EDITOR nvim
set fish_greeting
