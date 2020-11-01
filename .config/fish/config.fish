starship init fish | source
export BAT_THEME="Nord" 

# fast node manager
fnm env | source

set -x PATH (pwd)"/git-fuzzy/bin:$PATH"

# Setting fd as the default source for fzf
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
export FZF_DEFAULT_OPTS='
    --color fg:#D8DEE9,bg:#2E3440,hl:#A3BE8C,fg+:#D8DEE9,bg+:#434C5E,hl+:#A3BE8C
    --color pointer:#BF616A,info:#4C566A,spinner:#4C566A,header:#4C566A,prompt:#81A1C1,marker:#EBCB8B
    --reverse'
export GOPATH=(go env GOPATH)

set -Ux EDITOR nvim

alias g="lazygit"
alias ga="git add"
alias gb="git branch -v"
alias gc="git commit -v"
alias gca="git commit -av"
alias gcom="~/bin/git-to-master-cleanup-branch.sh"
alias gd="git diff"
alias gl="git pull"
alias gp="git push"
alias gpr="gh pr create"
alias gs="git status"
alias l="exa -a --group-directories-first"
alias ll="exa -al --group-directories-first"
alias tmuxx="tmux attach-session -t (tmux list-sessions | fzf | cut -d ':' -f 1)"
alias tnl="nvim ~/.todoist/labels/(todoist labels | fzf | cut -d ' ' -f 1 | tr -d '[:space:]').md"
alias tnp="nvim ~/.todoist/projects/(todoist projects | fzf | cut -d ' ' -f 1 | tr -d '[:space:]').md"
alias tnt="nvim ~/.todoist/tasks/(todoist show | fzf | cut -d ' ' -f 1 | tr -d '[:space:]').md"
alias tx=tmuxinator
alias u="ultralist"
alias uc="ultralist c (ul | fzf | cut -c 1)"
alias ul="ultralist list not:completed group:context"
alias up="~/bin/update.sh"
alias v="v (fzf)"

set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
