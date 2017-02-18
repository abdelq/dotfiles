source /usr/share/zsh/scripts/zplug/init.zsh

## Libraries
zplug "robbyrussell/oh-my-zsh", use:"lib/*.zsh"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-history-substring-search"

## Themes
zplug "themes/minimal", from:oh-my-zsh

## Plugins
zplug "plugins/git", from:oh-my-zsh

zplug load

# Aliases
alias vim=nvim
alias top=htop
