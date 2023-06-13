
alias adog='git   log --all --decorate --oneline --graph'

# Include commit dates
alias addog='git  log --all --decorate --oneline --graph --pretty=format:"%C(yellow)%h%Creset%C(red)%C(bold)%d%Creset %C(cyan)%cd%Creset %s" --date=format:"%y-%m%d-%H%M"'

# Include login of committer
alias adddog='git log --all --decorate --oneline --graph --pretty=format:"%C(yellow)%h%Creset %C(magenta)%cl%Creset%C(red)%C(bold)%d%Creset %C(cyan)%cd%Creset %s" --date=format:"%y-%m%d-%H%M"'

alias gs="git status"
alias ga="git add"
alias gb="git branch"
alias gc="git commit"
alias gco="git checkout"
alias gcom="git checkout main"

# Diff between working tree and index (staging area)
alias gd="git diff"

# Diff between index (staging area) and HEAD
alias gds="git diff --staged"

# List current git config
alias gl="git config -l"

# What remote am I pointing to?
alias grso="git remote show origin"

# Amend previous commit (--amend) to include everything in
# working tree (-a) and staging area (commit), using the
# same comment (--no-edit).
guc='git commit -a --amend --no-edit'
