if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Add paths
fish_add_path /opt/homebrew/sbin
fish_add_path /opt/homebrew/bin
fish_add_path /Users/bylands/opt/anaconda3/condabin
fish_add_path /Users/bylands/opt/anaconda3/bin

# Configure Spacefish Prompt
set SPACEFISH_USER_SHOW always
# set SPACEFISH_USER_COLOR d75f00 # orange
# set SPACEFISH_DIR_COLOR 5faf5f # green
# set SPACEFISH_GIT_BRANCH_COLOR afd7ff # blue
# set SPACEFISH_CONDA_COLOR ffff87 # yellow
set SPACEFISH_CONDA_SHOW false

# Custom key bindings for fzf
fzf_configure_bindings --directory=\cf --git_status=\cs

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -e /Users/bylands/opt/anaconda/bin/conda
    eval /Users/bylands/opt/anaconda3/bin/conda "shell.fish" "hook" $argv | source
else if test -e /opt/homebrew/bin/conda
    eval /opt/homebrew/bin/conda "shell.fish" "hook" $argv | source
end
# <<< conda initialize <<<
