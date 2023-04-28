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

# Add zoxide to shell
zoxide init fish | source

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /Users/bylands/opt/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<
#
# abbreviations
abbr -a -- ci 'conda install'
abbr -a -- gr 'git remote'
abbr -a -- gl 'git log'
abbr -a -- bf 'brew info'
abbr -a -- bi 'brew install'
abbr -a -- bs 'brew search'
abbr -a -- bu 'brew uninstall'
abbr -a -- gd 'git diff'
abbr -a -- ldot 'ls -ld .*'
abbr -a -- fv 'fzf | xargs -r nvim'
abbr -a -- gaa 'git add --all'
abbr -a -- gca 'git commit --amend'
abbr -a -- gb 'git branch'
abbr -a -- gst 'git status'
abbr -a -- gf 'git fetch -v'
abbr -a -- v nvim
abbr -a -- gm 'git merge' # imported from a universal variable, see `help abbr`
abbr -a -- ga 'git add'
abbr -a -- gc 'git commit -v'
abbr -a -- gco 'git checkout'
abbr -a -- gp 'git push'
abbr -a -- gpl 'git pull'
