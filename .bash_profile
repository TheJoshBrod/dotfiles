###Custom Functions##

# Defaults ls to be colorful
alias ls='ls --color'

### Aliases Functions
if [ -f ~/.dotfiles/.alias_functions ]; then
    source ~/.dotfiles/.alias_functions
fi

### Change LS Colors

if [ -f ~/.dotfiles/.ls_theme ]; then
    LS_COLORS=$(~/.dotfiles/.ls_theme)
    export LS_COLORS
fi

###Functions for Customizing Shell Prompt###

# Shows Git branch when in repo
parse_git_branch() {
    local branch_name=$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/')
    if [ -n "$branch_name" ]; then
        if ! git diff-index --quiet HEAD -- 2> /dev/null; then
            echo " [$branch_name*]" # Uncommitted changes
        else
            echo " [$branch_name]" # No uncommitted changes
        fi
    fi
}
export PS1='\[\e[38;5;34m\]\u\e[38;5;15m:\[\e[38;2;0;121;222m\]\w\[\e[38;5;91m\]$(parse_git_branch)\[\e[0m\]$ '

### Load API keys into sh vars ###
source ~/.dotfiles/secrets/api_keys