# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/jd1t/.oh-my-zsh"

ZSH_THEME="spaceship"

plugins=(git bgnotify zsh-autosuggestions fast-syntax-highlighting autojump)

source $ZSH/oh-my-zsh.sh


# User configuration


#### ColorLs ####
source $(dirname $(gem which colorls))/tab_complete.sh
path+=(
    $(ruby -e 'puts File.join(Gem.user_dir, "bin")')
)


#### SpaceShip ####
SPACESHIP_PROMPT_SEPARATE_LINE=false
SPACESHIP_PROMPT_PREFIXES_SHOW=false
SPACESHIP_NODE_SHOW=false
SPACESHIP_JOBS_SHOW=false
SPACESHIP_EXEC_TIME_SHOW=false

# export MANPATH="/usr/local/man:$MANPATH"

#### Aliases ####

alias szrc="source ~/.zshrc"
alias zrc="vim ~/.zshrc"
alias vrc="vim ~/.vim/vimrc"
alias xrc="vim ~/.xinitrc"

alias lc='colorls -lA --sd'
alias ls='colorls'
