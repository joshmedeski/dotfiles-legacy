starship init fish | source
export BAT_THEME="Nord" 

# fast node manager
fnm env --multi | source

set -x PATH (pwd)"/git-fuzzy/bin:$PATH"
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse'
export GOPATH=(go env GOPATH)

set -Ux EDITOR nvim

alias l="exa -a --group-directories-first"
alias ll="exa -al --group-directories-first"

alias g="git status"
alias ga="git add"
alias ga="git add"
alias gb="git branch -v"
alias gc="git commit -v"
alias gca="git commit -av"
alias gd="git diff"
alias gl="git pull"
alias gp="git push"
alias gpr="gh pr create"
alias gst="git status"

alias u="ultralist"
alias uc="ultralist c (ul | fzf | cut -c 1)"
alias ul="ultralist list not:completed group:context"
alias up="~/bin/update.sh"

alias tnp="nvim ~/.todoist/projects/(todoist projects | fzf | cut -d ' ' -f 1 | tr -d '[:space:]').md"
alias tnl="nvim ~/.todoist/labels/(todoist labels | fzf | cut -d ' ' -f 1 | tr -d '[:space:]').md"
alias tnt="nvim ~/.todoist/tasks/(todoist show | fzf | cut -d ' ' -f 1 | tr -d '[:space:]').md"

alias v="v (fzf)"

set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
