#### Startup
echo "Hello jd1t"
RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
RPS2=$RPS1



#### History
HISTFILE=~/.zsh_history
HISTSIZE=100000000
SAVEHIST=100000000
setopt INC_APPEND_HISTORY
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_DUPS


# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/jd1t/.oh-my-zsh"

ZSH_THEME="spaceship"

plugins=(git bgnotify zsh-autosuggestions fast-syntax-highlighting autojump)

source $ZSH/oh-my-zsh.sh


#export WORDCHARS='*?_[]~=&;!#$%^(){}'
#local WORDCHARS='*?_-.[]~=/&;!#$%^(){}<>:,"'"'"

#source ~/.zsh/zle.zsh


##### User configuration #####


## Alt+Backspace
autoload -U select-word-style
select-word-style bash              #deletes words till '/'  

export WORDCHARS='.-'
    

#### ColorLs ####
#source $(dirname $(gem which colorls))/tab_complete.sh
#path+=(
#    $(ruby -e 'puts File.join(Gem.user_dir, "bin")')
#)


#### SpaceShip ####
SPACESHIP_PROMPT_SEPARATE_LINE=false
SPACESHIP_PROMPT_PREFIXES_SHOW=false
SPACESHIP_NODE_SHOW=false
SPACESHIP_JOBS_SHOW=false
SPACESHIP_EXEC_TIME_SHOW=false

export MANPATH="/usr/local/man:$MANPATH"

#### Aliases ####

alias sx="startx"
alias szrc="source ~/.zshrc"
alias zrc="vim ~/.zshrc"
alias vrc="vim ~/.vim/vimrc"
alias xrc="vim ~/.xinitrc"
alias sxrc="vim ~/.config/sxhkd/sxhkdrc"
alias as="./bin/auto_scripter.sh"
alias prc="vim ~/.config/picom/picom.conf"
alias krc="vim ~/.config/kitty/kitty.conf"
alias arc="vim ~/.config/awesome/rc.lua"
alias pmx="pulsemixer"

alias sdl="song_downloader"
#alias lc='colorls -lA --sd'
#alias ls='colorls'

# Created by `pipx` on 2021-05-19 06:37:44
export PATH="$PATH:/home/jd1t/.local/bin"
