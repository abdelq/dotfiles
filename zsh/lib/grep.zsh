GREP_OPTIONS+=" --color=auto"
GREP_OPTIONS+=" --exclude={.git}"

alias grep="grep $GREP_OPTIONS"

unset GREP_OPTIONS
