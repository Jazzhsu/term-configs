# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
if [ "$TMUX" = "" ]; then tmux; fi

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="catppuccin"
CATPPUCCIN_FLAVOR="mocha" # Required! Options: mocha, flappe, macchiato, latte
CATPPUCCIN_SHOW_TIME=true  # Optional! If set to true, this will add the current time to the prompt.

DISABLE_AUTO_TITLE="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh


