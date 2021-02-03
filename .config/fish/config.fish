# disable fish greeting
set fish_greeting

starship init fish | source
zoxide init fish | source

# language
set -x LANG   en_US.UTF-8
set -x LC_ALL en_US.UTF-8

# editor
set -Ux EDITOR nvim

alias alacritty-colorscheme="python3 /Users/joshmedeski/Library/Python/3.9/lib/python/site-packages/alacritty_colorscheme/cli.py"

abbr aa "$EDITOR ~/.config/alacritty/alacritty.yml"
abbr acs "alacritty-colorscheme -a (alacritty-colorscheme -l | fzf --preview 'alacritty-colorscheme -a {} && msgcat --color=test')"
abbr b "brew"
abbr bc "brew cleanup"
abbr bd "brew doctor"
abbr bi "brew install"
abbr bo "brew outdated"
abbr bu "brew update"
abbr bug "brew upgrade"
abbr bs "brew services"
abbr bsr "brew services restart"
abbr c "clear"
abbr clera "clear"
abbr dcb "docker-compose build"
abbr dcd "docker-compose down"
abbr dcdv "docker-compose down -v"
abbr dce "docker-compose exec"
abbr dck "docker-compose kill"
abbr dcl	"docker-compose logs"
abbr dclf	"docker-compose logs -f"
abbr dco "docker-compose"
abbr dcps	"docker-compose ps"
abbr dcpull "docker-compose pull"
abbr dcr	"docker-compose run"
abbr dcrestart	"docker-compose restart"
abbr dcrm	"docker-compose rm"
abbr dcstart "docker-compose start"
abbr dcstop	"docker-compose stop"
abbr dcu "docker-compose up -d" 
abbr dps "docker ps --format 'table {{.Names}}\t{{.Status}}'"
abbr e "exit"
abbr ff "$EDITOR ~/.config/fish/config.fish"
abbr ga "git add"
abbr gb "git branch -v"
abbr gc "git commit -v"
abbr gca "git commit -av"
abbr gco "git checkout -b"
abbr gcom "~/bin/git-to-master-cleanup-branch.sh"
abbr gd "git diff"
abbr gl "git pull"
abbr gp "git push"
abbr gpr "gh pr create"
abbr gs "git status"
abbr gst "git status"
abbr hd "history delete --exact --case-sensitive \'(history | fzf-tmux -p -m --reverse)\'"
abbr l "exa -a --group-directories-first"
abbr ld "lazydocker"
abbr lg "lazygit"
abbr ll "exa -al --group-directories-first"
abbr nvf "nvim (fzf --height 100% --preview 'bat --style=numbers --color=always {}')"
abbr t "tmux a || tmux new"
abbr tmuxx "tmux attach-session -t (tmux list-sessions | fzf | cut -d ':' -f 1)"
abbr tnl "nvim ~/.todoist/labels/(todoist labels | fzf | cut -d ' ' -f 1 | tr -d '[:space:]').md"
abbr tnp "nvim ~/.todoist/projects/(todoist projects | fzf | cut -d ' ' -f 1 | tr -d '[:space:]').md"
abbr tnt "nvim ~/.todoist/tasks/(todoist show | fzf | cut -d ' ' -f 1 | tr -d '[:space:]').md"
abbr tt "$EDITOR ~/.tmux.conf"
abbr tx tmuxinator
abbr u "~/bin/update.sh"
abbr uc "ultralist c (ul | fzf | cut -c 1)"
abbr ul "ultralist list not:completed group:context"
abbr up "~/bin/update.sh"
abbr v "v (fzf)"
abbr vv "$EDITOR ~/.config/nvim/init.vim"
abbr zat "docker run --rm -v (pwd):/data -p 4567:4567 -it pindar/zat zat"

set fish_color_autosuggestion green
set fish_color_command normal
set fish_color_error red
set fish_color_param magenta
set fish_color_redirections yellow
set fish_color_terminators white
set fish_color_valid_path normal

# fast node manager
fnm env | source

set -gx PATH "/var/folders/ps/qf95r3fj77dct9lhsd9dvlf40000gn/T/fnm_multishell_39409_1608356497080/bin" $PATH;
set -gx FNM_MULTISHELL_PATH "/var/folders/ps/qf95r3fj77dct9lhsd9dvlf40000gn/T/fnm_multishell_39409_1608356497080";
set -gx FNM_DIR "/Users/joshmedeski/.fnm";
set -gx FNM_LOGLEVEL "info";
set -gx FNM_NODE_DIST_MIRROR "https://nodejs.org/dist";

function _fnm_autoload_hook --on-variable PWD --description 'Change Node version on directory change'
    status --is-command-substitution; and return
    if test -f .node-version -o -f .nvmrc
        fnm use
    end
end

export GOPATH=(go env GOPATH)
export BAT_THEME="Nord" 
export FZF_TMUX_OPTS="-p"
export FZF_CTRL_R_OPTS="--reverse --preview 'echo {}' --preview-window down:3:hidden:wrap --bind '?:toggle-preview'"

set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
set -g fish_user_paths "/Users/joshmedeski/go/bin" $fish_user_paths
set -x PATH (pwd)"/git-fuzzy/bin:$PATH"
