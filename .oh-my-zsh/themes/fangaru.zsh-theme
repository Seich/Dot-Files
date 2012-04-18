function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '%{[31m%}⚡%{[00m%}' && return
    echo '⚡'
}

function battery_charge {
    echo `/home/seich/.rvm/rubies/ruby-1.9.2-p290/bin/ruby /home/seich/.bin/batteryMeter.rb` 2>/dev/null
}

function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}

#PROMPT='
#%{$fg[magenta]%}%n%{$reset_color%} at %{$fg[yellow]%}%m%{$reset_color%} in %{$fg_bold[green]%}${PWD/#$HOME/~}%{$reset_color%}$(git_prompt_info)
#$(virtualenv_info)$(prompt_char) '

#RPROMPT='$(battery_charge)'

PROMPT='$(prompt_char) '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""
