# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="prose"
ZSH_THEME="fangaru"

# Example aliases
alias zshconfig="subl ~/.zshrc"
alias ohmyzsh="subl ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git gem rvm ruby rake)

source $ZSH/oh-my-zsh.sh

#aliases
source /home/seich/.aliases.sh
alias cls='clear'
#alias subl='subl --wait'
alias phps='php -S localhost:8000;'
alias pcat='pygmentize'
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias xclip='xclip -selection c'
alias tweet='twidge update'
alias tweets='twidge lsrecent | less'

# Customize to your needs...
export PATH=/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/gamesi

# Path
PATH=$PATH:~/.bin

# Mongo
PATH=$PATH:~/.bin/mongo

#Script tools
PATH=$PATH:~/.bin/tools

# Clojure
export CLOJURE_EXT=~/.clojure
PATH=$PATH:~/.opt/clojure-contrib/launchers/bash
alias clj=clj-env-dir

#RVM
[[ -s "/home/seich/.rvm/scripts/rvm" ]] && source "/home/seich/.rvm/scripts/rvm" # Load RVM into a shell session *as a function
