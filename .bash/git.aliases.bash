cite 'about-alias'
about-alias 'common git abbreviations'

# Aliases
alias gcl='git clone'
alias ga='git add'
alias gall='git add .'
alias g='git'
alias get='git'
alias gst='git status'
alias gs='git status'
alias gss='git status -s'
alias gpl='git pull'
alias gplo='git pull origin'
alias gup='git fetch && git rebase'
alias gp='git push'
alias gpo='git push origin'
alias gpu='git push upstream'
alias gdv='git diff -w "$@" | vim -R -'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gci='git commit --interactive'
alias gb='git branch'
alias gba='git branch -a'
alias gcount='git shortlog -sn'
alias gcp='git cherry-pick'
alias gco='git checkout'
alias gcop='git checkout production'
alias gcos='git checkout staging'
alias gexport='git archive --format zip --output'
alias gdel='git branch -D'
#alias gmu='git fetch origin -v; git fetch upstream -v; git merge upstream/master'
alias gl='git log'
alias gll='git log --graph --pretty=oneline --abbrev-commit'
alias glp='git log -p'
alias gr='git remote -v'
alias gf='git fetch'
alias gfu='git fetch upstream'
alias gfo='git fetch origin'
alias gm='git merge'
alias gmud='git merge upstream/develop'
alias gmum='git merge upstream/master'
alias gmus='git merge upstream/staging'
alias gmup='git merge upstream/production'
alias gmod='git merge origin/develop'
alias gmom='git merge origin/master'
alias gfup='git fetch upstream;git merge upstream/production'
alias gfus='git fetch upstream;git merge upstream/staging'

alias cpbr='branch=$(git branch | grep "*" | awk '"'"'{print $2}'"'"'); echo "Copied branch$(tput setaf 1)" $branch "$(tput sgr0)to clipboard"; echo $branch | cpin'

case $OSTYPE in
  linux*)
    alias gd='git diff | vim -R -'
    ;;
  #darwin*)
  #  alias gd='git diff | mate'
  #  ;;
  darwin*)
    alias gd='git diff'
    ;;
esac

alias glsm='git diff --name-only'
alias glsu='git ls-files --other --exclude-standard'
alias gdm='git diff $(glsm | pick)'
alias gdu='cat $(glsu | pick)'
alias gam='git add $(glsm | pick)'
alias gau='git add $(glsu | pick)'
alias gcm='glsm | pick | cpin'
alias gcu='glsu | pick | cpin'

alias gbl='git branch | cut -c 3- | pick'
alias gbc='gbl | cpin'
alias gbco='git checkout $(gbl)'
alias gbd='git branch -d $(gbl)'

