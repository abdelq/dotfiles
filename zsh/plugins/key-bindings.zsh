#bindkey -v

bindkey '^A' beginning-of-line # Ctrl-A
bindkey '^E' end-of-line # Ctrl-E

bindkey '^[Oc' forward-word # Ctrl-RightArrow
bindkey '^[Od' backward-word # Ctrl-LeftArrow

bindkey '^R' history-incremental-search-backward # Ctrl-R

bindkey '^[[Z' reverse-menu-complete # Shift-Tab

#bindkey '^[[2~' ??? # Insert
bindkey '^[[3~' delete-char # Delete
bindkey '^[[7~' beginning-of-line # Home
bindkey '^[[8~' end-of-line # End
bindkey '^[[5~' up-line-or-history # PageUp
bindkey '^[[6~' down-line-or-history # PageDown

# zsh-users/zsh-history-substring-search
bindkey '^[[A' history-substring-search-up # UpArrow
bindkey '^[[B' history-substring-search-down # DownArrow
bindkey -M vicmd 'k' history-substring-search-up # K
bindkey -M vicmd 'j' history-substring-search-down # J
