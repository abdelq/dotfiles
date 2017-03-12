# zplug
source /usr/share/zsh/scripts/zplug/init.zsh

## Libraries
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-completions"
zplug "robbyrussell/oh-my-zsh", use:"lib/*.zsh"

## Themes
zplug "themes/minimal", from:oh-my-zsh

## Plugins
zplug "plugins/git", from:oh-my-zsh

zplug load

# Aliases
alias vim='nvim'
alias top='htop'
alias weather='curl -s wttr.in | head -n -1'

# Python
source virtualenvwrapper_lazy.sh
