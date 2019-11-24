# proprietary config
proprietary_config

# mix emacs and vim keybindings
fish_hybrid_key_bindings

# add fzf keybindings
fzf_key_bindings

set -g theme_date_format +"%d-%m-%Y %H:%M:%S"
# configure bobthefish for huge git repos
set -g theme_display_git_dirty no
set -g theme_display_git_untracked no
set -g theme_display_git_ahead_verbose no 
set -g theme_display_git_dirty_verbose no
set -g theme_display_git_stashed_verbose no
set -g theme_display_git_master_branch yes
# disable renv and venv strings
set -g theme_display_ruby no
set -g theme_display_virtualenv no
# cursor on a new line
set -g theme_newline_cursor yes

# abbr
abbr -a gu "git add -A && git commit -a -m 'update' && git push"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /usr/local/Caskroom/miniconda/base/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

