### Startup
#echo "Hello jd1t"
#RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
#RPS2=$RPS1



#### History
HISTFILE=~/.zsh_history
HISTSIZE=100000000
SAVEHIST=100000000
setopt INC_APPEND_HISTORY
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_DUPS


export LANG=en_US.UTF-8
# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export MANPATH="/usr/local/man:$MANPATH"

# Created by `pipx` on 2021-05-19 06:37:44
export PATH="$PATH:/home/jd1t/.local/bin"



source ~/.zsh/alias.zsh
source ~/.zsh/binds.zsh
source ~/.zsh/prompt.zsh
source ~/.zsh/zinit.zsh

# Dont want Vi mode
bindkey -e
