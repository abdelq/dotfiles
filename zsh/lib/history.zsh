HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

alias history='fc -il 1'

setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_SPACE
setopt HIST_NO_FUNCTIONS
setopt HIST_VERIFY
#setopt HIST_BEEP
#setopt BANG_HIST