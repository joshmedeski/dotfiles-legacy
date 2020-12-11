set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
set -g fish_user_paths "/Users/joshmedeski/go/bin" $fish_user_paths

set -x LANG en_US.UTF-8
set -x LC_ALL en_US.UTF-8
starship init fish | source
export BAT_THEME="Nord" 

# fast node manager
fnm env | source

set -x PATH (pwd)"/git-fuzzy/bin:$PATH"
set fish_greeting

# Setting fd as the default source for fzf
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
export FZF_DEFAULT_OPTS='
    --color fg:#D8DEE9,hl:#A3BE8C,fg+:#D8DEE9,bg+:#434C5E,hl+:#A3BE8C
    --color pointer:#BF616A,info:#4C566A,spinner:#4C566A,header:#4C566A,prompt:#81A1C1,marker:#EBCB8B
    --reverse'
export GOPATH=(go env GOPATH)

set -Ux EDITOR nvim

alias alacritty-colorscheme="python3 /Users/joshmedeski/Library/Python/3.9/lib/python/site-packages/alacritty_colorscheme/cli.py"
alias acs="alacritty-colorscheme -a (alacritty-colorscheme -l | fzf --preview 'alacritty-colorscheme -a {} && msgcat --color=test')"
alias g="lazygit"
alias ga="git add"
alias gb="git branch -v"
alias gc="git commit -v"
alias gca="git commit -av"
alias gco="git checkout -b"
alias gcom="~/bin/git-to-master-cleanup-branch.sh"
alias gd="git diff"
alias gl="git pull"
alias gp="git push"
alias gpr="gh pr create"
alias gs="git status"
alias gst="git status"
alias l="exa -a --group-directories-first"
alias ll="exa -al --group-directories-first"
alias nvf="nvim (fzf --height 100% --preview 'bat --style=numbers --color=always {}')"
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
alias zat="docker run -v (pwd):/data -p 4567:4567 -it pindar/zat zat"

set fish_color_valid_path normal
set fish_color_command normal
set fish_color_error red
set fish_color_autosuggestion green
set fish_color_param magenta
set fish_color_terminators white
set fish_color_redirections yellow
