function vim_prompt_info() {
	local info="$ZSH_THEME_VIM_PROMPT_PREFIX"

	local NORMAL="$ZSH_THEME_VIM_PROMPT_NORMAL"
	local INSERT="$ZSH_THEME_VIM_PROMPT_INSERT"

	info+="${${KEYMAP/vicmd/$NORMAL}/(main|viins)/$INSERT}"
	info+="$ZSH_THEME_VIM_PROMPT_SUFFIX"

	echo $info
}

bindkey '^[Oa' up-history                          # Control_L + Up
bindkey '^[Ob' down-history                        # Control_L + Down
bindkey '^[Oc' forward-word                        # Control_L + Right
bindkey '^[Od' backward-word                       # Control_L + Left

bindkey '^A' beginning-of-line                     # Control_L + a
bindkey '^E' end-of-line                           # Control_L + e
bindkey '^R' history-incremental-search-backward   # Control_L + r

bindkey -M viins '^[[2~' vi-cmd-mode               # Insert
bindkey -M vicmd '^[[2~' vi-insert                 # Insert
bindkey '^[[3~' delete-char                        # Delete
bindkey -M viins '^[[7~' beginning-of-line         # Home
bindkey -M vicmd '^[[7~' beginning-of-line         # Home
bindkey -M viins '^[[8~' end-of-line               # End
bindkey -M vicmd '^[[8~' end-of-line               # End
bindkey '^[[5~' up-line-or-history                 # Prior
bindkey '^[[6~' down-line-or-history               # Next

bindkey '^[[Z' reverse-menu-complete               # ISO_Left_Tab

# zsh-users/zsh-history-substring-search
bindkey '^[[A' history-substring-search-up         # Up
bindkey '^[[B' history-substring-search-down       # Down
bindkey -M vicmd 'k' history-substring-search-up   # k
bindkey -M vicmd 'j' history-substring-search-down # j

function zle-line-init zle-keymap-select() {
	zle reset-prompt
}

# Resizing the terminal
TRAPWINCH() {
	zle && zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select
