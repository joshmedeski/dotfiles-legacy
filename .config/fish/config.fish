# disable fish greeting
set fish_greeting

# starship
starship init fish | source

# language
set -x LANG   en_US.UTF-8
set -x LC_ALL en_US.UTF-8

# editor
set -Ux EDITOR nvim

alias alacritty-colorscheme="python3 /Users/joshmedeski/Library/Python/3.9/lib/python/site-packages/alacritty_colorscheme/cli.py"
source ~/.config/fish/abbr.fish
source ~/.config/fish/color.fish
source ~/.config/fish/fnm.fish

export GOPATH=(go env GOPATH)
export BAT_THEME="Nord" 
export FZF_TMUX=1
export FZF_TMUX_OPTS="-p"
export FZF_CTRL_R_OPTS="--reverse --preview 'echo {}' --preview-window down:3:hidden:wrap --bind '?:toggle-preview'"

set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
set -g fish_user_paths "/Users/joshmedeski/go/bin" $fish_user_paths
set -x PATH (pwd)"/git-fuzzy/bin:$PATH"
