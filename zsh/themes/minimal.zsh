ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[white]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[white]%}] "
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%} o%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} x%{$reset_color%}"

PROMPT='%2~ $(git_prompt_info)>%b '
