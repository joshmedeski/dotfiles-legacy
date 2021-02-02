# Fish Noder Manager (fnm)
set -gx PATH "/var/folders/ps/qf95r3fj77dct9lhsd9dvlf40000gn/T/fnm_multishell_64382_1606697449863/bin" $PATH;
set -gx FNM_MULTISHELL_PATH "/var/folders/ps/qf95r3fj77dct9lhsd9dvlf40000gn/T/fnm_multishell_64382_1606697449863";
set -gx FNM_DIR "/Users/joshmedeski/.fnm";
set -gx FNM_LOGLEVEL "info";
set -gx FNM_NODE_DIST_MIRROR "https://nodejs.org/dist";

function _fnm_autoload_hook --on-variable PWD --description 'Change Node version on directory change'
    status --is-command-substitution; and return
    if test -f .node-version -o -f .nvmrc
        fnm use
    end
end

