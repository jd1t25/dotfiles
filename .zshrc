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
#export ZSH="/home/jd1t/.oh-my-zsh"

ZSH_THEME="spaceship"

#plugins=(git bgnotify zsh-autosuggestions fast-syntax-highlighting zsh-z)

#source $ZSH/oh-my-zsh.sh


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


#### Bind Keys ####


bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line
bindkey "\e[5~" beginning-of-history
bindkey "\e[6~" end-of-history
bindkey "\e[7~" beginning-of-line
bindkey "\e[3~" delete-char
bindkey "\e[2~" quoted-insert
bindkey "\e[5C" forward-word
bindkey "\e[5D" backward-word
bindkey "\e\e[C" forward-word
bindkey "\e\e[D" backward-word
bindkey "\e[1;5C" forward-word
bindkey "\e[1;5D" backward-word
bindkey "\e[8~" end-of-line
bindkey "\eOH" beginning-of-line
bindkey "\eOF" end-of-line
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line


#### SpaceShip ####
SPACESHIP_PROMPT_SEPARATE_LINE=false
SPACESHIP_PROMPT_PREFIXES_SHOW=false
SPACESHIP_NODE_SHOW=false
SPACESHIP_JOBS_SHOW=false
SPACESHIP_EXEC_TIME_SHOW=false

export MANPATH="/usr/local/man:$MANPATH"

#### Aliases ####

alias sx="startx"
alias szrc="source .zshrc"
alias zrc="vim .zshrc"
alias vrc="vim ~/.vim/vimrc"
alias xrc="vim ~/.xinitrc"
alias brc="vim ~/.config/bspwm/bspwmrc"
alias sxrc="vim ~/.config/sxhkd/sxhkdrc"
alias as="./bin/auto_scripter.sh"
alias prc="vim ~/.config/picom/picom.conf"
alias krc="vim ~/.config/kitty/kitty.conf"
alias arc="vim ~/.config/awesome/rc.lua"
alias pmx="pulsemixer"
alias mms="vim $HOME/bin/multi_monitor_script"
alias mmd="vim ~/bin/multi_monitor_display"
alias pos="vim ~/bin/polybar_on_startup"

alias sdl="song_downloader"
alias v="vim"
#alias lc='colorls -lA --sd'
#alias ls='colorls'

# Created by `pipx` on 2021-05-19 06:37:44
export PATH="$PATH:/home/jd1t/.local/bin"

#autoload -U compinit

# Zplug
source ~/.zplug/init.zsh

zplug "plugins/git",   from:oh-my-zsh
zplug "plugins/bgnotify",   from:oh-my-zsh
zplug "zsh-users/zsh-autosuggestions"
zplug "zdharma-continuum/fast-syntax-highlighting"
zplug "agkozak/zsh-z"
zplug denysdovhan/spaceship-zsh-theme, use:spaceship.zsh, from:github, as:theme
zplug 'zplug/zplug', hook-build:'zplug --self-manage'

#if ! zplug check --verbose; then
#    printf "Install? [y/N]: "
#    if read -q; then
#        echo; zplug install
#    fi
#fi

# Then, source plugins and add commands to $PATH
zplug load
#autoload -U compinit


