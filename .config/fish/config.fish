starship init fish | source
export BAT_THEME="Nord" 

# fast node manager
fnm env --multi | source

set -x PATH (pwd)"/git-fuzzy/bin:$PATH"

# Setting fd as the default source for fzf
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
export FZF_DEFAULT_OPTS='
    --color=fg:#e5e9f0,hl:#81a1c1
    --color=fg+:#e5e9f0,bg+:#3b4252,hl+:#81a1c1
    --color=info:#eacb8a,prompt:#bf6069,pointer:#b48dac
    --color=marker:#a3be8b,spinner:#b48dac,header:#a3be8b
    --height 80% --reverse'
export GOPATH=(go env GOPATH)

set -Ux EDITOR nvim

alias g="lazygit"
alias ga="git add"
alias gb="git branch -v"
alias gc="git commit -v"
alias gca="git commit -av"
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
