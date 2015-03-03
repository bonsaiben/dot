cite about-alias
about-alias 'general aliases'

# List directory contents
alias sl=ls
alias ls='ls -G'        # Compact view, show colors
alias la='ls -AF'       # Compact view, show hidden
alias ll='ls -al'
alias l='ls -a'
alias l1='ls -1'

alias tn='terminal-notifier -message'

alias _="sudo"

if [ $(uname) = "Linux" ]
then
  alias ls="ls --color=always"
fi
which gshuf &> /dev/null
if [ $? -eq 1 ]
then
  alias shuf=gshuf
fi

alias c='clear'
alias k='clear'
alias cls='clear'

alias edit="$EDITOR"
alias pager="$PAGER"

alias q='exit'

alias irc="$IRC_CLIENT"

alias rb='ruby'

# Pianobar can be found here: http://github.com/PromyLOPh/pianobar/

alias piano='pianobar'

alias ..='cd ..'         # Go up one directory
alias ...='cd ../..'     # Go up two directories
alias ....='cd ../../..' # Go up two directories
alias -- -='cd -'        # Go back

# Shell History
alias h='history'

# Tree
if [ ! -x "$(which tree 2>/dev/null)" ]
then
  alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
fi

# Directory
alias	md='mkdir -p'
alias	rd='rmdir'

# Quick change directories
alias cdws='cd ~/workspace; ll'
alias cdbash='cd ~/.bash_it; ll'
alias cdvim='cd ~/.vim; ll'

alias cdtadaku='cd ~/workspace/tadaku'
alias cdkenzai='cd ~/workspace/kenzai.me'
alias cddayai='cd ~/workspace/day.ai'

alias noascii="perl -pe 's/\e\[?.*?[\@-~]//g'"
alias inline='tr -d "\n"'
alias cpin="inline | pbcopy"

alias remindme="cat ~/remindme.txt"