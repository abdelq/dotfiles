# Git
ZSH_THEME_GIT_PROMPT_PREFIX="["
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}]"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}x"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}o"

# VI Mode
ZSH_THEME_VIM_PROMPT_PREFIX="[%{$fg[yellow]%}"
ZSH_THEME_VIM_PROMPT_SUFFIX="%{$reset_color%}]"
ZSH_THEME_VIM_PROMPT_NORMAL="N"
ZSH_THEME_VIM_PROMPT_INSERT="I"

PROMPT='%2~ » '
RPROMPT='$(git_prompt_info) $(vim_prompt_info)'
